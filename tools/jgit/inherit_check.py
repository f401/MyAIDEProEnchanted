#!/usr/bin/env python3
"""inherit_check.py —— 「映射必须沿继承链闭合」检查（FART 结果不确定的根因）

背景
----
R8/ProGuard 为保住虚分派，**同一个 override 家族用同一个混淆名**。
所以若子类把 `Zo ()Z` 判成 isPeeled、而父接口把同名同描述符判成 isSymbolic（或干脆没判），
FART 在重写 `invokeinterface` 时找不到精确 key，就会沿继承链兜底查找 ——
**兜底结果取决于 HashMap 遍历顺序，同一输入两次产出可以不同**（实测过 3 个类不一致）。
更糟的是错的那一半会在运行时 `AbstractMethodError` / 调错方法。

规则
----
若探针 P 把 (旧名, 描述符) 映射成 n，而 P 在**混淆侧**的某个祖先 A 也声明了同一个
(旧名, 描述符)，那么 A 必须映射成同一个 n。两种情况都报：
  MISSING  祖先没映射（会导致调用点靠兜底 → 不确定）
  CONFLICT 祖先映射成了别的名字（运行时分派错）

用法
----
    python3 tools/jgit/inherit_check.py            # 只报告
    python3 tools/jgit/inherit_check.py --apply    # 把 MISSING 补进 tsrg（同名同描述符直接继承）
"""
import os, sys, zipfile, collections

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import jvmbody as JB

HOME = os.path.expanduser('~')
TSRG = HOME + '/out/work/jgit_members_clean.tsrg'
BASE = '/storage/emulated/0/MyAIDEProEnchanted/process/base/merged_ok.jar'
if not os.path.exists(BASE):
    BASE = HOME + '/out/fart/merged_ok.jar'

# 1. 混淆侧结构
z = zipfile.ZipFile(BASE)
decl = {}       # class -> set((name,desc))
sup = {}
ifs = {}
for n in z.namelist():
    if not n.endswith('.class'):
        continue
    c = JB.parse(z.read(n))
    if not c or not c['this']:
        continue
    cn = c['this']
    sup[cn] = c['sup'] or ''
    ifs[cn] = list(c['ifaces'])
    decl[cn] = set((m['name'], m['desc'])
                   for m in c['members'] if m['kind'] == 'm')

# 2. 映射
maps = collections.defaultdict(dict)   # probe -> {(name,desc): new}
cur = None
for l in open(TSRG):
    l = l.rstrip('\n')
    if not l:
        continue
    if l.startswith('\t'):
        f = l.lstrip('\t').split(' ')   # 注意：直接 split(' ') 会得到首元素为 '' 的坑
        if len(f) >= 3:
            maps[cur][(f[0], f[1])] = f[-1]
    else:
        cur = l.split(' ')[0]

cache = {}


def ancestors(t):
    if t in cache:
        return cache[t]
    out, stack = set(), [t]
    while stack:
        x = stack.pop()
        for p in ([sup.get(x, '')] + ifs.get(x, [])):
            if p and p not in out:
                out.add(p)
                stack.append(p)
    cache[t] = out
    return out


missing = []
conflict = []
for p, km in list(maps.items()):
    anc = ancestors(p)
    for (nm, desc), new in km.items():
        for a in anc:
            if a not in decl or (nm, desc) not in decl[a]:
                continue
            have = maps.get(a, {}).get((nm, desc))
            if have is None:
                missing.append((p, a, nm, desc, new))
            elif have != new:
                conflict.append((p, a, nm, desc, new, have))

print('CONFLICT（祖先映射成别的名字 → 运行时分派错）: %d' % len(conflict))
for c in sorted(conflict)[:20]:
    print('  %-12s 继承 %-12s  %-6s %-22s 子=%s 祖先=%s' % c)

# 去重：同一个 (祖先,键) 被多个子类继承，只补一次
uniq = {}
for p, a, nm, desc, new in missing:
    uniq.setdefault((a, nm, desc), new)
print('\nMISSING（祖先未映射 → FART 兜底、结果不确定）: %d 条（去重后 %d 个祖先成员）'
      % (len(missing), len(uniq)))
cnt = collections.Counter(a for a, _, _ in uniq)
for a, n in cnt.most_common(15):
    print('  %-46s %d 个成员待补' % (a, n))

if '--apply' in sys.argv:
    # 只在「同一 (祖先,键) 的所有子类都给出同一个名字」时才补，避免把冲突带进祖先
    cand = collections.defaultdict(set)
    for p, a, nm, desc, nw in missing:
        if not a.startswith('abcd/'):      # 非混淆祖先（jsch/android/…）本来就是真名，不要动
            continue
        cand[(a, nm, desc)].add(nw)
    add = collections.defaultdict(list)
    skipped = 0
    for (a, nm, desc), names in cand.items():
        if len(names) > 1:
            skipped += 1
            continue
        add[a].append('\t%s %s %s' % (nm, desc, next(iter(names))))

    lines = open(TSRG).read().split('\n')
    out = []
    n_add = 0
    for l in lines:
        out.append(l)
        if l and not l.startswith('\t'):
            k = l.split(' ')[0]
            if k in add:
                ins = add.pop(k)
                out.extend(ins)
                n_add += len(ins)
    open(TSRG, 'w').write('\n'.join(out))
    print('\n已补进 tsrg：%d 条成员（%d 组因子类互相矛盾而跳过）' % (n_add, skipped))
