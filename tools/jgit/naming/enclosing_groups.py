#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""enclosing_groups.py —— 用 dex 里**被投毒但仍保持等价关系**的 EnclosingClass 做兄弟聚类

背景（docs/JGIT-METADATA.md §4）：
    嵌套注解的**字面值**是诱饵（`$a`→固定串、外层→`a/b/a/d/*`），
    但 `EnclosingClass` 的**等价关系是可信的**：
      * 同外层 → 同一个诱饵值（实测 gE$a/b/c/d 全为 La/b/a/d/m;，uJ/vJ/wJ 全为 Labcd/UM;）
      * 不同外层 → 不同诱饵值
    也就是它给的是一个**划分（partition）**，名字被替换但分组没错。

能推出什么：
    1. 兄弟组：同一外层下的所有内部类（含匿名类）；
    2. **匿名类的归属**——这正是以前只能靠"谁 new 它"来猜的部分：
       只要组里有一个 `abcd/X$y` 形式的名字，整组的父类就是 X；
    3. 反查：名字长得像 `X$y` 但分组与 X 的其他成员不一致 → 名字在撒谎。

输出：TSV  外层诱饵 <TAB> 推出的父探针 <TAB> 成员（逗号分隔） <TAB> 成员数
`--check` 额外把与当前 tsv 映射不一致的成员列出来。
"""
import os, sys, glob, re, collections

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from dexlib import Dex

HOME = os.path.expanduser('~')
DEXES = sorted(glob.glob(HOME + '/icd/orig/classes*.dex'))
TSV = _P.MAP
PARENT = re.compile(r'^(abcd/[A-Za-z0-9_]+)\$[^$]+$')


def load_groups():
    groups = collections.defaultdict(list)
    info = {}
    for p in DEXES:
        if not os.path.exists(p):
            continue
        d = Dex(open(p, 'rb').read())
        for cd in d.class_defs():
            cn = d.type(cd['class_idx'])
            if not cn.startswith('Labcd/'):
                continue
            if not cd['annotations_off']:
                continue
            try:
                anns = d.parse_annotation_set(d.u4(cd['annotations_off']))
            except Exception:
                continue
            enc = None
            for t, elems in anns:
                if t == 'Ldalvik/annotation/EnclosingClass;':
                    enc = dict(elems).get('value')
            if not isinstance(enc, str):
                continue
            plain = cn[1:-1]
            groups[enc].append(plain)
            info[plain] = enc
    return groups, info



def apply_groups(rows, tsv):
    """把"分组推出来的父类"落成 tsv 映射：未映射成员 → <父目标>$N（N 取该父下最小空闲号）

    只处理满足以下全部条件的组：
      * 组内父探针唯一且已映射；
      * 父目标的类名不以 $数字 结尾（否则它自己就是匿名类，不可能是别人的外层）；
      * 父目标不是 *.java 之类非类。
    """
    free = collections.defaultdict(set)
    for t in tsv.values():
        m = re.match(r'^(.*)\$(\d+)$', t)
        if m:
            free[m.group(1)].add(int(m.group(2)))
    todo = []
    for enc, parent, members in rows:
        t = tsv.get(parent)
        if not t or not parent.startswith('abcd/'):
            continue
        if re.search(r'\$\d+$', t):
            continue
        for m in members:
            if m not in tsv:
                todo.append((parent, t, m))
    todo.sort(key=lambda x: (x[1], x[2]))
    added = []
    for parent, t, m in todo:
        used = free[t]
        n = 1
        while n in used:
            n += 1
        free[t].add(n)
        added.append((m, '%s$%d' % (t, n), 'nest:EnclosingClass 分组（父=%s）' % parent))
    if not added:
        print('\n--apply：没有可补的项')
        return
    lines = open(TSV).read().rstrip('\n').split('\n')
    for m, t, ev in added:
        lines.append('%s\t%s\t%s' % (m[5:], t, ev))
    open(TSV, 'w').write('\n'.join(lines) + '\n')
    print('\n--apply：补了 %d 条' % len(added))
    for a in added:
        print('   %-14s → %s' % (a[0], a[1]))

def main():
    groups, info = load_groups()
    rows = []
    for enc, members in groups.items():
        parents = set()
        for m in members:
            mm = PARENT.match(m)
            if mm:
                parents.add(mm.group(1))
        parent = parents.pop() if len(parents) == 1 else ('?' if parents else '-')
        rows.append((enc, parent, sorted(members)))
    rows.sort(key=lambda r: (-len(r[2]), r[0]))

    multi = [r for r in rows if len(r[2]) > 1]
    print('外层诱饵 %d 个，其中成员数 >1 的组 %d 个' % (len(rows), len(multi)))
    print('能唯一推出父探针的组: %d' % sum(1 for r in rows if r[1].startswith('abcd/')))
    print('推不出（组内没有 X$y 形式的成员）: %d' % sum(1 for r in rows if r[1] == '-'))
    print('组内父探针冲突: %d' % sum(1 for r in rows if r[1] == '?'))

    tsv = {}
    if os.path.exists(TSV):
        for l in open(TSV):
            f = l.rstrip('\n').split('\t')
            if len(f) > 1:
                tsv['abcd/' + f[0]] = f[1]

    if '--check' in sys.argv:
        print('\n与当前 tsv 的交叉检查：')
        mism = collections.Counter()
        for enc, parent, members in rows:
            ptarget = tsv.get(parent)
            for m in members:
                t = tsv.get(m)
                if not t:
                    continue
                if ptarget and not t.startswith(ptarget + '$'):
                    mism[(parent, ptarget, m, t)] += 1
        print('  成员目标与"父目标$"不匹配: %d' % len(mism))
        for (p, pt, m, t) in list(mism)[:25]:
            print('    %-14s(→%-42s) 成员 %-14s → %s' % (p, pt, m, t))
        # 未映射的匿名类（组里有父探针，但自己没映射）
        print('\n  可借分组补映射的未映射类:')
        n = 0
        for enc, parent, members in rows:
            if not parent.startswith('abcd/') or parent not in tsv:
                continue
            for m in members:
                if m not in tsv:
                    print('    %-16s 属于 %-14s(→%s)' % (m, parent, tsv[parent]))
                    n += 1
        print('    共 %d 个' % n)

    if '--apply' in sys.argv:
        apply_groups(rows, tsv)

    out = HOME + '/out/work/enclosing_groups.tsv'
    with open(out, 'w') as fh:
        for enc, parent, members in rows:
            fh.write('%s\t%s\t%s\t%d\n' % (enc, parent, ','.join(members), len(members)))
    print('\n已写 %s' % out)
    print('\n成员数最多的 12 个组：')
    for enc, parent, members in rows[:12]:
        print('  %-22s 父=%-12s %2d  %s' % (enc, parent, len(members), members[:8]))


sys.exit(main())
