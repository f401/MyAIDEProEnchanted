#!/usr/bin/env python3
"""build_apk.py —— 一键构建：FART 改名 → access 放宽 → D8 → 回填 dex → （可选）签名 → 校验。

    python3 tools/build/build_apk.py plan                 # 只看配对计划（jar ↔ dex）
    python3 tools/build/build_apk.py all                  # 全流程
    python3 tools/build/build_apk.py fart|widen|dex|repack|sign|verify

约定：
  * 输入 jar 在 process/src/，mapping **默认用 Tiny v2**（`process/mappings.tiny`，带注释）——
    它是 process/mappings.txt（TSRG2，唯一真源，由 jobs/<依赖>/ 汇总生成）的派生品，FART 前
    自动按需重新生成 + 跑一次 round-trip 等价门禁；要回退 TSRG2 用 `--map-format=tsrg`。
    APK 用仓库根目录下的原包。
  * 每个 dex 与 src jar 的对应关系由**类集合重叠**自动判定（`plan` 会打印，可人工核对）。
  * 输出：out/build/{renamed,dex,apk}/；签名用 `--ks` 指定的 keystore（缺省则不签）。
  * 本脚本不修改 process/ 下任何文件（只读 mappings/truth/base）。
"""
import argparse
import glob
import hashlib
import io
import os
import sys
import re
import shutil
import tempfile
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


def dex_apk():
    """**源 APK**：dex 与 `process/src/classes*.jar` 对得上的那个（体检口径）。

    用来验证"我们的 jar 确实来自这个包的 dex"，优先选 dex 数与 classes*.jar 数一致的。
    """
    if _APK_OVERRIDE:
        return _APK_OVERRIDE
    cands = sorted(glob.glob(os.path.join(REPO, '*.apk'))) + sorted(glob.glob(os.path.join(REPO, '*.apk.orig')))
    if not cands:
        raise SystemExit('找不到 APK（仓库根目录放一个 .apk / .apk.orig）')
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


def base_apk():
    """**回填底包**：`src/` 下 apktool 打出来的那个 APK。

    为什么用它而不是源 APK：`src/` 是 apktool 反编译出来的树（`res/`、`AndroidManifest.xml`、
    `assets/`），`src/*.apk` 是这棵树 `apktool b` 的产物 —— 资源/清单和树一致。
    回填只换 dex 与 4 个 assets 包，其余条目按底包原样带过去，所以底包必须"和当前树同源"。
    （源 APK 是**改造前**的原始包，拿它当底包会把 `src/` 里的资源改动丢掉。）
    """
    if _APK_OVERRIDE:
        return _APK_OVERRIDE
    cands = [p for p in glob.glob(os.path.join(REPO, 'src', '*.apk'))
             if not p.endswith(('.bak', '.orig', '.aligned.apk', '.signed.apk'))]
    if cands:
        return max(cands, key=os.path.getmtime)      # 多个就取最新的
    return dex_apk()


