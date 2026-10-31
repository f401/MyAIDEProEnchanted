#!/usr/bin/env python3
"""align_src.py —— 把 `process/src/*.jar` 和"要改的那个 APK"对齐。

判据（可复现）：**每个 jar 的类定义集合，必须等于对应 dex 的类定义集合**。

| jar | 对应 |
|---|---|
| `process/src/classes{,2,3,4,5}.jar` | APK 里的 `classes{,2,3,4,5}.dex` |
| `process/src/en.jar` / `zh.jar` | `assets/data/functions/lang/{en,zh}.jar` 里的 `classes.dex` |
| `process/src/ndk.jar` / `packagingservice.jar` | `assets/data/functions/runtime/{ndk,packagingservice}.zip` 里的 `classes.dex` |

为什要它：`process/src/*.jar` 是**手工准备**的 dex2jar 产物，很容易拿成别的版本
（真实事故：packagingservice 那几个 jar 是另一个 AIDE 构建的，类名是 `e/f/e$a` 而本包是
`IExternalPackagingService*`；en/zh 还各少 1 个类）。一旦错版，后面 FART/D8 全在错的东西上跑。

用法：
    python3 tools/build/align_src.py                 # 只体检（默认 APK = freely 原包）
    python3 tools/build/align_src.py --apply         # 缺/错的 jar 用 dex2jar 重建
    python3 tools/build/align_src.py --apk <别的.apk> [--apply]
环境：需要 `process/dex2jar/*.jar`（`de.femtopedia.dex2jar:dex-tools` 及其依赖）。
"""
import argparse
import glob
import os
import shutil
import subprocess
import sys
import tempfile
import zipfile

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.abspath(os.path.join(HERE, '..', '..'))
sys.path.insert(0, os.path.join(REPO, 'tools', 'jgit'))
sys.path.insert(0, os.path.join(REPO, 'tools', 'deob'))
import dexlib  # noqa: E402

SRC = os.path.join(REPO, 'process', 'src')
DEX2JAR = os.path.join(REPO, 'process', 'dex2jar')
ASSETS = [('en', 'assets/data/functions/lang/en.jar'),
          ('zh', 'assets/data/functions/lang/zh.jar'),
          ('ndk', 'assets/data/functions/runtime/ndk.zip'),
          ('packagingservice', 'assets/data/functions/runtime/packagingservice.zip')]


def dex_classes(data):
    d = dexlib.Dex(data)
    out = set()
    for cd in d.class_defs():
        t = d.type(cd['class_idx'])
        if t:
            out.add(t[1:-1])
    return out


def jar_classes(path):
    with zipfile.ZipFile(path) as z:
        return {n[:-6] for n in z.namelist() if n.endswith('.class')}


def pairs(apk):
    """→ [(键, jar 路径, dex 字节, 说明)]"""
    out = []
    with zipfile.ZipFile(apk) as z:
        for n in z.namelist():
            if n.endswith('.dex') and '/' not in n:            # 顶层 classes*.dex
                base = n[:-4]                                  # classes / classes2 …
                out.append((base, os.path.join(SRC, base + '.jar'), z.read(n), n))
        for key, entry in ASSETS:
            if entry not in z.namelist():
                continue
            try:
                iz = zipfile.ZipFile(z.open(entry))
                data = iz.read('classes.dex')
            except Exception as e:
                print('  ⚠ %s 读不出 classes.dex: %s' % (entry, e))
                continue
            out.append((key, os.path.join(SRC, key + '.jar'), data, entry + '!classes.dex'))
    return out


def dex2jar(dex_bytes, out_jar):
    jars = sorted(glob.glob(os.path.join(DEX2JAR, '*.jar')))
    if not jars:
        raise SystemExit('缺 %s/*.jar（de.femtopedia.dex2jar:dex-tools 及其依赖）' % DEX2JAR)
    fd, tmp = tempfile.mkstemp(suffix='.dex'); os.close(fd)
    try:
        with open(tmp, 'wb') as f:
            f.write(dex_bytes)
        if os.path.exists(out_jar):
            os.remove(out_jar)
        r = subprocess.run(['java', '-Xmx1200m', '-cp', os.pathsep.join(jars),
                            'com.googlecode.dex2jar.tools.Dex2jarCmd',
                            '--force', '-o', out_jar, tmp],
                           capture_output=True, text=True)
        if r.returncode != 0 or not os.path.exists(out_jar):
            print(r.stdout[-800:]); print(r.stderr[-800:])
            raise SystemExit('dex2jar 失败：%s' % out_jar)
    finally:
        os.remove(tmp)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--apk')
    ap.add_argument('--apply', action='store_true')
    a = ap.parse_args()
    apk = a.apk or os.path.join(REPO, 'AIDE Pro_2.8.7-freely_orig_src.apk.orig')
    apk = apk if os.path.isabs(apk) else os.path.join(REPO, apk)
    if not os.path.exists(apk):
        raise SystemExit('找不到 APK：%s' % apk)
    print('APK: %s' % os.path.basename(apk))
    rows = pairs(apk)
    bad = []
    for key, jar, data, where in rows:
        want = dex_classes(data)
        have = jar_classes(jar) if os.path.exists(jar) else set()
        if want == have:
            print('  ✔ %-26s %5d 类  （%s）' % (key + '.jar', len(want), where))
            continue
        print('  ✘ %-26s dex %5d / jar %5d  少 %d / 多 %d  （%s）' % (
            key + '.jar', len(want), len(have), len(want - have), len(have - want), where))
        if have - want:
            print('       jar 独有的样例（=另一个版本）: %s' % sorted(have - want)[:4])
        bad.append((key, jar, data))
    if not bad:
        print('✔ 全部对齐')
        return 0
    if not a.apply:
        print('需要重建 %d 个 jar（加 --apply）' % len(bad))
        return 1
    for key, jar, data in bad:
        print('  重建 %s …' % os.path.basename(jar))
        dex2jar(data, jar)
        print('    → %d 类' % len(jar_classes(jar)))
    print('✔ 已重建 %d 个 jar' % len(bad))
    return 0


if __name__ == '__main__':
    sys.exit(main())
