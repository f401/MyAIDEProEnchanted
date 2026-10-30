#!/usr/bin/env python3
"""support/android.arch 全量还原匹配。
证据: ①包外调用点描述符 ②字符串常量 ③方法形状 ④解析后引用类型 ⑤字段类型 ⑥父类
约束: 同包候选 / 一对一 / 置信差 / 内部类跟随外部类 / 迭代传播
"""
import sys, struct, re, collections, json
sys.path.insert(0, "/data/data/com.termux/files/home/tools")
from match_lib import load_aars, load_jar, jac, MDESC, FDESC, shape

APK = "/storage/emulated/0/MyAIDEProEnchanted/process/src"
OFF = "/data/data/com.termux/files/home/out/official/aar27"
OUT = "/data/data/com.termux/files/home/out/support_mapping.json"
ROOTS = ("android/support/", "android/arch/")
SINGLE = re.compile(r'^[a-z]{1,3}$')
TYPEP = re.compile(r'L([\w$]+(?:/[\w$]+)+);')
SEED = {
 "android/support/v4/app/a": "android/support/v4/app/ActionBarDrawerToggle",
 "android/support/v4/app/j": "android/support/v4/app/DialogFragment",
 "android/support/v4/content/b": "android/support/v4/content/ContextCompat",
 "android/support/customtabs/m": "android/support/customtabs/CustomTabsServiceConnection",
 "android/support/v4/app/c": "android/support/v4/app/ActivityCompat",
 "android/support/v4/app/r": "android/support/v4/app/FragmentManager",
 "android/support/v4/app/D": "android/support/v4/app/FragmentTransaction",
 "android/support/v4/view/o": "android/support/v4/view/PagerAdapter",
}

def full_cp(b):
    """返回 utf{idx:str}, cls{idx:name_idx}, nat{idx:(n,d)}, refs[(tag,cls_idx,nat_idx)], strrefs[idx]"""
    n = struct.unpack_from(">H", b, 8)[0]
    utf, cls, nat, refs, strs, i, o = {}, {}, {}, [], [], 1, 10
    while i < n:
        tag = b[o]; o += 1
        if tag == 1:
            ln = struct.unpack_from(">H", b, o)[0]; o += 2
            utf[i] = b[o:o+ln].decode("utf-8", "replace"); o += ln
        elif tag == 7: cls[i] = struct.unpack_from(">H", b, o)[0]; o += 2
        elif tag == 8: strs.append(struct.unpack_from(">H", b, o)[0]); o += 2
        elif tag == 12: nat[i] = struct.unpack_from(">HH", b, o); o += 4
        elif tag in (9, 10, 11): refs.append((tag,) + struct.unpack_from(">HH", b, o)); o += 4
        elif tag == 15: o += 3
        elif tag == 16: o += 2
        elif tag in (3, 4, 17, 18): o += 4
        elif tag in (5, 6): o += 8; i += 1
        elif tag in (19, 20): o += 2
        else: return None
        i += 1
    return utf, cls, nat, refs, strs

def analyse(b):
    r = full_cp(b)
    if not r: return None
    utf, cls, nat, refs, strrefs = r
    mdesc, mshape, fdesc = set(), collections.Counter(), set()
    for s in utf.values():
        if MDESC.match(s): mdesc.add(s); mshape[shape(s)] += 1
        elif FDESC.match(s): fdesc.add(FDESC.match(s).group(2))
    strings = {utf[i] for i in strrefs if i in utf and len(utf[i]) > 3}
    strings |= {s for s in utf.values() if " " in s and len(s) > 5}
    types = set()
    for s in utf.values(): types.update(TYPEP.findall(s))
    names = [utf.get(i) for i in cls.values()]
    return dict(mdesc=mdesc, mshape=mshape, fdesc=fdesc, strings=strings, refs=types,
                super=(names[1] if len(names) > 1 else None))

