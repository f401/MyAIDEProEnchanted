#!/usr/bin/env python3
"""assets_rename.py —— 让 `assets/data/functions/**` 的 4 个 bundle 也过一遍 FART。

为什么要做：bundle 是运行期动态加载的 `zip(classes.dex)`（离线 API 文档库），构建时**原样回填**。
它们引用了主 dex 里的类/成员（`abcd/Ea`、`abcd/la`、`abcd/na`、`abcd/GA`…），主 dex 改名后
bundle 里还是旧名 ⇒ 运行到那行就 `NoClassDefFoundError`（`tools/deob/assetcheck.py` 会红）。

流水线（每个 bundle）：
    zip(classes.dex) --dex2jar--> x.jar --FART--> x-renamed.jar --D8--> classes.dex --> zip(classes.dex)

用法:
  python3 tools/build/assets_rename.py --map out/build/mappings.tiny --out out/build/assetdex
  python3 tools/build/assets_rename.py --no-d8          # 只跑到 FART（调试用，不产出 dex）
  --allow-fail   任何一步失败只告警、跳过该 bundle（构建链默认用它，保证不比现在更差）
"""
import os, sys, glob, json, shutil, argparse, subprocess, tempfile, zipfile

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
ASSET_REL = {'en': 'lang/en.jar', 'zh': 'lang/zh.jar',
             'ndk': 'runtime/ndk.zip', 'packagingservice': 'runtime/packagingservice.zip'}
FART = os.path.join(REPO, 'process', 'ForgeAutoRenamingTool-1.0.8-all.jar')
D8 = os.path.join(REPO, 'process', 'd8.jar')
ANDROID = os.path.join(REPO, 'process', 'android.jar')


def dex2jar_bin():
    jars = sorted(glob.glob(os.path.join(REPO, 'process', 'dex2jar', '*.jar')))
    if not jars:
        raise SystemExit('缺 process/dex2jar/*.jar（dex2jar 工具）')
    return os.pathsep.join(jars)


def tree_bundle(key):
    return os.path.join(REPO, 'src', 'assets', 'data', 'functions', ASSET_REL[key])


def run(cmd, what):
    r = subprocess.run(cmd, capture_output=True, text=True)
    if r.returncode != 0:
        print((r.stdout or '')[-800:])
        print((r.stderr or '')[-800:])
        raise RuntimeError('%s 失败（rc=%d）' % (what, r.returncode))


def one(key, mapfile, outdir, want_dex=True):
    src = tree_bundle(key)
    if not os.path.exists(src):
        raise RuntimeError('树里没有 %s' % src)
    with zipfile.ZipFile(src) as zz:
        if 'classes.dex' not in zz.namelist():
            raise RuntimeError('%s 不是 zip(classes.dex)' % src)
        dex = zz.read('classes.dex')
    tmp = tempfile.mkdtemp(prefix='assetdex-%s-' % key)
    try:
        dx = os.path.join(tmp, 'classes.dex')
        open(dx, 'wb').write(dex)
        jar = os.path.join(tmp, 'classes.jar')
        run(['java', '-Xmx1200m', '-cp', dex2jar_bin(),
             'com.googlecode.dex2jar.tools.Dex2jarCmd', '--force', '-o', jar, dx], 'dex2jar')
        ren = os.path.join(tmp, 'renamed.jar')
        cmd = ['java', '-Xmx900m', '-jar', FART, '--input', jar, '--output', ren,
               '--map', mapfile, '--lib', ANDROID]
        # bundle 会引用主 dex 里的类（AIDELog/Utils/abcd/GA…）：不把它们当 --lib 喂进去，
        # FART 会报 "Can't Find Class" 并以 rc=1 中止（packagingservice 就是这样）。
        appjar = os.path.join(REPO, 'out', 'build', 'merged_pub.jar')
        if os.path.exists(appjar):
            cmd += ['--lib', appjar]
        run(cmd, 'FART')
        with zipfile.ZipFile(ren) as zz:
            names = [x[:-6] for x in zz.namelist() if x.endswith('.class')]
        n = len(names)
        if os.environ.get('ASSETDEX_DUMP'):
            print('    类:', ', '.join(sorted(names)))
        if not want_dex:
            print('  %-18s FART 完成（%d 类）→ %s' % (key, n, ren))
            return None
        d = os.path.join(tmp, 'dex')
        os.makedirs(d, exist_ok=True)
        run(['java', '-Xmx1200m', '-cp', D8, 'com.android.tools.r8.D8', '--release',
             '--min-api', '26', '--lib', ANDROID, '--output', d, ren], 'D8')
        outs = glob.glob(os.path.join(d, '*.dex'))
        if len(outs) != 1:
            raise RuntimeError('D8 产出 %d 个 dex（期望 1）' % len(outs))
        os.makedirs(outdir, exist_ok=True)
        dst = os.path.join(outdir, key + '.zip')
        with zipfile.ZipFile(dst, 'w', zipfile.ZIP_DEFLATED) as zo:
            zo.write(outs[0], 'classes.dex')
        print('  %-18s → %s（%d 类，%dKB）' % (key, dst, n, os.path.getsize(dst) // 1024))
        return dst
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--keys', nargs='*', default=list(ASSET_REL))
    ap.add_argument('--map', default=os.path.join(REPO, 'out', 'build', 'mappings.tiny'))
    ap.add_argument('--out', default=os.path.join(REPO, 'out', 'build', 'assetdex'))
    ap.add_argument('--no-d8', action='store_true', help='只跑到 FART（不生成 dex，调试用）')
    ap.add_argument('--allow-fail', action='store_true', help='单个 bundle 失败只告警，不中止')
    a = ap.parse_args()
    ok, fail = 0, 0
    for key in a.keys:
        print('== %s' % key)
        try:
            one(key, a.map, a.out, want_dex=not a.no_d8)
            ok += 1
        except Exception as e:
            fail += 1
            if not a.allow_fail:
                raise
            print('  ⚠ %s 跳过：%s' % (key, e))
    print('合计：成功 %d / 失败 %d' % (ok, fail))
    return 0 if fail == 0 or a.allow_fail else 1


if __name__ == '__main__':
    sys.exit(main())
