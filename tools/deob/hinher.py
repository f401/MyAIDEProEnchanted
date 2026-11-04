#!/usr/bin/env python3
"""hinher.py —— 从**祖先**继承成员名：子类覆写了祖先的同名同描述符成员时，名字必须相同。

判据（可复现）：
  对每个已定名类 P 的每个未定名成员 (n, d)：
    沿 P 的父类/接口链（探针侧）找到**声明了 (n, d)** 的祖先 A；
    若 A 的该成员已在 members.tsrg 里定名为 R ⇒ P 的这个成员也叫 R。
  只在"祖先声明且已定名"时命中，绝不猜；同 (n,d) 在链上有多解时不落（冲突即跳过）。
"""
import os
import sys
import json
import argparse
import collections

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from bytefp import disassemble, parse, load_tsv_map


def load_mem(path):
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


def norm(x):
    return (x or '').replace('.', '/')


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', default='process/deob.json')
    ap.add_argument('--part', default='jobs/jdcore')
    ap.add_argument('--oracle', default='jd-core-1.1.3')
    ap.add_argument('--prefix', default='org/c/a/a')
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
    cls = load_tsv_map(os.path.join(part, 'class_map.tsv'))
    fmap, mmap = load_mem(os.path.join(part, 'members.tsrg'))

    decl = collections.defaultdict(lambda: {'m': set(), 'f': set()})
    iface = {}
    for k, c in P.items():
        for acc, n, ps in c['methods']:
            decl[k]['m'].add((n, tuple(ps)))
        for acc, t, n in c['fields']:
            decl[k]['f'].add(n)
        iface[k] = ([norm(c.get('sup'))] if c.get('sup') else []) + [norm(x) for x in (c.get('ifaces') or [])]

    def chain(k, seen=None):
        seen = seen or set()
        out = []
        for p2 in iface.get(k, []):
            if p2 in seen:
                continue
            seen.add(p2)
            out.append(p2)
            out.extend(chain(p2, seen))
        return out

    # 预索引：类 → 成员 → 已定名集合
    by_m = collections.defaultdict(lambda: collections.defaultdict(set))
    for (p2, n, d), real in mmap.items():
        by_m[p2][(n, d)].add(real)
    by_f = collections.defaultdict(lambda: collections.defaultdict(set))
    for (p2, n), real in fmap.items():
        by_f[p2][n].add(real)

    rows = []
    for pk in cls:
        if pk not in P:
            continue
        anc = chain(pk)
        have = {(k2[1], k2[2]) for k2 in mmap if k2[0] == pk}
        for (n, ps) in decl[pk]['m']:
            if (n, ps) in have:
                continue
            hit = set()
            for a2 in anc:
                for (n2, d2), reals in by_m.get(a2, {}).items():
                    if n2 == n and d2 == '(' + ''.join(
                            'L%s;' % x.replace('.', '/') if x not in 'ZBCSIJFD' else x for x in ps) + ')*':
                        hit |= reals
                # 祖先声明里的同 (name,params) 直接用 key 精确比
                for (n2, d2), reals in by_m.get(a2, {}).items():
                    if n2 == n and d2.startswith('(' + ''.join(
                            'L%s;' % x.replace('.', '/') if x not in 'ZBCSIJFD' else x for x in ps) + ')'):
                        hit |= reals
            if len(hit) == 1:
                rows.append((pk, 'm', n, ps, hit.pop()))
        havef = {k2[1] for k2 in fmap if k2[0] == pk}
        for n in decl[pk]['f']:
            if n in havef:
                continue
            hit = set()
            for a2 in anc:
                hit |= by_f.get(a2, {}).get(n, set())
            if len(hit) == 1:
                rows.append((pk, 'f', n, (), hit.pop()))
    print('可从祖先继承的成员：%d 条' % len(rows))
    for r in rows[:30]:
        print('   %-26s %s %-4s → %s' % (r[0].replace('org/c/a/a/', '~'), r[1], r[2], r[4]))
    if a.report:
        with open(a.report, 'w', encoding='utf-8') as w:
            w.write('#probe\tkind\told\tnew\n')
            for r in rows:
                w.write('%s\t%s\t%s\t%s\n' % (r[0], r[1], r[2], r[4]))
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
        import pickle
        pb, _ = pickle.load(open(os.path.join(H, 'tmp', 'bcache.pkl'), 'rb'))
        rd = {k: [(n, d) for acc, n, d in c['methods']] for k, c in pb.items()}
        n_add = 0
        for pk, kind, n, ps, real in rows:
            if kind == 'm':
                d = '(' + ''.join('L%s;' % x.replace('.', '/') if x not in 'ZBCSIJFD' else x for x in ps) + ')'
                cand = [dd for (nn, dd) in rd.get(pk, []) if nn == n and dd[:dd.index(')') + 1] == d]
                if not cand:
                    continue
                blocks[pk].append('\t%s %s %s' % (n, cand[0], real))
            else:
                blocks[pk].append('\t%s %s' % (n, real))
            n_add += 1
        with open(path, 'w', encoding='utf-8') as w:
            for pk in order:
                if pk is None:
                    w.write('\n')
                    continue
                w.write('\n'.join(blocks[pk]) + '\n')
        print('   写入 +%d' % n_add)


if __name__ == '__main__':
    main()
