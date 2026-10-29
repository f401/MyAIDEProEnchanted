# AGENTS.md

本文件面向在此仓库工作的 AI 编码代理（agent）。**先读「硬性约束」，再读「任务配方」**；改错资源 ID 或包名会让产物直接装不上/启动即崩。

---

## 1. 这是什么仓库

一个**已构建 APK 的 apktool 反编译工程**（不是可 `gradle build` 的源码工程），加上两套配套的 Java 工具工程。

- 产物：自改版 AIDE Pro，包名 `aidepro.top`，版本 `2.8.7-freely` / versionCode `2024110701`，minSdk 21 / targetSdk 27 / compileSdk 34
- 上游血缘：官方 AIDE 混淆体（`abcd/`、`a/`、`b/`…）+ `com.s1243808733.*`（AIDE Pro 增强层）+ 本项目作者 `net.f401` / `io.github.zeroaicy`
- 内嵌整套 Termux（`com/termux/{app,terminal,view,styling,filepicker}` + `libtermux.so`）
- `src/` 里的 smali 是**作者自己 APK 的反编译结果**，没有上游基线可 diff；不要试图"还原成 Java"

体量参考：工作区 ≈696 MB（`.git` 173 MB，`src` 464 MB），23 464 个 `.smali`，616 个 `res/` 文件。

---

## 2. 硬性约束（违反会破坏产物）

| # | 约束 | 原因 / 证据 |
|---|---|---|
| 1 | **不得删除或重排 `src/res/values/public.xml`、`ids.xml`** | AIDE 字节码里烧死了 `R` 常量；ID 一偏移就大面积 `ResourcesNotFound`/`NoSuchField` |
| 2 | **不得改 `src/AndroidManifest.xml` 的 `package="aidepro.top"`**；`sharedUserId` 已是 **`com.termux2`**（2026-10-27 owner 确认：**故意与真 Termux 脱钩**），不要再改回 `com.termux`，也不要假设能读 `/data/data/com.termux/**` | 改包名会让 `TermuxConstants` 的 prefix 推导、清单 authority、以及 `com/ndk/GradleNdk*` 里的硬编码路径同时失效；`com.termux2` 下内置 Termux 的 prefix 为 `/data/data/aidepro.top/files/usr`，要复用真 Termux 的 bootstrap 必须自己拷数据 |
| 3 | **不要尝试用新密钥签名"可安装"产物** | 仓库只有公钥证书 `src/original/META-INF/TERMUX.RSA`，私钥（`f401` / "Termux Shared Key"）不在仓库；换签名会导致与已装 Termux 的 sharedUserId 冲突而装不上 |
| 4 | **不要整体替换 `src/smali*`** | git 历史已证明这样做（2.8.4 → 2.8.7）产生 1w+ 文件的不可审阅 diff；请新增/最小化修改文件 |
| 5 | **不要提交 ≥5 MB 的二进制**（APK/jar/so/tar） | `.git` 已 173 MB；新增大文件请走 release 附件 |
| 6 | **不要在 `/storage/emulated/0` 上跑 `git gc`/`fsck`/批量重打包** | FUSE 存储慢且 `filemode=false`；建议 `cp -r` 到 `$HOME` 操作后再提交 |
| 7 | 修改 `src/assets/data/functions/runtime/*` 后**必须同步改 `data.json` 的 `version`** | 否则老用户不会触发重铺（`App.loadFunctions()` 用版本号门控） |
| 8 | `com/termux/yinli_a/*` **不是恶意代码**，不要删 | 它是 R8 混淆过的 Kotlin 标准库，被 `com/termux/styling/*` 调用 |

---

## 3. 目录地图

