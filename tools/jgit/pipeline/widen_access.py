#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
"""widen_access.py —— 把"跨包访问 package-private 成员"的 access 放宽到 public/protected。

为什么需要
----------
把混淆类映射到 `org/eclipse/jgit/...` 之后，原本同在 `abcd` 包里的类被分到不同包，
原来合法的 package-private 访问/覆写会变成：
  * 运行期 IllegalAccessError（跨包访问非 public 成员）；
  * 覆写关系断裂（跨包的 package-private 方法不构成 override，调用走不到子类实现）。
本工具按"最终的包"重新算一遍，把出问题的 class/field/method 的 access_flags 放宽。
用户已授权改 `merged_ok.jar` 的 access。

两种用法（FART 前 / FART 后都行）
----------------------------------
  # FART 之前：名字还是混淆的，需要类映射表来算"最终的包"
  python3 tools/jgit/widen_access.py process/base/merged_ok.jar \
      --map ~/out/work/jgit_map_clean.tsv --out process/base/merged_pub.jar --apply

  # FART 之后：名字已经是最终的，直接按当前包算
  python3 tools/jgit/widen_access.py out/fart.jar --out out/fart_pub.jar --apply

判定
----
pkg(X) = 映射后 X 的包（未映射则用原名里的包）。
对每个类 C 的常量池引用 (owner O, name, desc)：
  pkg(C) != pkg(O) 且 O 的该成员不是 public   ⇒ 成员放宽为 public，并把 O 放宽为 public。
继承/覆写：C 的 super/interface O 在别的包，且 O 里存在与 C 同 (name,desc) 的非 public 非 private
  虚方法 ⇒ 两边都放宽为 protected（保证仍是 override）。
只放宽、不删除；不改字节码指令，因此对语义是保守改动（多暴露一些可见性）。
"""
import sys, zipfile, struct, os, collections

ACC_PUBLIC, ACC_PRIVATE, ACC_PROTECTED, ACC_STATIC = 0x0001, 0x0002, 0x0004, 0x0008


def parse(b):
    """→ dict(cp refs, members with offsets, this/super/ifaces)"""
    n = struct.unpack_from('>H', b, 8)[0]
    o = 10; i = 1
    utf = {}; cls = {}; nat = {}; refs = {}; clsrefs = []
    while i < n:
        tag = b[o]; o += 1
        if tag == 1:
            ln = struct.unpack_from('>H', b, o)[0]
            utf[i] = b[o+2:o+2+ln].decode('utf-8', 'replace'); o += 2 + ln
        elif tag == 7:
            cls[i] = struct.unpack_from('>H', b, o)[0]; o += 2
        elif tag == 8:
            o += 2
        elif tag == 12:
            nat[i] = struct.unpack_from('>HH', b, o); o += 4
        elif tag in (9, 10, 11):
            ci, ni = struct.unpack_from('>HH', b, o); o += 4
            refs[i] = (tag, ci, ni)
        elif tag == 15:
            o += 3
        elif tag == 16:
            o += 2
        elif tag in (3, 4, 17, 18):
            o += 4
        elif tag in (5, 6):
            o += 8; i += 1
        elif tag in (19, 20):
            o += 2
        else:
            raise ValueError(tag)
        i += 1
    acc_off = o
    this_i = struct.unpack_from('>H', b, o + 2)[0]
    sup_i = struct.unpack_from('>H', b, o + 4)[0]
    ic = struct.unpack_from('>H', b, o + 6)[0]
    iface_i = [struct.unpack_from('>H', b, o + 8 + 2 * k)[0] for k in range(ic)]
    p = o + 8 + 2 * ic
    members = []
    for kind in ('f', 'm'):
        cnt = struct.unpack_from('>H', b, p)[0]; p += 2
        for _ in range(cnt):
            a_off = p
            acc, nm, ds, ac = struct.unpack_from('>HHHH', b, p); p += 8
            for _ in range(ac):
                ln = struct.unpack_from('>I', b, p + 2)[0]; p += 6 + ln
            members.append(dict(kind=kind, acc=acc, acc_off=a_off,
                                name=utf.get(nm), desc=utf.get(ds)))
    named_refs = []
    for idx, (tag, ci, ni) in refs.items():
        ow = utf.get(cls.get(ci)); nn = nat.get(ni)
        if not ow or not nn:
            continue
        named_refs.append(dict(tag=tag, owner=ow, name=utf.get(nn[0]), desc=utf.get(nn[1])))
    return dict(acc_off=acc_off, acc=struct.unpack_from('>H', b, acc_off)[0],
                this=utf.get(cls.get(this_i)), sup=utf.get(cls.get(sup_i)),
                ifaces=[utf.get(cls.get(x)) for x in iface_i],
                members=members, refs=named_refs,
                clsrefs=[utf.get(cls.get(x)) for x in cls.values() if utf.get(cls.get(x))])


