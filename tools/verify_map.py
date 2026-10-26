import sys, re, json, zipfile, pathlib, subprocess, collections
sys.path.insert(0,'/data/data/com.termux/files/home/tools')
from hier import structure

M=json.load(open("migrate_map.json"))
CM=json.load(open("cprewrite_map7.json"))["members"]
# 载入两个来源的 class
bm={}
for jar in ("merged.jar",):
    z=zipfile.ZipFile(jar)
    for n in z.namelist():
        if n.endswith(".class"): bm.setdefault(n[:-6], z.read(n))
addy={}
for f in pathlib.Path("/data/data/com.termux/files/home/out/androidx").glob("*.a*"):
    f=str(f)
    with zipfile.ZipFile(f) as z:
        if f.endswith(".aar"):
            if "classes.jar" not in z.namelist(): continue
            import io; zz=zipfile.ZipFile(io.BytesIO(z.read("classes.jar")))
        else: zz=z
        for n in zz.namelist():
            if n.endswith(".class"): addy.setdefault(n[:-6], zz.read(n))
T=pathlib.Path("/data/data/com.termux/files/home/out/work/vc"); T.mkdir(exist_ok=True)
def bodies(name):
    src=bm.get(name) or addy.get(name)
    if not src: return {}
    p=T/"c.class"; p.write_bytes(src)
    out=subprocess.run(["javap","-c","-p","-s",str(p)],capture_output=True,text=True).stdout
    res,cur,desc,buf={},None,None,[]
    for line in out.splitlines():
        s=line.strip()
        if s.startswith("descriptor:"): desc=s.split(":",1)[1].strip(); continue
        m=re.match(r'^(?:[\w\s\.\$\[\]<>]+\s)?([\w\$<>]+)\((.*)\);?$', s)
        if m and not s.startswith(("invoke","Code:")):
            if cur and desc: res[cur+desc]="\n".join(buf)
            cur,buf=m.group(1),[],; continue
        if cur: buf.append(s)
    if cur and desc: res[cur+desc]="\n".join(buf)
    return res
norm=lambda d: re.sub(r'L([\w$/]+);', lambda m:"L"+M.get(m.group(1),m.group(1))+";", d) if d else d
EXT=re.compile(r'invoke-\w+\s+\{[^}]*\},\s+L([\w/$]+);->([\w$]+)')
STR=re.compile(r'ldc\w*\s+#\d+\s+//\s+String\s+(.*)')
CON=re.compile(r'^\s*\d+:\s+(?:const|bipush|sipush)\S*\s+[vp]\d+,\s*(-?\d+)')
DELEG=re.compile(r'invoke-(?:virtual|super)\s+\{[^}]*\},\s+L[\w/$]+;->([\w$]+)\(([^)]*)\)')
def fp(body):
    ext=collections.Counter(); strs=set(); cons=collections.Counter(); deleg=set(); n=0; throws=""
    for l in body.splitlines():
        if re.match(r'^\d+:', l): n+=1
        m=EXT.search(l)
        if m:
            o=m.group(1)
            if not o.startswith(("android/support/","androidx/","android/arch/")):
                ext[f"{o}->{m.group(2)}"]+=1
        m=STR.search(l)
        if m: strs.add(m.group(1).strip())
        m=CON.match(l)
        if m: cons[m.group(1)]+=1
        m=DELEG.search(l)
        if m: deleg.add(m.group(1))
        if "UnsupportedOperationException" in l: throws="UOE"
    if n<=3 and not ext and not strs: shape="empty"
    elif throws: shape="throw"
    elif deleg and n<=12: shape="delegate"
    else: shape="body"
    return dict(ext=ext,strs=strs,cons=cons,n=n,deleg=deleg,shape=shape)
def jac(a,b):
    if isinstance(a,set):
        return 1.0 if (not a and not b) else len(a&b)/len(a|b)
    if not a and not b: return 1.0
    i=sum((a&b).values()); u=sum((a|b).values()); return i/u if u else 0.0
def sim(a,b):
    s=3*jac(a["ext"],b["ext"])+2*jac(a["strs"],b["strs"])+1*jac(a["cons"],b["cons"])
    s+=1*(min(a["n"],b["n"])/max(1,a["n"],b["n"]))
    if a["shape"]==b["shape"]: s+=2
    return s
CLASSES=[("android/support/v4/view/ViewPager","androidx/viewpager/widget/ViewPager"),
         ("android/support/v4/widget/DrawerLayout","androidx/drawerlayout/widget/DrawerLayout"),
         ("android/support/v4/app/Fragment","androidx/fragment/app/Fragment"),
         ("android/support/v4/app/FragmentActivity","androidx/fragment/app/FragmentActivity"),
         ("android/support/v4/app/NotificationCompat$Builder","androidx/core/app/NotificationCompat$Builder"),
         ("android/support/v4/widget/NestedScrollView","androidx/core/widget/NestedScrollView")]
report={}
for obf,off in CLASSES:
    ba,bn=bodies(obf),bodies(off)
    if not ba or not bn: print(f"!! 缺类 {obf}"); continue
    fbn={k:fp(v) for k,v in bn.items()}
    checked=mis=0; details=[]
    for sig,body in ba.items():
        nm=sig.split("(")[0]; desc=sig[len(nm):]
        if nm in ("<init>","<clinit>"): continue
        key=f"{obf}->{nm}{desc}"
        cur=CM.get(key)
        cands=sorted(((sim(fp(body), f) , k) for k,f in fbn.items()
                      if k[len(k.split("(")[0]):]==norm(desc)), reverse=True)
        if not cands: continue
        # 只有"当前映射存在"或"名字不是官方"的才比对
        official_names={k.split("(")[0] for k,f in fbn.items() if k[len(k.split("(")[0]):]==norm(desc)}
        if cur is None and nm in official_names: continue
        checked+=1
        best=cands[0][1].split("(")[0]; score=cands[0][0]
        if cur and cur!=best:
            mis+=1
            details.append((nm+desc, cur, best, round(score,2), [c[1].split("(")[0] for c in cands[:3]]))
    report[obf]=(checked,mis,details)
    print(f"{obf.rsplit('/',1)[-1]:28s} 复核 {checked:3d}  与当前映射不符 {mis:2d}")
    for d in details[:6]: print(f"     {d[0][:46]:48s} 现={d[1]:24s} 指纹={d[2]:24s} ({d[3]}) {d[4]}")
json.dump({k:(v[0],v[1],v[2]) for k,v in report.items()}, open("verify_report.json","w"), indent=1)
