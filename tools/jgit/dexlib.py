#!/usr/bin/env python3
"""dexlib.py —— 最小可用 DEX 解析器（无第三方依赖，只在需要元数据时用）

能力：string / type / method 解析，class_defs 遍历，注解（含嵌套/数组/枚举）解码，
      class_data / code_item / debug_info（参数名+局部变量）、annotations_directory（含字段/方法/参数注解）。
刻意不实现：指令流解码、资源表。

用法：
    from dexlib import Dex
    d = Dex(open('classes.dex','rb').read())
    for cd in d.class_defs():
        print(d.type(cd['class_idx']))

坑（详见 docs/JGIT-METADATA.md §2）：
  * 头部偏移：string_ids 在 56、type_ids 在 64、class_defs 在 96（不是连续 6 个 u4）
  * class_def_item.annotations_off 指向 annotations_directory_item，
    其首 4 字节才是 annotation_set_item 的偏移
"""

import sys, struct

class Dex:
    def __init__(self, b):
        self.b = b
        self.string_ids_size, self.string_ids_off = struct.unpack_from('<2I', b, 56)
        self.type_ids_size, self.type_ids_off = struct.unpack_from('<2I', b, 64)
        self.class_defs_size, self.class_defs_off = struct.unpack_from('<2I', b, 96)
        # header: 56 = string_ids_size; 60 string_ids_off; 64 type_ids_size; 68 type_ids_off
        # 72 proto_ids_size; 76 proto_ids_off; 80 field_ids_size; 84 field_ids_off
        # 88 method_ids_size; 92 method_ids_off; 96 class_defs_size; 100 class_defs_off
        self.proto_ids_size, self.proto_ids_off = struct.unpack_from('<2I', b, 72)
        self.field_ids_size, self.field_ids_off = struct.unpack_from('<2I', b, 80)
        self.method_ids_size, self.method_ids_off = struct.unpack_from('<2I', b, 88)
        self._s = {}
        self._t = {}
    def u1(self, o): return self.b[o]
    def u2(self, o): return struct.unpack_from('<H', self.b, o)[0]
    def u4(self, o): return struct.unpack_from('<I', self.b, o)[0]
    def uleb(self, o):
        r = 0; sh = 0
        while True:
            x = self.b[o]; o += 1
            r |= (x & 0x7f) << sh
            if not (x & 0x80): break
            sh += 7
        return r, o
    def sleb(self, o):
        r = 0; sh = 0
        while True:
            x = self.b[o]; o += 1
            r |= (x & 0x7f) << sh
            sh += 7
            if not (x & 0x80):
                if x & 0x40: r -= (1 << sh)
                break
        return r, o
    def string(self, idx):
        if idx in self._s: return self._s[idx]
        off = self.u4(self.string_ids_off + idx*4)
        _, o = self.uleb(off)   # utf16 length
        e = self.b.index(b'\x00', o)
        # mutf8 decode (latin1 + surrogate handling) - sufficient for descriptor chars
        raw = self.b[o:e]
        try:
            s = raw.decode('utf-8')
        except UnicodeDecodeError:
            s = raw.decode('latin1')
        self._s[idx] = s
        return s
    def type(self, idx):
        if idx in self._t: return self._t[idx]
        si = self.u4(self.type_ids_off + idx*4)
        s = self.string(si); self._t[idx] = s; return s
    def class_defs(self):
        for i in range(self.class_defs_size):
            o = self.class_defs_off + i*32
            yield dict(
                class_idx=self.u4(o), access=self.u4(o+4), super_idx=self.u4(o+8),
                interfaces_off=self.u4(o+12), source_file_idx=self.u4(o+16),
                annotations_off=self.u4(o+20), class_data_off=self.u4(o+24),
                static_values_off=self.u4(o+28))
    def annotations_directory(self, off):
        """返回 (class_set, field_anns{field_idx:set}, method_anns{method_idx:set}, param_anns{method_idx:set})"""
        if not off:
            return 0, {}, {}, {}
        cls, nf, nm, np = struct.unpack_from('<4I', self.b, off)
        o = off + 16
        fa = {}
        for _ in range(nf):
            idx = self.u4(o); ao = self.u4(o + 4); o += 8
            fa[idx] = ao
        ma = {}
        for _ in range(nm):
            idx = self.u4(o); ao = self.u4(o + 4); o += 8
            ma[idx] = ao
        pa = {}
        for _ in range(np):
            idx = self.u4(o); ao = self.u4(o + 4); o += 8
            pa[idx] = ao
        return cls, fa, ma, pa

    # ---------- class_data / code / debug_info ----------
    def class_data(self, off):
        """返回 dict(sfields=[(fidx,acc)], ifields=[...], dmethods=[(midx,acc,code_off)], vmethods=[...])"""
        if not off:
            return None
        o = off
        sf, o = self.uleb(o)
        inf, o = self.uleb(o)
        dm, o = self.uleb(o)
        vm, o = self.uleb(o)

        def read_fields(n, o):
            out, idx = [], 0
            for _ in range(n):
                d, o = self.uleb(o)
                acc, o = self.uleb(o)
                idx += d
                out.append((idx, acc))
            return out, o

        def read_methods(n, o):
            out, idx = [], 0
            for _ in range(n):
                d, o = self.uleb(o)
                acc, o = self.uleb(o)
                code, o = self.uleb(o)
                idx += d
                out.append((idx, acc, code))
            return out, o

        sfields, o = read_fields(sf, o)
        ifields, o = read_fields(inf, o)
        dmethods, o = read_methods(dm, o)
        vmethods, o = read_methods(vm, o)
        return dict(sfields=sfields, ifields=ifields, dmethods=dmethods, vmethods=vmethods)

    def code_item(self, off):
        """返回 dict(registers, ins, outs, tries, debug_off, insns_size)"""
        if not off:
            return None
        reg, ins, outs, tries = struct.unpack_from('<4H', self.b, off)
        dbg, insn = struct.unpack_from('<2I', self.b, off + 8)
        return dict(registers=reg, ins=ins, outs=outs, tries=tries,
                    debug_off=dbg, insns_size=insn)

    def debug_info(self, off):
        """返回 (line_start, [参数名或 None], [局部变量名])。只解码到需要的信息。"""
        if not off:
            return None, [], []
        o = off
        line, o = self.uleb(o)
        nparams, o = self.uleb(o)
        params = []
        for _ in range(nparams):
            v, o = self.uleb(o)
            params.append(None if v == 0 else self.string(v - 1))
        locals_ = []
        # 状态机：只关心 DBG_START_LOCAL(3)/DBG_START_LOCAL_EXTENDED(4)
        while o < len(self.b):
            op = self.b[o]; o += 1
            if op == 0x00:      # DBG_END_SEQUENCE
                break
            elif op == 0x01:    # ADVANCE_PC
                _, o = self.uleb(o)
            elif op == 0x02:    # ADVANCE_LINE
                _, o = self.sleb(o)
            elif op == 0x03 or op == 0x04:
                _, o = self.uleb(o)      # register
                v, o = self.uleb(o)
                nm = None if v == 0 else self.string(v - 1)
                _, o = self.uleb(o)      # type
                if op == 0x04:
                    _, o = self.uleb(o)  # sig
                locals_.append(nm)
            elif op == 0x05:    # END_LOCAL
                _, o = self.uleb(o)
            elif op == 0x06:    # RESTART_LOCAL
                _, o = self.uleb(o)
            elif op == 0x07 or op == 0x08:   # SET_PROLOGUE_END / EPILOGUE_BEGIN
                pass
            elif op == 0x09:    # SET_FILE
                _, o = self.uleb(o)
            else:               # 0x0a..0xff = special opcode
                delta = op - 0x0a
                _, o = self.uleb(o)
        return line, params, locals_

    def method_ref(self, idx):
        o = self.method_ids_off + idx * 8
        return self.type(self.u2(o)), self.string(self.u4(o + 4))

    def method(self, idx):
        o = self.method_ids_off + idx*8
        cls = self.u2(o); proto = self.u2(o+2); nm = self.u4(o+4)
        return (self.type(cls), self.string(nm))
    def parse_annotation_set(self, off):
        if off == 0: return []
        n = self.u4(off); res = []
        for k in range(n):
            aoff = self.u4(off+4+k*4)
            vis = self.u1(aoff)
            res.append(self.parse_encoded_annotation(aoff+1))
        return res
    def parse_encoded_annotation(self, o):
        tidx, o = self.uleb(o)
        n, o = self.uleb(o)
        elems = []
        for _ in range(n):
            nidx, o = self.uleb(o)
            val, o = self.parse_value(o)
            elems.append((self.string(nidx), val))
        return (self.type(tidx), elems)
    def parse_value(self, o):
        h = self.b[o]; o += 1
        vt = h & 0x1f; va = h >> 5
        if vt == 0x00:   # byte
            return (self.b[o], o+1)
        if vt == 0x02:   # short
            return (struct.unpack_from('<h', self.b, o)[0], o+2)
        if vt == 0x03:   # char
            return (self.u2(o), o+2)
        if vt == 0x04:   # int
            return self.sleb(o)
        if vt == 0x06:   # long
            v = 0; sh = 0; oo = o
            o2 = o
            r, o2 = self.sleb(o)
            return (r, o2)
        if vt == 0x10:   # float
            return (struct.unpack_from('<f', self.b, o)[0], o+4)
        if vt == 0x11:   # double
            return (struct.unpack_from('<d', self.b, o)[0], o+8)
        if vt == 0x17:   # string
            idx, o2 = self.uleb(o)
            return (self.string(idx), o2)
        if vt == 0x18:   # type
            idx, o2 = self.uleb(o)
            return (self.type(idx), o2)
        if vt in (0x19, 0x1a, 0x1b):  # field, method, enum
            idx, o2 = self.uleb(o)
            return (('ref', idx), o2)
        if vt == 0x1c:   # array
            n, o2 = self.uleb(o)
            arr = []
            for _ in range(n):
                v, o2 = self.parse_value(o2)
                arr.append(v)
            return (arr, o2)
        if vt == 0x1d:   # annotation
            return self.parse_encoded_annotation(o)
        if vt == 0x1e:   # null
            return (None, o)
        if vt == 0x1f:   # boolean
            return (bool(va), o)
        if vt == 0x15:   # method type
            idx, o2 = self.uleb(o)
            return (('proto', idx), o2)
        if vt == 0x16:   # method handle
            o2 = o + 4
            return (('mh',), o2)
        raise ValueError('valuetype %#x' % vt)
    def _strv(self, o):
        idx, o2 = self.uleb(o)
        return (self.string(idx), o2)

