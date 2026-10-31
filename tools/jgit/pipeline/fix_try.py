#!/usr/bin/env python3
"""fix_try.py —— 修 dex2jar 转译造成的"异常表范围偏小"。

症状（实测）：
    java.lang.ArrayIndexOutOfBoundsException: length=292; index=292
      at org.eclipse.jgit.lib.Config$StringReader.read(Unknown Source:8)

`Config$StringReader.read()` 是靠"故意越界"判断 EOF 的：

    int read() {
        char[] b = buf; int p = pos; pos = p + 1;
        try { return b[p]; }                 // ← caload 必须在 try 里
        catch (ArrayIndexOutOfBoundsException e) { pos = buf.length; return -1; }
    }

dex2jar 转出来的 class 里，try 的 `end_pc` 止于 `aload`（17），把后面的 `caload`（19）
排除在外 → 越界异常不被捕获 → 崩。

本工具只做一件事：当 catch 类型是 `*IndexOutOfBoundsException`、且 `end_pc` 之后几条
指令内就是数组加载（iaload..saload）时，把 `end_pc` 后移到该加载之后。
`end_pc` 是 u2，改值不改长度，所以直接就地 patch。

用法:
  python3 tools/jgit/pipeline/fix_try.py <in.jar> [<out.jar>] [--apply]
"""
import struct
import sys
import zipfile

LOAD = set(range(0x2e, 0x36))          # iaload..saload

LEN = {}
for o in (0x10, 0x15, 0x16, 0x17, 0x18, 0x19, 0x36, 0x37, 0x38, 0x39, 0x3a, 0xa9, 0xbc):
    LEN[o] = 2
for o in (0x11, 0x12, 0x84, 0xb2, 0xb3, 0xb4, 0xb5, 0xb6, 0xb7, 0xb8, 0xb9, 0xbb, 0xbd, 0xc0, 0xc1):
    LEN[o] = 3
for o in range(0x99, 0xa9):
    LEN[o] = 3
for o in (0xc6, 0xc7):
    LEN[o] = 3
LEN.update({0x13: 3, 0x14: 3, 0xc5: 4, 0xba: 5, 0xc8: 5, 0xc9: 5})


def pool(d):
    n = struct.unpack_from('>H', d, 8)[0]
    o, i, utf, cls = 10, 1, {}, {}
    while i < n:
        tag = d[o]; o += 1
        if tag == 1:
            ln = struct.unpack_from('>H', d, o)[0]
            utf[i] = d[o + 2:o + 2 + ln].decode('utf-8', 'replace'); o += 2 + ln
        elif tag == 7:
            cls[i] = struct.unpack_from('>H', d, o)[0]; o += 2
        elif tag in (5, 6):
            o += 8; i += 1
        elif tag in (8, 16, 19, 20):
            o += 2
        elif tag == 15:
            o += 3
        elif tag in (3, 4, 9, 10, 11, 12, 17, 18):
            o += 4
        else:
            raise ValueError(tag)
        i += 1
    return utf, cls, o


def scan(d):
    """→ [(end_pc 的文件偏移, 旧值, 新值, 类, 方法, 描述符)]"""
    utf, cls, p = pool(d)
    p += 6
    ic = struct.unpack_from('>H', d, p)[0]; p += 2 + 2 * ic
    out = []
    for kind in ('f', 'm'):
        cnt = struct.unpack_from('>H', d, p)[0]; p += 2
        for _ in range(cnt):
            _acc, nm, ds, ac = struct.unpack_from('>HHHH', d, p); p += 8
            for _ in range(ac):
                an = struct.unpack_from('>H', d, p)[0]
                al = struct.unpack_from('>I', d, p + 2)[0]
                body = p + 6
                if utf.get(an) == 'Code':
                    cl = struct.unpack_from('>I', d, body + 4)[0]
                    coff = body + 8
                    q = coff + cl
                    etl = struct.unpack_from('>H', d, q)[0]; q += 2
                    code = d[coff:coff + cl]
                    for k in range(etl):
                        e = q + 8 * k
                        sp, ep, hp, ct = struct.unpack_from('>HHHH', d, e)
                        t = utf.get(cls.get(ct)) if ct else ''
                        if not t or 'IndexOutOfBounds' not in t:
                            continue
                        i = ep
                        found = None
                        for _ in range(6):
                            if i >= len(code):
                                break
                            if code[i] in LOAD:
                                found = i
                                break
                            i += LEN.get(code[i], 1)
                        if found is not None and found + 1 > ep:
                            out.append((e + 2, ep, found + 1,
                                        utf.get(nm), utf.get(ds), t))
                p = body + al
    return out


def main():
    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    src = args[0]
    out = args[1] if len(args) > 1 else src[:-4] + '_try.jar'
    apply_ = '--apply' in sys.argv
    z = zipfile.ZipFile(src)
    total = 0
    zo = zipfile.ZipFile(out, 'w', zipfile.ZIP_DEFLATED) if apply_ else None
    for info in z.infolist():
        data = z.read(info.filename)
        if info.filename.endswith('.class'):
            try:
                fixes = scan(data)
            except Exception:
                fixes = []
            if fixes:
                total += len(fixes)
                buf = bytearray(data)
                for off, old, new, nm, ds, t in fixes:
                    print('   %-44s %-6s %-30s end_pc %d -> %d  [%s]'
                          % (info.filename[:-6], nm, ds[:30], old, new, t))
                    struct.pack_into('>H', buf, off, new)
                data = bytes(buf)
        if zo:
            zi = zipfile.ZipInfo(info.filename, date_time=info.date_time)
            zi.compress_type = info.compress_type
            zi.external_attr = info.external_attr
            zo.writestr(zi, data)
    if zo:
        zo.close()
        print('修 %d 条异常表 → %s' % (total, out))
    else:
        print('需要修 %d 条异常表（加 --apply 才写盘）' % total)


if __name__ == '__main__':
    main()
