#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""dupfix.py — 对 dupcheck 报出的重复成员冲突做归因。

思路: 冲突 (类 C, 名字 N, 描述符 D) 里, 必定是"多个探针成员被映射成了同一个 N"。
本工具在 **探针空间** 里反查, 并按 D 列出 oracle 里 **尚未被任何探针成员占用** 的
同描述符成员 —— 那就是误映射成员本来的名字候选。

用法:
  python3 tools/jgit/dupfix.py <renamed.jar> <probe.jar> <jgit_map.tsv> <members.tsrg> <dup.tsv>
"""
import sys, zipfile, re, collections

sys.path.insert(0, '/data/data/com.termux/files/home/MyAIDEProEnchanted/tools/jgit')
from dupcheck import parse_class

TREF = re.compile(r'L(abcd/[^;]+);')


def load_map(path):
    p2t = {}
    for ln in open(path):
        f = ln.rstrip('\n').split('\t')
        if len(f) >= 2:
            p2t[f[0] if '/' in f[0] else 'abcd/'+f[0]] = f[1]
    return p2t


def load_tsrg(path):
    """>{probe: {(pname, pdesc): target_name}}"""
    out, cur = {}, None
    for ln in open(path):
        ln = ln.rstrip('\n')
        if not ln.strip():
            continue
        if ln[0] not in (' ', '\t'):
            cur = ln.split()[0]
            out[cur] = {}
        elif cur:
            p = ln.split()
            if len(p) == 3:
                out[cur][(p[0], p[1])] = p[2]
    return out


def trans_desc(d, p2t):
    return TREF.sub(lambda m: 'L' + p2t.get(m.group(1), m.group(1)) + ';', d)


def main():
    rjar, pjar, tsv, tsrg, dupf = sys.argv[1:6]
    p2t = load_map(tsv)
    t2p = {}
    for k, v in p2t.items():
        t2p.setdefault(v, []).append(k)
    mem = load_tsrg(tsrg)
    rz, pz = zipfile.ZipFile(rjar), zipfile.ZipFile(pjar)
    dups = []
    for ln in open(dupf):
        f = ln.rstrip('\n').split('\t')
        if len(f) >= 3:
            dups.append((f[0], f[1].lower(), f[2].split(' ')[0], ' '.join(f[2].split(' ')[1:])))
    cache = {}
    for cls, kind, nm, ds in dups:
        probe = t2p.get(cls, [None])[0]
        print('## %s  %s %s %s' % (cls, kind, nm, ds))
        if not probe:
            print('   !! 反向查不到探针类')
            continue
        blk = mem.get(probe, {})
        cands = [(pn, pd, tn) for (pn, pd), tn in blk.items()
                 if tn == nm and (kind == 'field' or trans_desc(pd, p2t) == ds)]
        claimed = set(blk.values())
        if cls not in cache:
            try:
                cache[cls] = parse_class(rz.read(cls + '.class'))
            except KeyError:
                cache[cls] = None
        oc = cache[cls]
        if oc is None:
            print('   !! 改后 jar 无此类'); continue
        if kind == 'field':
            free = [(n, d, a) for n, d, a in oc['fields']
                    if n in free_names(cls, nm) or (n not in claimed and n != nm)]
            free = [x for x in oc['fields'] if x[0] not in claimed]
        else:
            free = [x for x in oc['methods'] if x[0] not in claimed and x[1] == ds]
        print('   探针侧被映射成 %s 的成员:' % nm)
        for pn, pd, tn in cands:
            pf = [a for (n2, d2, a) in parse_class(pz.read(probe + '.class'))['methods' if kind == 'method' else 'fields'] if n2 == pn and d2 == pd]
            print('      %-14s %-52s 0x%04x' % (pn, pd, pf[0] if pf else 0))
        print('   oracle 侧同描述符且未被占用的候选:')
        for n, d, a in free[:12]:
            print('      %-20s %-52s 0x%04x' % (n, d, a))
        print()
    return 0


def free_names(cls, nm):
    return {nm}


if __name__ == '__main__':
    sys.exit(main())
