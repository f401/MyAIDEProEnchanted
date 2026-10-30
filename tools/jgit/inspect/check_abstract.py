import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
import sys, zipfile, json, collections
sys.path.insert(0,'/data/data/com.termux/files/home/tools')
from hier import structure
JAR=sys.argv[1]; z=zipfile.ZipFile(JAR); info={}
for n in z.namelist():
    if not n.endswith(".class"): continue
    s=structure(z.read(n))
    if s and s["this"]: info[s["this"]]=s
ACC_ABSTRACT, ACC_INTERFACE = 0x0400, 0x0200
def chain(c):
    out=[c]; seen={c}; i=0
    while i < len(out):
        s=info.get(out[i]); i+=1
        if not s: continue
        for p in ([s["sup"]] if s["sup"] else [])+list(s["ifaces"]):
            if p and p not in seen: seen.add(p); out.append(p)
    return out
def declared(c):
    s=info.get(c)
    return {(nm,ds):acc for nm,ds,_,acc in (s["methods"] if s else [])}
cands=collections.Counter(); report=[]
for c,s in info.items():
    if s["acc"] & ACC_ABSTRACT or s["acc"] & ACC_INTERFACE: continue
    if not c.startswith(("com/","abcd/","net/","io/","aidepro/","utilcode/")): continue
    ch=chain(c)
    # 收集祖先（非本类）里抽象方法
    need={}
    for a in ch[1:]:
        if not a.startswith(("androidx/","android/support/","android/arch/")): continue
        sa=info.get(a)
        if not sa: continue
        for (nm,ds),acc in declared(a).items():
            if acc & ACC_ABSTRACT: need[(nm,ds)]=a
    # 检查本类链上是否有非抽象实现
    for (nm,ds),owner in need.items():
        impl=False
        for a in ch:
            d=declared(a)
            if (nm,ds) in d and not (d[(nm,ds)] & ACC_ABSTRACT): impl=True; break
        if not impl:
            report.append((c, owner, nm+ds)); cands[f"{owner.rsplit('/',1)[-1]}.{nm}{ds}"]+=1
print("未实现的抽象方法:", len(report))
for c,o,m in report[:20]: print(f"   {c.rsplit('/',1)[-1]:34s} 缺 {o.rsplit('/',1)[-1]}.{m}")
