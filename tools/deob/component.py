#!/usr/bin/env python3
"""component.py —— 从一个种子类出发，切出「一簇互相引用的混淆类」。

整包混淆（`abcd/**` 几千个类）里，一个第三方库的类在图上是一个几乎闭合的连通块：
它们互相引用（字段/方法/继承），而对外只引用少量真实包（`org/bouncycastle/**` 之类）
和宿主 API。于是"切簇"= 以种子类为起点做**无向**连通分量，但**只在 probe 前缀内走边**，
不顺着"引用宿主"的边爬出去。

判据（全都不受改名影响）：
  edge  : class 常量池里的 Fieldref/Methodref/InterfaceMethodref 的 owner，或 super/ifaces
  scope : 只保留落在 --prefix 内的节点（宿主类天然被剪掉）
  seed  : 由已知特征（常量串 / 已知真名类的引用方）给出的锚点类

输出：
  - 分量大小（类数 / 方法数 / 字段数）
  - 该分量**对外**引用到的真实包排名（说明这簇到底是什么库）
  - 明细 TSV：class / methods / fields / out_pkgs / sample_strings
  - --out：只写类名，一行一个（供 jobs/<part>/classes.txt 用）

用法:
  python3 tools/deob/component.py --jar process/base/merged_ok.jar --prefix abcd \\
      --seed abcd/pP --out ~/tmp/sc.classes.txt --detail ~/tmp/sc.detail.tsv
  # 多锚点并集：
  --seed abcd/pP,abcd/GA
"""
import os, sys, zipfile, argparse, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
import jvmbody

SKIP_PKG = ('java/', 'javax/', 'android/', 'androidx/', 'kotlin', 'dalvik/',
            'sun/', 'com/android/', 'org/xml/', 'org/json/', 'org/w3c/')


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--jar', required=True)
    ap.add_argument('--prefix', default='abcd')
    ap.add_argument('--seed', required=True)
    ap.add_argument('--out', default='')
    ap.add_argument('--detail', default='')
    ap.add_argument('--top', type=int, default=15)
    ap.add_argument('--directed', action='store_true',
                    help='只沿"引用出去"的边走（库的连通块往往被宿主代码反向引用，无向会炸成全包）')
    ap.add_argument('--prune-refs', default='',
                    help='逗号分隔的包前缀：类只要引用了这些包就算"宿主代码"，从闭包里剔掉')
    a = ap.parse_args()

    z = zipfile.ZipFile(a.jar)
    P = a.prefix
    body = {}
    for n in z.namelist():
        if not n.endswith('.class') or not n.startswith(P + '/'):
            continue
        try:
            c = jvmbody.parse(z.read(n))
        except Exception:
            continue
        if c and c.get('this'):
            body[c['this']] = c
    print('%s/** 解析到 %d 个类' % (P, len(body)))

    prune = [x.strip() for x in (a.prune_refs or '').split(',') if x.strip()]

    def is_app(deps):
        return any(d.startswith(tuple(prune)) for d in deps)
    # 无向邻接（只在本前缀内走）
    adj = collections.defaultdict(set)
    outref = collections.defaultdict(collections.Counter)
    for cn, c in body.items():
        deps = set()
        for (ow, _nm, _ds, _tag) in (c.get('refmap') or {}).values():
            if ow:
                deps.add(ow)
        for x in [c.get('sup')] + list(c.get('ifaces') or []):
            if x:
                deps.add(x)
        deps.discard(cn)
        for d in deps:
            if d in body:
                adj[cn].add(d)
                adj[d].add(cn)
            else:
                p = d.rsplit('/', 1)[0] if '/' in d else '(default)'
                if not p.startswith(SKIP_PKG):
                    outref[cn][p] += 1

    seeds = []
    for s in a.seed.split(','):
        s = s.strip()
        if not s:
            continue
        if s not in body:
            print('!! 种子不在 jar 里：%s' % s)
            continue
        seeds.append(s)
    if not seeds:
        sys.exit('没有有效种子')

    seen = set(seeds)
    q = collections.deque(seeds)
    alldeps = {}
    for cn, c in body.items():
        alldeps[cn] = set(x[0] for x in (c.get('refmap') or {}).values() if x[0])
    while q:
        cur = q.popleft()
        nbs = adj[cur] if not a.directed else set(
            d for d in alldeps.get(cur, ()) if d in body)
        for nb in nbs:
            if nb in seen:
                continue
            if prune and is_app(alldeps.get(nb, ())):
                continue        # 宿主侧的类不进来，也不继续往它后面走
            seen.add(nb)
            q.append(nb)

    rows = []
    agg = collections.Counter()
    for cn in sorted(seen):
        c = body[cn]
        ms = sum(1 for m in c['members'] if m['kind'] == 'm')
        fs = sum(1 for m in c['members'] if m['kind'] == 'f')
        strs = []
        for i in (c.get('strs') or {}).values():
            v = c['utf'].get(i)
            if v and 4 <= len(v) <= 120:
                strs.append(v)
        pk = outref[cn]
        for p, k in pk.items():
            agg[p] += k
        rows.append((cn, ms, fs, ' '.join('%s(%d)' % t for t in pk.most_common(3)),
                     ' | '.join(strs[:4]).replace('\t', ' ')))
    print('切出 %d 类，方法 %d，字段 %d' % (
        len(rows), sum(r[1] for r in rows), sum(r[2] for r in rows)))
    print('对外引用真实包（按引用点数）:')
    for p, k in agg.most_common(a.top):
        print('   %-46s %5d' % (p, k))
    if a.out:
        with open(os.path.expanduser(a.out), 'w', encoding='utf-8') as w:
            for r in rows:
                w.write(r[0] + '\n')
        print('类名 → %s' % os.path.expanduser(a.out))
    if a.detail:
        with open(os.path.expanduser(a.detail), 'w', encoding='utf-8') as w:
            w.write('#class\tmethods\tfields\tout_pkgs\tsample_strings\n')
            for r in rows:
                w.write('%s\t%d\t%d\t%s\t%s\n' % r)
        print('明细 → %s' % os.path.expanduser(a.detail))


if __name__ == '__main__':
    main()
