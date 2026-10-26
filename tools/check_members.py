#!/usr/bin/env python3
"""校验 jar 内每个成员引用都能在目标类(含父类/接口)中找到。"""
import sys, zipfile, collections
sys.path.insert(0,'/data/data/com.termux/files/home/tools')
from hier import structure
from match_support import full_cp

jar = sys.argv[1]
z = zipfile.ZipFile(jar)
names = [n for n in z.namelist() if n.endswith(".class")]
info = {}
for n in names:
    s = structure(z.read(n))
    if s and s["this"]: info[s["this"]] = s
print(f"类 {len(info)}", flush=True)

def has_member(cls, name, desc, seen=None):
    seen = seen or set()
    if cls in seen: return False
    seen.add(cls)
    s = info.get(cls)
    if not s: return None                      # 未知类（android.* 等）
    for (nm, ds, _) in s["methods"] + s["fields"]:
        if nm == name and ds == desc: return True
    for p in ([s["sup"]] if s["sup"] else []) + list(s["ifaces"]):
        r = has_member(p, name, desc, seen)
        if r: return True
    return False

bad = collections.Counter(); unknown = collections.Counter()
for n in names:
    r = full_cp(z.read(n))
    if not r: continue
    utf, cls, nat, refs, _ = r
    for tag, ci, nti in refs:
        owner = utf.get(cls.get(ci, -1))
        if not owner: continue
        if not owner.startswith(("androidx/", "android/support/", "android/arch/")): continue
        a, b = nat.get(nti, (None, None))
        nm, ds = utf.get(a), utf.get(b)
        if nm is None or ds is None: continue
        res = has_member(owner, nm, ds)
        if res is False: bad[f"{owner}->{nm}{ds if tag!=9 else ':'+ds}"] += 1
        elif res is None: unknown[owner] += 1
print(f"无法解析的成员引用: {len(bad)} 种", flush=True)
for k, v in bad.most_common(30): print(f"   {v:3d}  {k}", flush=True)
print(f"未知归属类引用: {sum(unknown.values())} 处（多为 framework）", flush=True)
