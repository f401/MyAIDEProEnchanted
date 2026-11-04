#!/usr/bin/env python3
"""tostring.py —— 用 `toString()` 里的**字段标签串**给字段定名。

jd-core 的 `toString()` 一律是 `"Xxx{name='" + name + "', index=" + index + …` 这种拼接，
**字符串常量混淆改不了**，而拼接顺序里"标签串后面紧跟 getfield 的那个字段"就是标签指名的字段：

```
探针：  ldc ", index="  →  getfield d
oracle：ldc ", index="  →  getfield index      ⇒  d = index
```

只在"同一标签串在此类里唯一出现、且标签后第一个字段在两侧各自唯一"时落地。
"""
import os
import sys
import json
import argparse
import collections

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from bytefp import disassemble, parse, load_tsv_map


def load_fmap(path):
    fmap = {}
    cur = None
    for ln in open(path, encoding='utf-8'):
        if not ln.startswith('\t'):
            t = ln.split()
            cur = t[0] if t else None
            continue
        t = ln.strip().split()
        if cur and len(t) == 2:
            fmap[(cur, t[0])] = t[1]
    return fmap


def labels(c):
    """toString 里 (标签串 → 紧随其后的第一个字段)，以及该标签出现次数"""
    for m, body in c['mbody'].items():
        if not m or m[0] != 'toString':
            continue
        out = collections.Counter()
        first = {}
        last = None
        for t in body:
            if t[0] == 'S':
                last = t[1]
                out[last] += 1
            elif t[0] == 'F' and t[1] == 'getfield' and last is not None:
                first.setdefault(last, t[4])
        return out, first
    return collections.Counter(), {}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', default='process/deob.json')
    ap.add_argument('--part', default='jobs/jdcore')
    ap.add_argument('--oracle', default='jd-core-1.1.3')
    ap.add_argument('--prefix', default='org/c/a/a')
    ap.add_argument('--oprefix', default='org/jd/core/v1')
    ap.add_argument('--apply', action='store_true')
    ap.add_argument('--report', default='')
    a = ap.parse_args()
    cfg = json.load(open(a.project))
    base = os.path.dirname(os.path.abspath(a.project))
    ex = lambda x: os.path.normpath(os.path.join(base, os.path.expanduser(os.path.expandvars(x))))
    part = a.part if os.path.isabs(a.part) else os.path.join(base, a.part)
    H = os.path.expanduser('~')
    P = parse(disassemble(ex('base/merged_ok.jar'), a.prefix,
                          os.path.join(H, 'tmp', 'fp_%s_%s.dis' % (a.prefix.replace('/', '_'), 'merged_ok.jar'))))
    ojar = [ex(o['path']) for o in cfg['oracle_jars'] if o['label'] == a.oracle][0]
    O = parse(disassemble(ojar, a.oprefix, os.path.join(H, 'tmp', 'fp_%s.dis' % os.path.basename(ojar))))
    cls = load_tsv_map(os.path.join(part, 'class_map.tsv'))
    fmap = load_fmap(os.path.join(part, 'members.tsrg'))
    rows = []
    for pk, ok in cls.items():
        if pk not in P or ok not in O:
            continue
        pcnt, pfirst = labels(P[pk])
        ocnt, ofirst = labels(O[ok])
        if not pfirst or not ofirst:
            continue
        for s, f in pfirst.items():
            if pcnt[s] != 1 or s not in ofirst or ocnt[s] != 1:
                continue
            F = ofirst[s]
            if s.count('{') or len(s) < 3:
                continue
            if (pk, f) in fmap:
                continue
            # 字段必须真的声明在本类（toString 里的标签可能指向父类字段）
            if f not in {nm for acc, typ, nm in P[pk]['fields']}:
                continue
            if F not in {nm for acc, typ, nm in O[ok]['fields']}:
                continue
            rows.append((pk, f, F, s))
    print('可由 toString 标签串定名的字段：%d 条' % len(rows))
    for r in rows[:30]:
        print('   %-26s %-4s → %-20s （标签 %r）' % (r[0].replace('org/c/a/a/', '~'), r[1], r[2], r[3]))
    if a.report:
        with open(a.report, 'w', encoding='utf-8') as w:
            w.write('#probe\tfield\toracle_field\tlabel\n')
            for r in rows:
                w.write('%s\t%s\t%s\t%s\n' % r)
    if a.apply and rows:
        path = os.path.join(part, 'members.tsrg')
        blocks = collections.defaultdict(list)
        order = []
        cur = None
        for ln in open(path, encoding='utf-8'):
            if not ln.startswith('\t'):
                t = ln.split()
                cur = t[0] if t else None
                order.append(cur)
                blocks[cur].append(ln.rstrip('\n'))
            else:
                blocks[cur].append(ln.rstrip('\n'))
        for pk, f, F, s in rows:
            blocks[pk].append('\t%s %s' % (f, F))
        with open(path, 'w', encoding='utf-8') as w:
            for pk in order:
                if pk is None:
                    w.write('\n')
                    continue
                w.write('\n'.join(blocks[pk]) + '\n')
        print('   写入 +%d' % len(rows))


if __name__ == '__main__':
    main()
