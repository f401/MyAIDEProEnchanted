#!/usr/bin/env python3
"""消除 apktool 工程里的 APKTOOL_DUMMY：只换名字，ID 一位不动。

用法:
  python3 rename_dummy.py                      # 干跑：用合成名 id_01d2 / string_00e4
  python3 rename_dummy.py --names base.tsv      # 干跑：优先用 baseline 的真名
  python3 rename_dummy.py --names base.tsv --apply

--names 来自 arsc_names.py 的输出（id<TAB>type<TAB>name）。
安全检查：baseline 对齐度 < --min-align（默认 0.95）时拒绝使用其名字。
"""
import argparse, pathlib, re, sys, collections

SRC = pathlib.Path("/storage/emulated/0/MyAIDEProEnchanted/src")
PUB, IDS = SRC / "res/values/public.xml", SRC / "res/values/ids.xml"
PUB_RE = re.compile(r'<public type="([a-z-]+)" name="(APKTOOL_DUMMY_[0-9a-f]+)" id="(0x[0-9a-f]{8})"')

def load_baseline(p):
    m = {}
    for line in pathlib.Path(p).read_text(encoding="utf-8").splitlines():
        parts = line.split("\t")
        if len(parts) == 3:
            m[parts[0]] = (parts[1], parts[2])
    return m

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--names"); ap.add_argument("--apply", action="store_true")
    ap.add_argument("--min-align", type=float, default=0.95)
    ap.add_argument("--prefix", default="")   # 合成名前缀，留空则为 id_01d2
    a = ap.parse_args()

    pub_text = PUB.read_text(encoding="utf-8")
    dummies = PUB_RE.findall(pub_text)                       # (type, name, id)
    if not dummies:
        print("没有 APKTOOL_DUMMY，无需处理"); return 0
    existing = set(re.findall(r'name="([^"]+)"', pub_text)) | \
               set(re.findall(r'name="([^"]+)"', IDS.read_text(encoding="utf-8")))

    # baseline 对齐度校验（用工程里已有真名的资源来验证两套 id 是否同源）
    base, align = {}, None
    if a.names:
        base = load_baseline(a.names)
        named = [(rid, n) for _, n, rid in dummies if False]
        ok = tot = 0
        for t, n, rid in re.findall(r'<public type="([a-z-]+)" name="([^"]+)" id="(0x[0-9a-f]{8})"', pub_text):
            if n.startswith("APKTOOL_DUMMY_") or rid not in base: continue
            tot += 1; ok += base[rid][1] == n
        align = ok / tot if tot else 0.0
        print(f"baseline 对齐度: {ok}/{tot} = {align:.2%}")
        if align < a.min_align:
            print(f"❌ 对齐度低于 {a.min_align:.0%}，ABORT（id 不同源，不能按 id 取名字）"); return 2

    mapping, src_stat = {}, collections.Counter()
    for t, old, rid in dummies:
        new = None
        if base and rid in base:
            bt, bn = base[rid]
            if bn and not bn.startswith("APKTOOL_DUMMY") and not re.fullmatch(r'[a-z]+_[0-9a-f]{8}', bn) and bt == t:
                new = bn; src_stat["baseline"] += 1
        if not new:
            new = f"{a.prefix}{t}_{rid[-4:]}"; src_stat["synthetic"] += 1
        if new in existing and new != old:      # 防重名
            new = f"{new}_r"; src_stat["dedup"] += 1
        existing.add(new); mapping[old] = new

    print(f"映射: {len(mapping)} 条  {dict(src_stat)}")
    for old, new in list(mapping.items())[:5]:
        print(f"  {old:24s} -> {new}")

    # 受影响文件
    targets = [PUB, IDS]
    targets += [p for p in (SRC / "res").rglob("*.xml") if "/values" not in str(p) and "APKTOOL_DUMMY" in p.read_text(errors="ignore")]
    targets += [p for p in SRC.glob("smali*/**/*.smali") if b"APKTOOL_DUMMY_" in p.read_bytes()]
    print(f"受影响文件: {len(targets)} 个")
    if not a.apply:
        print("\n[干跑] 未写入。加 --apply 执行。"); return 0

    for p in targets:
        txt = p.read_text(encoding="utf-8")
        orig = txt
        for old, new in mapping.items():
            txt = re.sub(rf'\b{old}\b', new, txt)
        if txt != orig:
            p.write_text(txt, encoding="utf-8")
    left = sum(p.read_text(errors="ignore").count("APKTOOL_DUMMY") for p in targets)
    print(f"\n已写入 {len(targets)} 个文件，残留 APKTOOL_DUMMY: {left}")
    return 0 if left == 0 else 3

if __name__ == "__main__":
    sys.exit(main())
