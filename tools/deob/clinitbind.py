#!/usr/bin/env python3
"""clinitbind.py —— 用 `<clinit>` 里的构造串给静态字段定名。

jd-core 的常量表（`ObjectType.TYPE_STRING`、`PrimitiveType.TYPE_INT`…）在 `<clinit>` 里是
`new X("<名字>", …)` 后紧跟 `putstatic this.<字段>`；而**字符串常量混淆改不了**。所以：

```
探针类 P 的 <clinit>：new P("<str>", …) → putstatic P.f   ⇒ f 的"构造串"是 <str>
oracle 类 O 的 <clinit>：new O("<str>", …) → putstatic O.F  ⇒ F 的构造串也是 <str>
同一 <str> 在两侧各只对应一个字段 ⇒ f ↔ F
```

只在"串序列完全相同且两侧各自唯一"时落地；`<clinit>` 里没有字符串的字段不参与。

用法:
  python3 tools/deob/clinitbind.py -p process/deob.json --part ../jobs/jdcore [--apply] [--report f]
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


def clinit_order(c):
    """按 <clinit> 里 putstatic 的**先后顺序**返回 [(字段, 串元组)]"""
    body = c['mbody'].get(('<clinit>', ())) or c['mbody'].get(None) or []
    out = []
    strings = []
    for t in body:
        if t[0] == 'S':
            strings.append(t[1])
        elif t[0] == 'new':
            strings = []
        elif t[0] == 'F' and t[1] in ('putstatic', 'putfield'):
            out.append((t[4], tuple(strings)))
            strings = []
    return out


def clinit_fields(c):
    """→ {字段名: (串元组)}，只取 <clinit> 里 new 本类 + putstatic 本类的模式"""
    body = c['mbody'].get(('<clinit>', ())) or c['mbody'].get(None) or []
    out = collections.OrderedDict()
    strings = []
    for t in body:
        if t[0] == 'S':
            strings.append(t[1])
        elif t[0] == 'M' and t[4] == '<init>':
            pass
        elif t[0] == 'F' and t[1] in ('putstatic', 'putfield'):
            if strings:
                out[t[4]] = tuple(strings)
            strings = []
        elif t[0] == 'new':
            strings = []
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', default='process/deob.json')
    ap.add_argument('--part', default='jobs/jdcore')
    ap.add_argument('--oracle', default='jd-core-1.1.3')
    ap.add_argument('--prefix', default='org/c/a/a')
    ap.add_argument('--oprefix', default='org/jd/core/v1')
    ap.add_argument('--apply', action='store_true')
    ap.add_argument('--report', default='')
    ap.add_argument('--by-order', dest='by_order', action='store_true',
                    help='按 <clinit> 里 putstatic 的先后顺序绑定（常量表类专用，两侧顺序一致）')
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
    if a.by_order:
        for pk, ok in cls.items():
            if pk not in P or ok not in O:
                continue
            pl = clinit_order(P[pk])
            ol = clinit_order(O[ok])
            if not pl or not ol:
                continue
            if len({f for f, _ in pl}) != len(pl) or len({f for f, _ in ol}) != len(ol):
                continue
            # 逐位比：两侧串必须相同（都空也算一致）；一旦对不上就停（不许整体平移）
            for (f, s1), (F, s2) in zip(pl, ol):
                if s1 != s2:
                    break
                if (pk, f) in fmap or f == F:
                    continue
                rows.append((pk, f, F, s1))
        print('按 <clinit> putstatic 顺序定名的静态字段：%d 条' % len(rows))
        for r in rows[:20]:
            print('   %-26s %-4s → %s' % (r[0].replace('org/c/a/a/', '~'), r[1], r[2]))
        return finish(a, part, rows)
    for pk, ok in cls.items():
        if pk not in P or ok not in O:
            continue
        pf = clinit_fields(P[pk])
        of = clinit_fields(O[ok])
        if not pf or not of:
            continue
        of_by_str = collections.defaultdict(list)
        for F, s in of.items():
            of_by_str[s].append(F)
        for f, s in pf.items():
            if (pk, f) in fmap:
                continue
            cand = of_by_str.get(s) or []
            if len(cand) != 1:
                continue
            F = cand[0]
            if sum(1 for x in of_by_str.values() if x == [F]) != 1:
                continue
            rows.append((pk, f, F, s))
    print('可由 <clinit> 构造串定名的静态字段：%d 条' % len(rows))
    for r in rows[:24]:
        print('   %-26s %-4s → %-18s （串 %s）' % (r[0].replace('org/c/a/a/', '~'), r[1], r[2],
                                                '/'.join(x[:22] for x in r[3])))
    return finish(a, part, rows)


def finish(a, part, rows):
    if a.report:
        with open(a.report, 'w', encoding='utf-8') as w:
            w.write('#probe\tfield\toracle_field\tconst\n')
            for r in rows:
                w.write('%s\t%s\t%s\t%s\n' % (r[0], r[1], r[2], '|'.join(r[3])))
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
        n = 0
        for pk, f, F, s in rows:
            blocks[pk].append('\t%s %s' % (f, F))
            n += 1
        with open(path, 'w', encoding='utf-8') as w:
            for pk in order:
                if pk is None:
                    w.write('\n')
                    continue
                w.write('\n'.join(blocks[pk]) + '\n')
        print('   写入 +%d' % n)


if __name__ == '__main__':
    main()