| 路径 | 作用 | 是否常改 |
|---|---|---|
| `src/AndroidManifest.xml` | 魔改后清单（组件、权限、authority） | ✅ 常改 |
| `src/apktool.json` | 反编译/回编译元数据：`doNotCompress`、`unknownFiles` 压缩标记、版本信息 | ⚠️ 谨慎 |
| `src/smali/` (2 468 类) | AIDE 核心 + `com/termux/*` + `io/github/zeroaicy/*` + `zeroaicy/org/objectweb/asm` | ✅ 常改 |
| `src/smali_classes2/` (57) | 自定义打包服务 `io.github.zeroaicy.aide.services`、MT 注入的 Provider | ✅ 常改 |
| `src/smali_classes3..5/` | `abcd/`(2785) 等混淆主体、androidx、apksig、`net/f401` | ⚠️ 少量 |
| `src/res/` | 资源；`values/public.xml`+`ids.xml` 固定 ID | ⚠️ 谨慎 |
| `src/assets/data/functions/runtime/` | 运行时可热插拔模块：`d8.apk`、`ndk.zip`、`packagingservice.zip`、`data.json` | ✅ 常改 |
| `src/assets/data/usr/` | 内置 `busybox`、`libtaggedhook.so`、`install.sh`（拉 gradle） | ⚠️ 少量 |
| `src/lib/{arm64-v8a,armeabi-v7a,x86}/` | `libaapt2.so`、`libzipalign.so`、`liblink.so`、`libtermux.so` | ❌ 不动 |
| `src/original/` | 基准 APK 的 Manifest + META-INF（签名材料、`signature.data`） | ❌ 只读参考 |
| `src/unknown/` | 非标准压缩项 + 作者草稿（`ExternalPackagingServiceWrapper.java_`、`说明.txt`） | ⚠️ 参考 |
| `src/oldsmail.tar.gz` | 旧版 smali 快照（24 483 项），仅考古用 | ❌ 不做基线用 |
| `process/` | **改名字**：TSRG2 `mappings.txt` + Forge `AutoRenamingTool` | ✅ 常改（加 mapping） |
| `Dex/` | **改字节码**：dexlib2 重写器（补行号、修 R、重命名、修 `<init>` 调用） | ✅ 常改 |

### 魔改层在哪（优先在这里改，别碰上游代码）

```
src/smali_classes5/net/f401/aide/          ← 本项目作者 UI/环境变量层（26 类）
src/smali/io/github/zeroaicy/              ← 工具库（100 类：util/crash/reflect/readclass/aapt2/cmake/services）
src/smali_classes2/io/github/zeroaicy/aide/services/  ← 替换掉的打包服务
src/smali/com/termux/                      ← 内嵌 Termux（197 类）
src/smali/com/s1243808733/                 ← 上游增强层（1294 类，尽量只调用不修改）
```

---

## 4. 运行环境（已验证）

```bash
# 已安装
java 21.0.13 / javac / python3 / unzip / xxd / file / du / grep / sed / git
# 未安装（以下命令不可用，别在脚本里假设存在）
aapt aapt2 apktool zipalign apksigner zip 7z bc openssl
# 注意
# - 没有 /tmp，临时目录用 $HOME/tmp 或 ./tmp
# - `which` 不可用，探测命令请用 `command -v`
# - 仓库位于 /storage/emulated/0（FUSE），首次用 git 需要：
git config --global --add safe.directory /storage/emulated/0/MyAIDEProEnchanted
```

回编译/签名在真机上通常由 **MT 管理器内置 apktool（`apktool m`）** 完成（见 `README.md`），CLI 侧没有 apktool 时请勿声称"已构建"。

---

## 5. 任务配方

### 5.1 回编译与验证

```bash
cd /storage/emulated/0/MyAIDEProEnchanted
# 1) 静态自检（无需 apktool，约 20s：要读完 23k 个 smali）
python3 - <<'PY'
import pathlib
root = pathlib.Path("src")
smali = list(root.glob("smali*/**/*.smali"))
print("smali files:", len(smali))
bad = [p for p in smali if "cn.aide.pro" in p.read_text(errors="ignore")]
print("hardcoded cn.aide.pro:", [str(p) for p in bad])
ids = sum(1 for f in ("res/values/public.xml", "res/values/ids.xml")
          for _ in (root/f).read_text(errors="ignore").split("APKTOOL_DUMMY")[1:])
print("APKTOOL_DUMMY entries:", ids)
PY

# 2) 回编译（在有 apktool 的环境，例如 MT 管理器 / PC）
#    apktool b src -o out.apk      ← 会依据 public.xml 分配资源 ID
# 3) 签名必须用 f401 私钥（不在仓库）；否则只能自用，不能与 Termux 共享 UID
```

