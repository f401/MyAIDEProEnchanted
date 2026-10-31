#!/usr/bin/env python3
"""build_apk.py —— 一键构建：FART 改名 → access 放宽 → D8 → 回填 dex → （可选）签名 → 校验。

    python3 tools/build/build_apk.py plan                 # 只看配对计划（jar ↔ dex）
    python3 tools/build/build_apk.py all                  # 全流程
    python3 tools/build/build_apk.py fart|widen|dex|repack|sign|verify

约定：
  * 输入 jar 在 process/src/，mapping 在 process/mappings.txt（由 jobs/<依赖>/ 与 process/truth/head 汇总生成），
    APK 用仓库根目录下的原包。
  * 每个 dex 与 src jar 的对应关系由**类集合重叠**自动判定（`plan` 会打印，可人工核对）。
  * 输出：out/build/{renamed,dex,apk}/；签名用 `--ks` 指定的 keystore（缺省则不签）。
  * 本脚本不修改 process/ 下任何文件（只读 mappings/truth/base）。
"""
import argparse
import glob
import os
import re
import shutil
import subprocess
import sys
import zipfile

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(REPO, 'tools', 'deob'))

import config  # noqa: E402
import dex as dexlib  # noqa: E402
import mapping  # noqa: E402

OUT = os.path.join(REPO, 'out', 'build')


def sh(cmd, **kw):
    print('  $', ' '.join(cmd[:6]), '...' if len(cmd) > 6 else '')
    r = subprocess.run(cmd, **kw)
    if r.returncode:
        raise SystemExit('命令失败（%d）: %s' % (r.returncode, ' '.join(cmd)))


_APK_OVERRIDE = None


def apk_path():
    if _APK_OVERRIDE:
        return _APK_OVERRIDE
    cands = sorted(glob.glob(os.path.join(REPO, '*.apk'))) + sorted(glob.glob(os.path.join(REPO, '*.apk.orig')))
    if not cands:
        raise SystemExit('找不到 APK（仓库根目录放一个 .apk / .apk.orig）')
    # 优先选 dex 数量与 process/src 里 classes*.jar 数量一致的
    import re as _re
    njars = len([j for j in src_jars() if _re.search(r'classes\d*\.jar$', j)])
    for c in cands:
        try:
            z = zipfile.ZipFile(c)
            n = len([x for x in z.namelist() if _re.fullmatch(r'classes\d*\.dex', x)])
            if n == njars:
                return c
        except Exception:
            pass
    return cands[0]


def src_jars():
    d = os.path.join(REPO, 'process', 'src')
    return sorted(glob.glob(os.path.join(d, '*.jar')))


def dex_classes(b):
    d = dexlib.Dex(b)
    out = set()
    for cd in d.class_defs():
        t = d.type(cd['class_idx'])
        if t and t.startswith('L'):
            out.add(t[1:-1])
    return out


def jar_classes(path):
    z = zipfile.ZipFile(path)
    return {n[:-6] for n in z.namelist() if n.endswith('.class')}


