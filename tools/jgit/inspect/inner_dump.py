#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""inner_dump.py <jar> <entry.class...> —— 从 class 文件里读 InnerClasses / EnclosingMethod 属性

与 dexinner.py 互补：dex 侧看"投毒后的注解"，class 侧看 dex2jar 合成/搬运后的结果。
"""
import sys, struct, zipfile

def parse(cf):
    b = cf
    off = 0
    def u1():
        nonlocal off
        v = b[off]; off += 1; return v
    def u2():
        nonlocal off
        v = struct.unpack_from('>H', b, off)[0]; off += 2; return v
    def u4():
        nonlocal off
        v = struct.unpack_from('>I', b, off)[0]; off += 4; return v
    assert u4() == 0xCAFEBABE
    u2(); u2()
    cpc = u2()
    cp = [None]*cpc
    i = 1
    while i < cpc:
        t = u1()
        if t == 1:
            l = u2(); cp[i] = ('utf8', b[off:off+l].decode('utf-8','replace')); off += l
        elif t in (7,8,16,19,20):
            cp[i] = (t, u2())
        elif t in (15,):
            cp[i] = (t, u1(), u2())
        elif t in (3,4,9,10,11,12,17,18):
            cp[i] = (t, u2(), u2())
        elif t in (5,6):
            cp[i] = (t, struct.unpack_from('>Q', b, off)[0]); off += 8; i += 1
        else:
            raise Exception('tag %d' % t)
        i += 1
    def utf(idx):
        v = cp[idx]
        return v[1] if v and v[0]=='utf8' else None
    u2(); u2(); u2()
    ic = u2()
    for _ in range(ic):
        u2()
    fields = u2()
    for _ in range(fields):
        u2(); u2(); u2()
        n = u2()
        for _ in range(n):
            u2(); u4()
    methods = u2()
    for _ in range(methods):
        u2(); u2(); u2()
        n = u2()
        for _ in range(n):
            u2(); u4()
    ac = u2()
    out = []
    for _ in range(ac):
        name = utf(u2())
        ln = u4()
        end = off + ln
        if name == 'InnerClasses':
            n = u2()
            for _ in range(n):
                inner = u2(); outer = u2(); iname = u2(); flags = u2()
                ci = cp[inner][1] if inner and cp[inner][0]==7 else None
                co = cp[outer][1] if outer and cp[outer][0]==7 else None
                out.append((utf(ci) if ci else None, utf(co) if co else None, utf(iname) if iname else None, hex(flags)))
        elif name == 'EnclosingMethod':
            ci = u2(); ni = u2()
            out.append(('ENCLOSING', utf(cp[ci][1]) if cp[ci][0]==7 else None, utf(ni) if ni else None, ''))
        off = end
    return out

z = zipfile.ZipFile(sys.argv[1])
for e in sys.argv[2:]:
    try:
        data = z.read(e)
    except KeyError:
        print(e, 'MISSING'); continue
    print('==', e)
    for r in parse(data):
        print('   inner=%s outer=%s name=%s flags=%s' % r)
