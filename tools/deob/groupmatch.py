#!/usr/bin/env python3
"""groupmatch.py —— 拆「同描述符重载组」：靠**方法体指纹**，不靠声明顺序。

同描述符的一组方法（`getDERSubStream/getDLSubStream`、SHA 的 `Sum0/Sum1/Theta0/Theta1`）
描述符完全一样，"桶唯一"失效。声明顺序也**不可靠**（实测：APK 的 dex 里
`SHA256Digest` 的四个 `(I)I` 与源码顺序不一致，按顺序对齐会全错）。

可信的判据是方法体本身：
  sig = (整数字面量多重集, 被引成员多重集 {(kind, owner→真名, 描述符)}, 字符串多重集)
两侧签名做 Jaccard，要求**组内唯一最优且领先**才写；一个组按"完美匹配"分配
（每个 oracle 成员最多用一次）。

用法:
  python3 tools/deob/groupmatch.py -p process/deob.json --part spongycastle [--apply] [--min-lead 0.02]
"""
import os, sys, re, json, zipfile, argparse, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
import jvmbody
import classmatch as CM

RE_T = re.compile(r'L([A-Za-z0-9_$/]+);')
RE_INV = re.compile(r'invoke-[a-z/-]+ \{[^}]*\}, L([A-Za-z0-9_$/]+);->([A-Za-z0-9_$<>]+)(\([^)]*\)\S+)')
RE_FLD = re.compile(r'^\s*[is]get(?:-object|-wide|-boolean|-byte|-char|-short)?\s+[vp]\d+,\s*[vp]\d+,\s*L([A-Za-z0-9_$/]+);->([A-Za-z0-9_$]+):(\S+)\s*$', re.M)
RE_SPUT = re.compile(r'^\s*[is]put(?:-object|-wide|-boolean|-byte|-char|-short)?\s+[vp]\d+,\s*[vp]\d+,\s*L([A-Za-z0-9_$/]+);->([A-Za-z0-9_$]+):(\S+)\s*$', re.M)


def probe_sigs(txt, cmap):
    """smali → {method_key: sig}；method_key = (名字, 描述符)"""
    sig = {}
    cur = None
    for line in txt.split('\n'):
        if line.startswith('.method'):
            m = re.search(r'([A-Za-z0-9_$<>]+)\((\S*)\)(\S+)\s*$', line)
            cur = (m.group(1), '(' + m.group(2) + ')' + m.group(3)) if m else None
            if cur:
                sig[cur] = [collections.Counter(), collections.Counter(), collections.Counter()]
            continue
        if line.startswith('.end method'):
            cur = None
            continue
        if cur is None:
            continue
        ints, refs, strs = sig[cur]
        m = RE_INV.search(line)
        if m:
            ow = cmap.get(m.group(1), m.group(1))
            refs[('m', ow, RE_T.sub(lambda x: 'L' + cmap.get(x.group(1), x.group(1)) + ';', m.group(3)))] += 1
        m = RE_FLD.match(line) or RE_SPUT.match(line)
        if m:
            ow = cmap.get(m.group(1), m.group(1))
            refs[('f', ow, RE_T.sub(lambda x: 'L' + cmap.get(x.group(1), x.group(1)) + ';', m.group(3)))] += 1
        for x in RE_T.findall(line):
            pass
        # 整数字面量：不止 const —— dex 里位移量是**指令内联字面量**
        # （`shl-int/lit8 v0, p1, 0x13`），javac 侧则是 bipush。两边都算"参数位置的整数字面量"。
        if not line.startswith('.') and not line.startswith(':') and not line.startswith('#'):
            for m2 in re.finditer(r'(?<![A-Za-z_$])(-?0x[0-9a-fA-F]+|-?\d+)(?![A-Za-z0-9_$])', line):
                try:
                    ints[int(m2.group(1), 0)] += 1
                except ValueError:
                    pass
        m2 = re.search(r'const-string(?:/jumbo)?\s+[vp]\d+,\s*"(.*)"', line)
        if m2:
            strs[m2.group(1)] += 1
    return sig


def oracle_sigs(raw):
    c = jvmbody.parse(raw)
    out = {}
    for m in c['members']:
        if m['kind'] != 'm' or not m.get('code'):
            continue
        refs = collections.Counter()
        for (kind, ow, nm, ds) in jvmbody.body_refs(c, m['code']):
            refs[(kind, ow, RE_T.sub(lambda x: 'L' + x.group(1) + ';', ds or ''))] += 1
        ints = CM.oint(m['code'])
        strs = collections.Counter()
        from jvmbody import body_features
        S, R = body_features(c, m['code'])
        for s in S:
            strs[s] += 1
        out[(m['name'], m['desc'])] = (ints, refs, strs)
    return out


def jac(a, b):
    if not a or not b:
        return None
    i = sum((a & b).values())
    u = sum((a | b).values())
    return i / u if u else 0.0


