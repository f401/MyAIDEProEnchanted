#!/usr/bin/env python3
"""dalvik.py —— Dalvik 指令长度表 + 最小事件解码器（按**字节**计长，正确版）。

为什么单独写：`jvmbody.LEN` 是**近似表**（单位混用，0x22 new-instance 也没收），
拿它做顺序敏感的解码会串位；只做"收集引用"时看不出来，做「字段 ↔ 常量名」配对就废了。
这里的表按 dex 指令格式（10x/12x/…/51l）逐 opcode 给出**字节数**。

用法:
    from dalvik import decode
    ev = decode(cl, code)     # cl 是 jvmbody.parse 的返回；code 是该方法的 code 字节
    # 事件：('str', s) ('new', type) ('sput', owner, name) ('sget', ...) ('invoke', owner,name,desc)
"""
import struct

# 2 字节 = 1 code unit 的格式：10x 12x 11n 11x 10t
_ONE = set(range(0x00, 0x02)) | set(range(0x03, 0x05)) | set(range(0x06, 0x08)) | \
    set(range(0x09, 0x0b)) | set(range(0x0c, 0x0e)) | set(range(0x0f, 0x12)) | \
    set(range(0x1d, 0x1f)) | set(range(0x21, 0x22)) | set(range(0x7b, 0x90)) | \
    set(range(0xb0, 0xd0)) | {0x0e, 0x12, 0x1d, 0x1e, 0x21, 0x27, 0x28}

# 4 字节 = 2 units：20t 22x 21t 21s 21h 21c 23x 22b 22t 22s 22c
_FOUR = {0x01, 0x04, 0x07, 0x13, 0x15, 0x16, 0x19, 0x1a, 0x1c, 0x1f, 0x20, 0x22, 0x23,
         0x29} | set(range(0x32, 0x3e)) | set(range(0x44, 0x52)) | \
    set(range(0x52, 0x6e)) | set(range(0x90, 0xb0)) | set(range(0xd0, 0xe3))

# 6 字节 = 3 units：30t 32x 31i 31t 31c 35c 3rc
_SIX = {0x14, 0x17, 0x1b, 0x24, 0x25, 0x26, 0x2a, 0x2b, 0x2c} | \
    set(range(0x6e, 0x73)) | set(range(0x74, 0x79)) | {0xfc, 0xfd, 0xfe}

# 8 字节：45cc 4rcc
_EIGHT = {0xfa, 0xfb}
# 10 字节：51l
_TEN = {0x18}


def size(op):
    if op in _TEN:
        return 10
    if op in _EIGHT:
        return 8
    if op in _SIX:
        return 6
    if op in _FOUR:
        return 4
    return 2


def decode(cl, code):
    """顺序事件。payload 伪指令（0x0100/0x0200/0x0300）自动跳过。"""
    ev = []
    i, n = 0, len(code)
    while i + 1 < n:
        op = code[i]
        if op == 0x00 and code[i + 1] in (0x01, 0x02, 0x03):
            # nop + payload：对齐后读 size
            if code[i + 1] == 0x01:      # packed-switch payload
                base = (i + 4) & ~3
                if base + 8 > n:
                    break
                sz = struct.unpack_from('<H', code, base + 2)[0]
                i = base + 2 * sz + 8
                continue
            if code[i + 1] == 0x02:      # sparse-switch payload
                base = (i + 4) & ~3
                if base + 8 > n:
                    break
                sz = struct.unpack_from('<H', code, base + 2)[0]
                i = base + 4 * sz + 8
                continue
            if code[i + 1] == 0x03:      # fill-array-data payload
                base = (i + 4) & ~3
                if base + 8 > n:
                    break
                w = struct.unpack_from('<H', code, base + 2)[0]
                i = base + 2 * w + 8
                continue
        if op == 0x12:                   # const/4
            ev.append(('lit4', (code[i + 1] >> 4) & 0xf))
            i += 2
            continue
        if op == 0x1a:                   # const-string
            k = struct.unpack_from('>H', code, i + 2)[0]
            ev.append(('str', cl['utf'].get(cl['strs'].get(k))))
            i += 4
            continue
        if op == 0x1b:                   # const-string/jumbo
            k = struct.unpack_from('>I', code, i + 2)[0]
            ev.append(('str', cl['utf'].get(cl['strs'].get(k))))
            i += 6
            continue
        if op == 0x22:                   # new-instance
            k = struct.unpack_from('>H', code, i + 2)[0]
            ev.append(('new', cl['utf'].get(k)))
            i += 4
            continue
        if 0x60 <= op <= 0x6d:           # sget/sput
            k = struct.unpack_from('>H', code, i + 2)[0]
            rm = cl['refmap'].get(k)
            if rm:
                ev.append(('sget' if op <= 0x66 else 'sput', rm[0], rm[1]))
            i += 4
            continue
        if 0x6e <= op <= 0x72 or 0x74 <= op <= 0x78:
            k = struct.unpack_from('>H', code, i + 2)[0]
            rm = cl['refmap'].get(k)
            if rm:
                ev.append(('invoke', rm[0], rm[1], rm[2]))
            i += 6
            continue
        i += size(op)
    return ev
