#!/usr/bin/env python3
"""guessprove.py —— 先猜后证：用「已映射关系」当证明器给未映射类找身份。

猜：候选来自 oracle 里**尚未被占用**的类。
证：把探针类 P 的每条关系翻译到 oracle 空间（只翻译**已知映射**的部分），逐条比对：
    R1 super            P.super   -> O.super    （P.super 已映射时必须相等）
    R2 接口集合         P.ifaces  -> O.ifaces   （已映射的那些必须一一对应）
    R3 字段类型多重集   mapped 的部分必须相等
    R4 方法描述符多重集 **完全翻译后**必须完全相等（含参数/返回类型）
    R5 static/abstract 形状：abstract 方法数、static 字段数一致
    R6 内部类           P 的 "$x" 子类个数 == oracle 的 "O$x" 个数
任何一条"已映射部分"冲突 ⇒ 否证（打印冲突原因）；全部通过且 R4/R6 精确相等 ⇒ 证明。

用法:
  python3 tools/jgit/guessprove.py [--stats] [--top N] [--apply]
"""
import os, re, sys, zipfile, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from dupcheck import parse_class

HOME = os.path.expanduser('~')
ORACLE = HOME + '/out/oracle/jgit/j-3.7.1.201504261725-r.jar'
PROBE = '/storage/emulated/0/MyAIDEProEnchanted/process/base/merged_ok.jar'
TSV = HOME + '/out/work/jgit_map_clean.tsv'
TREF = re.compile(r'L(abcd/[^;]+);')


def load(jar):
    z = zipfile.ZipFile(jar)
    out = {}
    for n in z.namelist():
        if n.endswith('.class'):
            c = parse_class(z.read(n))
            if c and c['this']:
                out[c['this']] = c
    return out