**验收标准（改动后必过）**：smali 文件数不减、`APKTOOL_DUMMY` 计数不变、无新增 `cn.aide.pro` 硬编码、`res/values/public.xml` 与 `ids.xml` 无 diff。

### 5.2 改终端默认环境变量

改 `src/smali_classes5/net/f401/aide/FUtils.smali` 的 `<clinit>` 里 `DEFAULT_MAP` 的 `put` 调用（`JAVA_HOME`/`PATH`/`HOME`/`PREFIX`/`TMPDIR`/`LD_PRELOAD`…）。
注意：仅在**首次安装**时写入 SharedPreferences（`initEnvSpIfAbsent()`），已装用户需清数据或用编辑器改 `env_var`。

### 5.3 升级 D8

1. 生成新的 `d8.apk`（含壳类 `Laidepro/d8/D8Dex`，`com.android.tools.r8.D8` 必须在其中）；
2. 覆盖 `src/assets/data/functions/runtime/d8.apk`；
3. `src/assets/data/functions/runtime/data.json` 的 `version` **加 1**；
4. 校验应用自身 dex 仍**不含** `com/android/tools/r8`（`ls src/smali*/com/android` 只应有 `installreferrer`/`vending`/`apksig`）。

### 5.4 新增一处 smali 补丁

1. 只改目标方法的指令，保持 `.registers` 数量不变；必要时把 `.line` 一起改；
2. 引入新类时放到 `smali_classes5/net/f401/...` 或 `smali/io/github/zeroaicy/...`，不要新建包前缀；
3. 加调用点前先确认目标签名：`grep -rn "Lcom/aide/...;->method(" src/smali | head`；
4. 调用 AIDE 内部类时优先走已有的 `net/f401/aide/EntryPoints` 静态入口，避免到处插桩。

### 5.5 扩充反混淆映射

jgit 的反混淆已经工程化，**唯一真相是 tsv，不要手改 tsrg 或 mappings.txt**。
完整步骤见 `docs/JGIT-PIPELINE.md`，脚本清单见 `tools/jgit/README.md`。

```bash
cd /storage/emulated/0/MyAIDEProEnchanted
# 改完 ~/out/work/jgit_map_clean.tsv 后一步到位：
python3 tools/jgit/rebuild_tsrg.py       # tsv → jgit_members_clean.tsrg → process/mappings.txt
python3 tools/jgit/verify_members.py     # 期望：不一致 0
awk '!/^\t/ && NF>=2 {print $2}' process/mappings.txt | sort | uniq -d   # 期望：空（FART 遇重复目标会整体中止）
```

| 文件 | 内容 |
|---|---|
| `~/out/work/jgit_map_clean.tsv` | 类映射 **655** 条（`探针<TAB>目标<TAB>证据`） |
| `~/out/work/jgit_members_clean.tsrg` | 成员映射 **4042** 条（方法 2753 + 字段 1289，派生文件） |
| `process/mappings.txt` | TSRG2 产物：head **162** 行 + jgit **4702** 行 |
| `process/base/merged_ok.jar` | **改名输入基线（已入库）** + `process/SHA256SUMS` 指纹 |

现状：方法 2623/3353 = **78.2%**、字段 1114/1586 = **70.2%**、完全覆盖类 372。
计数别用 `grep '^[^\t]'`（BRE 里 `\t` 不是 TAB），用 `awk '!/^\t/'`。

改名与出 dex：

```bash
cd process
sha256sum -c SHA256SUMS                      # 输入基线校验
java -Xmx900m -jar ForgeAutoRenamingTool-1.0.8-all.jar \
  --input base/merged_ok.jar --output ~/out/fart/r_vN.jar --map mappings.txt
python3 ../tools/jgit/jar_manifest.py ~/out/fart/r_vN.jar --check <期望 manifest>   # 内容判等
java -Xmx900m -cp d8.jar com.android.tools.r8.D8 --release --min-api 26 --thread-count 2 \
  --lib android.jar --output ~/out/dexN ~/out/fart/r_vN.jar
```

