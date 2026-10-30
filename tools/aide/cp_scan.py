#!/usr/bin/env python3
"""解析 .class 常量池：取 this_class 与所有被引用的类名（含描述符/签名里的）。"""
import struct, re

def parse_cp(b):
    if b[:4] != b"\xca\xfe\xba\xbe": return None, None
    n = struct.unpack_from(">H", b, 8)[0]
    utf, cls, i, o = {}, [], 1, 10
    while i < n:
        tag = b[o]; o += 1
        if tag == 1:
            ln = struct.unpack_from(">H", b, o)[0]; o += 2
            utf[i] = b[o:o+ln].decode("utf-8", "replace"); o += ln
        elif tag in (7, 8, 16, 19, 20):
            if tag == 7: cls.append(struct.unpack_from(">H", b, o)[0])
            o += 2
        elif tag in (15,): o += 3
        elif tag in (3, 4, 9, 10, 11, 12, 17, 18): o += 4
        elif tag in (5, 6): o += 8; i += 1
        else: return None, None
        i += 1
    return utf, cls

DESC = re.compile(r'L([A-Za-z_$][\w$]*(?:/[A-Za-z_$][\w$]*)+)[;<]')

def refs(b):
    utf, cls = parse_cp(b)
    if utf is None: return None, set()
    out = set()
    for idx in cls:
        s = utf.get(idx)
        if s: out.add(s)
    for s in utf.values():
        if "/" in s: out.update(DESC.findall(s))
    return (utf.get(cls[0]) if cls else None), out
