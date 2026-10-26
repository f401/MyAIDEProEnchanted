#!/usr/bin/env python3
"""审计 APKTOOL_DUMMY 的引用面（单次正则扫描，约 30-60s）。"""
import pathlib, re, collections

SRC = pathlib.Path("/storage/emulated/0/MyAIDEProEnchanted/src")
pub = (SRC / "res/values/public.xml").read_text(encoding="utf-8")
dummies = re.findall(r'<public type="([a-z-]+)" name="(APKTOOL_DUMMY_[0-9a-f]+)" id="(0x[0-9a-f]{8})"', pub)
ids = {rid for _, _, rid in dummies}
print(f"dummy 条目: {len(dummies)}  类型分布: {dict(collections.Counter(t for t,_,_ in dummies))}")

# 1) res 非 values 目录里是否有引用
res_hits = [str(p) for p in (SRC/"res").rglob("*.xml")
            if "/values" not in str(p) and "APKTOOL_DUMMY" in p.read_text(errors="ignore")]
print(f"res 非 values 引用: {len(res_hits)} {res_hits[:3]}")

# 2) smali 里的引用：R 类 vs 其它
name_re = re.compile(rb'APKTOOL_DUMMY_[0-9a-f]+')
raw_re  = re.compile(rb'0x(7f[0-9a-f]{6})')
in_r, out_r = collections.Counter(), collections.Counter()
raw_hits = collections.Counter()
files = list(SRC.glob("smali*/**/*.smali"))
for p in files:
    b = p.read_bytes()
    is_r = "R$" in p.name
    found = name_re.findall(b)
    if found:
        (in_r if is_r else out_r).update(n.decode() for n in found)
    if not is_r:
        for m in raw_re.findall(b):
            k = "0x" + m.decode()
            if k in ids:
                raw_hits[k] += 1

print(f"扫描 smali: {len(files)} 个文件")
print(f"R 类内 dummy 字段名: {len(in_r)} 个名字 / {sum(in_r.values())} 处")
print(f"R 类外 dummy 字段名: {len(out_r)} 个名字 / {sum(out_r.values())} 处 -> {list(out_r.items())[:5]}")
print(f"R 类外用裸常量引用的 dummy id: {len(raw_hits)} 个 -> {list(raw_hits.items())[:8]}")