def plan():
    """返回 (apk, dex_union, jar_union, assets)。只做体检，不改任何东西。"""
    apk = apk_path()
    z = zipfile.ZipFile(apk)
    dexes = [n for n in z.namelist() if re.fullmatch(r'classes\d*\.dex', n)]
    du = set()
    for d in dexes:
        du |= dex_classes(z.read(d))
    ju = set()
    for j in src_jars():
        if re.search(r'classes\d*\.jar$', j):
            ju |= jar_classes(j)
    assets = {n: z.getinfo(n).file_size for n in z.namelist()
              if n.endswith(('.jar', '.zip')) and n.startswith('assets/data/functions/')}
    print('APK: %s' % os.path.basename(apk))
    print('  dex: %s → 并集 %d 类' % (', '.join('%s(%d)' % (d, len(dex_classes(z.read(d)))) for d in dexes), len(du)))
    print('  jar: %s → 并集 %d 类' % (', '.join(os.path.basename(j) for j in src_jars()), len(ju)))
    inter = len(du & ju)
    print('  交集 %d（dex 侧独有 %d / jar 侧独有 %d）' % (inter, len(du - ju), len(ju - du)))
    if du - ju:
        print('    dex 独有示例: %s' % ', '.join(sorted(du - ju)[:5]))
    print('  资产 jar/zip: %s' % ', '.join('%s(%dKB)' % (k.split('/')[-1], v // 1024) for k, v in assets.items()))
    return apk, dexes, du, ju, assets


ASSET_JARS = ('zh', 'en', 'ndk', 'packagingservice')
MERGED_OK = os.path.join(REPO, 'process', 'base', 'merged_ok.jar')


def _fart(inp, out, P, libs):
    cmd = ['java', '-Xmx900m', '-jar',
           os.path.join(REPO, 'process', 'ForgeAutoRenamingTool-1.0.8-all.jar'),
           '--input', inp, '--output', out, '--map', P.out_tsrg]
    for lib in libs:
        cmd += ['--lib', lib]
    cmd += ['--lib', os.path.join(REPO, 'process', 'android.jar')]
    sh(cmd)


def step_tryfix(P):
    """AIDE 的 dex 里有些 try 不含数组访问（`Config$StringReader` 靠越界判 EOF），
    不修就会 `ArrayIndexOutOfBoundsException`。必须在 widen / FART 之前。"""
    dst = os.path.join(OUT, 'merged_try.jar')
    sh([sys.executable, os.path.join(REPO, 'tools', 'jgit', 'pipeline', 'fix_try.py'),
        MERGED_OK, dst, '--apply'])


def step_widen(P):
    """用 pipeline 里的权威实现：成员引用 + 类级访问（new/checkcast/const-class）+
    继承（extends/implements）+ override 四类一起放宽，且成员统一 public。"""
    src = os.path.join(OUT, 'merged_try.jar')      # 先 tryfix 再 widen（顺序不能反）
    dst = os.path.join(OUT, 'merged_pub.jar')
    if not os.path.exists(src):
        raise SystemExit('缺少 %s，先跑 tryfix' % src)
    sh([sys.executable, os.path.join(REPO, 'tools', 'jgit', 'pipeline', 'widen_access.py'),
        src, '--out', dst, '--apply'])


def step_fart(P):
    out = os.path.join(OUT, 'renamed'); os.makedirs(out, exist_ok=True)
    pub = os.path.join(OUT, 'merged_pub.jar')
    if not os.path.exists(pub):
        raise SystemExit('缺少 %s，先跑 tryfix + widen' % pub)
    # 主 dex：合并包一次改名
    _fart(pub, os.path.join(out, 'merged.jar'), P, [])
    # assets 的 4 个独立包（不在 merged 里）
    for name in ASSET_JARS:
        src = os.path.join(REPO, 'process', 'src', name + '.jar')
        if os.path.exists(src):
            _fart(src, os.path.join(out, name + '.jar'), P, [pub])


def step_dex(P):
    out = os.path.join(OUT, 'dex'); os.makedirs(out, exist_ok=True)
    for f in glob.glob(os.path.join(out, '*.dex')):
        os.remove(f)
    src = os.path.join(OUT, 'renamed', 'merged.jar')
    if not os.path.exists(src):
        raise SystemExit('缺少 %s，先跑 fart' % src)
    r = subprocess.run([sys.executable, os.path.join(REPO, 'tools', 'jgit', 'audit', 'trycheck.py'), src])
    if r.returncode:
        raise SystemExit('改名产物里还有 try 范围缺陷（见上），说明 tryfix 没生效')
    inputs = [src]
    sh(['java', '-Xmx1200m', '-cp', os.path.join(REPO, 'process', 'd8.jar'),
        'com.android.tools.r8.D8', '--release', '--min-api', '26', '--thread-count', '2',
        '--lib', os.path.join(REPO, 'process', 'android.jar'), '--output', out] + inputs)
    print('  产出: %s' % ', '.join('%s(%dKB)' % (os.path.basename(f), os.path.getsize(f) // 1024)
                                 for f in sorted(glob.glob(os.path.join(out, '*.dex')))))


ASSET_MAP = {'en.jar': 'assets/data/functions/lang/en.jar',
             'zh.jar': 'assets/data/functions/lang/zh.jar',
             'ndk': 'assets/data/functions/runtime/ndk.zip',
             'packagingservice': 'assets/data/functions/runtime/packagingservice.zip'}


def step_repack(P):
    apk = apk_path(); out = os.path.join(OUT, 'apk'); os.makedirs(out, exist_ok=True)
    dst = os.path.join(out, os.path.basename(apk))
    newdex = sorted(glob.glob(os.path.join(OUT, 'dex', '*.dex')))  # 多退少补（数量会变）
    if not newdex:
        raise SystemExit('没有 dex 产物，先跑 dex 步骤')
    z = zipfile.ZipFile(apk)
    old = [n for n in z.namelist() if re.fullmatch(r'classes\d*\.dex', n)]
    payload = {}
    for i, f in enumerate(newdex, 1):
        payload['classes.dex' if i == 1 else 'classes%d.dex' % i] = open(f, 'rb').read()
    renamed = os.path.join(OUT, 'renamed')
    for key, entry in ASSET_MAP.items():
        src = [p for p in glob.glob(os.path.join(renamed, '*.jar')) if os.path.basename(p) == key + '.jar']
        if src and entry in z.namelist():
            payload[entry] = open(src[0], 'rb').read()
    zo = zipfile.ZipFile(dst, 'w', zipfile.ZIP_DEFLATED)
    written = 0
    for info in z.infolist():
        if info.filename in old:
            if info.filename in payload:
                data = payload.pop(info.filename)
            else:
                continue                      # 旧 dex 多于新 dex → 丢掉
        elif info.filename in payload:
            data = payload.pop(info.filename)
        else:
            data = z.read(info.filename)
        zi = zipfile.ZipInfo(info.filename, date_time=info.date_time)
        zi.compress_type = info.compress_type
        zi.external_attr = info.external_attr
        zo.writestr(zi, data); written += 1
    for name, data in payload.items():        # 新增的 dex（数量变多时）
        zi = zipfile.ZipInfo(name, date_time=(2020, 1, 1, 0, 0, 0))
        zi.compress_type = zipfile.ZIP_DEFLATED
        zo.writestr(zi, data); written += 1
    zo.close()
    print('  旧 dex %d 个 → 新 dex %d 个；写入 %d 条目 → %s' % (len(old), len(newdex), written, dst))
    return dst


def step_sign(apk, ks=None):
    zipalign = shutil.which('zipalign'); apksigner = shutil.which('apksigner')
    if not apksigner:
        print('  ⚠ 没有 apksigner：产物未签名。可在有 SDK 的机器上：')
        print('    zipalign -f 4 %s %s.aligned.apk' % (os.path.basename(apk), os.path.basename(apk)))
        print('    apksigner sign --ks <key.keystore> --out <signed.apk> %s.aligned.apk' % os.path.basename(apk))
        return None
    aligned = apk.replace('.apk', '.aligned.apk')
    if zipalign:
        sh([zipalign, '-f', '4', apk, aligned])
    signed = apk.replace('.apk', '.signed.apk')
    sh([apksigner, 'sign', '--ks', ks, '--out', signed, aligned if zipalign else apk])
    return signed


def step_verify(P):
    apk = apk_path(); z = zipfile.ZipFile(apk)
    dst = os.path.join(OUT, 'apk', os.path.basename(apk))
    if not os.path.exists(dst):
        raise SystemExit('还没 repack')
    z2 = zipfile.ZipFile(dst)
    du = set()
    for d in [n for n in z2.namelist() if re.fullmatch(r'classes\d*\.dex', n)]:
        du |= dex_classes(z2.read(d))
    # 主 dex 的类来自改名后的合并包（assets 的 4 个包是 jar/zip，不在 dex 里）
    merged = os.path.join(OUT, 'renamed', 'merged.jar')
    if not os.path.exists(merged):
        raise SystemExit('缺少 %s，先跑 fart' % merged)
    ju = jar_classes(merged)
    print('  新 dex 并集 %d 类 / 改名后 jar 并集 %d 类' % (len(du), len(ju)))
    miss = ju - du
    # D8 会自己生成合成类（$$ExternalSyntheticBackport…、-$$Lambda$…），不算差异
    raw_extra = du - ju
    extra = {c for c in raw_extra if '$$ExternalSynthetic' not in c and '-$$Lambda$' not in c}
    if len(raw_extra) - len(extra):
        print('   （忽略 D8 生成的合成类 %d 个）' % (len(raw_extra) - len(extra)))
    ok = not miss and not extra
    if miss:
        print('    ✘ jar 里有但 dex 里没有: %d 例 %s' % (len(miss), sorted(miss)[:5]))
    if extra:
        print('    ✘ dex 里有但 jar 里没有: %d 例 %s' % (len(extra), sorted(extra)[:5]))
    if not ok:
        raise SystemExit('dex/jar 类集合不一致')
    print('  ✔ dex 与 jar 类集合完全一致')


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('step', nargs='?', default='plan')
    ap.add_argument('-p', '--project', default=os.path.join(REPO, 'process', 'deob.json'))
    ap.add_argument('--ks')
    ap.add_argument('--apk', help='指定要回填的 APK（默认自动选与 classes*.jar 数量一致的那个）')
    a = ap.parse_args()
    global _APK_OVERRIDE
    if a.apk:
        _APK_OVERRIDE = a.apk if os.path.isabs(a.apk) else os.path.join(REPO, a.apk)
    P = config.load(a.project)
    os.makedirs(OUT, exist_ok=True)
    steps = (['plan', 'tryfix', 'widen', 'fart', 'dex', 'repack', 'sign', 'verify']
             if a.step == 'all' else [a.step])
    apk, dexes, du, ju, assets = plan()
    for s in steps:
        if s == 'plan':
            continue
        print('== %s' % s)
        if s == 'tryfix':
            step_tryfix(P)
        elif s == 'fart':
            step_fart(P)
        elif s == 'widen':
            step_widen(P)
        elif s == 'dex':
            step_dex(P)
        elif s == 'repack':
            step_repack(P)
        elif s == 'sign':
            step_sign(os.path.join(OUT, 'apk', os.path.basename(apk_path())), a.ks)
        elif s == 'verify':
            step_verify(P)
    return 0


if __name__ == '__main__':
    sys.exit(main())
