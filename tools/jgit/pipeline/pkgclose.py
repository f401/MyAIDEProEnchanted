#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
"""pkgclose.py [--apply] —— 用**并查集 + 不动点**一次算出"每个类该在哪个包"

为什么需要它
------------
`access_audit --suggest/--suggest2` 是**单点**建议：改一个类，会把它原来的访问者
变成新的违规者（链式漂移）；单点 place 之后 FART 往往就变得不确定（§30.3/§31.3）。

本工具把"访问 package-private 成员"看成**同包约束**，一次性求解：

    对每条引用 (C 访问 O 的包私有成员)  ⇒  union(包(C), 包(O))

* 已映射的类 ⇒ 包**固定**；
* 未映射的 `abcd/*` ⇒ 包是**变量**（默认 abcd，可被约束拉走）；
* 一个连通分量里若出现 **1 个**固定包 ⇒ 该分量所有变量都取它；
  出现 **≥2 个不同固定包** ⇒ 真冲突（靠挪包解决不了，必须改映射或改可见性）；
  没有固定包 ⇒ 整块留在 abcd。

输出：变量类 → `<目标包>/<混淆名>`（保留混淆名，不冒充 jgit 类名）。
"""
import os, sys, zipfile, collections

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import jvmbody as JB

HOME = os.path.expanduser('~')
ORACLE = HOME + '/out/oracle/jgit/j-3.7.1.201504261725-r.jar'
BASE = '/storage/emulated/0/MyAIDEProEnchanted/process/base/merged_ok.jar'
TSV = _P.MAP
APPLY = '--apply' in sys.argv
ACC_PUB, ACC_PROT, ACC_PRIV = 0x1, 0x4, 0x2

mp = {}
for l in open(TSV):
    f = l.rstrip('\n').split('\t')
    if len(f) > 1:
        mp[f[0] if '/' in f[0] else 'abcd/' + f[0]] = f[1]


def pkg(cn):
    return cn.rsplit('/', 1)[0] if '/' in cn else ''


def tgt(cn):
    return mp.get(cn, cn)


# ---- oracle: 成员可见性 ----
zo = zipfile.ZipFile(ORACLE)
orc = {}
for n in zo.namelist():
    if n.endswith('.class'):
        c = JB.parse(zo.read(n))
        if c and c['this']:
            orc[c['this']] = c


PLACE = set(v for v in mp.values() if v not in orc)   # place 出来的目标名（不在 oracle 里）


def is_place(t):
    """t 或它的任一外层前缀是 place 出来的名字（`lib/JP$a` 的祖先是 `lib/JP`）"""
    x = t
    while True:
        if x in PLACE:
            return True
        if '$' not in x:
            return False
        x = x.rsplit('$', 1)[0]


def member_vis(owner, nm, ds):
    """返回 'pub' / 'prot' / 'pkg' / None

    目标类不在 oracle 里（= place 出来的名字，如 lib/JP）时，退回**探针侧**的可见性：
    这些类原本都在 abcd 包，R8 把成员都做成了包私有，所以按 'pkg' 处理。
    """
    c = orc.get(owner)
    if not c:
        # 只有"我们故意 place 到某包"的类才按包私有处理；
        # 其它不在 oracle 里的类（a/a/*、com/termux/*、androidx…）与我们无关，跳过。
        return 'pkg' if is_place(owner) else None
    for m in c['members']:
        if m['name'] == nm and m['desc'] == ds:
            if m['acc'] & ACC_PUB:
                return 'pub'
            if m['acc'] & ACC_PROT:
                return 'prot'
            return 'pkg'
    return None


# ---- probe: 引用图 + 继承关系 ----
zb = zipfile.ZipFile(BASE)
probe = {}
for n in zb.namelist():
    if n.endswith('.class'):
        c = JB.parse(zb.read(n))
        if c and c['this']:
            probe[c['this']] = c

sup = {k: (v['sup'] or '') for k, v in probe.items()}
ifs = {k: list(v['ifaces']) for k, v in probe.items()}
anc_cache = {}


def anc(cn):
    if cn in anc_cache:
        return anc_cache[cn]
    out, st = set(), [cn]
    while st:
        x = st.pop()
        for p in ([sup.get(x, '')] + ifs.get(x, [])):
            if p and p not in out:
                out.add(p); st.append(p)
    anc_cache[cn] = out
    return out


# ---- 并查集 ----
par = {}


def find(x):
    par.setdefault(x, x)
    while par[x] != x:
        par[x] = par[par[x]]
        x = par[x]
    return x


