#!/usr/bin/env python3
"""解析 class 结构：this/super/interfaces + 字段/方法表（含 name_index 偏移）。"""
import struct

def cp_end(b):
    n = struct.unpack_from(">H", b, 8)[0]
    i, o = 1, 10
    utf, cls = {}, {}
    while i < n:
        tag = b[o]; o += 1
        if tag == 1:
            ln = struct.unpack_from(">H", b, o)[0]; utf[i] = b[o+2:o+2+ln].decode("utf-8","replace"); o += 2 + ln
        elif tag == 7: cls[i] = struct.unpack_from(">H", b, o)[0]; o += 2
        elif tag == 8: o += 2
        elif tag == 12: o += 4
        elif tag in (9,10,11): o += 4
        elif tag == 15: o += 3
        elif tag == 16: o += 2
        elif tag in (3,4,17,18): o += 4
        elif tag in (5,6): o += 8; i += 1
        elif tag in (19,20): o += 2
        else: return None
        i += 1
    return utf, cls, o

def structure(b):
    r = cp_end(b)
    if not r: return None
    utf, cls, o = r
    cls_acc = struct.unpack_from(">H", b, o)[0]; o += 2
    this_idx = struct.unpack_from(">H", b, o)[0]; o += 2
    sup_idx = struct.unpack_from(">H", b, o)[0]; o += 2
    ic = struct.unpack_from(">H", b, o)[0]; o += 2
    ifaces = [utf.get(cls.get(struct.unpack_from(">H", b, o+2*k)[0], -1)) for k in range(ic)]
    o += 2 * ic
    def table(o):
        cnt = struct.unpack_from(">H", b, o)[0]; o += 2
        out = []
        for _ in range(cnt):
            ni, di, ac = struct.unpack_from(">HHH", b, o+2)[0], struct.unpack_from(">H", b, o+4)[0], struct.unpack_from(">H", b, o+6)[0]
            macc = struct.unpack_from(">H", b, o)[0]
            out.append((utf.get(ni), utf.get(di), o + 2, macc))   # name, desc, offset, access
            o += 8
            for _ in range(ac):
                ln = struct.unpack_from(">I", b, o+2)[0]; o += 6 + ln
        return out, o
    fields, o = table(o)
    methods, o = table(o)
    return dict(acc=cls_acc, this=utf.get(cls.get(this_idx, -1)), sup=utf.get(cls.get(sup_idx, -1)),
                ifaces=[i for i in ifaces if i], fields=fields, methods=methods)
