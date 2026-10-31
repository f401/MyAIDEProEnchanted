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
python3 tools/jgit/pipeline/rebuild_tsrg.py      # tsv → tsrg → process/mappings.txt（含头 20 行）
python3 tools/jgit/pipeline/emit_tsrg2.py process/mappings.txt   # 需要单独重排/补 static 标记时
```

> 头 20 行来自 `process/truth/head/mappings_head.txt`（AIDL / 首轮类改名），
> 其余块按 `parts` 顺序由各 part 的 tsv+tsrg 生成。**不要手改 `mappings.txt`**。
>
> 等价一步到位（通用 kit，输出与本项目逐行一致）：
> `python3 tools/deob/cli.py -p process/deob.json emit`

## 2. 跑认证流水线

见 [VERIFY.md](VERIFY.md)。**9 道门全绿再开始构建**。

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
  --map    process/mappings.txt \
  --lib    process/android.jar

# assets 里那 4 个独立包不在 merged 里（zh 11 / en 11 / ndk 10 / packagingservice 19 个类），单独改名
for j in zh en ndk packagingservice; do
  java -Xmx900m -jar process/ForgeAutoRenamingTool-1.0.8-all.jar \
    --input process/src/$j.jar --output ~/out/fart/src/${j}_out.jar \
    --map process/mappings.txt --lib process/android.jar
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

## 6. 回填 APK + 签名

dex 数量会变，所以**不能**像以前那样 `cp` 固定几个；按下面的"多退少补"重写 zip：

```bash
python3 - <<'EOF'
import zipfile, glob, os
src = 'AIDE Pro_2.8.7-freely_orig_src.apk.orig'      # 未改名的原包
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
