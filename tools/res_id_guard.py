#!/usr/bin/env python3
"""资源 ID 一致性守卫：要么比 git 版本的 public.xml，要么比两个 APK 的 arsc。

  python3 res_id_guard.py --git HEAD              # 工作区 vs HEAD
  python3 res_id_guard.py --git HEAD~1 HEAD       # 两个提交
  python3 res_id_guard.py --apk old.apk new.apk   # 两个 APK 的 id->name 映射
退出码 0=一致，1=不一致（可用于 CI / pre-commit）。
"""
import argparse, pathlib, re, subprocess, sys

REPO = "/storage/emulated/0/MyAIDEProEnchanted"
PUB = "src/res/values/public.xml"
RX = r'<public type="([a-z-]+)" name="([^"]+)" id="(0x[0-9a-f]{8})"'
sys.path.insert(0, str(pathlib.Path(__file__).parent))

def from_public_xml(text):
    return {i: (t, n) for t, n, i in re.findall(RX, text)}

def from_git(rev):
    out = subprocess.run(["git", "-C", REPO, "show", f"{rev}:{PUB}"],
                         capture_output=True, text=True, check=True).stdout
    return from_public_xml(out)

def from_apk(path):
    import zipfile, arsc_names
    with zipfile.ZipFile(path) as z:
        rows = arsc_names.parse(z.read("resources.arsc"))
    return {f"{rid:#010x}": (t, n) for rid, t, n in rows}

def compare(a, b, la, lb):
    only_a, only_b = set(a) - set(b), set(b) - set(a)
    type_moved = [i for i in a if i in b and a[i][0] != b[i][0]]
    renamed = [i for i in a if i in b and a[i][1] != b[i][1]]
    print(f"{la}: {len(a)} 条 | {lb}: {len(b)} 条")
    print(f"  仅在 {la}: {len(only_a)} {sorted(only_a)[:5]}")
    print(f"  仅在 {lb}: {len(only_b)} {sorted(only_b)[:5]}")
    print(f"  type 变化: {len(type_moved)} {type_moved[:5]}")
    print(f"  仅改名（id/type 不变，正常）: {len(renamed)} 例: "
          f"{[(i, a[i][1], b[i][1]) for i in sorted(renamed)[:3]]}")
    broken = bool(only_a or only_b or type_moved)
    print(("❌ ID 集合被破坏" if broken else "✅ ID 集合一致（只有名字可能变化）"))
    return 1 if broken else 0

ap = argparse.ArgumentParser()
ap.add_argument("--git", nargs="+", metavar="REV")
ap.add_argument("--apk", nargs="+", metavar="APK")
a = ap.parse_args()
if a.git:
    revs = a.git
    if len(revs) == 1:
        cur = pathlib.Path(REPO, PUB).read_text(encoding="utf-8")
        sys.exit(compare(from_git(revs[0]), from_public_xml(cur), revs[0], "工作区"))
    sys.exit(compare(from_git(revs[0]), from_git(revs[1]), revs[0], revs[1]))
elif a.apk and len(a.apk) == 2:
    sys.exit(compare(from_apk(a.apk[0]), from_apk(a.apk[1]), a.apk[0], a.apk[1]))
else:
    ap.print_help(); sys.exit(2)
