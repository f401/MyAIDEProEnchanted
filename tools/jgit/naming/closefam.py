#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
"""closefam.py [--apply] —— 把「成员家族」在映射上闭合。

FART 给成员改名时按 (owner, name, desc) 沿继承链查找；只要家族里**有声明者没映射**，
它就会走兜底（HashMap 顺序）→ 同一输入两次产出可以不同（实测）。

做法：以 (name, desc) 为键，把「在继承链上相关」的声明者聚成一组；
  - 组内已有映射且名字一致 → 把该名字补到所有**还没映射**的声明者；
  - 组内出现两个不同名字 → 报 CONFLICT，不自动处理。
--apply 写回 tsrg。
"""
import os, re, sys, zipfile, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from dupcheck import parse_class

HOME = os.path.expanduser('~')
BASE = '/storage/emulated/0/MyAIDEProEnchanted/process/base/merged_ok.jar'
TSRG = _P.TSRG
TSV = _P.MAP


def main():
    apply = '--apply' in sys.argv
    tsv = set()
    for ln in open(TSV):
        f = ln.rstrip('\n').split('\t')
        if len(f) >= 2:
            tsv.add('abcd/' + f[0])
    p2t = {}
    for ln in open(TSV):
        f = ln.rstrip('\n').split('\t')
        if len(f) >= 2:
            p2t['abcd/' + f[0]] = f[1]
    ORACLE = HOME + '/out/oracle/jgit/j-3.7.1.201504261725-r.jar'
    oz = zipfile.ZipFile(ORACLE)
    orc = {}
    for n in oz.namelist():
        if n.endswith('.class'):
            c = parse_class(oz.read(n))
            if c and c['this']:
                orc[c['this']] = c
    TREF = re.compile(r'L(abcd/[^;]+);')
    def norm(d):
        return TREF.sub(lambda m: 'L' + p2t.get(m.group(1), m.group(1)) + ';', d)
    def has_member(cls, nm, ds, seen=None):
        seen = seen or set()
        if cls in seen or cls not in orc:
            return False
        seen.add(cls)
        c = orc[cls]
        for m in c['methods']:
            if m[0] == nm and m[1] == ds:
                return True
        for p in ([c['super']] if c['super'] else []) + list(c['ifaces']):
            if p and has_member(p, nm, ds, seen):
                return True
        return False
    z = zipfile.ZipFile(BASE)
    sup, ifs, decl = {}, {}, {}
    for n in z.namelist():
        if not n.endswith('.class'):
            continue
        c = parse_class(z.read(n))
        if not c or not c['this']:
            continue
        cn = c['this']; sup[cn] = c['super'] or ''; ifs[cn] = list(c['ifaces'])
        decl[cn] = set((m[0], m[1]) for m in c['methods'])

    blocks, order, cur = {}, [], None
    for ln in open(TSRG):
        ln = ln.rstrip('\n')
        if not ln.strip():
            continue
        if ln[0] not in (' ', '\t'):
            cur = ln.split()[0]; blocks[cur] = []; order.append(cur)
        else:
            blocks[cur].append(ln)
    maps = {}
    for c, ls in blocks.items():
        d = {}
        for ln in ls:
            p = ln.split()
            if len(p) == 3:
                d[(p[0], p[1])] = p[2]
        maps[c] = d

    anc = {}
    def ancestors(t):
        if t in anc:
            return anc[t]
        out, st = set(), [t]
        while st:
            x = st.pop()
            for p in ([sup.get(x, '')] + ifs.get(x, [])):
                if p and p in decl and p not in out:
                    out.add(p); st.append(p)
        anc[t] = out
        return out

    # 按 (name,desc) 收集所有声明者
    bykey = collections.defaultdict(set)
    for c, s in decl.items():
        for k in s:
            bykey[k].add(c)

    adds = []
    conflict = []
    for k, classes in bykey.items():
        named = {c: maps[c][k] for c in classes if k in maps.get(c, {})}
        if not named:
            continue
        names = set(named.values())
        if len(names) > 1:
            # 只报"继承链上相关"的冲突
            for c1 in named:
                for c2 in named:
                    if c1 != c2 and named[c1] != named[c2] and c1 in ancestors(c2):
                        conflict.append((k, c1, named[c1], c2, named[c2]))
            continue
        target = next(iter(names))
        if k[0].startswith('<'):
            continue
        for c in classes:
            if k in maps.get(c, {}) or c not in tsv:
                continue
            if not has_member(p2t.get(c, ''), target, norm(k[1])):
                continue
            # 只有当 c 与某个已映射声明者存在继承关系时才补
            rel = any(c in ancestors(x) or x in ancestors(c) for x in named)
            if rel:
                adds.append((c, k[0], k[1], target))

    print('CONFLICT: %d' % len(conflict))
    for x in sorted(conflict)[:10]:
        print('   %s %s=%s  vs  %s=%s' % (x[0][0] + x[0][1], x[1], x[2], x[3], x[4]))
    print('待补（家族闭合）: %d 个成员' % len(adds))
    cnt = collections.Counter(a[0] for a in adds)
    for c, n in cnt.most_common(10):
        print('   %-16s %d' % (c, n))
    if apply and adds:
        with open('/storage/emulated/0/MyAIDEProEnchanted/tools/jgit/fixes/closefam.tsv', 'w') as fh:
            for c, nm, ds, tg in sorted(adds):
                fh.write('%s\tm\t%s\t%s\t-\t%s\n' % (c, nm, ds, tg))
        print('\n已写 tools/jgit/fixes/closefam.tsv')
    return 0


if __name__ == '__main__':
    sys.exit(main())
