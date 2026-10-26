#!/usr/bin/env python3
"""从 APK 的 resources.arsc 导出 id<TAB>type<TAB>name，用于给 apktool 工程回填资源名。

用法: python3 arsc_names.py <某个.apk> [out.tsv]
"""
import sys, zipfile, struct

def u16(b, o): return struct.unpack_from("<H", b, o)[0]
def u32(b, o): return struct.unpack_from("<I", b, o)[0]

def read_strpool(b, o):
    _, hsz, _, count, _, flags, strings_start, _ = struct.unpack_from("<HHIIIIII", b, o)
    utf8 = bool(flags & 0x100)
    offs = [u32(b, o + hsz + 4 * i) for i in range(count)]
    out = []
    base = o + strings_start
    for off in offs:
        p = base + off
        if utf8:
            n = b[p]; p += 1
            if n & 0x80: p += 1
            n2 = b[p]; p += 1
            if n2 & 0x80: p += 1
            out.append(b[p:p + n2].decode("utf-8", "replace"))
        else:
            n = u16(b, p); p += 2
            if n & 0x8000: p += 2
            out.append(b[p:p + 2 * n].decode("utf-16-le", "replace"))
    return out

def parse(arsc):
    chunk_type, hsz, size = u16(arsc, 0), u16(arsc, 2), u32(arsc, 4)
    assert chunk_type == 0x0002, f"not a resource table: {chunk_type:#x}"
    global_strings, pkg_id, rows = None, None, []
    o = hsz
    while o < size:
        t, hs, sz = u16(arsc, o), u16(arsc, o + 2), u32(arsc, o + 4)
        if sz == 0: break
        if t == 0x0001 and global_strings is None:
            global_strings = read_strpool(arsc, o)
        elif t == 0x0200:                      # ResTable_package
            pkg_id = u32(arsc, o + 8)
            type_off, key_off = u32(arsc, o + 268), u32(arsc, o + 276)
            type_names = read_strpool(arsc, o + type_off)
            key_names = read_strpool(arsc, o + key_off)
            q = o + hs
            while q < o + sz:
                t2, hs2, sz2 = u16(arsc, q), u16(arsc, q + 2), u32(arsc, q + 4)
                if sz2 == 0 or t2 not in (0x0201, 0x0202): 
                    if sz2 == 0: break
                    q += sz2; continue
                if t2 == 0x0201:               # ResTable_type
                    tid = arsc[q + 8]
                    flags = arsc[q + 9]
                    entry_count, entries_start = u32(arsc, q + 12), u32(arsc, q + 16)
                    offs_base = q + hs2
                    idx = range(entry_count)
                    if flags & 0x01:           # FLAG_SPARSE
                        pairs = [(u16(arsc, offs_base + 4 * i), u16(arsc, offs_base + 4 * i + 2))
                                 for i in range(entry_count)]
                    elif flags & 0x02:         # FLAG_OFFSET16
                        pairs = [(i, u16(arsc, offs_base + 2 * i)) for i in idx]
                    else:
                        pairs = [(i, u32(arsc, offs_base + 4 * i)) for i in idx]
                    for i, eoff in pairs:
                        if eoff == 0xFFFFFFFF or eoff == 0xFFFF: continue
                        e = q + entries_start + eoff
                        esize, eflags, key = u16(arsc, e), u16(arsc, e + 2), u32(arsc, e + 4)
                        tname = type_names[tid - 1] if tid - 1 < len(type_names) else f"?{tid}"
                        kname = key_names[key] if key < len(key_names) else ""
                        rows.append((0x7f000000 | (pkg_id << 24) | (tid << 16) | i, tname, kname))
                q += sz2
        o += sz
    return rows

if __name__ == "__main__":
    apk = sys.argv[1]
    with zipfile.ZipFile(apk) as z:
        arsc = z.read("resources.arsc")
    rows = parse(arsc)
    seen = {}
    for rid, t, n in rows:
        seen.setdefault(rid, (t, n))
    lines = [f"{rid:#010x}\t{t}\t{n}" for rid, (t, n) in sorted(seen.items())]
    if len(sys.argv) > 2:
        open(sys.argv[2], "w", encoding="utf-8").write("\n".join(lines) + "\n")
        print(f"共 {len(lines)} 条 -> {sys.argv[2]}")
    else:
        print(f"共 {len(lines)} 条; 前 5 条:")
        print("\n".join(lines[:5]))
