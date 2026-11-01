#!/usr/bin/env python3
"""refmatch.py —— 用「类型引用集」做类身份的硬约束校验/补漏（通用）。

判据（改名不再变）：
  一个类在描述符里引用的类型集合（字段/方法/父类/接口），在探针侧与 oracle 侧
  必须通过 class_map 双向一致：
    (1) 探针引用的、已定名的类型  ⊆  oracle 候选类引用集
    (2) oracle 候选类引用的、属于「已定名值域」的类型 ⊆ 探针引用集（经 class_map 反查）
  两侧都有未定名类型时，只在「已定名部分」上比对，未定名部分留作自由变量。

用途：
  - 校验已写进 class_map 的条目（找出双向不一致 = 可疑错配）
  - 对未定名类，用硬约束把候选压到唯一，再用 classmatch 的分数排序

用法:
  python3 tools/deob/refmatch.py -p process/deob.json --prefix com/a/b \
      --oracle dx-1.16 --oracle-pkg com/android/dx,com/android/dex \
      --map jobs/dx/class_map.tsv [--cand jobs/dx/out/classmatch_stage1.tsv] [--out F]
"""
import os, sys, re, json, zipfile, argparse, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
import jvmbody
from classmatch import probe_classes, oracle_classes

RE_T = re.compile(r'L([A-Za-z0-9_$/\-]+);')


def types_of(descs):
    out = set()
    for d in descs:
        if d:
            out.update(RE_T.findall(d))
    return out


def load_probe(roots, prefix):
    p = {}
    for r in roots:
        p.update(probe_classes(r, prefix))
    for n, c in p.items():
        ds = [d for _, _, d in c['fields']] + [d for _, _, d in c['methods']]
        ds.append('L%s;' % c['sup'] if c['sup'] else None)
        ds += ['L%s;' % x for x in c['ifaces']]
        c['trefs'] = types_of(ds)
    return p


def load_map(path):
    m = {}
    if not path or not os.path.exists(path):
        return m
    for ln in open(path, encoding='utf-8'):
        ln = ln.rstrip('\n')
        if not ln or ln.startswith('#'):
            continue
        t = ln.split('\t')
        if len(t) >= 2 and t[0] and t[1]:
            m[t[0]] = t[1]
    return m


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', required=True)
    ap.add_argument('--prefix', required=True)
    ap.add_argument('--oracle', default='')
    ap.add_argument('--oracle-pkg', default='')
    ap.add_argument('--map', default='')
    ap.add_argument('--cand', default='')
    ap.add_argument('--out', default='')
    ap.add_argument('--oneway', action='store_true',
                    help='只查"探针引用了、oracle 候选没有"这一个方向（收缩只会让 oracle 更多，反方向不成立）')
    a = ap.parse_args()
    cfg = json.load(open(a.project))
    base = os.path.dirname(os.path.abspath(a.project))
    ex = lambda x: os.path.normpath(os.path.join(base, os.path.expandvars(os.path.expanduser(x))))
    roots = [ex(r) for r in (cfg.get('probe_roots') or [])]
    pkgs = [x for x in a.oracle_pkg.split(',') if x]
    want = [x for x in a.oracle.split(',') if x]
    probe = load_probe(roots, a.prefix)
    mp = ''
    if a.map:
        cands = [a.map, ex(a.map)]
        for c in cands:
            if os.path.exists(c):
                mp = c; break
        else:
            mp = a.map
    cmap = load_map(mp)
    print('class_map: %s -> %d 条' % (mp, len(cmap)))
    own = set(probe)
    cand = {}
    cp = a.cand if os.path.exists(a.cand or '') else ex(a.cand or '')
    if a.cand and os.path.exists(cp):
        for i, ln in enumerate(open(cp, encoding='utf-8')):
            t = ln.rstrip('\n').split('\t')
            if i == 0 or len(t) < 3 or not t[1]:
                continue
            cand[t[0]] = (float(t[2]), float(t[3]), t[1])
    for o in cfg['oracle_jars']:
        if want and o['label'] not in want:
            continue
        path = ex(o['path'])
        if not os.path.exists(path):
            print('缺失', o['label']); continue
        orc = oracle_classes(path, pkgs)
        for n, c in orc.items():
            ds = [d for _, _, d in c['fields']] + [d for _, _, d in c['methods']]
            ds.append('L%s;' % c['sup'] if c['sup'] else None)
            ds += ['L%s;' % x for x in c['ifaces']]
            c['trefs'] = types_of(ds)
        oown = set(orc)
        rng = set(cmap.values())                 # 已定名值域
        inv = {}
        for k, v in cmap.items():
            inv.setdefault(v, k)
        # 探针侧：映射到 oracle 空间的引用集
        pproj = {}
        for pn, pc in probe.items():
            mapped, free = set(), set()
            for t in pc['trefs']:
                if t in own:
                    if t in cmap: mapped.add(cmap[t])
                    else: free.add(t)
                else: mapped.add(t)          # java/* 等外部类型原样
            pproj[pn] = (mapped, free)

        def consistent(pn, on):
            m, f = pproj[pn]
            ot = orc[on]['trefs']
            if not m <= ot:
                return False
            back = (ot & rng)
            if back and not a.oneway:
                pb = set(cmap[t] for t in probe[pn]['trefs'] if t in cmap)
                if not back <= pb:
                    return False
            return True

        rows = []
        # 1) 校验已定名条目
        bad = []
        for pn, on in cmap.items():
            if pn not in probe or on not in orc:
                continue
            if not consistent(pn, on):
                m, f = pproj[pn]
                miss = sorted(m - orc[on]['trefs'])
                back = sorted((orc[on]['trefs'] & rng) - set(cmap[t] for t in probe[pn]['trefs'] if t in cmap))
                bad.append((pn, on, miss, back))
        print('%s: 已定名 %d 条，双向引用不一致 %d 条' % (o['label'], len(cmap), len(bad)))
        for pn, on, miss, back in bad:
            print('   ! %-24s -> %-52s 探针多 %s | oracle 多 %s'
                  % (pn, on, [x.split('/')[-1] for x in miss][:6], [x.split('/')[-1] for x in back][:6]))
        # 2) 未定名类：硬约束筛候选
        print('   未定名 %d 个：' % len([x for x in probe if x not in cmap]))
        for pn in sorted(probe):
            if pn in cmap:
                continue
            pool = [on for on in orc if on not in rng and consistent(pn, on)]
            m, f = pproj[pn]
            hint = cand.get(pn)
            rows.append((pn, pool, hint))
            if len(pool) == 1:
                tag = 'UNIQ'
            elif pool:
                tag = 'multi%d' % len(pool)
            else:
                tag = 'none'
            print('   %-30s refs=%d free=%d  %-8s %s%s'
                  % (pn, len(m), len(f), tag,
                     ','.join(x.replace('com/android/dx/', '') for x in pool[:5]),
                     ('  [score %s->%s]' % (hint[2].split('/')[-1], hint[0]) if hint else '')))
        if a.out:
            with open(ex(a.out), 'w', encoding='utf-8') as w:
                w.write('#probe\tcand_count\tcands\tscore_oracle\tscore\n')
                for pn, pool, hint in rows:
                    w.write('%s\t%d\t%s\t%s\t%s\n' % (pn, len(pool), ','.join(pool),
                                                      hint[2] if hint else '', '%.3f' % hint[0] if hint else ''))
            print('   写出', ex(a.out))


if __name__ == '__main__':
    main()
