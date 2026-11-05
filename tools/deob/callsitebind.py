#!/usr/bin/env python3
"""callsitebind.py —— 用**调用点指纹**区分"同形重载"（方法体一模一样、只差语义）。

指纹 = 该方法的每个调用点的 (调用者方法名, 调用前 12 条指令内出现的**类型常量**集合)。
两侧都做：调用者方法名走成员映射折叠成真名，类型常量走 class_map 折叠。
同形重载的区别（"这是 IfStatement 的那个"/"这是 WhileStatement 的那个"）恰好体现在调用者
对 AST 类型做 `instanceof/checkcast/new` 的那几个常量上，而**类名常量混淆改不了**。

用法:
  python3 tools/deob/callsitebind.py -p process/deob.json --part ../jobs/jdcore [--apply]
"""
import os
import re
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


def params_of(d):
    par = d[d.index('(') + 1:d.rindex(')')]
    out = []
    for m in re.finditer(r'L([\w/$]+);|\[+[ZBCSIJFD]|[ZBCSIJFD]', par):
        v = m.group(0)
        out.append(m.group(1).replace('/', '.') if v.startswith('L')
                   else (v if v.startswith('[') else PRIM.get(v, v)))
    return tuple(out)


def sites_all(D, fold_name, fold_type):
    """→ {(owner, name, params): Counter((callerName, ctxTypes))}"""
    idx = collections.defaultdict(collections.Counter)
    for pk, c in D.items():
        for m, body in c['mbody'].items():
            if not m:
                continue
            cname = fold_name(pk, m[0])
            for i, t in enumerate(body):
                if t[0] != 'M':
                    continue
                own = t[2].replace('.', '/')
                ctx = set()
                for j in range(max(0, i - 12), i):
                    t2 = body[j]
                    if t2[0] == 'C':
                        ctx.add(fold_type(t2[1]))
                    # 只取类型常量：把 F/M 也纳入会让两侧调用点的上下文完全对不上（实测 5→0 条）
                idx[(own, t[4], tuple(params_of(t[3])))][(cname, tuple(sorted(ctx)))] += 1
    return idx


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', default='process/deob.json')
    ap.add_argument('--part', default='jobs/jdcore')
    ap.add_argument('--prefix', default='org/c/a/a')
    ap.add_argument('--oprefix', default='org/jd/core/v1')
    ap.add_argument('--thr', type=float, default=0.6)
    ap.add_argument('--margin', type=float, default=0.1)
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
    ojar = [ex(o['path']) for o in cfg['oracle_jars'] if o['label'] == 'jd-core-1.1.3'][0]
    O = parse(disassemble(ojar, a.oprefix, os.path.join(H, 'tmp', 'fp_%s.dis' % os.path.basename(ojar))))
    cls = load_tsv_map(os.path.join(part, 'class_map.tsv'))
    fmap, mmap = load_members(os.path.join(part, 'members.tsrg'))
    rev = {v: k for k, v in cls.items()}
    # 类型折叠：探针类 → oracle 真名；oracle 侧原样
    def ft(tn):
        t2 = tn.replace('.', '/')
        return cls.get(t2, t2).rsplit('/', 1)[-1]
    def fp_name(pk, nm):
        r = mmap.get((pk, nm, ''))
        for (c2, n2, d2), v2 in []:
            pass
        return None
    # 调用者方法名：探针侧按 (类,名) → 真名（同名重载共享）
    pmap = {}
    for (c2, n2, d2), v2 in mmap.items():
        pmap[(c2, n2)] = v2
    def fold_p(pk, nm):
        return pmap.get((pk, nm), '~')
    def fold_o(ok, nm):
        return nm
    sp = sites_all(P, fold_p, ft)
    so = sites_all(O, fold_o, ft)
    claimed = collections.defaultdict(set)
    for (c2, n2, d2), v2 in mmap.items():
        if c2 in cls:
            claimed[cls[c2]].add(v2)
    rows = []
    for pk, ok in cls.items():
        if pk not in P or ok not in O:
            continue
        have = {(n, d) for (c2, n, d) in mmap if c2 == pk}
        ctor = pk.replace('/', '.')
        used = claimed.get(ok, set())
        octor = ok.replace('/', '.')
        # 该类里未定名的方法
        targets = []
        for m in P[pk]['mbody']:
            if not m or m[0] in ('<init>', '<clinit>', ctor):
                continue
            d0 = [d for (n, d) in [(k2[1], k2[2]) for k2 in mmap if k2[0] == pk] ]
            targets.append(m)
        # 候选：oracle 未用名字
        cand_names = [n for acc, n, d in O[ok]['methods']
                      if n not in ('<init>', '<clinit>', octor) and n not in used]
        for (nm, ps) in targets:
            key = (pk, nm, ps)
            pset = sp.get(key)
            if not pset:
                continue
            if any(n2 == nm and params_of(d2) == ps for (c2, n2, d2) in mmap if c2 == pk):
                continue
            best = []
            for on in cand_names:
                oscore = 0.0
                for kk in [k2 for k2 in so if k2[0] == ok and k2[1] == on]:
                    oset = so[kk]
                    inter = sum((pset & oset).values())
                    tot = sum((pset | oset).values())
                    if tot:
                        oscore = max(oscore, inter / tot)
                best.append((oscore, on))
            best.sort(reverse=True)
            if not best:
                continue
            s1 = best[0][0]
            s2 = best[1][0] if len(best) > 1 else 0.0
            if s1 >= a.thr and s1 - s2 >= a.margin:
                rows.append((pk, nm, ps, best[0][1], s1, s1 - s2))
    print('调用点指纹可定：%d 条' % len(rows))
    for r in rows:
        print('   %-26s %-4s %-34s → %-32s %.2f (lead %.2f)'
              % (r[0].replace(a.prefix + '/', '~'), r[1], str(r[2])[:32], r[3], r[4], r[5]))
    if a.report:
        with open(a.report, 'w', encoding='utf-8') as w:
            w.write('#probe\told\tparams\tnew\tscore\tlead\n')
            for r in rows:
                w.write('%s\t%s\t%s\t%s\t%.3f\t%.3f\n' % (r[0], r[1], ','.join(r[2]), r[3], r[4], r[5]))
    if a.apply and rows:
        import pickle
        pb, _ = pickle.load(open(os.path.join(H, 'tmp', 'bcache.pkl'), 'rb'))
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
        for pk, old, ps, new, s1, mg in rows:
            d0 = [d for acc, nn, d in pb[pk]['methods']
                  if nn == old and params_of(d) == tuple(ps)]
            if not d0 or not new.isidentifier():
                continue
            blocks[pk].append('\t%s %s %s' % (old, d0[0], new))
            n += 1
        with open(path, 'w', encoding='utf-8') as w:
            for pk in order:
                if pk is None:
                    w.write('\n')
                    continue
                w.write('\n'.join(blocks[pk]) + '\n')
        print('写入 +%d' % n)


if __name__ == '__main__':
    main()