def union(a, b):
    ra, rb = find(a), find(b)
    if ra != rb:
        par[rb] = ra


edges = []
for cn, c in probe.items():
    # 类型可达：super / ifaces / 描述符里的非 public 目标类
    tset = set()
    if c['sup']:
        tset.add(c['sup'])
    tset.update(c['ifaces'])
    import re
    for m in c['members']:
        tset.update(re.findall(r'L([A-Za-z0-9_$/$.]+);', m['desc'] or ''))
    for t in tset:
        ot = tgt(t)
        if ot == tgt(cn):
            continue
        # 类是否 public：用成员访问标志推不出，改用 class_def 的 acc（jvmbody 给了 acc_off，这里取 struct 值）
        edges.append((cn, t, 'type'))
    # 成员可达
    for idx, (ow, nm, ds, tag) in c.get('refmap', {}).items():
        ot = tgt(ow)
        if ot not in orc or ot == tgt(cn):
            continue
        v = member_vis(ot, nm, ds)
        if v == 'pkg':
            edges.append((cn, ow, 'member'))
        elif v == 'prot' and ow not in anc(cn):
            edges.append((cn, ow, 'prot'))

# 类级 public 判定：从 class 文件读 access_flags
import struct


def class_flags(b):
    off = 8
    cp = struct.unpack_from('>H', b, off)[0]
    off += 2
    i = 1
    while i < cp:
        t = b[off]; off += 1
        if t == 1:
            ln = struct.unpack_from('>H', b, off)[0]; off += 2 + ln
        elif t in (7, 8, 16, 19, 20):
            off += 2
        elif t == 15:
            off += 3
        elif t in (3, 4, 9, 10, 11, 12, 17, 18):
            off += 4
        elif t in (5, 6):
            off += 8; i += 1
        else:
            raise ValueError(t)
        i += 1
    return struct.unpack_from('>H', b, off)[0]


vis = {}
for n in zo.namelist():
    if n.endswith('.class'):
        try:
            vis[n[:-6]] = class_flags(zo.read(n))
        except Exception:
            pass

# 补上"类本身非 public" 的约束
extra = []
for cn, ow, kind in edges:
    if kind != 'type':
        continue
    ot = tgt(ow)
    if ot not in vis:
        if is_place(ot):                 # place 出来的类（含内部类）→ 按包私有处理
            extra.append((cn, ow))
    elif not (vis[ot] & ACC_PUB) and ot not in anc(cn):
        extra.append((cn, ow))
edges = [(c, o) for c, o, k in edges if k in ('member', 'prot')] + extra

for c, o in edges:
    union(tgt(c), tgt(o))

comp = collections.defaultdict(lambda: {'fixed': set(), 'members': []})
for cn, c in probe.items():
    t = tgt(cn)
    r = find(t)
    if cn in mp:
        comp[r]['fixed'].add(pkg(mp[cn]))
    else:
        comp[r]['members'].append(cn)

plan, conflict = {}, []
for r, d in comp.items():
    pk = {p for p in d['fixed'] if p}
    if len(pk) > 1:
        conflict.append((sorted(pk), d['members'][:6]))
        continue
    if len(pk) == 1 and d['members']:
        p = next(iter(pk))
        for m in d['members']:
            if not m.startswith('abcd/'):
                continue          # 只挪混淆体里的类，绝不搬 com/aide、androidx 等应用/第三方类
            if pkg(m) != p:
                plan[m] = '%s/%s' % (p, m.rsplit('/', 1)[-1])

print('约束边 %d 条；连通分量 %d 个' % (len(edges), len(comp)))
print('可解出目标包、需要挪的类 %d 个：' % len(plan))
for k in sorted(plan):
    print('   %-14s → %s' % (k, plan[k]))
if conflict:
    print('\n真冲突（同一分量里出现多个固定包，挪包解决不了）%d 组：' % len(conflict))
    for pk, ms in conflict[:10]:
        print('   %s  例: %s' % (pk, ms))

if APPLY and plan:
    lines = open(TSV).read().rstrip('\n').split('\n')
    have = set(l.split('\t')[0] for l in lines)
    n = 0
    for k, t in sorted(plan.items()):
        kk = k.replace('abcd/', '')
        if kk in have:
            continue
        lines.append('%s\t%s\tclose:pkgclose 并查集不动点（访问包私有 ⇒ 必须同包）' % (kk, t))
        n += 1
    open(TSV, 'w').write('\n'.join(lines) + '\n')
    print('\n已写入 tsv：%d 条' % n)
