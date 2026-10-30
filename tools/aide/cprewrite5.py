#!/usr/bin/env python3
"""精确重写 + 覆写声明改名。map.json: {classes, members, decls:{cls:{"name|desc":new}}}"""
import struct, sys, json, zipfile
sys.path.insert(0,'/data/data/com.termux/files/home/tools')
from hier import structure
from cprewrite2 import rewrite, parse

def load_hier(jar):
    import zipfile
    from hier import structure
    z=zipfile.ZipFile(jar); info={}
    for n in z.namelist():
        if not n.endswith('.class'): continue
        s=structure(z.read(n))
        if s and s['this']: info[s['this']]=s
    anc={}
    def A(c,seen=None):
        if c in anc: return anc[c]
        seen=seen or set()
        if c in seen: return set()
        seen.add(c); out=[]; s=info.get(c)
        if s:
            for p in ([s['sup']] if s['sup'] else [])+list(s['ifaces']):
                out.append(p); out += [x for x in A(p,seen) if x not in out]
        anc[c]=out; return out
    for c in info: A(c)
    return anc


def decl_patch(b, cls, decls_for_cls):
    """把 method_info 里匹配 (name,desc) 的 name_index 指向新名的 Utf8。"""
    s = structure(b)
    if not s: return b, 0
    p = parse(b)
    if not p: return b, 0
    utf, entries = p["utf"], p["entries"]
    # 新名 Utf8 索引（复用已有，否则追加）
    nexti = p["n"]; extra = []; add = {}
    def utf_index(v):
        nonlocal nexti
        for i, st in utf.items():
            if st == v: return i
        if v in add: return add[v]
        nb = v.encode(); add[v] = nexti
        extra.append((nexti, b"\x01" + struct.pack(">H", len(nb)) + nb)); nexti += 1
        return add[v]
    patches = {}
    for (nm, ds, off) in s["methods"]:
        key = f"{nm}|{ds}"
        if key in decls_for_cls:
            nn = decls_for_cls[key]
            if nn == nm: continue
            patches[off] = utf_index(nn)
    if not patches and not extra: return b, 0
    out = [b"\xca\xfe\xba\xbe" + b[4:8] + struct.pack(">H", nexti)]
    for (idx, tag, s0, e0) in entries:
        out.append(b[s0:e0])
    for (i, raw) in extra: out.append(raw)
    body = bytearray(p["tail"])
    base = len(out[0]) + sum(len(x) for x in out[1:])   # 新 CP 结束位置
    for off, newidx in patches.items():
        struct.pack_into(">H", body, off - (len(b) - len(p["tail"])), newidx)
    return b"".join(out + [bytes(body)]), len(patches)

if __name__ == "__main__":
    inp, outp, mp = sys.argv[1:4]
    hier = load_hier(sys.argv[4]) if len(sys.argv) > 4 else None
    m = json.load(open(mp))
    classes, members, decls = m["classes"], m["members"], m.get("decls", {})
    descs = m.get("descs", {})
    n_cls = n_ref = n_decl = 0
    with zipfile.ZipFile(inp) as zi, zipfile.ZipFile(outp, "w", zipfile.ZIP_DEFLATED) as zo:
        for n in zi.namelist():
            if not n.endswith(".class"): zo.writestr(n, zi.read(n)); continue
            cls = n[:-6]
            b = zi.read(n)
            if cls in decls:
                b, k = decl_patch(b, cls, decls[cls]); n_decl += k
            nb, c = rewrite(b, classes, members, descs, hier)
            n_ref += c
            if nb != b: n_cls += 1
            zo.writestr(n, nb)
    print(f"改动类 {n_cls}，引用 {n_ref}，声明 {n_decl}")
