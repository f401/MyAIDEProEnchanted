import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
import sys, json, zipfile, collections
sys.path.insert(0,'/data/data/com.termux/files/home/tools')
from hier import structure
from match_support import full_cp
CM=json.load(open("cprewrite_map9.json")); members=CM["members"]; classes=CM["classes"]
z0=zipfile.ZipFile("merged.jar"); info={}
for n in z0.namelist():
    if not n.endswith(".class"): continue
    s=structure(z0.read(n))
    if s and s["this"]: info[s["this"]]=s
decl=collections.defaultdict(set)
for c,s in info.items():
    for nm,ds,_ in s["methods"]+s["fields"]: decl[c].add((nm,ds))
anc={}
def A(c,seen=None):
    if c in anc: return anc[c]
    seen=seen or set()
    if c in seen: return []
    seen.add(c); out=[]; s=info.get(c)
    if s:
        for p in ([s["sup"]] if s["sup"] else [])+list(s["ifaces"]):
            out.append(p); out += [x for x in A(p,seen) if x not in out]
    anc[c]=out; return out
def declaring(owner,nm,ds):
    for c in [owner]+A(owner):
        if (nm,ds) in decl.get(c,()): return c
    return None
z=zipfile.ZipFile(sys.argv[1]); bad=collections.Counter()
for n in z.namelist():
    if not n.endswith(".class"): continue
    r=full_cp(z.read(n))
    if not r: continue
    utf,cls,nat,refs,_=r
    for tag,ci,ni in refs:
        o=utf.get(cls.get(ci,-1))
        if not o: continue
        a,b=nat.get(ni,(None,None)); nm,ds=utf.get(a),utf.get(b)
        if nm is None or ds is None: continue
        d=declaring(o,nm,ds)
        if not d or d not in classes: continue
        key=(f"{d}->{nm}:{ds}" if tag==9 else f"{d}->{nm}{ds}")
        if members.get(key, nm) != nm:
            bad[f"{o.rsplit('/',1)[-1]} -> {d.rsplit('/',1)[-1]}.{nm}{ds}"]+=1
print("漏改的继承成员引用:", sum(bad.values()), "处 /", len(bad), "种")
for k,v in bad.most_common(15): print(f"   {v:3d}  {k}")