### 5.6 用 `Dex/` 做字节码级修正

```bash
cd /storage/emulated/0/MyAIDEProEnchanted/Dex
# Maven 工程，源码目录含 dexlib2 + arsc（pom 里用 build-helper 挂载）
# 各工具入口（均为 main，路径常量写死在源码里，跑前先改）：
#   src/main/AddLineNumber.java          补行号（调试/堆栈可读）
#   src/main/Main.java                   用 resources.arsc 把 sget R$x.y 改成 const <id>
#   src/main/io/github/zeroaicy/dexlib/Main.java  多 dex 批量重命名
#   src/main/修复初始化调用.java          修改访问权限后把 invoke-virtual <init> 修回 invoke-direct
```

---

## 6. 已知坑（改代码前先看）

| 坑 | 位置 | 处理建议 |
|---|---|---|
| 陈旧硬编码包名 `/data/data/cn.aide.pro/files/usr/bin/busybox`（解压 NDK 用） | `src/smali/com/ndk/GradleNdk.smali`、`GradleNdk$100000004.smali:82,100,119`、`GradleNdk$100000004$100000003.smali`（共 3 个文件，静态自检可复现） | 改成 `getFilesDir()`/`PREFIX` 拼接 |
| ~~3 368 条 `APKTOOL_DUMMY`~~ → **已清零**（761c6760 起） | `res/values/public.xml` | 改名而非删除，ID 一位未动；改动后跑 `tools/res_id_guard.py` |
| **`androidj/support/**` 里藏着 support-v4 完整副本（1267 类、类名可读）** | 全仓库最大的 support 残留，AGENTS/分析文档都没提过 | 已于 `b2dfd791` 迁到 androidx 并删除；再查 support 残留先看这个命名空间 |
| 资源 XML 里写死的全限定类名（`<androidj.support.v4.widget.DrawerLayout>`） | 只改 smali → inflate 时 `ClassNotFoundException`（`23eb104f` 就是补这个） | 迁移类名后必须同时 grep `res/**`、`assets/**`：`grep -rn 'androidj\.support\|android\.support\.v[47]' src/res src/assets` |
| androidx 里大量类是**包私有**（`ModernAsyncTask`、`MapCollections`、`ContainerHelpers`…） | 跨包继承/访问 ⇒ `IllegalAccessError: ... is inaccessible` | 迁移时把目标类**和构造器**改 `public`（放宽可见性是二进制兼容的） |
| authority 被改坏：`.crashlyticsinitprovider`、`_com.termuxs.documents`、`_com.termuxs.files` | `src/AndroidManifest.xml` | 写回完整包名前缀，并与 `TermuxConstants.TERMUX_FILE_SHARE_URI_AUTHORITY` 对齐 |
| MT 管理器残留 `MTDataFilesProvider` / `MTDataFilesWakeUpActivity`（exported） | Manifest + `smali_classes2/bin/mt/...` | 明确不需要时删除 |
| `MANAGE_EXTERNAL_STORAGE` 重复声明 | Manifest | 去重 |
| `TermuxInstaller` 依赖 GitHub bootstrap；`assets/data/usr/install.sh` 依赖 `api.androidide.cn` | 两处 | 离线场景需预置 bootstrap |
| `process/run.sh` 的 d8 步骤被注释、`--input src/classes.jar` 路径需先在 `process/` 下执行 | `process/run.sh` | 修脚本前不要声称流水线可用 |
| 46 MB `src/AIDE Pro_2.8.7-freely_ac_src.apk` 未跟踪 | `git status` | 需要归档就放 release，不要 `git add` |
| 设备时间比真实时间快约 1 年（2026-10） | — | 不要据此判断文件新旧 |
| **`process/mappings.txt` 头部自身是双份的**（`mappings_head.txt` 61 块里 23 块重复）⇒ FART `Duplicate entries detected` 整体中止，输出 jar 是半成品 | `~/out/work/mappings_head.txt` | 合并去重（并集，不能 keep-first）；已固化 162 行版本，见 `docs/BUILD-PITFALLS.md` §2.3 |
| **dex 的 `Ldalvik/annotation/InnerClass` 注解被投毒**：`name` 只有 12 种取值且与后缀字母一一对应（4 个诱饵复用在 306 个类上），`EnclosingClass` 指向诱饵包 `a/b/a/d/*` | `~/icd/orig/classes*.dex` | **不要用 dex 注解做命名依据**；用成员形状 1:1 + 源码 + 调用点，见 `docs/JGIT-METADATA.md` §4 |
| 取证误用重打包后的 APK（`*_ac_src.apk`，4 dex）而非原始（`*_orig_src.apk.orig`，5 dex） | 仓库根两个 APK | 一切 dex 取证用 **`.orig`** 那一份 |

