#!/usr/bin/env python3
"""jdstr.py —— 用"混淆不改字符串"给 jd-core 定名（两条判据）。

A `str:`  类的 toString() 里写死 `"ClassName{..."` → 直接就是 oracle 的简单名。
B `src:`  把 oracle 源码里的字符串字面量建索引；探针类的常量串按**长度加权**计分，
          命中同一个 oracle 类且**领先第二名 ≥2 倍**才落。

两条都要求"一个 oracle 目标只被一个探针声称"（注入性）。

用法:
  python3 tools/deob/jdstr.py --sources ~/out/oracle/jd/src [--apply]
"""
import os
import re
import io
import sys
import glob
import argparse
import collections

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import subgraph as S

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))


def probe_strings(mapped):
    out = {}
    for f in glob.glob(os.path.join(ROOT, 'src/smali*', 'org/c/a/a/**/*.smali'), recursive=True):
        L = io.open(f, encoding='utf-8', errors='replace').read().split('\n')
        cls = None
        for l in L[:6]:
            m = re.match(r'\.class.* L(org/c/a/a/[A-Za-z0-9_$/]+);', l)
            if m:
                cls = m.group(1)
        if not cls or cls in mapped:
            continue
        out[cls] = {m.group(1) for l in L
                    for m in re.finditer(r'const-string(?:/jumbo)? v\d+, "(.*)"$', l)}
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--sources', required=True)
    ap.add_argument('--part', default='jobs/jdcore')
    ap.add_argument('--probe-prefix', default='org/c/a/a')
    ap.add_argument('--oracle-label', default='jd-core')
    ap.add_argument('--apply', action='store_true')
    a = ap.parse_args()
    probe, oracle, mapped, pkgmap, ev = S._load(a.part, a.probe_prefix, a.oracle_label)
    used = set(mapped.values())
    free = [o for o in oracle if o not in used]
    bydot = {o.replace('/', '.'): o for o in free}

    src = os.path.expanduser(a.sources)
    lit = collections.defaultdict(set)
    for f in glob.glob(src + '/**/*.java', recursive=True):
        cls = f[len(src) + 1:-5].replace('/', '.')
        txt = io.open(f, encoding='utf-8', errors='replace').read()
        for m in re.finditer(r'"([^"\\\n]{6,})"', txt):
            lit[m.group(1)].add(cls)

    ps = probe_strings(mapped)
    got = {}
    for c, ss in ps.items():                       # 判据 A
        for s in ss:
            m = re.match(r'^([A-Z][A-Za-z0-9_$]{5,})\{', s)
            if not m:
                continue
            cs = [o for o in free if o.split('/')[-1] == m.group(1)]
            if len(cs) == 1:
                got[c] = (cs[0], 'str:')
                break
    for c, ss in ps.items():                       # 判据 B
        if c in got:
            continue
        sc = collections.Counter()
        for s in ss:
            for cls in lit.get(s, ()):
                o = bydot.get(cls)
                if o:
                    sc[o] += len(s)
        if not sc:
            continue
        top = sc.most_common(2)
        if len(top) == 1 or top[0][1] >= 2 * top[1][1]:
            got[c] = (top[0][0], 'src:')
    claim = collections.defaultdict(list)
    for c, (o, k) in got.items():
        claim[o].append(c)
    got = {c: v for c, v in got.items() if len(claim[v[0]]) == 1}
    print('候选 %d（str %d / src %d）' % (len(got),
          sum(1 for v in got.values() if v[1] == 'str:'),
          sum(1 for v in got.values() if v[1] == 'src:')))
    if not a.apply:
        for c, (o, k) in sorted(got.items())[:15]:
            print('  %-30s → %-52s %s' % (c, o.split('/')[-1], k))
        return
    p = os.path.join(ROOT, a.part, 'class_map.tsv')
    L = [l.rstrip('\n') for l in io.open(p, encoding='utf-8')]
    have = {l.split('\t')[0] for l in L}
    n = 0
    for c, (o, k) in sorted(got.items()):
        if c in have or o in used:
            continue
        why = ('toString() 里写死的类名串（混淆不改字符串）' if k == 'str:'
               else '该类常量串按长度加权只命中上游这一个源文件（领先第二名 ≥2 倍）')
        L.append('%s\t%s\t%s%s' % (c, o, k, why))
        have.add(c); used.add(o); n += 1
    io.open(p, 'w', encoding='utf-8').write('\n'.join(L) + '\n')
    print('写入 +%d → 共 %d' % (n, len(L)))


if __name__ == '__main__':
    main()
