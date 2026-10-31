#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
import jvm  # noqa: E402  （只借它的指令长度表）
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
            code_off = None
            for _ in range(ac):
                an = struct.unpack_from('>H', b, p)[0]
                ln = struct.unpack_from('>I', b, p + 2)[0]
                if kind == 'm' and utf.get(an) == 'Code':
                    cl = struct.unpack_from('>I', b, p + 10)[0]
                    code_off = (p + 14, cl)
                p += 6 + ln
            members.append(dict(kind=kind, acc=acc, acc_off=a_off,
                                name=utf.get(nm), desc=utf.get(ds), code_off=code_off))
    named_refs = []
    for idx, (tag, ci, ni) in refs.items():
        ow = utf.get(cls.get(ci)); nn = nat.get(ni)
        if not ow or not nn:
            continue
        named_refs.append(dict(tag=tag, owner=ow, name=utf.get(nn[0]), desc=utf.get(nn[1])))
    # 类级访问：new / checkcast / instanceof / anewarray / multianewarray / ldc(class)
    # 这些不会出现在 refs（成员引用）里，但对 package-private 类同样会触发 Illegal class access。
    class_uses = set()
    for m in members:
        if m['kind'] != 'm' or not m['code_off']:
            continue
        off, ln = m['code_off']
        code = b[off:off + ln]
        i = 0
        while i < len(code):
            op = code[i]
            idx = None
            if op in (0xbb, 0xc0, 0xc1, 0xbd, 0x13):
                idx = struct.unpack_from('>H', code, i + 1)[0]; step = 3
            elif op == 0xc5:
                idx = struct.unpack_from('>H', code, i + 1)[0]; step = 4
            elif op == 0x12:
                idx = code[i + 1]; step = 2
            else:
                step = jvm.LEN.get(op, 1)
            if idx is not None:
                nm2 = utf.get(cls.get(idx))
                if nm2:
                    class_uses.add(nm2)
            i += step
    return dict(class_uses=class_uses,
                acc_off=acc_off, acc=struct.unpack_from('>H', b, acc_off)[0],
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
    mp = load_map(mapf or _P.MAP) if (mapf or os.path.exists(_P.MAP)) else {}
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
            if m['acc'] & ACC_PUBLIC: continue        # 已 public（幂等）
            # 注意：不能只升到 protected —— 构造器/静态方法的跨包调用需要 public，
            # protected 只解决"跨包 override"。统一 public 最省事且只放宽不收紧。
            widen_self[r['owner']].add((m['kind'], m['name'], m['desc']))
            widen_class.add(r['owner'])
            reasons.append('%s(%s) -> %s.%s%s [%s]' % (this, pc, r['owner'], r['name'], r['desc'], po))
        # 1b) 类级访问：别人 new/checkcast/const-class 我
        for cn in d.get('class_uses', ()):
            po = pkg(cn, mp)
            if pc == po:
                continue
            if pb_c != pkg(cn, {}):
                continue
            pd = parsed.get(cn + '.class')
            if pd is None or (pd['acc'] & ACC_PUBLIC):
                continue                    # 已经 public：不用再放宽（保证幂等）
            widen_class.add(cn)
            reasons.append('CLASS %s -> %s [%s]' % (this, cn, po))
        # 1c) 继承/实现：父类或接口本身是 package-private 且映射后跨包
        for cn in ([d['sup']] if d.get('sup') else []) + list(d.get('ifaces') or []):
            po = pkg(cn, mp)
            if pc == po:
                continue
            if pb_c != pkg(cn, {}):
                continue
            pd = parsed.get(cn + '.class')
            if pd is None or (pd['acc'] & ACC_PUBLIC):
                continue
            widen_class.add(cn)
            reasons.append('SUPER %s -> %s [%s]' % (this, cn, po))
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
                # 清掉 private/protected，否则会同时带 public+protected → dex 校验失败
                struct.pack_into('>H', b, d['acc_off'],
                                 (d['acc'] & ~(ACC_PRIVATE | ACC_PROTECTED)) | ACC_PUBLIC)
                touched = True
            for (kind, nm, ds) in widen_self.get(this, ()):
                m = midx[this][(nm, ds)]
                acc = struct.unpack_from('>H', b, m['acc_off'])[0]
                if acc & ACC_PUBLIC: continue          # 只跳过已 public（protected 对跨包调用不够）
                # 必须**清掉** private/protected：dex 校验只允许 public/protected/private 三者之一
                new = (acc & ~(ACC_PRIVATE | ACC_PROTECTED)) | ACC_PUBLIC
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
    # 自检：public 不能和 private/protected 并存（dex 校验会拒绝：
    # "Field may have only one of public/protected/private"）
    zc = zipfile.ZipFile(out); clash = 0
    for n2 in zc.namelist():
        if not n2.endswith('.class'):
            continue
        d2 = zc.read(n2)
        try:
            c2 = parse(d2)
        except Exception:
            continue
        if (struct.unpack_from('>H', d2, c2['acc_off'])[0] & 0x7) == 0x5 or \
           (struct.unpack_from('>H', d2, c2['acc_off'])[0] & 0x7) == 0x3:
            clash += 1
        for m2 in c2['members']:
            v = m2['acc'] & 0x7
            if v in (0x3, 0x5):        # public+private / public+protected
                clash += 1
    print('  自检：public 与 private/protected 并存 %d 处（应为 0）' % clash)


if __name__ == '__main__':
    main()
