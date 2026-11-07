#!/usr/bin/env python3
"""who.py —— 列出"谁在用这个探针的哪个成员"，按引用者成员分组。

比 refindex.py 更细：refindex 只给"引用者类 → 探针成员"，这里给
"引用者类#方法(描述符) → 探针成员"，是**定名最硬的证据**（调用者语义已知时，
被调者语义基本就定了）。只统计真实命名的引用者。

用法: python3 tools/deob/who.py abcd/F [abcd/Ek ...] [--jar ...] [--all]
  --all  连混淆引用者一起列（默认只看真实命名类）
"""
import os, sys, argparse, zipfile, collections
_REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
for p in ('tools/jgit', 'tools/deob'):
    q = os.path.join(_REPO, p)
    if q not in sys.path:
        sys.path.insert(0, q)
import jvmbody

OBF = ('abcd/', 'a/', 'c/', 'b/')


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('probes', nargs='+')
    ap.add_argument('--jar', default=os.path.join(_REPO, 'process/base/merged_ok.jar'))
    ap.add_argument('--all', action='store_true')
    a = ap.parse_args()
    want = set(a.probes)
    z = zipfile.ZipFile(a.jar)
    hits = collections.defaultdict(list)
    for n in z.namelist():
        if not n.endswith('.class'):
            continue
        cn = n[:-6]
        if not a.all and any(cn.startswith(p) for p in OBF):
            continue
        try:
            c = jvmbody.parse(z.read(n))
        except Exception:
            continue
        if not c:
            continue
        this = c.get('this') or cn
        for m in c.get('members') or []:
            code = m.get('code')
            if not code:
                continue
            for (k, ow, nm, ds) in jvmbody.body_refs(c, code):
                if ow in want:
                    hits[ow].append((this, m.get('name'), m.get('desc'), k, nm, ds))
    for p in a.probes:
        print('=== %s  (%d 引用点)' % (p, len(hits.get(p, []))))
        # 同一段代码里可能同一成员重复出现，去重保序
        seen = set()
        for (this, mn, mds, k, nm, ds) in hits.get(p, []):
            key = (this, mn, mds, nm, ds)
            if key in seen:
                continue
            seen.add(key)
            print('  %s#%s%s  ->  %s %s%s' % (this, mn, mds, k, nm, ds))


if __name__ == '__main__':
    main()