def owner_index(bodies):
    idx = collections.defaultdict(set)
    for b in bodies.values():
        r = full_cp(b)
        if not r: continue
        utf, cls, nat, refs, _ = r
        for tag, ci, nti in refs:
            owner = utf.get(cls.get(ci, -1))
            if not owner: continue
            nm, ds = nat.get(nti, (None, None))
            if ds is not None and ds in utf: idx[owner].add(utf[ds])
    return idx

def main():
    off = load_aars(OFF)
    bodies = {}
    for s in ("", "2", "3", "4", "5"): bodies.update(load_jar(f"{APK}/classes{s}.jar"))
    apk = {k: v for k, v in bodies.items() if k.startswith(ROOTS)}
    offA = {n: f for n, b in off.items() if (f := analyse(b))}
    apkA = {n: f for n, b in apk.items() if (f := analyse(b))}
    calls = owner_index(bodies)
    print(f"官方可分析 {len(offA)} / APK support·arch {len(apkA)} / 调用索引 owner {len(calls)}")

    pkg = lambda n: n.rsplit("/", 1)[0]
    taken = set(apk) & set(off)
    cand = collections.defaultdict(list)
    for c in offA:
        if c not in apk: cand[pkg(c)].append(c)
    targets = sorted(t for t in apk if SINGLE.match(t.rsplit("/", 1)[-1].split("$")[0]))
    mapping = dict(SEED); conf = {k: ("seed", 9.99, 0.0) for k in SEED}
    resolve = lambda n: mapping.get(n, n)

    for rnd in range(12):
        added = 0
        resrefs = {t: {resolve(x) for x in apkA[t]["refs"]} for t in targets if t in apkA and t not in mapping}
        supres = {t: resolve(apkA[t]["super"]) for t in resrefs if apkA[t]["super"]}
        for t in sorted(resrefs, key=lambda x: -len(calls.get(x, ()))):
            outer, _, inner = t.rpartition("$")
            pool = cand[pkg(t)]
            if inner:
                pref = mapping.get(outer) or (outer if outer in apk else None)
                if not pref: continue
                pool = [c for c in pool if c.startswith(pref + "$")]
            pool = [c for c in pool if c not in mapping.values() and c not in taken]
            if not pool: continue
            a = apkA[t]
            cl = calls.get(t)
            sc = []
            for c in pool:
                b = offA[c]
                s = 0.0
                if cl: s += 4 * jac(cl, b["mdesc"])
                s += 3 * jac(a["strings"], b["strings"])
                s += 2 * jac(set(a["mshape"]), set(b["mshape"]))
                s += 2 * jac(resrefs[t], b["refs"])
                s += 1 * jac(a["fdesc"], b["fdesc"])
                if supres.get(t) and supres[t] == b["super"]: s += 2
                sc.append((s, c))
            sc.sort(reverse=True)
            best, second = sc[0][0], (sc[1][0] if len(sc) > 1 else 0.0)
            lv = "高" if (best >= 5.0 and best - second >= 1.2) else ("中" if (best >= 4.0 and best - second >= 0.6) else None)
            if lv:
                mapping[t] = sc[0][1]; conf[t] = (lv, round(best, 2), round(second, 2)); added += 1
        print(f"  轮 {rnd+1}: +{added} 累计 {len(mapping)}")
        if not added: break

    lv = collections.Counter(c[0] for c in conf.values())
    print(f"\n目标 {len(targets)} 已定 {len(mapping)} 置信 {dict(lv)}")
    print("未定:", [t for t in targets if t not in mapping][:12])
    json.dump({"mapping": mapping, "conf": {k: list(v) for k, v in conf.items()},
               "targets": targets, "taken": sorted(taken), "apk_classes": sorted(apk)},
              open(OUT, "w"), indent=1)
    print("写出", OUT)
    for t in list(mapping)[:15]:
        print(f"  {str(conf.get(t)):26s} {t:40s} -> {mapping[t]}")

if __name__ == "__main__":
    main()
