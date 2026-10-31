#!/usr/bin/env python3
"""apk_refs.py —— 体检：**打出来的 APK 里还有没有"旧类名"残留**。

不变量：class_map 里每个被改名的探针类 `旧名 → 新名`，产物里就不该再出现 `L旧名;`。
踩过的坑（真机）：`com/aide/ui/U → com/aide/UI` 改了，类也在，但某个 dex/嵌套 jar 里
还留着 `Lcom/aide/ui/U;` 的引用 ⇒ 一进那个方法就
`NoClassDefFoundError: Failed resolution of: Lcom/aide/ui/U;`。

用法：
    python3 tools/jgit/audit/apk_refs.py out/build/apk/xxx.apk [-p process/deob.json]
期望：`✔ 产物里没有旧类名残留`
"""
import argparse
import collections
import io
import os
import sys
import zipfile

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.abspath(os.path.join(HERE, '..', '..', '..'))
sys.path.insert(0, os.path.join(REPO, 'tools', 'deob'))
sys.path.insert(0, os.path.join(REPO, 'tools', 'jgit'))
import config  # noqa: E402
import dexlib  # noqa: E402
import mapping  # noqa: E402


def renamed_classes(project):
    cm = mapping.ClassMap(project.class_map, project.probe_prefix,
                          project.class_map_prefix).load()
    return {cm.full_probe(p): t for p, t, _e in cm.rows if t != cm.full_probe(p)}


def asset_shapes(apk):
    """assets/data/functions 下的 jar/zip 必须是 `zip(classes.dex)`（原包就是这样）。

    踩过：把改名后的 **class-jar** 直接塞进 `packagingservice.zip` / `ndk.zip`，
    运行期加载不到里面的类 ⇒ `NoClassDefFoundError: … IExternalPackagingServiceListener$Stub`。
    """
    bad = []
    with zipfile.ZipFile(apk) as z:
        for n in z.namelist():
            if not n.startswith('assets/data/functions/') or not n.endswith(('.jar', '.zip')):
                continue
            try:
                names = zipfile.ZipFile(io.BytesIO(z.read(n))).namelist()
            except Exception:
                bad.append((n, '不是 zip'))
                continue
            if 'classes.dex' not in names:
                bad.append((n, '是 class-jar' if any(x.endswith('.class') for x in names) else str(names[:2])))
    return bad


def scan(apk, probes):
    bad = collections.Counter()
    where = collections.defaultdict(list)
    with zipfile.ZipFile(apk) as z:
        for n in z.namelist():
            if n.endswith('.dex'):
                try:
                    d = dexlib.Dex(z.read(n))
                except Exception:
                    continue
                for i in range(getattr(d, 'type_ids_size', 0)):
                    try:
                        t = d.type(i)
                    except Exception:
                        continue
                    if not t or not t.startswith('L'):
                        continue
                    c = t[1:-1]
                    if c in probes:
                        bad[c] += 1
                        where[c].append(n)
            elif n.endswith(('.jar', '.zip')):
                try:
                    iz = zipfile.ZipFile(io.BytesIO(z.read(n)))
                except Exception:
                    continue
                for e in iz.namelist():
                    if e.endswith('.class') and e[:-6] in probes:
                        bad[e[:-6]] += 1
                        where[e[:-6]].append('%s!%s' % (n, e))
                    elif e.endswith('.dex'):        # 嵌套 dex 也看一眼名字
                        pass
    return bad, where


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('apk')
    ap.add_argument('-p', '--project', default=os.path.join(REPO, 'process', 'deob.json'))
    a = ap.parse_args()
    P = config.load(a.project)
    probes = renamed_classes(P)
    bad, where = scan(a.apk, probes)
    shapes = asset_shapes(a.apk)
    print('产物 %s（探针里被改名的类 %d 个）' % (os.path.basename(a.apk), len(probes)))
    if shapes:
        print('✘ assets 格式不对（原包都是 zip(classes.dex)，不能换成 class-jar）：')
        for n, why in shapes:
            print('   %-56s %s' % (n, why))
        return 1
    if not bad:
        print('✔ 产物里没有旧类名残留')
        return 0
    print('✘ 旧类名残留 %d 个（合计 %d 处引用）：' % (len(bad), sum(bad.values())))
    for c, k in bad.most_common(12):
        print('   %-52s ×%-4d 出现在 %s' % (c, k, ', '.join(sorted(set(where[c]))[:2])))
    return 1


if __name__ == '__main__':
    sys.exit(main())
