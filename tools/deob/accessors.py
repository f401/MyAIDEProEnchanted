#!/usr/bin/env python3
"""accessors.py —— 用「字段名已知」反推 getter/setter 名（jd-core/util 一律 get<F>/is<F>/set<F>）。

判据（可复现，方法体逐条指令即可核对）：

```
getter   [aload_0, getfield this.F, areturn]              → get<F>        （字段类型 Z 且无 getter 同名冲突 → is<F>）
setter   [aload_0, aload_1, putfield this.F, return]      → set<F>
static   [getstatic C.F, areturn] / [aload_0, putstatic C.F, return]   同上
```

只在**方法体恰好是这三/四条指令**时命中（不做模糊匹配），所以不会把真实的业务方法误认成访问器。
落地前先查同类的 members.tsrg 是否已有同名同描述符（避免撞车），有则跳过。

用法:
  python3 tools/deob/accessors.py -p process/deob.json --part ../jobs/jdcore [--apply] [--report f]
"""
import os
import sys
import json
import argparse
import collections

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from bytefp import disassemble, parse, load_tsv_map, desc_from_params


def load_members(path):
    """probe 类 → {'f': {(旧名): 新名}, 'm': {(旧名, desc): 新名}}"""
    out = collections.defaultdict(lambda: {'f': {}, 'm': {}})
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
            out[cur]['f'][t[0]] = t[1]
        else:
            out[cur]['m'][(t[0], t[1])] = t[2]
    return out


def cap(name):
    return name[:1].upper() + name[1:]


RET = {'areturn', 'ireturn', 'lreturn', 'freturn', 'dreturn'}


FIELDNAMES = {}
FIELD_DESC = {}


PRIM = {'Z': 'boolean', 'B': 'byte', 'C': 'char', 'S': 'short', 'I': 'int',
        'J': 'long', 'F': 'float', 'D': 'double'}
import re as _re


def params_of(desc):
    par = desc[desc.index('(') + 1:desc.rindex(')')]
    out = []
    for m in _re.finditer(r'L([\w/$]+);|\[+[ZBCSIJFD]|[ZBCSIJFD]', par):
        v = m.group(0)
        out.append(m.group(1).replace('/', '.') if v.startswith('L')
                   else (v if v.startswith('[') else PRIM.get(v, v)))
    return tuple(out)


