# 编译步骤（mapping → 可安装 APK）

## 0. 前置条件

| 需要 | 说明 |
|---|---|
| JDK | 运行 FART / D8（`java -version` ≥ 8） |
| Python 3 | 全部工具脚本 |
| 已解包工程 | `src/`（apktool 解出的 smali/res/manifest）、`Dex/`（原始 dex） |
| 改名基线 | `process/base/merged_ok.jar`（已入库，指纹见 `process/SHA256SUMS`） |
| 逐 dex jar | `process/src/classes{,2,3,4,5}.jar`、`zh.jar`、`en.jar`、`ndk.jar`、`packagingservice.jar` |
| 签名私钥 | 原作者私钥**不在仓库**；自用请自备 keystore |

```bash
cd process && sha256sum -c SHA256SUMS      # 输入与工具指纹，全部 OK 才继续
```

## 1. 生成 / 更新 mapping

唯一真相是两张表，`process/mappings.txt` 只是派生产物：

```bash
# 类名真相:  jobs/<依赖>/class_map.tsv  (探针 <TAB> 目标 <TAB> 证据)
# 成员真相:  jobs/<依赖>/members.tsrg   (TSRG 块)
# 参数真相:  jobs/<依赖>/params.tsv     (可缺；part = jgit/jsch/aide)
# 注释真相:  jobs/<依赖>/comments.tsv   (只进 Tiny v2，不进 TSRG2)

# → process/mappings.txt（TSRG2，唯一真源派生）→ process/mappings.tiny（Tiny v2，带注释）
# build_apk 默认喂 FART 的是 **Tiny v2**（out/build/mappings.tiny，自动生成、不带注释）；
# 要回退 TSRG2 用 `--map-format=tsrg`，指定文件用 `--map=<path>`。

> **FART 1.0.8 的 Tiny v2 解析器不认额外列**：类行/方法行带注释都会
> `Invalid Tiny v2 line`，所以打包用的那份必须 `--comments=none`；带注释版只给人读。

```bash
python3 tools/jgit/pipeline/rebuild_tsrg.py      # tsv → tsrg → process/mappings.txt（含头 20 行）
python3 tools/jgit/pipeline/emit_tsrg2.py process/mappings.txt   # 需要单独重排/补 static 标记时
```

> 头 20 行来自 `process/truth/head/mappings_head.txt`（AIDL / 首轮类改名），
> 其余块按 `parts` 顺序由各 part 的 tsv+tsrg 生成。**不要手改 `mappings.txt`**。
>
> 等价一步到位（通用 kit，输出与本项目逐行一致）：
> `python3 tools/deob/cli.py -p process/deob.json emit`

## 1b. assets bundle：**默认冻结，不动 `process/src/*.jar`**

`src/assets/data/functions/` 下的 4 个包（`lang/en.jar`、`lang/zh.jar`、`runtime/ndk.zip`、
`runtime/packagingservice.zip`，都是 `zip(classes.dex)`）是**回填用的基准**，
`step_repack` 直接读它们；`process/src/<key>.jar` 只是**给工具用的** class jar
（validate / static 索引 / deob 要读 class 文件），两边互不影响。

所以这一步默认**什么都不做**：

```bash
python3 tools/build/build_apk.py sync_assets     # 打印"跳过"，不写任何文件
SYNC_ASSETS_FORCE=1 python3 tools/build/build_apk.py sync_assets   # 真要重建时
```

理由：以前每次都 dex2jar 一遍 —— 慢，而且 dex2jar 输出**不是字节稳定的**，
每跑一次 `process/src/*.jar` 就在 git 里显示被改（纯噪声）。冻结后这些 jar
保持仓库里那一份，只有当**工具侧确实需要看到新资产代码**时才 `SYNC_ASSETS_FORCE=1`。

> 注意：改了资产（`src/assets/**`）**必须**把资产自己也按 mapping 改一遍名字，
> 否则 bundle 里留旧类名 → 运行期 `NoClassDefFoundError`。
> 门禁：`python3 tools/deob/assetcheck.py`（类型 + 成员引用都查）。

`all` 仍会调这一步（现在等价于空操作）。**不再**做"和某个 APK 的 dex 逐对对齐"（那套已删除，见 NOTES §15）。

## 2. 跑认证流水线

见 [VERIFY.md](VERIFY.md)。**11 道门全绿再开始构建**。

## 3. access 放宽（**先在合并视图上做**，必须在 FART 之前）

改名会把原本同在 `abcd` 的类拆到不同包，跨包访问包私有成员会在运行期 `IllegalAccessError`，
跨包的 package-private 方法也不再构成 override。

```bash
# 3a) 先把"try 范围不含数组访问"的异常表修回源码语义（11 条，见下面"为什么"）
python3 tools/jgit/pipeline/fix_try.py process/base/merged_ok.jar \
        --out ~/out/merged_ok_try.jar --apply

# 3b) 再放宽 access（输入必须是 3a 的产物，否则会丢了异常表修复）
python3 tools/jgit/pipeline/widen_access.py ~/out/merged_ok_try.jar \
        --out process/base/merged_pub.jar --apply        # 改写 29 个 class
```

`tools/build/build_apk.py all` 已经把这条链路内置（`tryfix → widen → fart → assetdex → dex → repack`，
D8 前还会对改名产物跑一次 `audit/trycheck.py`，不为 0 就中止）。`assetdex` 见 §3.5。


### 3.5 `assetdex` 步：assets 的 4 个 bundle 也要改名

`assets/data/functions/{lang/en.jar, lang/zh.jar, runtime/ndk.zip, runtime/packagingservice.zip}`
是运行期动态加载的 `zip(classes.dex)`，历史上构建时**原样回填**。它们引用了主 dex 的类/成员
（`abcd/Ea`、`abcd/la`、`abcd/na`、`abcd/GA`…），主 dex 改名后 bundle 里不改 ⇒ 运行到那行
`NoClassDefFoundError`（`tools/deob/assetcheck.py` 报过 39 条，只影响 "Show Code Help"）。

现在 `fart` 之后多一步 `assetdex`：

```
zip(classes.dex) --dex2jar--> x.jar --FART(--lib merged_pub.jar)--> x-ren.jar --D8--> classes.dex --> out/build/assetdex/<key>.zip
```

- `repack` **优先**用 `out/build/assetdex/<key>.zip`，没有就回落到树里的原 bundle。
- 单个 bundle 失败只告警（`--allow-fail`），构建不中止；但 `assetcheck` 仍会红 ⇒ 别忽略。
- 单独跑：`python3 tools/build/assets_rename.py --map out/build/mappings.tiny --out out/build/assetdex`
  （`--no-d8` 只跑到 FART，用来确认改名是否生效）。

**3a 为什么需要**：AIDE 的 dex 里，有些 `try` 的 `end_pc` 止于数组加载**之前**
（实测 `classes3.dex` 的 `try_item` 是 `start=0 count=8`，`aget-char` 在范围外），
而这类代码恰恰靠"故意越界"判 EOF：

```java
int read() { char[] b = buf; int p = pos; pos = p + 1;
             try { return b[p]; }                       // caload 必须在 try 内
             catch (ArrayIndexOutOfBoundsException e) { pos = buf.length; return -1; } }
```

`end_pc=17` 只覆盖到 `aload`（17），`caload` 在 19 → 越界异常不被捕获，运行时
`ArrayIndexOutOfBoundsException: length=292; index=292`。`fix_try.py` 把 `end_pc` 后移到
数组加载之后（`0..20`）。基线 11 条：`abcd/IK`×2、`abcd/gE$d`(Config$StringReader)、
`abcd/hE`×4、`com/jcraft/jsch/Util`、`org/apache/tools/ant/Main`×2、
`sun/reflect/.../SignatureParser`。

**为什么只能在"FART 之前 + 合并包 + `--map`"这个位置跑**（实测过另外两种，都是错的）：

| 位置 | 结果 |
|---|---|
| **FART 前、对 `merged_ok.jar`、带 `--map`**（推荐） | 类 29 / 成员 56 → 改写 29 个 class |
| FART 后、对产物跑（名字已最终，没有 `--map`） | **类 0 / 成员 0**（实测）——它只放宽"原本同包、映射后跨包"的成员，没有映射就无从判断 |
| FART 后、**逐 jar** 跑 | 单 jar 看不到别 jar 的引用 → 跨 jar 的 package-private 全漏，运行期 `IllegalAccessError` |

工具只放宽、不改指令，覆盖两类访问：

- **成员引用**（`invoke*` / 字段读写）→ 成员与其 owner 类**一律放 `public`**
  （`protected` 只解决跨包 override，构造器/静态方法的跨包调用必须是 `public`）；
- **类级访问**（`new` / `checkcast` / `instanceof` / `const-class` / `anewarray`）→ 被访问的类放 `public`；
- **继承/实现**（`extends` / `implements` 一个 package-private 类或接口，映射后跨包）→ 父类/接口放 `public`。

后两类**不会出现在成员引用里**，早先漏掉分别是 `IllegalAccessError: Illegal class access` 和
`IllegalAccessError: superclass/interface access`。

已经 `public` 的会跳过，所以跑第二遍会得到 `类 0 / 成员 0`（幂等）。
放宽时**必须清掉原来的 `private`/`protected` 位**（`acc & ~0x6 | 0x1`）：
三者只允许存在一个，否则 dex 校验直接拒绝
（`Field may have only one of public/protected/private`）。工具写完会自检并打印冲突数（应为 0）。
只有 **mappings 改了包归属**（类换了目标包）时才需要重跑；只改成员名不用。

> 历史坑（[NOTES.md](NOTES.md) §6）：会让 FART 崩的是"把所有类都改成 public"的
> `merged_pubcls.jar`，**不是** `widen_access` 的产物。`FART(merged_pub.jar)` 实测 12.8s 正常通过。

## 4. FART 改名（**用合并包一次**，别逐 jar 出包）

```bash
cd /storage/emulated/0/MyAIDEProEnchanted

# 主 dex：一次改名（输入是第 3 步的 merged_pub.jar，包含 classes~classes5 的 21773 个类）
java -Xmx900m -jar process/ForgeAutoRenamingTool-1.0.8-all.jar \
  --input  process/base/merged_pub.jar \
  --output ~/out/fart/mp_renamed.jar \
  --map    ~/out/build/mappings.tiny \
  --lib    process/android.jar

> 手工跑时 `--map` 也可以直接给 `process/mappings.txt`（TSRG2，等价 —— 实测两边产出的
> 22839 个条目**逐字节相同**），或 `process/mappings.tiny` 但要去掉注释列（`--comments=none`）。

# assets 里那 4 个独立包不在 merged 里（zh 11 / en 11 / ndk 10 / packagingservice 19 个类），单独改名
for j in zh en ndk packagingservice; do
  java -Xmx900m -jar process/ForgeAutoRenamingTool-1.0.8-all.jar \
    --input process/src/$j.jar --output ~/out/fart/src/${j}_out.jar \
    --map out/build/mappings.tiny --lib process/android.jar   # 或 --map-format=tsrg 用 TSRG2
done
```

要点：

- **输入必须用未改名的 jar**（`process/base/merged_pub.jar` 或 `process/src/*.jar`），
  **不要**预先做类级 public 化（那是另一个东西，见 §3 末尾）。
- FART 会重写**所有**引用（`invoke*`、字段访问、类型描述符、签名属性），类/成员改名是全局一致的。
- `process/run.sh` 里的"逐 jar 改名"只是历史对照，**不要用它出包**：那样 widen 只能逐 jar 跑，跨 jar 引用会漏。
- 参数名只对 **jar 级**反编译有意义：`merged_ok.jar` 来自无 debug 的 dex，本身没有
  `LocalVariableTable`，所以改出来的 class/dex 里**不会有参数名**；参数名落在
  `fernflower_abstract_parameter_names.txt`（抽象方法），反编译 jar 时能看到。

## 5. D8 出 dex（合并包一次，自动 multidex）

```bash
mkdir -p out/build/dex && rm -f out/build/dex/*.dex
java -Xmx1200m -cp process/d8.jar com.android.tools.r8.D8 \
  --release --min-api 26 --thread-count 2 \
  --lib process/android.jar \
  --output out/build/dex \
  ~/out/fart/mp_renamed.jar
```

- 本机**没有 `d8` 可执行文件**，只能 `java -cp process/d8.jar com.android.tools.r8.D8`（8.2.2-dev）。
- `--lib process/android.jar` 必需，否则报 `Missing class android.*`。
- `--min-api 26`：与 AIDE 目标一致；调低会把 default method desugar 成伴生类。
- `--output` 是**目录**（不是 .zip），产物是 `classes.dex, classes2.dex, …`。
- **dex 个数不保证还是 5 个**（D8 按 64K 方法数自己分），回填要多退少补（见 §6）。
- D8 报 `multiple definitions` / `Invalid input code with a call to <clinit>`：见 [NOTES.md](NOTES.md) §4/§5。

## 5b. 名门禁：`jdkrefs`（FART 之后、D8 之前）

```bash
python3 tools/jgit/audit/jdk_refs.py out/build/renamed/merged.jar --base process/base/merged_pub.jar
# ✔ JDK/Android 引用与改名前一模一样
```

不变量：**指向 `java/` `javax/` `android/`… 的引用，改名前后必须完全相同**。
不一致 = 有改名被 FART 沿覆写链传播到了 JDK 类型上（真实事故：`toString→getLongname` 改坏了
780 条 JDK 引用，装机即 `NoSuchMethodError: CharSequence.getLongname`）。`build_apk.py all`
已把这一步串在 `fart` 和 `dex` 之间。

## 5b'. 资产包：**原样保留，不改名**

`assets/data/functions/` 下的 4 个包是**运行期动态加载的 dex 包**（`zip(classes.dex)`），
不是编译期 classpath。它们**不参与改名**，回填时原样照抄底包的字节：

- 原包里它们只引用 1 个被改名的类（`com/aide/ui/U`），而那条改名已撤销（见 NOTES §14）⇒ 现在 0 处；
- `process/src/{en,zh,ndk,packagingservice}.jar` 是**陈旧产物**，绝不能当输入
  （会把 241 个类砍成 11 个 ⇒ 运行期 `NoClassDefFoundError: Labcd/wu;`）。

`apkrefs` 会检查这 4 个条目仍是 `zip(classes.dex)`。

## 5c. 产物门禁：`apkrefs`（回填之后、签名之前）

```bash
python3 tools/jgit/audit/apk_refs.py "out/build/apk/<包名>.apk"
# ✔ 产物里没有旧类名残留
```

不变量：**class_map 里被改名的旧类名，在产物的 dex / 嵌套 jar 里一个都不许有**。
不合格就别签 —— 这类残留运行到那行就是 `NoClassDefFoundError: Failed resolution of: L旧名;`。

## 6. 回填 APK + 签名

dex 数量会变，所以**不能**像以前那样 `cp` 固定几个；按下面的"多退少补"重写 zip：

底包用**哪一个 APK**要分清（搞错过一次）：

| 角色 | 文件 | 用途 |
|---|---|---|
| **源 APK** | `AIDE Pro_2.8.7-freely_orig_src.apk.orig`（5 dex） | dex → `process/src/classes*.jar` 的来源，用于"jar 是否真出自这个包"的对齐体检 |
| **回填底包** | `src/AIDE Pro_2.8.7-freely_ac_src_src (2).apk`（apktool 产物） | **回填时用它**：它和 `src/` 这棵树同源（`res/`、`AndroidManifest.xml`、`assets/` 一致） |

拿源 APK 当底包会把 `src/` 里做过的资源改动全部丢掉（源包是**改造前**的包）。
`build_apk.py` 里已按这个区分：`dex_apk()` = 源包（体检），`base_apk()` = `src/` 下的底包（repack/sign/verify）。

```bash
python3 - <<'EOF'
import zipfile, glob, os, re
src = 'src/AIDE Pro_2.8.7-freely_ac_src_src (2).apk'   # 底包：src/ 下的 apktool 产物
dst = 'out/build/AIDE-repacked.apk'
new = sorted(glob.glob('out/build/dex/*.dex'),
             key=lambda p: (0 if os.path.basename(p) == 'classes.dex'
                            else int(''.join(c for c in os.path.basename(p) if c.isdigit()))))
payload = {('classes.dex' if i == 1 else 'classes%d.dex' % i): open(f, 'rb').read()
           for i, f in enumerate(new, 1)}
for k, e in {'en.jar': 'assets/data/functions/lang/en.jar',
             'zh.jar': 'assets/data/functions/lang/zh.jar',
             'ndk':    'assets/data/functions/runtime/ndk.zip',
             'packagingservice': 'assets/data/functions/runtime/packagingservice.zip'}.items():
    p = 'out/fart/src/%s_out.jar' % k
    if os.path.exists(p):
        payload[e] = open(p, 'rb').read()
z = zipfile.ZipFile(src); zo = zipfile.ZipFile(dst, 'w', zipfile.ZIP_DEFLATED)
for info in z.infolist():
    n = info.filename
    if re.fullmatch(r'META-INF/[^/]+\.(SF|RSA|DSA|EC)', n, re.I):
        continue                                        # 底包自带旧签名（TERMUX.RSA）→ 重签前剔掉
    if n.startswith('classes') and n.endswith('.dex'):
        if n in payload: data = payload.pop(n)
        else: continue                                  # 旧 dex 多 → 丢掉
    elif n in payload:
        data = payload.pop(n)
    else:
        data = z.read(n)
    zi = zipfile.ZipInfo(n, date_time=info.date_time)
    zi.compress_type = info.compress_type
    zi.external_attr = info.external_attr
    zo.writestr(zi, data)
for n, data in payload.items():                          # 新 dex 多 → 追加
    zo.writestr(n, data)
zo.close(); print('→', dst)
EOF
```

签名（本机**没有** `zipalign` / `apksigner`，需自行准备 build-tools 或换机器）：

```bash
zipalign -f 4 out/build/AIDE-repacked.apk out/build/AIDE-aligned.apk
apksigner sign --ks <你的.keystore> --out out/build/AIDE-signed.apk out/build/AIDE-aligned.apk
apksigner verify --print-certs out/build/AIDE-signed.apk
```

> 覆盖安装需要先卸载（签名不同）。`zipalign` 不是必须的（apksigner 只要求 v2 块对 4 字节对齐；
> 用 `apksigner sign --alignment` 或先 zipalign 更稳）。
>
> 走 apktool 路线（改 `src/smali` 后 `apktool b src`）也可以，但那要求把同样的改名落到 smali 上；
> 目前流水线以 **jar + FART** 为主，smali 只用于零散手改。

## 7. 冒烟测试（必须）

1. 安装启动，进设置/关于，确认无崩溃。
2. 打开/新建工程（触发 jgit 初始化）。
3. Git 操作三连：`clone`（https）→ 改文件 → `commit`；有远端则 `push`。
4. 日志过滤 `AndroidRuntime|jgit`，确认没有 `NoSuchMethodError / IllegalAccessError / AbstractMethodError`：
   - `NoSuchMethodError` → mapping 里成员名与类不匹配；
   - `IllegalAccessError` → 漏跑 `widen_access`；
   - `AbstractMethodError` → 接口/实现名不一致（见 NOTES.md §3）。

---

## 附录：装包与冒烟（原 SMOKE.md 并入）

目标：证明"改名后的 APK 能装、能起、jgit 真实功能能跑"，并为失败提供可定位的三类线索。

## 0. 前置

| 项 | 说明 |
|---|---|
| 源 APK（体检） | 自动选与 `process/src/classes*.jar` 数量一致的包（当前是 `AIDE Pro_2.8.7-freely_orig_src.apk.orig`，5 dex ↔ 5 jar，类集**完全一致**） |
| 回填底包 | `src/` 下 apktool 打出来的产物（`src/AIDE Pro_2.8.7-freely_ac_src_src (2).apk`）：和 `src/` 这棵树同源，回填只换 dex + 4 个 assets 包；底包自带的旧签名（`META-INF/TERMUX.RSA`）会被剔掉再重签 |
| 构建产物 | `out/build/apk/<原包名>`（dex 已替换）；有 SDK 时再 zipalign + apksigner |
| 签名 | 仓库不含原作者私钥。二选一：①用自己的 keystore 签（需**卸载**原 AIDE Pro，会丢应用数据）；②拿原私钥签（可覆盖安装） |
| 设备 | 已连 adb（`adb devices`），或手机本地安装 |

```bash
# 构建（设备上也能跑：java 21 + d8.jar 已入库）
python3 tools/build/build_apk.py all            # FART → widen → D8 → 回填 → 校验
python3 tools/build/build_apk.py plan           # 只看配对/类集一致性
```

## 1. 安装

```bash
adb install -r out/build/apk/<包名>              # 同签名可覆盖
adb install -r -d out/build/apk/<包名>           # 允许降级
# 不同签名（自签）：先卸载
adb uninstall com.aide.ui.pro   # 包名以 AndroidManifest 为准
adb install out/build/apk/<包名>
```

## 2. 启动冒烟（3 分钟）

| # | 动作 | 期望 |
|---|---|---|
| 1 | 冷启动 AIDE Pro | 无崩溃，进入主界面 |
| 2 | 打开/新建一个工程 | 工程树正常，无 `NoClassDefFoundError` |
| 3 | 打开任意 Java 文件、编辑、保存 | 编辑器/文件系统正常 |
| 4 | 设置 → 关于 | 版本信息正常（说明资源与 dex 都完整） |

## 3. jgit 功能冒烟（核心）

按顺序做，**每步都看日志**（见 §4）：

| # | 动作 | 覆盖的 jgit 面 |
|---|---|---|
| 1 | Git → Clone（HTTPS，小仓库） | `TransportHttp`、`PackParser`、`ObjectDirectory`、`cached-packs` |
| 2 | 修改文件 → Status / Diff | `IndexDiff`、`DiffFormatter`、`RawTextComparator` |
| 3 | Commit（含中文提交信息） | `CommitCommand`、`PersonIdent` 编码、`ChangeIdUtil` |
| 4 | Log / 查看历史 | `RevWalk`、`RevCommit.parseHeaders/parseBody`、`FollowFilter` |
| 5 | Push（需远端凭据） | `PushCommand`、`BaseReceivePack`、`RemoteRefUpdate` |
| 6 | Fetch / Pull | `FetchProcess`、`TrackingRefUpdate`、`deleteStaleTrackingRefs` |
| 7 | Branch 切换 / Merge（产生冲突更好） | `DirCacheCheckout`、`ResolveMerger`、`MergeResult` |
| 8 | Clone 一个 **SSH** 仓库（若可用） | `JSch` 桥：`CredentialsProviderUserInfo` → `UserInfo/UIKeyboardInteractive` |
| 9 | 大文件（>1MB）提交/克隆 | `cached-packs`、`DeltaWindow`、`WindowCache`、`LargePackedWholeObject` |
| 10 | 交互式 rebase（pick） | `RebaseCommand`、`RebaseTodoLine$Action`、`RebaseTodoLine$Action.parse` |

任一步失败 → 立刻抓 §4 日志，按 §5 归因。

## 4. 日志

```bash
# 建议先清缓冲，再操作
adb logcat -c
adb logcat -v time | grep -Ei 'AndroidRuntime|jgit|NoSuchMethod|NoSuchField|IllegalAccess|AbstractMethod|VerifyError|ClassNotFound'
```

三类关键异常与映射问题的对应：

| 日志 | 根因 | 修法 |
|---|---|---|
| `NoSuchMethodError` / `NoSuchFieldError` | 映射里的名字在运行时类里不存在（改名漏了/拼错） | `deob validate`（门 2）→ 修 tsv/tsrg |
| `IllegalAccessError` | 跨包访问 package-private（改名把类拆到不同包） | 门 7 `widen_access --apply` 后重新构建 |
| `AbstractMethodError` | 接口与实现的名字不一致（覆写断裂） | 门 4 `inherit_check`（CONFLICT/MISSING） |
| `NoClassDefFoundError`（jgit 类） | dex/jar 类集不一致（回填漏类） | `build_apk.py verify`（并集比对） |
| `VerifyError: Rejecting class …` | 字节码/栈校验失败（dex2jar 缺陷、`<clinit>` 调用） | `pipeline/nop_clinit.py` 处理后重建 |

## 5. 判定与回滚

**PASS**：§2 全过 + §3 至少 1–6 全过（7–10 视条件）。
**FAIL**：记下第一个失败的步骤 + 日志首行异常，按 §4 表归因；改完 mapping 重跑
`pipeline/validate → verify → inherit → pkgclose` 再 `build_apk.py all`。

回滚：`adb uninstall <包名> && adb install <原始 APK>`。

## 6. 与自动化的衔接

`build_apk.py all` 里已有两道自动校验（不用装到手机就能发现问题）：

| 步骤 | 校验内容 | 失败含义 |
|---|---|---|
| `dex` | D8 能完整吃下 FART 产物 | mapping 里有 dex 非法结构（如重复成员、`<clinit>` 调用） |
| `verify` | **新 dex 并集 == 改名后 jar 并集**（逐类） | 回填丢类/多类 → 必然 `NoClassDefFoundError` |

真正的 jgit 行为只能在设备上过 §3；这一步就是"冒烟"。

## 7. 产物速查

```
out/build/renamed/      FART 产物（每 jar 一份）
out/build/renamed_pub/  widen 后
out/build/dex/          D8 产物（classes.dex, classes2.dex …，可多）
out/build/apk/          回填后的 APK（未签名，除非有 apksigner）
out/build/build.log     全流程日志
```
