#!/usr/bin/env python3
"""usematch.py —— 用「引用者 / 被引用者」消除形状巧合（通用）。

问题：整包混淆后，一批类在形状上**完全同构**（例如 12 个异常类是同一组构造器、
一堆 ASN.1 字符串类是同 8 个方法），classmatch 的成员描述符指纹只能给出"族"，
给不出族内的唯一解。

判据（改名不变，且与成员名无关）：一个类**被谁用、怎么用**。
  IN  = {(引用者, 被引成员描述符)}   引用者若在 class_map 里就换成真名
  OUT = {(目标类, 目标成员描述符)}   同上
族内两份集合必须一致：同族类的 IN/OUT 差别往往就是唯一证据。
只有"两端都能落到真名"的引用才计入（族外/未定名的一端当自由变量忽略）。

用法:
  # 审计已有映射（找出形状巧合导致的错配）
  python3 tools/deob/usematch.py -p process/deob.json --prefix abcd \\
      --oracle bc-all-1.47 --oracle-pkg org/bouncycastle --map jobs/spongycastle/class_map.tsv --check
  # 给未定名类排序候选
  python3 tools/deob/usematch.py ... --only abcd/GL,abcd/IL --top 5
"""
import os, sys, re, json, zipfile, argparse, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
import jvmbody


def build(jar, pkgs=None, prefix=None):
    """→ (out_refs, in_refs)：out[cls] = {(目标, (kind,描述符)): 次数}
                          in[cls]  = {(引用者, (kind,描述符)): 次数}"""
    z = zipfile.ZipFile(jar)
    per = {}
    per_in = collections.defaultdict(collections.Counter)
    for n in z.namelist():
        if not n.endswith('.class'):
            continue
        cn = n[:-6]
        if pkgs and not any(cn.startswith(p + '/') for p in pkgs):
            continue
        if prefix and not cn.startswith(prefix + '/'):
            continue
        try:
            c = jvmbody.parse(z.read(n))
        except Exception:
            continue
        if not c or not c['this']:
            continue
        me = c['this']
        cnt = collections.Counter()
        for (ow, nm, ds, tag) in (c.get('refmap') or {}).values():
            if not ow or ow == me:
                continue
            mk = ('f' if tag == 9 else 'm', ds)
            cnt[(ow, mk)] += 1
            per_in[ow][(me, mk)] += 1
        for x in ([c['sup']] + list(c['ifaces'] or [])):
            if x and x != me:
                cnt[(x, ('<extends>', ''))] += 1
                per_in[x][(me, ('<extends>', ''))] += 1
        per[me] = cnt
    return per, per_in


def jac(a, b):
    if not a or not b:
        return 0.0
    i = sum((a & b).values())
    u = sum((a | b).values())
    return i / u if u else 0.0


