#!/usr/bin/env python3
"""按结构指纹把 APK 里被 ProGuard 改名的库类匹配回官方类名。"""
import struct, re, zipfile, io, pathlib, collections, sys

def cp(b):
    if b[:4] != b"\xca\xfe\xba\xbe": return None
    n = struct.unpack_from(">H", b, 8)[0]
    utf, cls, strings, i, o = {}, [], [], 1, 10
    while i < n:
        tag = b[o]; o += 1
        if tag == 1:
            ln = struct.unpack_from(">H", b, o)[0]; o += 2
            utf[i] = b[o:o+ln].decode("utf-8", "replace"); o += ln
        elif tag == 7: cls.append(struct.unpack_from(">H", b, o)[0]); o += 2
        elif tag == 8: strings.append(struct.unpack_from(">H", b, o)[0]); o += 2
        elif tag == 16: o += 2
        elif tag == 15: o += 3
        elif tag in (3,4,9,10,11,12,17,18): o += 4
        elif tag in (5,6): o += 8; i += 1
        elif tag in (19,20): o += 2
        else: return None
        i += 1
    return utf, cls, strings

MDESC = re.compile(r'^\((\[*(?:L[^;]+;|[ZBCSIJFD])*)\)(\[*(?:L[^;]+;|V|[ZBCSIJFD]))$')
FDESC = re.compile(r'^(\[*)(L[^;]+;|[ZBCSIJFD])$')
TYPE  = re.compile(r'L([A-Za-z_$][\w$]*(?:/[A-Za-z_$][\w$]*)+);')

def shape(desc):
    body, ret = desc[1:desc.index(")")], desc[desc.index(")")+1:]
    def one(a):
        a = a.lstrip("[")
        return "O" if a.startswith("L") else a
    parts = re.findall(r'\[*(?:L[^;]+;|[ZBCSIJFD])', body)
    return f"({''.join(one(p) for p in parts)}){one(ret)}"

def fingerprint(b):
    r = cp(b)
    if not r: return None
    utf, cls, sref = r
    meths, flds = set(), set()
    for s in utf.values():
        if MDESC.match(s): meths.add(shape(s))
        elif FDESC.match(s): flds.add(FDESC.match(s).group(2))
    strs = {utf[i] for i in sref if i in utf}
    refs = {utf[i] for i in cls if i in utf and "/" in utf.get(i, "")}
    types = set()
    for s in utf.values():
        types.update(TYPE.findall(s))
    return dict(n_methods=len(meths), methods=meths, fields=flds,
                strings=strs, refs=refs|types, raw=strs)

def jac(a, b):
    if not a and not b: return 1.0
    return len(a & b) / len(a | b)

def score(fa, fb):
    return (3.0 * jac(fa["strings"], fb["strings"])
            + 2.0 * jac(fa["methods"], fb["methods"])
            + 2.0 * jac(fa["refs"], fb["refs"])
            + 1.0 * jac(fa["fields"], fb["fields"]))

def load_jar(path, prefix=None):
    out = {}
    with zipfile.ZipFile(path) as z:
        for n in z.namelist():
            if not n.endswith(".class"): continue
            t = n[:-6]
            if prefix and not t.startswith(prefix): continue
            out[t] = z.read(n)
    return out

def load_aars(d):
    out = {}
    for f in sorted(pathlib.Path(d).glob("*.aar")):
        with zipfile.ZipFile(f) as z:
            if "classes.jar" not in z.namelist(): continue
            out.update(load_jar(io.BytesIO(z.read("classes.jar"))))
    for f in sorted(pathlib.Path(d).glob("*.jar")):
        out.update(load_jar(f))
    return out
