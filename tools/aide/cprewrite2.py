#!/usr/bin/env python3
"""精确常量池重写：仅按 (owner,name,desc) 改引用；类名字符串替换；零继承推断。
用法: cprewrite2.py <in.jar> <out.jar> <map.json>
map.json: {"classes":{old:new}, "members":{"old->name+desc":new}}
"""
import struct, re, sys, json, zipfile

def parse(b):
    n = struct.unpack_from(">H", b, 8)[0]
    utf, cls, nat, refs, entries = {}, {}, {}, [], []
    i, o = 1, 10
    while i < n:
        start = o; tag = b[o]; o += 1
        if tag == 1:
            ln = struct.unpack_from(">H", b, o)[0]; o += 2 + ln
        elif tag == 7: cls[i] = struct.unpack_from(">H", b, o)[0]; o += 2
        elif tag == 8: o += 2
        elif tag == 12: nat[i] = struct.unpack_from(">HH", b, o); o += 4
        elif tag in (9, 10, 11):
            cidx, nidx = struct.unpack_from(">HH", b, o); refs.append((i, tag, cidx, nidx, o)); o += 4
        elif tag == 15: o += 3
        elif tag == 16: o += 2
        elif tag in (3, 4, 17, 18): o += 4
        elif tag in (5, 6): o += 8; i += 1
        elif tag in (19, 20): o += 2
        else: return None
        entries.append((i, tag, start, o)); i += 1
    # utf 内容
    for (idx, tag, s, e) in entries:
        if tag == 1:
            ln = struct.unpack_from(">H", b, s + 1)[0]
            utf[idx] = b[s + 3:s + 3 + ln].decode("utf-8", "replace")
    return dict(n=n, utf=utf, cls=cls, nat=nat, refs=refs, entries=entries, tail=b[o:], orig=b)

def rewrite(inp, classes, members, descs=None, hier=None):
    p = parse(inp)
    if not p: return inp, 0
    utf, cls, nat = p["utf"], p["cls"], p["nat"]
    renames = sorted(classes.items(), key=lambda kv: -len(kv[0]))
    def rw(s):
        for old, new in renames:
            if s == old: return new
            if "L" in s:
                s2 = s.replace("L" + old + ";", "L" + new + ";").replace("L" + old + "<", "L" + new + "<")
                if s2 != s: s = s2
        return s
    newutf = {}
    for idx, s in utf.items():
        ns = rw(s)
        if ns != s: newutf[idx] = ns
    # 追加条目空间
    nexti = p["n"]
    extra = []                       # (bytes)
    utf_add, nat_add = {}, {}
    def utf_index(val):
        nonlocal nexti
        for idx, s in utf.items():
            if s == val and idx not in newutf: return idx
        for idx, s in newutf.items():
            if s == val: return idx
        if val in utf_add: return utf_add[val]
        nb = val.encode("utf-8")
        utf_add[val] = nexti; extra.append((nexti, b"\x01" + struct.pack(">H", len(nb)) + nb)); nexti += 1
        return utf_add[val]
    def nat_index(nm_idx, ds_idx):
        nonlocal nexti
        for idx, (a, c) in nat.items():
            if a == nm_idx and c == ds_idx: return idx
        key = (nm_idx, ds_idx)
        if key in nat_add: return nat_add[key]
        nat_add[key] = nexti; extra.append((nexti, b"\x0c" + struct.pack(">HH", nm_idx, ds_idx))); nexti += 1
        return nat_add[key]
    natpatch = {}
    changed = 0
    decl_ids = {}       # name_index 偏移 -> 新名字
    for (refidx, tag, cidx, nidx, off) in p["refs"]:
        owner = utf.get(cls.get(cidx, -1))
        if not owner: continue
        a, c = nat.get(nidx, (None, None))
        nm, ds = utf.get(a), utf.get(c)
        if nm is None or ds is None: continue
        def mk(c):
            return (f"{c}->{nm}:{ds}" if tag == 9 else f"{c}->{nm}{ds}")
        key = mk(owner)
        if key not in members and hier:
            for anc in hier.get(owner, []):
                k2 = mk(anc)
                if k2 in members: key = k2; break
        if key not in members:
            key2 = f"{owner}->{nm}"
            if tag == 9 and key2 in members: key = key2
            else: continue
        newname = members[key]
        ds_new = rw(ds)
        if descs and key in descs: ds_new = descs[key]      # 显式覆盖描述符
        ni = utf_index(newname); di = utf_index(ds_new) if ds_new != ds else c
        natpatch[refidx] = nat_index(ni, di); changed += 1
    if not newutf and not natpatch and not extra: return inp, 0
    # 重建
    out = [b"\xca\xfe\xba\xbe" + inp[4:8] + struct.pack(">H", nexti)]
    for (idx, tag, s, e) in p["entries"]:
        if tag == 1 and idx in newutf:
            nb = newutf[idx].encode("utf-8"); out.append(b"\x01" + struct.pack(">H", len(nb)) + nb)
        elif idx in natpatch:
            raw = bytearray(inp[s:e]); struct.pack_into(">H", raw, 3, natpatch[idx]); out.append(bytes(raw))
        else:
            out.append(inp[s:e])
    for (idx, raw) in extra: out.append(raw)
    out.append(p["tail"])
    return b"".join(out), changed

if __name__ == "__main__":
    inpath, outpath, mappath = sys.argv[1], sys.argv[2], sys.argv[3]
    m = json.load(open(mappath))
    classes, members = m["classes"], m["members"]
    tot = ch = refs = 0
    with zipfile.ZipFile(inpath) as zi, zipfile.ZipFile(outpath, "w", zipfile.ZIP_DEFLATED) as zo:
        for n in zi.namelist():
            if not n.endswith(".class"): zo.writestr(n, zi.read(n)); continue
            b = zi.read(n); nb, c = rewrite(b, classes, members)
            tot += 1; refs += c
            if nb != b: ch += 1
            zo.writestr(n, nb)
    print(f"类 {tot}，被改动 {ch}，改写引用 {refs}")