def apk_path():
    """兼容旧名字（历史脚本/文档里用过）：指向**回填底包**。"""
    return base_apk()


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
    """返回 (apk, dex_union, jar_union, assets)。只做体检，不改任何东西。

    `apk` 是**源 APK**（dex↔jar 对齐用）；回填底包另见 `base_apk()`。
    """
    apk = dex_apk()
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
    print('源 APK（dex↔jar 对齐）: %s' % os.path.basename(apk))
    try:
        print('回填底包（src/ 下的 apktool 产物）: %s' % os.path.basename(base_apk()))
    except SystemExit:
        pass
    print('  dex: %s → 并集 %d 类' % (', '.join('%s(%d)' % (d, len(dex_classes(z.read(d)))) for d in dexes), len(du)))
    print('  jar: %s → 并集 %d 类' % (', '.join(os.path.basename(j) for j in src_jars()), len(ju)))
    inter = len(du & ju)
    print('  交集 %d（dex 侧独有 %d / jar 侧独有 %d）' % (inter, len(du - ju), len(ju - du)))
    if du - ju:
        print('    dex 独有示例: %s' % ', '.join(sorted(du - ju)[:5]))
    print('  资产 jar/zip: %s' % ', '.join('%s(%dKB)' % (k.split('/')[-1], v // 1024) for k, v in assets.items()))
    return apk, dexes, du, ju, assets


MERGED_OK = os.path.join(REPO, 'process', 'base', 'merged_ok.jar')

# 打包用的 mapping 格式：默认 tiny（用户选定）；--map-format=tsrg 回退 TSRG2。
# tiny 是派生品 —— 不写 process/，在 out/build/ 下重新生成，写之前先跑 round-trip 门禁。
MAP_FORMAT = 'tiny'
_MAP_OVERRIDE = None


def map_file(P):
    if _MAP_OVERRIDE:
        return _MAP_OVERRIDE
    if MAP_FORMAT == 'tsrg':
        return P.out_tsrg
    return os.path.join(OUT, 'mappings.tiny')


def ensure_map(P):
    """tiny 缺失或比源表（mappings.txt / 任一 comments.tsv）旧 → 重新生成 + 等价性体检。"""
    dst = map_file(P)
    if _MAP_OVERRIDE or MAP_FORMAT != 'tiny':
        if not os.path.exists(dst):
            raise SystemExit('mapping 不存在：%s' % dst)
        return dst
    os.makedirs(OUT, exist_ok=True)
    srcs = [P.out_tsrg] + glob.glob(os.path.join(REPO, 'jobs', '*', 'comments.tsv'))
    srcs += [os.path.join(REPO, 'process', 'base', 'merged_ok.jar')]
    newest = max((os.path.getmtime(s) for s in srcs if os.path.exists(s)), default=0)
    if (not os.path.exists(dst)) or os.path.getmtime(dst) < newest:
        print('  tiny 缺失/过期 → 重新生成 %s' % dst)
        # FART 1.0.8 的 Tiny v2 解析器不认注释列（实测：`Invalid Tiny v2 line`），
        # 所以打包用的这份**不带注释**；process/mappings.tiny 那份留着给人读。
        sh([sys.executable, os.path.join(REPO, 'tools', 'jgit', 'pipeline', 'emit_tiny2.py'),
            dst, '--comments=none'])
        sh([sys.executable, os.path.join(REPO, 'tools', 'jgit', 'pipeline', 'tiny_roundtrip.py'),
            '--tiny=' + dst])
    return dst


def _fart(inp, out, P, libs):
    cmd = ['java', '-Xmx900m', '-jar',
           os.path.join(REPO, 'process', 'ForgeAutoRenamingTool-1.0.8-all.jar'),
           '--input', inp, '--output', out, '--map', map_file(P)]
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
    # assets 的 4 个 bundle **不改名**：它们是运行期动态加载的 dex 包（src 树里 assets 的
    # 那几份），内部 abcd/* 对可读性没意义；回填时直接用 `process/src/<key>.jar`（=树里文件）。


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


# key = `process/src/<key>.jar` 与 `out/build/renamed/<key>.jar` 的基名；
# value = APK 里的条目名。注意：原包里这四个条目**都是 zip(classes.dex)**（不是 class-jar），
# 回填时格式必须保持——否则应用动态加载不到里面的类（踩过：IExternalPackagingServiceListener$Stub）。
ASSET_MAP = {'en': 'assets/data/functions/lang/en.jar',
             'zh': 'assets/data/functions/lang/zh.jar',
             'ndk': 'assets/data/functions/runtime/ndk.zip',
             'packagingservice': 'assets/data/functions/runtime/packagingservice.zip'}


def step_jdkrefs(P):
    """FART 之后立刻体检：**指向 JDK/Android 的引用改名前后必须一模一样**。

    踩过：`LsEntry.toString → getLongname` 被 FART 沿覆写链传播到 `java.lang.Object.toString`
    （再扩散到 `CharSequence`/`Enum`/`JSONObject`…），780 条 JDK 引用被改坏，
    装机后一进 Crashlytics 初始化就 `NoSuchMethodError: CharSequence.getLongname`。
    """
    import subprocess
    renamed = os.path.join(OUT, 'renamed', 'merged.jar')
    base = os.path.join(REPO, 'process', 'base', 'merged_pub.jar')
    if not os.path.exists(renamed):
        raise SystemExit('缺少 %s，先跑 fart' % renamed)
    tool = os.path.join(REPO, 'tools', 'jgit', 'audit', 'jdk_refs.py')
    r = subprocess.run([sys.executable, tool, renamed, '--base', base],
                       capture_output=True, text=True)
    print((r.stdout or '').rstrip())
    if r.returncode != 0:
        raise SystemExit('✘ 有 JDK/Android 引用被改名改坏（见上）——先修 mapping 再打包')
    return 0


ASSET_REL = {'en': 'lang/en.jar', 'zh': 'lang/zh.jar',
             'ndk': 'runtime/ndk.zip', 'packagingservice': 'runtime/packagingservice.zip'}


def asset_zip(key):
    """`src/` 树里那个原始 bundle（`zip(classes.dex)`）——回填时**原样**放进 APK。"""
    return os.path.join(REPO, 'src', 'assets', 'data', 'functions', ASSET_REL[key])


def sync_assets(force=False):
    """**默认什么都不做**：不再从 `src/assets/**` 复制或重建 `process/src/<key>.jar`。

    `process/src/{en,zh,ndk,packagingservice}.jar` 只是**给工具用**的 class jar
    （validate / static 索引 / deob 要读 class 文件），而回填 APK 时 `step_repack`
    直接取树里那 4 个 `zip(classes.dex)`——两边互不影响，所以这些 jar **不需要**
    跟着资产变。

    历史上这里每次都 dex2jar 一遍：慢，而且 dex2jar 输出不是字节稳定的，
    每跑一次 `process/src/*.jar` 就在 git 里显示被改（纯噪声）。现在默认冻结。

    真要重建（例如换了一批资产、想让工具侧看到新代码）：
        SYNC_ASSETS_FORCE=1 python3 tools/build/build_apk.py sync_assets
    """
    if not (force or os.environ.get('SYNC_ASSETS_FORCE')):
        print('  （跳过：process/src/*.jar 已冻结，不再从 src/assets 复制；'
              '需要重建用 SYNC_ASSETS_FORCE=1）')
        return
    jars = sorted(glob.glob(os.path.join(REPO, 'process', 'dex2jar', '*.jar')))
    if not jars:
        raise SystemExit('缺 process/dex2jar/*.jar（dex2jar 工具）')
    for key in ASSET_REL:
        src = asset_zip(key)
        if not os.path.exists(src):
            raise SystemExit('树里没有 %s' % src)
        with zipfile.ZipFile(src) as zz:
            if 'classes.dex' not in zz.namelist():
                raise SystemExit('%s 不是 zip(classes.dex)' % src)
            dex = zz.read('classes.dex')
        dst = os.path.join(REPO, 'process', 'src', key + '.jar')
        fd, tmp = tempfile.mkstemp(suffix='.dex'); os.close(fd)
        try:
            with open(tmp, 'wb') as f:
                f.write(dex)
            if os.path.exists(dst):
                os.remove(dst)
            r = subprocess.run(['java', '-Xmx1200m', '-cp', os.pathsep.join(jars),
                                'com.googlecode.dex2jar.tools.Dex2jarCmd', '--force',
                                '-o', dst, tmp], capture_output=True, text=True)
            if r.returncode != 0 or not os.path.exists(dst):
                print((r.stdout or '')[-600:]); print((r.stderr or '')[-600:])
                raise SystemExit('dex2jar 失败：%s' % dst)
        finally:
            os.remove(tmp)
        with zipfile.ZipFile(dst) as zz:
            n = len([x for x in zz.namelist() if x.endswith('.class')])
        print('  %-22s ← %s（%d 类）' % ('process/src/%s.jar' % key, ASSET_REL[key], n))


def step_apkrefs(P):
    """**打出来的包**再体检一次：class_map 里被改名的旧类名不许残留。

    踩过：`com/aide/ui/U → com/aide/UI` 改了、类也在，但产物里某处仍留着 `Lcom/aide/ui/U;`，
    运行到那行就 `NoClassDefFoundError: Failed resolution of: Lcom/aide/ui/U;`。
    """
    apk = os.path.join(OUT, 'apk', os.path.basename(base_apk()))
    if not os.path.exists(apk):
        raise SystemExit('还没 repack：%s' % apk)
    tool = os.path.join(REPO, 'tools', 'jgit', 'audit', 'apk_refs.py')
    r = subprocess.run([sys.executable, tool, apk, '-p', P.path], capture_output=True, text=True)
    print((r.stdout or '').rstrip())
    if r.returncode != 0:
        raise SystemExit('✘ 产物里还有旧类名残留（见上）——别签，先查是不是 dex/assets 没换全')
    return 0


def step_repack(P):
    apk = base_apk(); out = os.path.join(OUT, 'apk'); os.makedirs(out, exist_ok=True)
    dst = os.path.join(out, os.path.basename(apk))
    newdex = sorted(glob.glob(os.path.join(OUT, 'dex', '*.dex')))  # 多退少补（数量会变）
    if not newdex:
        raise SystemExit('没有 dex 产物，先跑 dex 步骤')
    z = zipfile.ZipFile(apk)
    old = [n for n in z.namelist() if re.fullmatch(r'classes\d*\.dex', n)]
    payload = {}
    for i, f in enumerate(newdex, 1):
        payload['classes.dex' if i == 1 else 'classes%d.dex' % i] = open(f, 'rb').read()
    # assets 的 4 个 bundle：直接用 `process/src/<key>.jar`（= `src/` 树里 assets 的文件，
    # 由 sync_assets 拷贝而来；它们是运行期动态加载的 dex 包 zip(classes.dex)）。
    # 见 NOTES §14/§15。
    for key, entry in ASSET_MAP.items():
        if entry not in z.namelist():
            continue
        src = asset_zip(key)                      # 树里的原始 bundle：zip(classes.dex)
        with zipfile.ZipFile(src) as zz:
            if 'classes.dex' not in zz.namelist():
                raise SystemExit('%s 不是 zip(classes.dex)' % src)
        payload[entry] = open(src, 'rb').read()
        print('  资产 %-18s ← src/assets/.../%s（%dKB，zip(classes.dex)）' % (
            key, ASSET_REL[key], os.path.getsize(src) // 1024))
    zo = zipfile.ZipFile(dst, 'w', zipfile.ZIP_DEFLATED)
    written = 0
    dropped_sig = 0
    for info in z.infolist():
        # 底包自带旧签名（src 那个是 META-INF/TERMUX.RSA）——不剔掉的话重新签名后
        # 会同时存在两套 v1 签名，安装器直接判签名不符。反正后面要重签，全部丢掉。
        if re.fullmatch(r'META-INF/[^/]+\.(SF|RSA|DSA|EC)', info.filename, re.I):
            dropped_sig += 1
            continue
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
    print('  旧 dex %d 个 → 新 dex %d 个；写入 %d 条目（剔除旧签名 %d 个）→ %s' % (
        len(old), len(newdex), written, dropped_sig, dst))
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
    apk = base_apk()
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
    ap.add_argument('--map-format', choices=('tiny', 'tsrg'), default='tiny',
                    help='mapping 格式：tiny（默认，Tiny v2 + 注释）或 tsrg（TSRG2 回退）')
    ap.add_argument('--map', help='直接用这个 mapping 文件（绕过上面的格式选择/自动生成）')
    a = ap.parse_args()
    global _APK_OVERRIDE, MAP_FORMAT, _MAP_OVERRIDE
    MAP_FORMAT = a.map_format
    if a.map:
        _MAP_OVERRIDE = a.map if os.path.isabs(a.map) else os.path.join(REPO, a.map)
    if a.apk:
        _APK_OVERRIDE = a.apk if os.path.isabs(a.apk) else os.path.join(REPO, a.apk)
    P = config.load(a.project)
    os.makedirs(OUT, exist_ok=True)
    steps = (['plan', 'sync_assets', 'tryfix', 'widen', 'fart', 'jdkrefs', 'dex', 'repack',
              'apkrefs', 'sign', 'verify']
             if a.step == 'all' else [a.step])
    apk, dexes, du, ju, assets = plan()
    for s in steps:
        if s == 'plan':
            continue
        print('== %s' % s)
        if s == 'sync_assets':
            sync_assets()
        elif s == 'tryfix':
            step_tryfix(P)
        elif s == 'fart':
            ensure_map(P)
            step_fart(P)
        elif s == 'widen':
            step_widen(P)
        elif s == 'jdkrefs':
            step_jdkrefs(P)
        elif s == 'dex':
            step_dex(P)
        elif s == 'repack':
            step_repack(P)
        elif s == 'apkrefs':
            step_apkrefs(P)
        elif s == 'sign':
            step_sign(os.path.join(OUT, 'apk', os.path.basename(base_apk())), a.ks)
        elif s == 'verify':
            step_verify(P)
    return 0


if __name__ == '__main__':
    sys.exit(main())
