#!/usr/bin/env python3
"""jvmcode.py —— **JVM class 文件**指令长度表 + 事件解码器（正确版）。

背景（踩过的坑）：`process/base/merged_ok.jar` 是 **dex2jar 产出的 class 文件**，
方法体是 JVM 字节码（`0xb2 getstatic`/`0xb8 invokestatic`…），不是 dex。
`jvmbody.LEN` 只是**近似表**：`0x12 ldc` 当 3 字节（实际 2）、`0xb9 invokeinterface`
当 3 字节（实际 5）——任何含 invokeinterface 的方法都会串位，造出**假引用**。
做"谁调用了我"这种顺序敏感的证据必须用这张表。

用法:
    import jvmcode
    ev = jvmcode.decode(cl, code)
    # ('str', s) / ('new', type) / ('sget'|'sput', owner,name,desc) / ('invoke', owner,name,desc)
"""
import struct

_TWO = {0x10, 0x12, 0x15, 0x16, 0x17, 0x18, 0x19,
        0x36, 0x37, 0x38, 0x39, 0x3a, 0xa9, 0xbc}
_THREE = {0x11, 0x13, 0x14, 0x84} | set(range(0x99, 0xa9)) | \
    set(range(0xb2, 0xb9)) | {0xbb, 0xbd, 0xc0, 0xc1, 0xc6, 0xc7}
_FIVE = {0xb9, 0xba, 0xc8, 0xc9}


def size(code, i):
    op = code[i]
    if op == 0xaa:                      # tableswitch
        p = (i + 4) & ~3
        if p + 12 > len(code):
            return len(code) - i
        lo, hi = struct.unpack_from('>ii', code, p + 4)
        return p - i + 12 + 4 * (hi - lo + 1)
    if op == 0xab:                      # lookupswitch
        p = (i + 4) & ~3
        if p + 8 > len(code):
            return len(code) - i
        npairs = struct.unpack_from('>i', code, p + 4)[0]
        return p - i + 8 + 8 * npairs
    if op == 0xc4:                      # wide
        if i + 1 < len(code) and code[i + 1] == 0x84:
            return 6
        return 4
    if op in _FIVE:
        return 5
    if op in _THREE:
        return 3
    if op in _TWO:
        return 2
    return 1


def decode(cl, code):
    ev = []
    i, n = 0, len(code)
    while i < n:
        op = code[i]
        if op == 0x12:
            k = code[i + 1]
            ev.append(('ldc', cl['utf'].get(cl['strs'].get(k))))
            i += 2
            continue
        if op == 0x13:
            if i + 3 > n:
                break
            k = struct.unpack_from('>H', code, i + 1)[0]
            ev.append(('ldc', cl['utf'].get(cl['strs'].get(k))))
            i += 3
            continue
        if 0xb2 <= op <= 0xb5:
            if i + 3 > n:
                break
            k = struct.unpack_from('>H', code, i + 1)[0]
            rm = cl['refmap'].get(k)
            if rm:
                ev.append(('sget' if op in (0xb2, 0xb4) else 'sput', rm[0], rm[1], rm[2]))
            i += 3
            continue
        if 0xb6 <= op <= 0xb9:
            if i + 3 > n:
                break
            k = struct.unpack_from('>H', code, i + 1)[0]
            rm = cl['refmap'].get(k)
            if rm:
                ev.append(('invoke', rm[0], rm[1], rm[2]))
            i += 5 if op == 0xb9 else 3
            continue
        i += size(code, i)
    return ev
