#!/usr/bin/env python3
"""fieldbind.py —— 用「已定名方法的字段访问」反推字段名（方法级配对 + 唯一字段指纹）。

判据（可复现）：

```
对每一对已定名的 (探针类 P, oracle 类 O)：
  取探针方法 m（名字已定 = R，参数元组折叠后与 oracle 同名方法对上）
  m 的方法体里，**属于本类**的字段访问恰有 1 个 f；
  oracle 同名方法 m' 的方法体里，属于 O 的字段访问恰有 1 个 F
  ⇒ f ↔ F（同一方法必然访问同一个字段）
多票取唯一；与已有映射冲突即丢弃。
```

前提是"方法级配对已经可靠"（members.tsrg 里 2270 个方法名），这一步把方法对应关系
转化为字段对应关系——专门解决"字段类型被 freelly 改过、描述符对不上"的字段。

用法:
  python3 tools/deob/fieldbind.py -p process/deob.json --part ../jobs/jdcore [--apply] [--report f]
"""
import os
import sys
import json
import argparse
import collections

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from bytefp import disassemble, parse, load_tsv_map


def load_members(path):
    fmap, mmap = {}, {}
    cur = None
    for ln in open(path, encoding='utf-8'):
        if not ln.startswith('\t'):
            t = ln.split()
            cur = t[0] if t else None
            continue
        t = ln.strip().split()
        if not cur or len(t) < 2:
            continue
        if len(t) == 2:
            fmap[(cur, t[0])] = t[1]
        else:
            mmap[(cur, t[0], t[1])] = t[2]
    return fmap, mmap


PRIM = {'Z': 'boolean', 'B': 'byte', 'C': 'char', 'S': 'short', 'I': 'int',
        'J': 'long', 'F': 'float', 'D': 'double'}


def params_of(desc):
    par = desc[desc.index('(') + 1:desc.rindex(')')]
    out = []
    for m in __import__('re').finditer(r'L([\w/$]+);|\[+[ZBCSIJFD]|[ZBCSIJFD]', par):
        v = m.group(0)
        if v.startswith('L'):
            out.append(m.group(1).replace('/', '.'))
        elif v.startswith('['):
            out.append(v)
        else:
            out.append(PRIM.get(v, v))
    return tuple(out)


def own_fields(body, owner_dot):
    """方法体里属于本类的字段访问集合"""
    return {t[4] for t in body if t[0] == 'F' and t[2].replace('/', '.') == owner_dot}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', default='process/deob.json')
    ap.add_argument('--part', default='jobs/jdcore')
    ap.add_argument('--oracle', default='jd-core-1.1.3')
    ap.add_argument('--prefix', default='org/c/a/a')
    ap.add_argument('--oprefix', default='org/jd/core/v1')
    ap.add_argument('--min', type=int, default=1)
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
    fmap, mmap = load_members(os.path.join(part, 'members.tsrg'))
    cls = load_tsv_map(os.path.join(part, 'class_map.tsv'))

    votes = collections.defaultdict(collections.Counter)
    wit = collections.defaultdict(list)
    for pk, ok in cls.items():
        if pk not in P or ok not in O:
            continue
        ocl = O[ok]
        ometh = {}
        for sig, body in ocl['mbody'].items():
            if sig is None:
                continue
            ometh[(sig[0], tuple(sig[1]))] = body
        for (cls_, old, desc), real in mmap.items():
            if cls_ != pk:
                continue
            body = P[pk]['mbody'].get((old, params_of(desc)))
            if body is None:
                continue
            obody = ometh.get((real, params_of(desc)))
            if obody is None:
                continue
            pf = own_fields(body, pk.replace('/', '.'))
            of = own_fields(obody, ok.replace('/', '.'))
            if len(pf) == 1 and len(of) == 1:
                f, F = next(iter(pf)), next(iter(of))
                if (pk, f) in fmap:
                    continue
                # 必须真的声明在本类：javap 对"继承来的字段"可能不写 owner，会被误算成自己的
                if f not in {nm for acc, typ, nm in P[pk]['fields']}:
                    continue
                if F not in {nm for acc, typ, nm in O[ok]['fields']}:
                    continue
                votes[(pk, f)][F] += 1
                wit[(pk, f)].append(real)
    decided, conflicts = {}, []
    for k, c in votes.items():
        (F, v), = c.most_common(1)
        if len(c) == 1 and v >= a.min:
            decided[k] = (F, v, wit[k])
        elif len(c) > 1:
            conflicts.append((k, c))
    print('字段候选 %d 条（唯一解）；冲突 %d 条' % (len(decided), len(conflicts)))
    for k, c in conflicts[:10]:
        print('   冲突 %s.%s → %s' % (k[0].replace('org/c/a/a/', '~'), k[1], c.most_common(3)))
    if a.report:
        with open(a.report, 'w', encoding='utf-8') as w:
            w.write('#probe\tfield\toracle_field\tvotes\twitness\n')
            for k in sorted(decided):
                F, v, ws = decided[k]
                w.write('%s\t%s\t%s\t%d\t%s\n' % (k[0], k[1], F, v, ','.join(sorted(set(ws))[:3])))
        print('   报告 →', a.report)
    if a.apply and decided:
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
        for (pk, f), (F, v, ws) in sorted(decided.items()):
            blocks[pk].append('\t%s %s' % (f, F))
            n += 1
        with open(path, 'w', encoding='utf-8') as w:
            for pk in order:
                if pk is None:
                    w.write('\n')
                    continue
                w.write('\n'.join(blocks[pk]) + '\n')
        print('   写入 members.tsrg：+%d 个字段名' % n)


if __name__ == '__main__':
    main()
