#!/usr/bin/env python3
"""methinfo.py —— 给一个探针类列出"非覆写"的方法，并附上定名要用的三类证据。

判据（按 docs/NAMING.md 的优先级）：方法体里的**字符串**、**反射名字**、**调用/字段引用**。
覆写判定：把探针描述符按 class_map 换成真名后，与祖先/接口的方法 (名字,描述符) 比对。

用法: python3 tools/deob/methinfo.py abcd/Qv [abcd/Hv ...] [--part=aide_bb]
"""
import argparse, os, sys, zipfile
_REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
for p in ('tools/jgit', 'tools/jgit/audit', 'tools/deob'):
    q = os.path.join(_REPO, p)
    if os.path.isdir(q) and q not in sys.path:
        sys.path.insert(0, q)
import jvmbody
import params as PRM
from dupcheck import parse_class


def cmap_all(path=os.path.join(_REPO, 'process/mappings.txt')):
    out = {}
    for ln in open(path, encoding='utf-8'):
        if not ln.strip() or ln.startswith('\t') or ln.startswith('tsrg2'):
            continue
        f = ln.split()
        if len(f) >= 2:
            out[f[0]] = f[1]
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('classes', nargs='+')
    ap.add_argument('--jar', default=os.path.join(_REPO, 'process/base/merged_ok.jar'))
    a = ap.parse_args()
    cm = cmap_all()
    z = zipfile.ZipFile(a.jar)
    info = {}
    for n in z.namelist():
        if n.endswith('.class'):
            c = parse_class(z.read(n))
            if c:
                info[c['this']] = c
    andz = zipfile.ZipFile(os.path.join(_REPO, 'process/android.jar'))
    for n in andz.namelist():
        if n.endswith('.class'):
            c = parse_class(andz.read(n))
            if c:
                info[c['this']] = c
    remap = lambda d: PRM.remap_desc(d, cm)

    def ancms(cn):
        seen, out, st = set(), set(), []
        c = info.get(cn)
        if c:
            st = [x for x in [c.get('super')] + list(c.get('ifaces') or []) if x]
        while st:
            x = st.pop()
            if not x or x in seen:
                continue
            seen.add(x)
            cc = info.get(x)
            if cc:
                out |= {(m[0], remap(m[1])) for m in cc['methods']}
                st += [y for y in [cc.get('super')] + list(cc.get('ifaces') or []) if y]
        return out

    for cn in a.classes:
        c = info.get(cn)
        if not c:
            print('!! 没有这个类:', cn)
            continue
        print('=== %s → %s' % (cn, cm.get(cn, '(未映射)')))
        A = ancms(cn)
        raw = jvmbody.parse(z.read(cn + '.class'))
        for m in c['methods']:
            n, d = m[0], m[1]
            if n.startswith('access$') or n.startswith('<'):
                continue
            if (n, remap(d)) in A:
                continue
            code = None
            for mm in raw['members']:
                if mm['kind'] == 'm' and mm['name'] == n and mm['desc'] == d:
                    code = mm['code']
            strs, refs = [], []
            if code:
                S, _R = jvmbody.body_features(raw, code)
                strs = [x for x in S if isinstance(x, str)][:6]
                for kind, ow, nm, ds in jvmbody.body_refs(raw, code):
                    if kind == 'm':
                        refs.append('%s.%s' % (ow.split('/')[-1], nm))
            print('  %-6s %-58s' % (n, d))
            if strs:
                print('        串: %s' % ', '.join(str(s) for s in strs[:6]))
            if refs:
                print('        调: %s' % ', '.join(sorted(set(refs))[:8]))
        print()


if __name__ == '__main__':
    sys.exit(main())
