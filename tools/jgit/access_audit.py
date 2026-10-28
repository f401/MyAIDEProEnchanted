#!/usr/bin/env python3
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
        if member is not None and not (member['acc'] & (ACC_PUB | ACC_PROT)):
            viol[('member-not-visible', '%s.%s%s' % (ow, nm, ds))] += 1
            detail[('member-not-visible', '%s.%s%s' % (ow, nm, ds))].append(cn)

print('类 %d 个；跨包不可达：%d 处（%d 个不同目标）' % (len(cls), sum(viol.values()), len(viol)))
for (kind, tgt), n in viol.most_common(TOP):
    print('  %-18s %-70s %d 处  例: %s' % (kind, tgt, n, detail[(kind, tgt)][0]))
