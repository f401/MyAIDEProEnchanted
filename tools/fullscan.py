import sys, json, zipfile, collections
sys.path.insert(0,'/data/data/com.termux/files/home/tools')
from hier import structure
from match_support import full_cp

JAR=sys.argv[1]
M=json.load(open("migrate_map.json")); CM=json.load(open("cprewrite_map9.json"))
members, classes = CM["members"], CM["classes"]
targets=set(M.values())

def load(jar):
    z=zipfile.ZipFile(jar); info={}
    for n in z.namelist():
        if not n.endswith(".class"): continue
        s=structure(z.read(n))
        if s and s["this"]: info[s["this"]]=s
    return info

pre=load("merged.jar")          # 迁移前（用于解析继承）
post=load(JAR)                  # 迁移后
def ancestors(info, c):
    seen=set(); out=[]
    def go(x):
        s=info.get(x)
        if not s: return
        for p in ([s["sup"]] if s["sup"] else [])+list(s["ifaces"]):
            if p in seen: continue
            seen.add(p); out.append(p); go(p)
    go(c); return out
anc_pre={c: ancestors(pre,c) for c in pre}

def decl_owner(owner, nm, ds):
    for c in [owner]+anc_pre.get(owner, []):
        s=pre.get(c)
        if s and any(a==nm and b==ds for a,b,_ in s["methods"]+s["fields"]): return c
    return None

z=zipfile.ZipFile(JAR)
A=collections.Counter(); B=collections.Counter(); C=collections.Counter(); E=collections.Counter()
for n in z.namelist():
    if not n.endswith(".class"): continue
    cls=n[:-6]; data=z.read(n)
    for o in M:
        if ("L"+o+";").encode() in data: E[cls]+=1; break
    r=full_cp(data)
    if not r: continue
    utf,cl,nat,refs,_=r
    for tag,ci,ni in refs:
        o=utf.get(cl.get(ci,-1))
        if not o: continue
        a,b=nat.get(ni,(None,None)); nm,ds=utf.get(a),utf.get(b)
        if nm is None: continue
        # A: 悬空类型
        if o.startswith(("androidx/","android/support/","android/arch/")) and o not in post:
            A[o]+=1; continue
        # C: 继承成员漏改
        d=decl_owner(o,nm,ds)
        if d and d in classes:
            key=(f"{d}->{nm}:{ds}" if tag==9 else f"{d}->{nm}{ds}")
            if members.get(key,nm)!=nm: C[f"{o.rsplit('/',1)[-1]}->{nm}{ds}"]+=1
        # B: 成员是否真实存在（含继承；framework 未知则跳过）
        if o.startswith(("androidx/","android/support/","android/arch/")):
            ok=None
            for c in [o]+ancestors(post,o):
                s=post.get(c)
                if not s: ok=None; break
                if any(x==nm and y==ds for x,y,_ in s["methods"]+s["fields"]): ok=True; break
                ok=False
            if ok is False: B[f"{o}->{nm}{ds}"]+=1
print("A 悬空类型:", sum(A.values()), "处 /", len(A), "种")
for k,v in A.most_common(8): print("   ",v,k)
print("B 悬空成员:", sum(B.values()), "处 /", len(B), "种")
for k,v in B.most_common(8): print("   ",v,k)
print("C 继承成员漏改:", sum(C.values()), "处 /", len(C), "种")
for k,v in C.most_common(8): print("   ",v,k)
print("E 仍引用旧 support 类的类:", len(E))

# D: 抽象方法实现完备性
miss=[]
for c,s in post.items():
    if not c.startswith(("com/","abcd/","net/","io/","aidepro/","utilcode/")): continue
    if s.get("abstract") if False else False: continue
    acc_abstract = False
    for x in [c]:
        pass
    abs_methods=set()
    for a in ancestors(post,c):
        sa=post.get(a)
        if not sa: continue
        for nm,ds,off in sa["methods"]:
            pass
print("D 抽象实现检查: 需要更完整解析，见下一版")
