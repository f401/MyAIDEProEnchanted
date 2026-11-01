#!/usr/bin/env python3
"""strmatch.py —— 纯「常量串集合」判据（与形状、引用都独立）。

很多类形状同构、引用也同构，但**常量串是唯一的**：OID 常量表（`1.2.840.113549...`）、
错误文案、算法名。把它们按 Jaccard 比一遍，常常能一锤定音，还能反向审计已定名的行。

用法:
  python3 tools/deob/strmatch.py -p process/deob.json --prefix abcd \\
      --oracle bc-all-1.47 --oracle-pkg org/bouncycastle \\
      [--only abcd/NN,abcd/QN ...] [--map jobs/spongycastle/class_map.tsv] [--min 0.5]
"""
import os, sys, json, argparse, zipfile, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
import jvmbody


def strs_of(jar, pkgs=None, prefix=None):
    z = zipfile.ZipFile(jar)
    out = {}
    for n in z.namelist():
        if not n.endswith('.class'):
            continue
        cn = n[:-6]
        if pkgs and not any(cn.startswith(p) for p in pkgs):
            continue
        if prefix and not cn.startswith(prefix + '/'):
            continue
        try:
            c = jvmbody.parse(z.read(n))
        except Exception:
            continue
        if not c or not c['this']:
            continue
        s = set(v for v in (c['utf'].get(i) for i in (c['strs'] or {}).values()) if v)
        out[c['this']] = s
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', required=True)
    ap.add_argument('--prefix', required=True)
    ap.add_argument('--oracle', required=True)
    ap.add_argument('--oracle-pkg', default='')
    ap.add_argument('--only', default='')
    ap.add_argument('--map', default='')
    ap.add_argument('--min', type=float, default=0.5)
    ap.add_argument('--top', type=int, default=3)
    a = ap.parse_args()
    cfg = json.load(open(a.project))
    base = os.path.dirname(os.path.abspath(a.project))
    ex = lambda x: os.path.normpath(os.path.join(base, os.path.expandvars(os.path.expanduser(x))))
    P = strs_of(ex(cfg['base_jars'][0]), prefix=a.prefix)
    O = strs_of([ex(o['path']) for o in cfg['oracle_jars'] if o['label'] == a.oracle][0],
                pkgs=[x for x in a.oracle_pkg.split(',') if x])
    cmap = {}
    if a.map:
        for ln in open(a.map, encoding='utf-8'):
            t = ln.rstrip('\n').split('\t')
            if len(t) >= 2 and t[1]:
                cmap[t[0] if '/' in t[0] else a.prefix + '/' + t[0]] = t[1]
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
    tgt = sorted(only) if only else sorted(x for x in P if x not in cmap)
    for pn in tgt:
        ps = P.get(pn) or set()
        if len(ps) < 2:
            print('%-12s （串太少：%d）' % (pn, len(ps)))
            continue
        sc = []
        for on, os_ in O.items():
            if not os_:
                continue
            j = len(ps & os_) / len(ps | os_)
            sc.append((round(j, 3), len(ps & os_), on))
        sc.sort(reverse=True)
        cur = cmap.get(pn)
        best = sc[0] if sc else (0, 0, '')
        flag = ''
        if cur:
            cj = next((x[0] for x in sc if x[2] == cur), 0.0)
            flag = '  [现取 %s j=%.2f]' % (cur.split('/')[-1], cj)
            if cj >= best[0] - 1e-9:
                flag += ' OK'
        print('%-12s %s%s' % (pn, '  '.join('%s(j=%.2f,n=%d)' % (x[2].replace('org/bouncycastle/', ''), x[0], x[1])
                                            for x in sc[:a.top] if x[0] >= a.min), flag))


if __name__ == '__main__':
    main()
