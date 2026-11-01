#!/usr/bin/env python3
"""shapeaudit.py —— 审计「形状指纹」达成的类映射：是不是**形状巧合**。

classmatch 的最强判据是"成员描述符多重集完全相同且唯一"。但如果 oracle 里有一族
类形状一模一样（同签名、同超类、同接口），分数都是 1.000，那就是**形状巧合**，
拿到的名字可能是族内任意一个。本工具把这种族全部列出来，并给出每条映射的
族大小（fam）与族内成员，供人用改名不变的**第二证据**（整数字面量 / 常量串 /
引用者描述符）裁决。

判据：
  fam = 与探针 probe 的 bag 相似度 ≥ --eps 的 oracle 类数量（不看名字，只看形状）
  claimed = 该 oracle 类是否已被**别的**探针占掉（占掉说明族里已经有锚）
  swap = 是否疑似互换（probe 的族里有别的探针的目标）

用法:
  python3 tools/deob/shapeaudit.py -p process/deob.json --prefix abcd \\
      --oracle bc-all-1.47 --oracle-pkg org/bouncycastle \\
      --map jobs/spongycastle/class_map.tsv [--only jobs/spongycastle/classes.txt] \\
      [--ints] [--eps 0.995] [--show 40]
"""
import os, sys, json, argparse, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
from classmatch import probe_classes, oracle_classes, bags, sim, simstr


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', required=True)
    ap.add_argument('--prefix', required=True)
    ap.add_argument('--oracle', required=True)
    ap.add_argument('--oracle-pkg', default='')
    ap.add_argument('--map', required=True)
    ap.add_argument('--only', default='')
    ap.add_argument('--ints', action='store_true')
    ap.add_argument('--eps', type=float, default=0.995,
                    help='--mode eps 时的相似度阈值')
    ap.add_argument('--mode', choices=['contain', 'eps'], default='contain',
                    help='contain=oracle 成员/整数字面量是探针的超集（容忍 ProGuard 收缩）；eps=严格相似度')
    ap.add_argument('--show', type=int, default=40)
    a = ap.parse_args()
    cfg = json.load(open(a.project))
    base = os.path.dirname(os.path.abspath(a.project))
    ex = lambda x: os.path.normpath(os.path.join(base, os.path.expandvars(os.path.expanduser(x))))
    probe = {}
    for r in ([ex(x) for x in cfg.get('probe_roots') or []]):
        probe.update(probe_classes(r, a.prefix))
    own = set(probe)
    pkgs = [x for x in a.oracle_pkg.split(',') if x]
    jar = [ex(o['path']) for o in cfg['oracle_jars'] if o['label'] == a.oracle][0]
    orc = oracle_classes(jar, pkgs)
    oown = set(orc)
    cmap = {}
    for ln in open(a.map, encoding='utf-8'):
        t = ln.rstrip('\n').split('\t')
        if len(t) > 1 and t[1]:
            cmap[t[0] if '/' in t[0] else a.prefix + '/' + t[0]] = t[1]
    only = set()
    if a.only:
        for tok in a.only.split(','):
            tok = tok.strip()
            if not tok:
                continue
            if os.path.exists(os.path.expanduser(tok)):
                only |= set(x.strip() for x in open(os.path.expanduser(tok), encoding='utf-8') if x.strip())
            else:
                only.add(tok if '/' in tok else a.prefix + '/' + tok)
    rng = set(cmap.values())
    omap = {n: (n if n in rng else '#') for n in oown}
    ob = {n: bags(c, oown, omap, False, a.ints) for n, c in orc.items()}
    pb = {n: bags(c, own, cmap, False, a.ints) for n, c in probe.items()}
    claimed = collections.defaultdict(list)
    for p, t in cmap.items():
        claimed[t].append(p)

    def superset(pf, of):
        return all(of[k] >= v for k, v in pf.items())

    def famof(pn):
        """族 = 形状相容的 oracle 类（成员描述符多重集包含 + 超类/接口相容）"""
        (pf, pm) = pb[pn]
        psup = probe[pn]['sup']
        psup_n = cmap.get(psup, psup)
        # 接口**不参与过滤**：接口名本身可能就是错的（正是要审计的对象），
        # 只能拿"接口个数"当弱约束，冲突单独报出来人工看。
        out = []
        for o in orc:
            of, om = ob[o]
            if not (superset(pf, of) and superset(pm, om)):
                continue
            if psup and psup in cmap and orc[o]['sup'] != psup_n:
                continue
            if probe[pn]["ifaces"] and len(probe[pn]["ifaces"]) != len(orc[o]["ifaces"]):
                continue
            out.append(o)
        return out

    rows = []
    for pn in sorted(cmap):
        on = cmap[pn]
        if pn not in probe:
            rows.append((pn, on, -1, [], 'NOT-IN-PROBE'))
            continue
        if a.mode == 'eps':
            fam = [x for x in orc if sim(pb[pn], ob[x]) >= a.eps]
        else:
            fam = famof(pn)
        hit = '' if on in fam else '   !! 现取目标不在族内'
        pif = set(cmap.get(i, i) for i in probe[pn]['ifaces'])
        oif = set(orc[on]['ifaces']) if on in orc else set()
        if pif and on in orc and not (pif & oif):
            hit += '  [接口冲突: %s vs %s]' % (sorted(pif), sorted(oif))
        oth = [x for x in fam if x != on]
        rows.append((pn, on, len(fam), oth, hit))
    dup = {t: v for t, v in claimed.items() if len(v) > 1}
    bad = [r for r in rows if r[2] != 1]
    print('映射 %d 条；族大小=1（形状唯一）%d 条；族大小>1 %d 条；目标重复 %d 处'
          % (len(rows), len([r for r in rows if r[2] == 1]), len(bad), len(dup)))
    for t, v in dup.items():
        print('  !! 重复目标 %s <- %s' % (t, v))
    for pn, on, n, oth, note in bad:
        pc = probe.get(pn)
        ss = simstr(pc['strs'], orc[on]['strs']) if pc else 0
        print('== %-12s -> %-62s fam=%s str=%.2f %s' % (pn, on, n, ss, note))
        if pc and pc['strs']:
            print('     probe strs: %s' % sorted(pc['strs'])[:5])
        for x in oth[:12]:
            sx = simstr(pc['strs'], orc[x]['strs']) if pc else 0
            mark = ' [claimed by %s]' % claimed[x] if x in claimed else ''
            print('       alt %-62s str=%.2f%s' % (x, sx, mark))
    h = collections.Counter(r[2] for r in rows)
    print('族大小分布：%s' % '  '.join('%s:%d' % (k, h[k]) for k in sorted(h)))
    if a.show and len(bad) > a.show:
        print('...（只显示前 %d 条）' % a.show)


if __name__ == '__main__':
    main()