def score(pa, ob):
    parts = [jac(pa[0], ob[0]), jac(pa[1], ob[1]), jac(pa[2], ob[2])]
    have = [x for x in parts if x is not None]
    return sum(have) / len(have) if have else 0.0


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', required=True)
    ap.add_argument('--part', required=True)
    ap.add_argument('--prefix', default='abcd')
    ap.add_argument('--apply', action='store_true')
    ap.add_argument('--min-lead', type=float, default=0.05)
    ap.add_argument('--min-score', type=float, default=0.5)
    a = ap.parse_args()
    cfg = json.load(open(a.project))
    base = os.path.dirname(os.path.abspath(a.project))
    ex = lambda x: os.path.normpath(os.path.join(base, os.path.expandvars(os.path.expanduser(x))))
    part = next((x for x in cfg['parts'] if os.path.basename(x.get('dir', '').rstrip('/')) == a.part), None)
    pdir = ex(part['dir'])
    cmap = {}
    for ln in open(os.path.join(pdir, 'class_map.tsv'), encoding='utf-8'):
        t = ln.rstrip('\n').split('\t')
        if len(t) >= 2 and t[1]:
            cmap[t[0] if '/' in t[0] else a.prefix + '/' + t[0]] = t[1]
    tsrg = os.path.join(pdir, 'members.tsrg')
    blocks, order, cur = {}, [], None
    for line in open(tsrg, encoding='utf-8').read().split('\n'):
        if not line:
            continue
        if line.startswith('\t'):
            blocks[cur].append(line)
        else:
            cur = line.split(' ')[0]
            blocks[cur] = []
            order.append(cur)
    mapped = {}
    for k, rows in blocks.items():
        for r in rows:
            t = r.lstrip('\t').split(' ')
            if len(t) >= 3:
                mapped[(k, t[0], t[1])] = t[2]
    idx = {}
    ip = ex(cfg.get('smali_index') or 'truth/smali_index.tsv')
    if os.path.exists(ip):
        for ln in open(ip, encoding='utf-8'):
            t = ln.rstrip('\n').split('\t')
            if len(t) >= 2:
                idx[t[0]] = t[1]
    roots = [ex(r) for r in (cfg.get('probe_roots') or [])]
    ojar = {}
    for o in cfg['oracle_jars']:
        p = ex(o['path'])
        if not os.path.exists(p):
            continue
        z = zipfile.ZipFile(p)
        for n in z.namelist():
            if n.endswith('.class') and n[:-6] not in ojar:
                ojar[n[:-6]] = z.read(n)
    added = 0
    report = []
    for k in order:
        on = cmap.get(k)
        if not on or on not in ojar:
            continue
        fn = idx.get(k)
        txt = None
        for r in roots:
            p2 = os.path.join(r, a.prefix, fn or '')
            if fn and os.path.exists(p2):
                txt = open(p2, encoding='utf-8', errors='replace').read()
                break
        if txt is None:
            continue
        psig = probe_sigs(txt, cmap)
        try:
            osig = oracle_sigs(ojar[on])
        except Exception:
            continue
        allonames = {nm for (nm, ds) in osig} | {m['name'] for m in jvmbody.parse(ojar[on])['members']}
        # 按 (静态, 描述符) 分组；构造器/静态块不参与
        og = collections.defaultdict(list)
        for (nm, ds) in osig:
            if nm.startswith('<'):
                continue
            og[ds].append(nm)
        # 桶键用**归一化后的描述符**（探针侧 Labcd/X; → 真名），否则两边根本对不上
        nd = lambda d: RE_T.sub(lambda m: 'L' + cmap.get(m.group(1), m.group(1)) + ';', d)
        pg = collections.defaultdict(list)      # 归一化描述符 -> [(名字, 原始描述符)]
        for (nm, ds) in psig:
            pg[nd(ds)].append((nm, ds))
        for ds, pent in pg.items():
            onames = og.get(ds) or []
            todo = [pe for pe in pent if not mapped.get((k, pe[0], pe[1]))
                    and not pe[0].startswith('<') and pe[0] not in allonames]
            if not todo or len(onames) < 2:
                continue
            # 组内候选（排除已被本类别的探针占掉的名字）
            taken = {mapped[(k, pe[0], pe[1])] for pe in pent if mapped.get((k, pe[0], pe[1]))}
            cand = [o for o in onames if o not in taken]
            pool = []
            for pe in todo:
                sc = sorted(((score(psig[pe], osig[(o, ds)]), o) for o in cand), reverse=True)
                pool.append((pe, sc))
            # 全局贪心 + 领先要求
            assign = []
            for pe, sc in sorted(pool, key=lambda x: -(x[1][0][0] if x[1] else 0)):
                if not sc:
                    continue
                s1 = sc[0][0]
                s2 = sc[1][0] if len(sc) > 1 else 0.0
                if s1 >= a.min_score and s1 - s2 >= a.min_lead and sc[0][1] != pe[0] \
                        and sc[0][1] not in [x[1] for x in assign]:
                    assign.append((pe, sc[0][1], s1, s2))
            for pe, o, s1, s2 in assign:
                report.append('%-10s %-8s %-26s -> %-20s %.2f/%.2f' % (k, pe[0], pe[1], o, s1, s2))
                if a.apply:
                    blocks[k].append('\t%s %s %s' % (pe[0], pe[1], o))
                    mapped[(k, pe[0], pe[1])] = o
                    added += 1
    for r in report[:30]:
        print('  ', r)
    print('组内可判 %d 条' % (added if a.apply else len(report)))
    if a.apply and added:
        with open(tsrg, 'w', encoding='utf-8') as w:
            for k in order:
                w.write('%s %s\n' % (k, cmap.get(k, k)))
                for r in blocks[k]:
                    w.write(r + '\n')
        print('写入', tsrg)


if __name__ == '__main__':
    main()