def main():
    top = 30
    if '--top' in sys.argv:
        top = int(sys.argv[sys.argv.index('--top') + 1])
    p2t = {}
    for ln in open(TSV):
        f = ln.rstrip('\n').split('\t')
        if len(f) >= 2 and f[0] != 'abcd_class':
            p2t['abcd/' + f[0]] = f[1]
    t2p = {}
    for k, v in p2t.items():
        t2p.setdefault(v, k)
    prb, orc = load(PROBE), load(ORACLE)

    def build_refs(jar, pat):
        import zipfile as _z
        rx = re.compile(pat)
        refs, back = collections.defaultdict(set), collections.defaultdict(set)
        z = _z.ZipFile(jar)
        for n in z.namelist():
            if not n.endswith('.class'):
                continue
            src = n[:-6]
            for m in rx.finditer(z.read(n)):
                t = m.group(0)[1:-1].decode()
                if t == src:
                    continue
                refs[src].add(t); back[t].add(src)
        return refs, back
    pref, pback = build_refs(PROBE, rb'Labcd/[A-Za-z0-9_$]+;')
    oref, oback = build_refs(ORACLE, rb'L(?:[A-Za-z0-9_$]+/)+[A-Za-z0-9_$]+;')
    tr = lambda d: TREF.sub(lambda m: 'L' + p2t.get(m.group(1), m.group(1)) + ';', d)

    def sig(c):
        """关系签名：已映射部分 + 全量形状"""
        sup = p2t.get(c['super'], c['super'])
        ifs = sorted(p2t.get(i, i) for i in c['ifaces'])
        fm = sorted(tr(f[1]) for f in c['fields'])
        mm = sorted(tr(m[1]) for m in c['methods'])
        abst = sum(1 for m in c['methods'] if m[2] & 0x0400)
        stat = sum(1 for f in c['fields'] if f[2] & 0x0008)
        inner = ic[c['this']]
        return dict(sup=sup, ifs=ifs, fm=fm, mm=mm, abst=abst, stat=stat, inner=inner)

    # 内部类计数：一次遍历算完
    ic = collections.Counter(); oic = collections.Counter()
    for p in prb:
        if '$' in p: ic[p.rsplit('$', 1)[0]] += 1
    for t in orc:
        if '$' in t: oic[t.rsplit('$', 1)[0]] += 1
    osig = {}
    for t, c in orc.items():
        osig[t] = dict(sup=c['super'], ifs=sorted(c['ifaces']),
                       fm=sorted(f[1] for f in c['fields']),
                       mm=sorted(m[1] for m in c['methods']),
                       abst=sum(1 for m in c['methods'] if m[2] & 0x0400),
                       stat=sum(1 for f in c['fields'] if f[2] & 0x0008),
                       inner=oic[t])

    bykey = collections.defaultdict(list)
    for t, o in osig.items():
        bykey[(tuple(o['mm']), tuple(o['fm']), o['abst'], o['stat'], o['inner'])].append(t)
    props = []
    for p, c in prb.items():
        if p in p2t or not p.startswith('abcd/'):
            continue
        s = sig(c)
        # 候选筛选：desc 多重集必须完全一致 + abstract/static 数一致
        key = (tuple(s['mm']), tuple(s['fm']), s['abst'], s['stat'], s['inner'])
        cands = [t for t in bykey.get(key, ()) if t not in t2p]
        if not cands:
            continue
        # 只对「有实质内容」的类做猜测：至少 1 个字段或 1 个非 <init>/<clinit> 方法
        real = len(c['fields']) + sum(1 for m in c['methods'] if not m[0].startswith('<'))
        if real == 0:
            continue
        proved = []
        for t in cands:
            o = osig[t]
            ev = 0
            # R1 super（已映射则必须相等；未映射不加分）
            if c['super'] in p2t:
                if o['sup'] != s['sup']:
                    continue
                ev += 2
            # R2 接口
            known_ifs = [i for i in c['ifaces'] if i in p2t]
            if known_ifs:
                if not set(p2t[i] for i in known_ifs) <= set(o['ifs']):
                    continue
                ev += 2
            # 描述符只作「过滤」（key 已保证全等），不计入证据强度
            # R7 引用集一致性：探针侧"谁引用了它"（已映射的）必须也在 oracle 侧引用 O
            pk = set(p2t[q] for q in pback.get(p, ()) if q in p2t)
            if pk:
                if not pk <= oback.get(t, set()):
                    continue
                ev += 2 * len(pk)
            ok_back = set(t2p[q] for q in oback.get(t, ()) if q in t2p)
            if ok_back:
                if not ok_back <= pback.get(p, set()):
                    continue
                ev += 2 * len(ok_back)
            if ev < 2:
                continue
            proved.append((t, ev))
        if len(proved) == 1:
            props.append((p, proved[0][0], proved[0][1], 'PROVED'))
        elif len(proved) > 1:
            best = sorted(proved, key=lambda x: -x[1])
            props.append((p, '/'.join(t for t, _ in best[:3]), best[0][1], 'AMBIG'))

    claim = collections.Counter(t for _, t, _, k in props if k == 'PROVED')
    props = [(p, t, n, k if claim[t] == 1 else 'SHARED') for p, t, n, k in props]
    print('未映射探针类 %d；可提出候选 %d（PROVED %d / AMBIG %d / SHARED %d）'
          % (sum(1 for p in prb if p not in p2t), len(props),
             sum(1 for x in props if x[3] == 'PROVED'), sum(1 for x in props if x[3] == 'AMBIG'),
             sum(1 for x in props if x[3] == 'SHARED')))
    for p, t, n, k in sorted(props, key=lambda x: (x[3] != 'PROVED', x[0]))[:top]:
        print('  %-7s %-6s -> %-58s 证据强度 %s' % (k, p[5:] if p.startswith('abcd/') else p, t, n))
    if '--apply' in sys.argv:
        with open('/storage/emulated/0/MyAIDEProEnchanted/tools/jgit/fixes/guess.tsv', 'w') as fh:
            for p, t, n, k in props:
                if k == 'PROVED':
                    fh.write('%s\t-\t%s\tguessprove:R1super+R2iface+R4desc多重集+abst/static/inner\n' % (p[5:], t))
        print('\n已写 tools/jgit/fixes/guess.tsv（PROVED 部分）')
    return 0


if __name__ == '__main__':
    sys.exit(main())