---

## 7. 提交约定

- 一次提交只做一件事，提交信息用一句话说明改了什么组件（历史风格：`AFix` / `update` / `updateTo28.7` 过粗，勿模仿）
- 提交大范围 smali 变更时，在 body 里写清：改了哪些类、对应哪个版本基线、如何验证
- 不提交 `src/build/**`、`target/`、`.idea`（`.gitignore` 已覆盖）
- 涉及 `res/values/*.xml` 的改动必须在 body 里附 `public.xml`/`ids.xml` 未变的说明

---

## 8. 待办（接手优先项）

1. 把魔改层（`net/f401`、`io/github/zeroaicy`、`com/termux`、Manifest 增量）抽成 patch + 应用脚本，实现"跟版本可 diff"
2. ~~固定资源 ID 并清理 3 368 条 DUMMY~~ → DUMMY 已清零；剩下把 ID 钉死（`aapt2 link --stable-ids`）
3. 修 `cn.aide.pro` 硬编码、清 MT 组件、合并重复权限、修 authority
4. README 补：需配套同签名 Termux + 公钥 SHA-256 指纹
5. 打通 `process/run.sh`：重命名 → 补行号 → 修 R → d8 → zipalign → 签名，产出可复现脚本
6. 扩充 `process/mappings.txt` 覆盖率（当前 **612 个类 / 3790 成员**，方法 78.4%、字段 69.7%；剩余大盘是 R8 内联合并等结构性不可判项，见 `docs/JGIT-MAPPING-QC.md` §12–§15）

---

## 9. 法务与分发

基底是 "freely"（Pro 解锁/去授权）的 AIDE Pro 重打包体，仅供个人学习研究；**不要**协助对外分发或商用。产物的 `sharedUserId=com.termux` 会让 AIDE 进程获得 Termux 的 UID 权限，属于高信任边界设计，改动前务必评估。

---

## 10. 踩坑与迁移记录（必读）

动手前请先读：

- `docs/JGIT-PIPELINE.md` — **jgit 改名出包手册**：三处同步、两道闸、FART、D8、回填与验收清单
- `docs/JGIT-METADATA.md` — dex/class 元数据读取（偏移速查 + 三级跳坑），以及「本 APK 的嵌套注解被投毒」的完整证据
- `docs/JGIT-MAPPING-QC.md` — jgit 命名映射逐轮复核记录与判据（§13 = 最近一轮）
- `docs/BUILD-PITFALLS.md` — 构建/改名/出 dex/回填全过程的踩坑清单（症状→根因→做法）
- `docs/TEST-PLAN.md` — 迁移后的回归测试清单（P0/P1/P2 + 静态自检 + 定位捷径）
- `docs/PITFALLS.md` — **真实踩过的坑**：内存/LMK、`pkill` 自伤、FUSE 大小写不敏感、`public.xml` 钉 ID、APKTOOL_DUMMY 成因、FART 继承传播把框架覆写改没、TSRG2 格式细节、只改引用会导致 `AbstractMethodError`、dex2jar 有损、指纹匹配的歧义塌陷、support→androidx 迁移的资源结论。
- `docs/MIGRATION-NOTES.md` — support→androidx 迁移的映射表、产物路径、清单改动（`FileProvider`）与未验证项。

- `tools/README.md` — 本次用到的全部脚本（资源 ID 守卫、arsc 解析、精确 CP 重写器、四项校验、诊断补丁）与 `tools/mapping/` 的映射数据。