def analyse(body):
    """→ ('get'|'set', 字段名, 字段描述符) 或 None"""
    ops = [t for t in body]
    # 去掉 wide 之类的噪声
    if len(ops) == 3:
        a, b, c = ops
        if a == ('aload',) and b[0] == 'F' and b[1] == 'getfield' and c[0] in RET:
            return ('get', b[4], b[3])

    if len(ops) == 2:
        a, b = ops
        if a[0] == 'F' and a[1] == 'getstatic' and b[0] in RET:
            return None            # 静态常量（TYPE_*）返回的不是"字段值"，不算 getter
    if len(ops) == 4:
        a, b, c, d = ops
        if a == ('aload',) and b == ('aload',) and c[0] == 'F' and c[1] == 'putfield' and d == ('return',):
            return ('set', c[4], c[3])
        if a == ('aload',) and b[0] == 'F' and b[1] == 'putstatic' and c == ('return',):
            return None
    if len(ops) == 3:
        a, b, c = ops
        if a == ('aload',) and b[0] == 'F' and b[1] == 'putstatic' and c == ('return',):
            return None
    return None


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
    # 真实描述符（含返回类型）从 jvmbody 缓存取：getter 的返回类型可能是字段类型的**超类**，
    # 不能用字段描述符代替（会写出 no-method 的假行）。
    import pickle
    realdesc = {}
    try:
        pb, _ob = pickle.load(open(os.path.join(H, 'tmp', 'bcache.pkl'), 'rb'))
        for k, c in pb.items():
            realdesc[k] = [(n, d) for acc, n, d in c['methods']]
    except Exception as e:
        print('  警告：没有 bcache.pkl，跳过返回类型校验', e)
    mem = load_members(os.path.join(part, 'members.tsrg'))
    FIELDNAMES.clear()
    for pk2, m2 in mem.items():
        for fn, fr in m2['f'].items():
            FIELDNAMES[(pk2, fn)] = fr
    cls = load_tsv_map(os.path.join(part, 'class_map.tsv'))
    orc = {}
    for p, o in cls.items():
        if o in O:
            orc[p] = {(n, d) for acc, n, ps in O[o]['methods'] for d in ['']}   # 占位，下面重建
    # oracle 成员的名字集合（name + 参数元组），用于"是否被 oracle 印证"
    oset = {}
    for o, c in O.items():
        oset[o] = {(n, tuple(ps)) for acc, n, ps in c['methods']}
    rows = []
    for pk, c in P.items():
        m = mem.get(pk)
        if not m:
            continue
        fname = m['f']
        existing = set((n, tuple(ps)) for n, d in m['m'] for ps in [()])   # (名, 参数) 粗查重
        have = {(new, params_of(desc)) for (old, desc), new in m['m'].items()}
        for sig, body in c['mbody'].items():
            if sig is None:
                continue
            name, params = sig
            if (name, params) in m['m']:
                continue                              # 已定名
            r = analyse(body)
            if not r:
                continue
            kind, fld, fdesc = r
            # 字段可能在**父类**里（getfield 的 owner 是父类）→ 用全局 (owner, 字段) 表查
            owner = None
            for t in body:
                if t[0] == 'F' and t[4] == fld:
                    owner = t[2].replace('.', '/')
                    break
            key = None
            if owner:
                key = (owner, fld)
            elif SIGNATURES.get(pk):
                pass
            real = FIELDNAMES.get(key) or fname.get(fld)

            if not real:
                continue                              # 字段名未知
            isbool = fdesc == 'Z'
            if kind == 'get':
                cand = ('is' if isbool else 'get') + cap(real)
            else:
                cand = 'set' + cap(real)
            if (cand, params) in have:
                continue                              # 同类已有同名同参 → 不动
            conf = ('--' if cand.startswith('--') else '')
            verified = cls.get(pk) and (cand, params) in oset.get(cls[pk], set())
            rows.append((pk, name, params, cand, kind, real, verified, fdesc))
            have.add((cand, params))
    tot = len(rows)
    ver = sum(1 for r in rows if r[6])
    print('可命名的访问器方法 %d 条（其中 %d 条与 oracle 同名同参，%d 条只在 freelly 侧存在）' % (tot, ver, tot - ver))
    byk = collections.Counter(r[4] for r in rows)
    print('   getter %d / setter %d' % (byk['get'], byk['set']))
    if a.report:
        with open(a.report, 'w', encoding='utf-8') as w:
            w.write('#probe\told\tparams\tnew\tkind\tfield\toracle_confirmed\n')
            for r in rows:
                w.write('%s\t%s\t%s\t%s\t%s\t%s\t%s\n' % (r[0], r[1], ','.join(r[2]), r[3], r[4], r[5],
                                                          'Y' if r[6] else 'n'))
        print('  报告 →', a.report)
    if a.apply:
        path = os.path.join(part, 'members.tsrg')
        blocks = collections.defaultdict(list)
        cur = None
        order = []
        for ln in open(path, encoding='utf-8'):
            if not ln.startswith('\t'):
                t = ln.split()
                cur = t[0] if t else None
                order.append(cur)
                blocks[cur].append(ln.rstrip('\n'))
            else:
                blocks[cur].append(ln.rstrip('\n'))
        add = collections.defaultdict(list)
        for pk, old, params, cand, kind, fld, ver, fdesc in rows:
            # 返回类型：getter 就是字段类型（模式保证只有 getfield+return，无 cast），setter 是 V
            pdesc = '(' + desc_from_params(params) + ')'
            cand_desc = [d for (n, d) in realdesc.get(pk, [])
                         if n == old and d[:d.index(')') + 1] == pdesc]
            if not cand_desc:
                continue                      # 拿不到真实描述符就不写（宁可少，不写错）
            desc = cand_desc[0]
            add[pk].append('\t%s %s %s' % (old, desc, cand))
        n = 0
        for pk, lines_ in add.items():
            if pk not in blocks:
                continue
            blocks[pk].extend(lines_)
            n += len(lines_)
        with open(path, 'w', encoding='utf-8') as w:
            for pk in order:
                if pk is None:
                    w.write('\n')
                    continue
                w.write('\n'.join(blocks[pk]) + '\n')
        print('  写入 members.tsrg：+%d 行' % n)


if __name__ == '__main__':
    main()
