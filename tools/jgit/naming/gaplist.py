#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
"""gaplist.py — coverage 口径的精确缺口清单（分母=oracle 成员，排除 R8 删除/合成）。

对每个 (probe 类, oracle 成员) 未落地者，列出该组内探针候选（含已占用情况），
并标注「排除法定名」：组内探针未映射候选数==1 且 oracle 未占用成员数==1。
产出 ~/out/work/gapk.json
"""
import json, os, sys, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import probelib as P

HOME = os.path.expanduser('~')
VER = '3.7.1'


def main():
    mp = P.load_map()
    rev = {v: k for k, v in mp.items()}
    mm, fm, blocks = P.load_tsrg()
    O = P.Oracle()
    # 每类已占用的 oracle 目标
    tgt_by_probe = collections.defaultdict(dict)   # probe -> {(kind,name,normdesc)}
    for (p, n, d), new in mm.items():
        tgt_by_probe[p][('m', n, P.norm_desc(d, mp))] = new
    for (p, n), new in fm.items():
        tgt_by_probe[p][('f', n, '')] = new
    out = {}
    st = collections.Counter()
    for cn, path in P.iter_smali():
        probe = 'abcd/' + cn
        if probe not in mp:
            continue
        tgt = mp[probe]
        om = O.members(VER, tgt)
        if not om:
            continue
        pr = P.parse_smali(path)
        if not pr:
            continue
        occupied = tgt_by_probe.get(probe, {})
        used_pairs_m = {(v, d) for (k, n, d), v in occupied.items() if k == 'm'}
        used_pairs_f = {v for (k, n, d), v in occupied.items() if k == 'f'}
        used_probe_m = {n for (k, n, d) in occupied if k == 'm'}
        used_probe_f = {n for (k, n, d) in occupied if k == 'f'}
        # 探针分组
        pm = collections.defaultdict(list)   # (normdesc, static) -> [(name,ds,syn)]
        for n, d, s, sy in pr['methods']:
            if n in ('<init>', '<clinit>'):
                continue
            pm[(P.norm_desc(d, mp), s)].append((n, d, sy))
        pf = collections.defaultdict(list)
        for n, d, s, sy in pr['fields']:
            if n in ('this$0', '$assertionsDisabled'):
                continue
            pf[(P.norm_desc(d, mp), s)].append((n, d, sy))
        # oracle 成员（coverage 口径）
        om_m = [m for m in om['methods'] if m[0] not in ('<init>', '<clinit>', 'values', 'valueOf')]
        om_m2 = []
        for n, d, s in om['methods']:
            closed = open(P.ORACLE_JAR, 'rb')  # noqa  (占位; 下方用 parse 的 acc)
        # 需要 acc: 用 jvmbody 精确解析一次拿 flag
        import jvmbody as JB
        import zipfile
        z = zipfile.ZipFile(P.ORACLE_JAR)
        try:
            cb = z.read(tgt + '.class')
        except KeyError:
            continue
        cls = JB.parse(cb)
        if not cls:
            continue
        accm = {(m['name'], m['desc']): m['acc'] for m in cls['members'] if m['kind'] == 'm'}
        accf = {(m['name'], m['desc']): m['acc'] for m in cls['members'] if m['kind'] == 'f'}
        rows_m = []
        for n, d, s in cls_members_m(cls):
            if n in ('<init>', '<clinit>', 'values', 'valueOf'):
                continue
            a = accm.get((n, d), 0)
            if a & 0x1000 or a & 0x40:
                continue
            key = (d, bool(a & 0x8))
            cands = pm.get(key, [])
            if not cands:
                continue
            if (n, d) in used_pairs_m:
                continue
            rows_m.append((n, d, bool(a & 0x8), cands))
        rows_f = []
        for n, d, s in cls_members_f(cls):
            a = accf.get((n, d), 0)
            if a & 0x1000 or n in ('this$0', '$assertionsDisabled', 'serialVersionUID'):
                continue
            key = (d, bool(a & 0x8))
            cands = pf.get(key, [])
            if not cands:
                continue
            if n in used_pairs_f:
                continue
            rows_f.append((n, d, bool(a & 0x8), cands))
        if not rows_m and not rows_f:
            continue
        ent = dict(jgit=tgt, miss_m=[], miss_f=[])
        for n, d, s, cands in rows_m:
            un = [c for c in cands if (c[0], key[0]) not in used_pairs_m and not c[2] and c[0] not in used_probe_m]
            ent['miss_m'].append(dict(oracle=n, desc=P.norm_desc(d, rev), static=s,
                                      cands=[c[0] for c in cands],
                                      free=[c[0] for c in un]))
        for n, d, s, cands in rows_f:
            un = [c for c in cands if c[0] not in used_probe_f and not c[2]]
            ent['miss_f'].append(dict(oracle=n, desc=d, static=s,
                                      cands=[c[0] for c in cands],
                                      free=[c[0] for c in un]))
        out[probe] = ent
        st['cls'] += 1
        st['m'] += len(ent['miss_m']); st['f'] += len(ent['miss_f'])
        # 排除法：组内 free 与 oracle 未占用数都为 1
        grp = collections.defaultdict(lambda: [[], []])
        for e in ent['miss_m']:
            grp[(e['desc'], e['static'])][0].append(e['oracle'])
        for e in ent['miss_m']:
            grp[(e['desc'], e['static'])][1].extend(e['free'])
        for k, (os_, fs) in grp.items():
            if len(os_) == 1 and len(set(fs)) == 1:
                st['elim_m'] += 1
    json.dump(out, open(HOME + '/out/work/gapk.json', 'w'), indent=0)
    print(dict(st))
    print('缺口类', len(out))


def cls_members_m(cls):
    return [(m['name'], m['desc'], m['acc']) for m in cls['members'] if m['kind'] == 'm']


def cls_members_f(cls):
    return [(m['name'], m['desc'], m['acc']) for m in cls['members'] if m['kind'] == 'f']


if __name__ == '__main__':
    main()