def resolve(cnt, cmap):
    """把一端是探针类的引用折成真名；折不了的（自由变量）丢掉。"""
    out = collections.Counter()
    for (other, mk), v in cnt.items():
        n = cmap.get(other)
        if n:
            out[(n, mk)] += v
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', required=True)
    ap.add_argument('--prefix', required=True)
    ap.add_argument('--map', default='')
    ap.add_argument('--oracle', required=True)
    ap.add_argument('--oracle-pkg', default='')
    ap.add_argument('--only', default='')
    ap.add_argument('--top', type=int, default=5)
    ap.add_argument('--check', action='store_true', help='审计已有映射')
    ap.add_argument('--profile', action='store_true',
                    help='打印每个目标类的 引用者侧/被引用侧 明细（人工定名用）')
    ap.add_argument('--min', type=float, default=0.34, help='--check 的低一致阈值')
    ap.add_argument('--lenient', type=float, default=0.05,
                    help='IN/OUT 任一侧一致即可的最低下限（另一侧可能因族外引用而空）')
    a = ap.parse_args()
    cfg = json.load(open(a.project))
    base = os.path.dirname(os.path.abspath(a.project))
    ex = lambda x: os.path.normpath(os.path.join(base, os.path.expandvars(os.path.expanduser(x))))
    pkgs = [x for x in a.oracle_pkg.split(',') if x]
    cmap = {}
    if a.map:
        for ln in open(a.map, encoding='utf-8'):
            t = ln.rstrip('\n').split('\t')
            if len(t) >= 2 and t[1]:
                cmap[t[0] if '/' in t[0] else a.prefix + '/' + t[0]] = t[1]
    pper, pin = build(ex(cfg['base_jars'][0]), prefix=a.prefix)
    ojar = [ex(o['path']) for o in cfg['oracle_jars'] if o['label'] == a.oracle][0]
    oper, oin = build(ojar, pkgs=pkgs)
    pimg = set(cmap.values())
    # 两侧都只保留"另一端能落到真名"的引用；落不下的当自由变量忽略
    ident = {n: n for n in pimg}
    oout = {k: resolve(v, ident) for k, v in oper.items()}
    oin2 = {k: resolve(v, ident) for k, v in oin.items()}
    pout = {k: resolve(v, cmap) for k, v in pper.items()}
    pin2 = {k: resolve(v, cmap) for k, v in pin.items()}
    only = set()
    if a.only:
        for tok in a.only.split(','):
            tok = tok.strip()
            if not tok:
                continue
            if os.path.exists(os.path.expanduser(tok)):
                only |= set(x.strip() for x in open(os.path.expanduser(tok), encoding='utf-8') if x.strip())
            else:
                only.add(tok if '/' in tok else a.prefix + '/' + tok)
    print('探针类 %d / oracle 类 %d / 已映射 %d / 可用真名端点 %d'
          % (len(pper), len(oper), len(cmap), len(pimg)))

    def score(pn, on):
        si = jac(pin2.get(pn, collections.Counter()), oin2.get(on, collections.Counter()))
        so = jac(pout.get(pn, collections.Counter()), oout.get(on, collections.Counter()))
        return si, so, (si + so) / 2

    if a.check:
        low = []
        for pn, on in sorted(cmap.items()):
            if pn not in pper or on not in oper:
                continue
            si, so, sc = score(pn, on)
            if sc < a.min:
                low.append((pn, on, si, so, sc))
        print('--check：%d 条里 %d 条引用一致 < %.2f' % (len(cmap), len(low), a.min))
        for pn, on, si, so, sc in low:
            print('  低 %-12s -> %-58s in=%.2f out=%.2f' % (pn, on, si, so))
            # 给出族内候选，方便对照
            cands = sorted(((score(pn, o)[2], o) for o in oper if o not in set(cmap.values())),
                           reverse=True)[:3]
            for sc2, o in cands:
                print('        alt %-58s ref=%.2f' % (o, sc2))
        return

    if a.profile:
        for pn in sorted(only or [p for p in pper if p not in cmap]):
            if pn not in pper:
                print('!! 不在 jar 里：%s' % pn)
                continue
            print('== %s -> %s' % (pn, cmap.get(pn, '?')))
            ins = pin.get(pn, collections.Counter())
            outs = pper.get(pn, collections.Counter())
            for (other, mk), v in sorted(ins.items()):
                if other.startswith(a.prefix + '/'):
                    print('   IN   %-56s %s %s' % (cmap.get(other, other), mk[1], mk[0]))
                else:
                    print('   IN*  %-56s %s %s' % (other, mk[1], mk[0]))
            for (other, mk), v in sorted(outs.items()):
                if other.startswith(a.prefix + '/'):
                    print('   OUT  %-56s %s %s' % (cmap.get(other, other), mk[1], mk[0]))
                else:
                    print('   OUT* %-56s %s %s' % (other, mk[1], mk[0]))
        return

    tgt = sorted(only) if only else [p for p in pper if p not in cmap]
    for pn in tgt:
        if pn not in pper:
            print('!! 不在 jar 里：%s' % pn)
            continue
        cands = []
        for on in oper:
            if on in pimg and cmap.get(pn) != on:
                continue
            si, so, sc = score(pn, on)
            cands.append((sc, si, so, on))
        cands.sort(reverse=True)
        print('== %s  OUT=%d 条  IN=%d 条' % (
            pn, sum(pout.get(pn, {}).values()), sum(pin2.get(pn, {}).values())))
        for sc, si, so, on in cands[:a.top]:
            if sc <= 0:
                break
            mark = ' <<<' if cmap.get(pn) == on else ''
            print('   %-62s ref=%.2f (in=%.2f out=%.2f)%s' % (on, sc, si, so, mark))
            ev = sorted(set(k for k in pout.get(pn, {}) if k in oout.get(on, {})))[:3]
            for k in ev:
                print('        out  %s %s' % (k[0], k[1]))


if __name__ == '__main__':
    main()
