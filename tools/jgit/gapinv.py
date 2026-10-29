#!/usr/bin/env python3
"""gapinv.py — 缺口清单: 每个类的未映射成员 + 各 oracle 版本的候选, 并选最佳版本。

产出 ~/out/work/gaps.json:
{probe: {jgit, ver, miss_m:[{name,desc,static,shape,syn,cands:[{name,desc,static}]}],
         miss_f:[{name,desc,static,cands:[...]}], extra_m:[...]}}
"""
import json, os, sys, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import probelib as P

HOME = os.path.expanduser('~')


def main():
    mp = P.load_map()
    rev = {v: k for k, v in mp.items()}
    mm, fm, blocks = P.load_tsrg()
    O = P.Oracle()
    out = {}
    stat = collections.Counter()
    for cn, path in P.iter_smali():
        if 'abcd/' + cn not in mp:
            continue
        tgt = mp['abcd/' + cn]
        pr = P.parse_smali(path)
        if not pr:
            continue
        # 探针侧已映射目标
        used_m = set()
        used_f = set()
        for (p, n, d), new in mm.items():
            if p == cn:
                used_m.add((n, P.norm_desc(d, mp)))
        for (p, n), new in fm.items():
            if p == cn:
                used_f.add(n)
        # 逐版本打分：描述符(反向翻译到 probe 空间)+static 多重集匹配数
        best = None
        for ver, _ in P.OVERS:
            om = O.members(ver, tgt)
            if not om:
                continue
            cnt_m = collections.Counter((P.norm_desc(d, rev), s) for n, d, s in om['methods'])
            cnt_f = collections.Counter((P.norm_desc(d, rev), s) for n, d, s in om['fields'])
            pm = collections.Counter((d, s) for n, d, s, sy in pr['methods'])
            pf = collections.Counter((d, s) for n, d, s, sy in pr['fields'])
            sc = sum((cnt_m & pm).values()) + sum((cnt_f & pf).values())
            if best is None or sc > best[1]:
                best = (ver, sc, om)
        if not best:
            continue
        ver, sc, om = best
        # 候选：oracle 自己声明、且未被使用的成员；按 (normdesc,static) 索引
        idx_m = collections.defaultdict(list)
        for n, d, s in om['methods']:
            if (n, P.norm_desc(d, rev)) in used_m or n in ('<init>', '<clinit>'):
                continue
            idx_m[(P.norm_desc(d, rev), s)].append((n, d, s))
        idx_f = collections.defaultdict(list)
        for n, d, s in om['fields']:
            if n in used_f:
                continue
            idx_f[(P.norm_desc(d, rev), s)].append((n, d, s))
        miss_m = []
        for n, d, s, sy in pr['methods']:
            if n in ('<init>', '<clinit>'):
                continue
            if (n, P.norm_desc(d, mp)) in used_m:
                continue
            cands = idx_m.get((d, s), [])
            miss_m.append(dict(name=n, desc=d, static=s, syn=sy, shape=P.shape(d),
                               cands=[dict(name=a, desc=P.norm_desc(b, rev), static=c) for a, b, c in cands]))
        miss_f = []
        for n, d, s, sy in pr['fields']:
            if n in used_f:
                continue
            if n in ('this$0', '$assertionsDisabled'):
                continue
            cands = idx_f.get((d, s), [])
            miss_f.append(dict(name=n, desc=d, static=s, syn=sy,
                               cands=[dict(name=a, desc=P.norm_desc(b, rev), static=c) for a, b, c in cands]))
        if miss_m or miss_f:
            out['abcd/' + cn] = dict(jgit=tgt, ver=ver, score=sc, miss_m=miss_m, miss_f=miss_f)
            stat['cls'] += 1
            stat['m'] += len(miss_m)
            stat['f'] += len(miss_f)
            stat['m1'] += sum(1 for x in miss_m if len(x['cands']) == 1)
            stat['f1'] += sum(1 for x in miss_f if len(x['cands']) == 1)
            stat['m0'] += sum(1 for x in miss_m if not x['cands'])
            stat['f0'] += sum(1 for x in miss_f if not x['cands'])
    json.dump(out, open(HOME + '/out/work/gaps.json', 'w'), indent=0)
    print(dict(stat))
    print('版本分布', collections.Counter(v['ver'] for v in out.values()))


if __name__ == '__main__':
    main()
