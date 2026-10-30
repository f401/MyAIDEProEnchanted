#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""access_audit.py <jar> [--top N] —— 预演 `IllegalAccessError`（跨包访问 package-private）

原理：JVM 在**链接期**检查访问权限。改名的风险在于：
  原包 `abcd` 里的 A、B 互相访问 package-private 成员是合法的；
  一旦 A 被改名到 `org.eclipse.jgit.x`、B 留在 `abcd`（或另一个包），就会炸。
  我们踩过：`IllegalAccessError: TransportHttp attempting to access abcd.vJ`。

检查三类：
  1. **类型可达**：C 的 super/接口/字段与方法描述符里出现的类型 T，
     若 T 与 C 不同包，则 T 必须是 public；
  2. **成员可达**：C 的常量池里引用的 owner+name+desc，
     若 owner 与 C 不同包，则 owner 必须 public 且该成员 public/protected；
  3. **自身可见性**：C 若被别的包的类引用，C 必须 public（由 1 覆盖）。

输出按 (原因, owner) 汇总，--top 控制明细条数。
"""
import os, sys, zipfile, collections

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import jvmbody as JB

jar = sys.argv[1]
TOP = 30
if '--top' in sys.argv:
    TOP = int(sys.argv[sys.argv.index('--top') + 1])

z = zipfile.ZipFile(jar)
cls = {}
for n in z.namelist():
    if not n.endswith('.class'):
        continue
    try:
        c = JB.parse(z.read(n))
    except Exception:
        continue
    if c and c['this']:
        cls[c['this']] = c

ACC_PUB = 0x1
ACC_PROT = 0x4
ACC_PRIV = 0x2


def pkg(cn):
    return cn.rsplit('/', 1)[0] if '/' in cn else ''


def is_public(cn):
    c = cls.get(cn)
    return bool(c and c['members'] is not None and (c['acc_off'] and True)) and (c_vis.get(cn, 0) & ACC_PUB)


# 先收集每个类的访问标志（jvmbody 没直接给 class access_flags，从 members 里推不出，需另读）
c_vis = {}
for n in z.namelist():
    if not n.endswith('.class'):
        continue
    b = z.read(n)
    # ClassFile: magic(4) minor(2) major(2) cp_count(2) ... access_flags 紧跟常量池，太麻烦；
    # 用 jvmbody 解析时顺手拿到的 acc_off 不行，这里改从 members 推：
    c_vis[n[:-6]] = 0x1 if not n.startswith('') else c_vis.get(n[:-6], 0)
# 简化：把"是否 public"用 javap 之外的办法——读 class 文件的 access_flags（需要跳过常量池）
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
            raise ValueError('cp tag %d' % t)
        i += 1
    return struct.unpack_from('>H', b, off)[0]


for n in z.namelist():
    if n.endswith('.class'):
        try:
            c_vis[n[:-6]] = class_flags(z.read(n))
        except Exception:
            pass

# 子类关系（用于判定 protected 成员的跨包访问是否合法）
_sub = {}


def is_sub(c, o, seen=None):
    if c == o:
        return True
    if c in _sub:
        return o in _sub[c]
    out, st = set(), [c]
    while st:
        x = st.pop()
        cc = cls.get(x)
        if not cc:
            continue
        for p2 in ([cc['sup']] if cc['sup'] else []) + list(cc['ifaces']):
            if p2 and p2 not in out:
                out.add(p2); st.append(p2)
    _sub[c] = out
    return o in out


viol = collections.Counter()
detail = collections.defaultdict(list)

for cn, c in cls.items():
    p = pkg(cn)
    # 1. 描述符里的类型
    refs_t = set()
    if c['sup']:
        refs_t.add(c['sup'])
    for i in c['ifaces']:
        refs_t.add(i)
    for m in c['members']:
        for t in [x for x in __import__('re').findall(r'L([A-Za-z0-9_$/$.]+);', m['desc'] or '')]:
            refs_t.add(t)
    for t in refs_t:
        if t in cls and pkg(t) != p and not (c_vis.get(t, 1) & ACC_PUB):
            viol[('type', t)] += 1
            detail[('type', t)].append(cn)
    # 2. 常量池里的成员引用
    for idx, (ow, nm, ds, tag) in c['refmap'].items():
        if ow not in cls or pkg(ow) == p:
            continue
        oc = cls[ow]
        if not (c_vis.get(ow, 1) & ACC_PUB):
            viol[('owner-not-public', ow)] += 1
            detail[('owner-not-public', ow)].append(cn)
            continue
        member = None
        for mm in oc['members']:
            if mm['name'] == nm and mm['desc'] == ds:
                member = mm
                break
        if member is not None and (member['acc'] & ACC_PROT) and not (member['acc'] & ACC_PUB):
            if is_sub(cn, ow):          # protected 成员对子类合法（即使跨包）
                continue
        if member is not None and not (member['acc'] & (ACC_PUB | ACC_PROT)):
            viol[('member-not-visible', '%s.%s%s' % (ow, nm, ds))] += 1
            detail[('member-not-visible', '%s.%s%s' % (ow, nm, ds))].append(cn)

print('类 %d 个；跨包不可达：%d 处（%d 个不同目标）' % (len(cls), sum(viol.values()), len(viol)))

if '--suggest' in sys.argv:
    # 对每个"仍在 abcd/ 里的访问者"，收集它踩到的 owner 所在包；
    # 若只有一个包，说明它本该躺在那个包里 → 建议只挪包、保留混淆名
    acc = collections.defaultdict(set)
    for (kind, tgt), n in viol.items():
        owner = tgt if kind != 'member-not-visible' else tgt.rsplit('.', 1)[0]
        for a in detail[(kind, tgt)]:
            if a.startswith('abcd/'):
                acc[a].add(pkg(owner))
    auto = {a: next(iter(ps)) for a, ps in acc.items() if len(ps) == 1}
    mixed = {a: sorted(ps) for a, ps in acc.items() if len(ps) > 1}
    print('\n建议只挪包（访问者仍在 abcd，且所有被踩 owner 同属一个包）%d 个：' % len(auto))
    for a, pk in sorted(auto.items()):
        print('   %-12s → %s/%s' % (a, pk, a.rsplit('/', 1)[-1]))
    if mixed:
        print('\n跨多个包，需人工判 %d 个：' % len(mixed))
        for a, ps in sorted(mixed.items()):
            print('   %-12s %s' % (a, ps))

if '--suggest2' in sys.argv:
    # 反向：被访问的 owner 自己还叫 abcd/*（未映射），而访问者已改名到某包
    # ⇒ 把 owner 挪进"访问者所在的包"（若所有访问者同包）
    own = collections.defaultdict(set)
    for (kind, tgt), n in viol.items():
        owner = tgt if kind != 'member-not-visible' else tgt.rsplit('.', 1)[0]
        if not owner.startswith('abcd/'):
            continue
        for a in detail[(kind, tgt)]:
            own[owner].add(pkg(a))
    auto = {o: next(iter(ps)) for o, ps in own.items() if len(ps) == 1}
    mixed = {o: sorted(ps) for o, ps in own.items() if len(ps) > 1}
    print('\n【反向】owner 仍在 abcd、访问者同包 %d 个：' % len(auto))
    for o, pk in sorted(auto.items()):
        print('   %-12s → %s/%s' % (o, pk, o.rsplit('/', 1)[-1]))
    if mixed:
        print('【反向】访问者跨多包 %d 个：' % len(mixed))
        for o, ps in sorted(mixed.items()):
            print('   %-12s %s' % (o, ps))
for (kind, tgt), n in viol.most_common(TOP):
    print('  %-18s %-70s %d 处  例: %s' % (kind, tgt, n, detail[(kind, tgt)][0]))