def load_map(path):
    mp = {}
    for l in open(path, encoding='utf-8'):
        f = l.rstrip('\n').split('\t')
        if len(f) > 1 and f[0] != 'abcd_class':
            probe = f[0] if '/' in f[0] else 'abcd/' + f[0]
            mp[probe] = f[1]
    return mp


def pkg(name, mp):
    t = mp.get(name, name)
    return t.rsplit('/', 1)[0] if '/' in t else ''


def main():
    if len(sys.argv) < 2:
        raise SystemExit(__doc__)
    src = sys.argv[1]
    out = None; mapf = None; apply_ = '--apply' in sys.argv; report_only = '--report' in sys.argv
    args = sys.argv[2:]
    for k, a in enumerate(args):
        if a == '--out': out = args[k+1]
        if a == '--map': mapf = args[k+1]
    mp = load_map(mapf) if mapf else {}
    z = zipfile.ZipFile(src)
    infos = {i.filename: i for i in z.infolist()}
    parsed = {}
    for n in z.namelist():
        if n.endswith('.class'):
            try: parsed[n] = parse(z.read(n))
            except Exception as e: print('!! parse fail', n, e)
    # 成员索引：owner -> (name,desc) -> acc/offset
    midx = {}
    for n, d in parsed.items():
        this = d['this']
        midx[this] = {(m['name'], m['desc']): m for m in d['members']}
    widen_self = collections.defaultdict(set)   # this -> {(kind,name,desc)}
    widen_class = set()
    reasons = []
    for n, d in parsed.items():
        this = d['this']; pc = pkg(this, mp); pb_c = pkg(this, {})
        # 1) 成员引用
        for r in d['refs']:
            po = pkg(r['owner'], mp)
            if pc == po: continue
            if pb_c != pkg(r['owner'], {}):   # 原来就不在同一个包：不是本次映射造成的，跳过
                continue
            m = midx.get(r['owner'], {}).get((r['name'], r['desc']))
            if m is None: continue
            if m['acc'] & ACC_PUBLIC: continue
            widen_self[r['owner']].add((m['kind'], m['name'], m['desc']))
            widen_class.add(r['owner'])
            reasons.append('%s(%s) -> %s.%s%s [%s]' % (this, pc, r['owner'], r['name'], r['desc'], po))
        # 2) 继承/覆写
        for sup in ([d['sup']] if d['sup'] else []) + list(d['ifaces']):
            if not sup or pkg(sup, mp) == pc: continue
            if pb_c != pkg(sup, {}):
                continue
            om = midx.get(sup, {})
            mine = {(m['name'], m['desc']) for m in d['members'] if m['kind'] == 'm'}
            for (nm, ds), m in om.items():
                if m['kind'] != 'm' or (nm, ds) not in mine: continue
                if nm.startswith('<'): continue                      # <init>/<clinit> 不是虚方法
                if m['acc'] & (ACC_PUBLIC | ACC_PRIVATE | ACC_PROTECTED): continue
                if m['acc'] & ACC_STATIC: continue                    # 静态不构成覆写
                widen_self[sup].add(('m', nm, ds))
                widen_self[this].add(('m', nm, ds))
                widen_class.add(sup)
                reasons.append('OVERRIDE %s.%s%s <-> %s [%s]' % (this, nm, ds, sup, pkg(sup, mp)))
    print('跨包需放宽：类 %d / 成员 %d' % (len(widen_class), sum(len(v) for v in widen_self.values())))
    for r in sorted(set(reasons))[:40]:
        print('   ', r)
    if report_only or not apply_:
        return
    out = out or (src[:-4] + '_pub.jar')
    zo = zipfile.ZipFile(out, 'w', zipfile.ZIP_DEFLATED)
    changed = 0
    for n in z.namelist():
        data = z.read(n)
        if n in parsed:
            d = parsed[n]
            b = bytearray(data); this = d['this']; touched = False
            if this in widen_class and not (d['acc'] & ACC_PUBLIC):
                struct.pack_into('>H', b, d['acc_off'], d['acc'] | ACC_PUBLIC); touched = True
            for (kind, nm, ds) in widen_self.get(this, ()):
                m = midx[this][(nm, ds)]
                acc = struct.unpack_from('>H', b, m['acc_off'])[0]
                if acc & (ACC_PUBLIC | ACC_PROTECTED): continue
                new = (acc | ACC_PUBLIC) if kind == 'f' else (acc | ACC_PROTECTED)
                struct.pack_into('>H', b, m['acc_off'], new); touched = True
            if touched:
                data = bytes(b); changed += 1
        zi = infos[n]
        info = zipfile.ZipInfo(n, date_time=zi.date_time)
        info.compress_type = zipfile.ZIP_DEFLATED
        info.external_attr = zi.external_attr
        zo.writestr(info, data)
    zo.close()
    print('已写出 %s（改写 %d 个 class）' % (out, changed))


if __name__ == '__main__':
    main()
