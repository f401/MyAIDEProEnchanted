#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
"""nestmatch.py [--apply] —— 在**已知父类**的范围内给内部类配对（形状 + 排除法）

思路：
  探针 X 已映射到目标 T，那么 X 的直接内部类 `abcd/X$y` 只可能是 T 的内部类 `T$z`。
  在小集合里做形状配对，比全库扫描确定得多；再用**排除法**补刀：
    N 个探针对 N 个候选，若 N-1 个已唯一确定，最后一个被迫确定。

判据（与 shapefind 一致）：
  字段多重集（类型 + static/final）+ 方法多重集（描述符 + static/可见性）+ super
  先按 strict（类型归一化）比，全都不中再按 loose（对象类型折成 O）比。

用法：
    python3 tools/jgit/nestmatch.py           # 只报告
    python3 tools/jgit/nestmatch.py --apply   # 写进 tsv
"""
import os, sys, re, zipfile, collections

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import jvmbody as JB

HOME = os.path.expanduser('~')
ORACLE = HOME + '/out/oracle/jgit/j-3.7.1.201504261725-r.jar'
BASE = '/storage/emulated/0/MyAIDEProEnchanted/process/base/merged_ok.jar'
TSV = _P.MAP
APPLY = '--apply' in sys.argv

mp = {}
for l in open(TSV):
    f = l.rstrip('\n').split('\t')
    if len(f) > 1:
        mp[f[0] if '/' in f[0] else 'abcd/' + f[0]] = f[1]
TY = re.compile(r'L([A-Za-z0-9_$/$.]+);')


def norm(d):
    return TY.sub(lambda m: 'L' + mp.get(m.group(1), m.group(1)) + ';', d)


def collapse(d):
    if '(' not in d:
        return 'O' if d.lstrip('[').startswith('L') else d.lstrip('[')
    b = d[1:d.index(')')]
    r = d[d.index(')') + 1:]
    one = lambda x: 'O' if x.lstrip('[').startswith('L') else x.lstrip('[')
    return '(' + ''.join(one(x) for x in re.findall(r'\[*(?:L[^;]+;|[ZBCSIJFD])', b)) + ')' + one(r)


def shapes(c):
    s = {}
    for name, conv in (('strict', norm), ('loose', collapse)):
        fs = collections.Counter()
        ms = collections.Counter()
        for m in c['members']:
            if m['kind'] == 'f':
                fs[(conv(m['desc']), m['acc'] & 0x18)] += 1
            else:
                ms[(conv(m['desc']), m['acc'] & 0x8)] += 1
        s[name] = (tuple(sorted(fs.items())), tuple(sorted(ms.items())), conv(c['sup'] or ''))
    return s


zo = zipfile.ZipFile(ORACLE)
orc = {}
for n in zo.namelist():
    if n.endswith('.class'):
        c = JB.parse(zo.read(n))
        if c and c['this']:
            orc[c['this']] = shapes(c)

zb = zipfile.ZipFile(BASE)
probe = {}
for n in zb.namelist():
    if n.endswith('.class'):
        c = JB.parse(zb.read(n))
        if c and c['this']:
            probe[c['this']] = shapes(c)

taken = set(mp.values())
# 直接内部类：名字里恰好一个 '$'
kids = collections.defaultdict(list)
for cn in probe:
    if '$' not in cn:
        continue
    parent = cn.rsplit('$', 1)[0]
    if cn.count('$') == 1 or parent in probe:
        kids[parent].append(cn)

out = []
for x, t in mp.items():
    if not x.startswith('abcd/') or t not in orc:
        continue
    pk = sorted(k for k in kids.get(x, []) if k not in mp)
    ok = sorted(o for o in orc if o.startswith(t + '$') and o.count('$') == t.count('$') + 1 and o not in taken)
    if not pk or not ok:
        continue
    for mode in ('strict', 'loose'):
        pairs = {}
        for p in pk:
            cand = [o for o in ok if orc[o][mode] == probe[p][mode]]
            if len(cand) == 1:
                pairs[p] = cand[0]
        # 排除法：一个目标被唯一认领后，其他探针不再考虑它
        used = collections.Counter(pairs.values())
        pairs = {p: t2 for p, t2 in pairs.items() if used[t2] == 1}
        if len(pairs) == len(pk) and len(pk) == len(ok):
            # 一对一且全部确定
            pass
        if pairs:
            out.append((x, t, mode, pk, ok, pairs))
            break

n_add = 0
for x, t, mode, pk, ok, pairs in out:
    print('%s(%s) %s  %d 探针 / %d 候选' % (x, t.rsplit('/', 1)[-1], mode, len(pk), len(ok)))
    for p in pk:
        print('   %-16s → %s' % (p.rsplit('$', 1)[-1], pairs.get(p, '（未定）')))
    n_add += len(pairs)

print('\n可确定 %d 个内部类' % n_add)
if APPLY and n_add:
    lines = open(TSV).read().rstrip('\n').split('\n')
    have = set(l.split('\t')[0] for l in lines)
    n = 0
    for x, t, mode, pk, ok, pairs in out:
        for p, tgt in pairs.items():
            k = p.replace('abcd/', '')
            if k in have or tgt in taken:
                continue
            lines.append('%s\t%s\tnest:%s 配对（父 %s 已知，形状+排除法）' % (k, tgt, mode, x))
            have.add(k); taken.add(tgt); n += 1
    open(TSV, 'w').write('\n'.join(lines) + '\n')
    print('已写入 tsv：%d 条' % n)
