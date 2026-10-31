# process —— 已落地的改名工程（构建输入 + 汇总产物；真相在各依赖的 jobs/ 下）

```
process/                          ← 已落地工程：构建输入 + 汇总产物（真相在各依赖的 jobs/ 下）
├── deob.json                     #   通用 kit 配置：parts 顺序（../jobs/jgit 等）/ oracle / jar 列表
├── mappings.txt                  # TSRG2 汇总产物（按 parts 顺序拼，9838 行）
├── verify_allow.tsv              # 已知差异白名单（每行都要写理由）
├── truth/
│   ├── head/mappings_head.txt    #   历史补丁：AIDE 首轮改名 20 行（原样拼在最前）
│   └── smali_index.tsv           #   类 → smali 真实文件名（大小写不敏感 FS 必须用）
│
├── base/merged_ok.jar            # ★ 改名输入基线
├── base/merged_pub.jar           # widen_access 产物（跨包 package-private 已放宽）
├── src/classes{,2,3,4,5}.jar     # 5 个 dex 的 dex2jar 产物
├── src/{en,zh,ndk,packagingservice}.jar
├── ForgeAutoRenamingTool-1.0.8-all.jar
├── d8.jar / android.jar          # D8 与 API stub
├── SHA256SUMS                    # 输入/工具指纹
├── run.sh                        # 逐 jar + --lib 的历史流程
└── output/                       # 历史产物（.gitignore）

jobs/                             ← 一个依赖一个目录：真相（可单独复用/评审）
├── jgit/{class_map.tsv, members.tsrg, params.tsv}   # 685 类 / 5502 行 / 3238 参数行
├── jsch/{class_map.tsv, members.tsrg, params.tsv}   # 141 类 / 1229 行 / 824 参数行（jsch 0.1.51，类名未混淆）
└── aide/{class_map.tsv, members.tsrg}               # 53 类 / 30 行（AIDE 自有类，无 params）
```

**为什么真相不在 process/ 里**：这一个 APK 里同时改名了 jgit、jsch（第三方接口双侧改名）、
AIDE 自有类三个来源。它们各有各的 oracle、各有各的评审节奏，合成一张表会互相污染；
放在 `jobs/<依赖>/` 下就能单独改动、单独复用。`process/` 只负责"这个 APK 的落地"：
构建输入 + `mappings.txt`（按 `deob.json` 的 `parts` 顺序汇总）+ 本 APK 自己的东西
（`head` 历史补丁、`smali_index`、`verify_allow`）。

| part（目录） | 探针前缀 | 目标前缀 | 内容 |
|---|---|---|---|
| `process/truth/head` | `abcd` | `com/aide/ui/build/packaging*` | 首轮已应用的历史补丁 20 行，只原样输出 |
| `jobs/jgit` | `abcd` | `org/eclipse/jgit/` | 685 类 / 5502 成员行 / 3238 参数行 |
| `jobs/jsch` | `com/jcraft/jsch` | `com/jcraft/jsch/` | 141 类 / 1229 成员行 / 824 参数行（jsch 0.1.51；类名原样，成员双侧改名） |
| `jobs/aide` | `abcd` | `com/aide/`、`abcd/aide/` | 53 类 / 30 成员行（AIDE 自有类 → `abcd/aide/`） |

**探针前缀是 part 级的**（`deob.json` 的 `parts[i].probe_prefix`）：不同依赖的混淆前缀不一定相同，
短名探针会按各自 part 的前缀展开成全名；合并视图里永远是全名，只读脚本不用关心。

以后再引入新依赖，就新建 `jobs/<名字>/` 并加进 `parts`（见 `../docs/NEW-JOB.md`）。

## 1. mappings.txt 格式（TSRG2）

```
tsrg2 obf deobf                                   ← 表头（必须第一行）
<混淆名> <真名>                                    ← 类行，顶格
\t<旧成员名> <描述符> <新成员名>                     ← 方法行，1 个 TAB
\t\t<实参序号> <旧参数名> <新参数名>                  ← 参数行，2 个 TAB、**必须 3 段**
\t<旧字段名> <新字段名>                              ← 字段行，1 个 TAB
\t\tstatic                                    ← 静态**方法**的标记：单独一行、2 个 TAB
```

参数行是本次实测出来的，三个约束都来自 FART 1.0.8 内置 srgutils 的解析器
（`InternalUtils.loadTSrg2`，反编译确认 + 造样例跑通）：

1. **必须是 3 段**：表头有两列名字（`obf deobf`），参数行要「序号 + 每列一个名字」。
   写成 `\t\t0 name` 会报 `Invalid TSRG v2 line, too many parts`。
   我们的两列写同一个名字（混淆侧没有真实参数名可写，写同一个不影响产物）。
2. **序号是实参序号**：0 起、不含 `this`、`long`/`double` 只占一个序号
   （实测 `h(String,double)` 上 `0 ss` 落在 slot 1、`1 d2` 落在 slot 2）。
3. **顺序**：跟在方法行（及其 `static` 标记行）后面，解析器把它挂到「当前方法」上。

它对产物的真实影响：输入类都没有 `LocalVariableTable`，所以 FART 只会改写 jar 里的
`fernflower_abstract_parameter_names.txt`（Fernflower 的抽象方法参数名表），
把 `var1 var2` 换成真名——这正是我们想要的（见 `../docs/VERIFY.md` 门 9）。

三条纪律：

1. **不要手改**：唯一真相是 `jobs/<依赖>/class_map.tsv`（类）、
   `jobs/<依赖>/members.tsrg`（成员）、`jobs/<依赖>/params.tsv`（参数名）。
   改完按顺序跑：
   ```bash
   python3 tools/jgit/pipeline/rebuild_tsrg.py     # 重建 members.tsrg，并自动派生下面两步
   #   内部依次调用：
   #   paramfill.py --write    → jobs/<依赖>/params.tsv（参数名，见 §4）
   #   emit_tsrg2.py <mappings.txt> → TSRG2（static 标记 + 参数行）
   ```
   也可以只用通用 kit：`python3 tools/deob/cli.py -p process/deob.json emit`
   （两份产物**逐行一致**，`deob selftest` 里有对应断言）。
2. **不许有重复目标**：类级重复会被 `rebuild_tsrg.py` 直接中止；成员级重复（同类内新名+描述符相同）
   会让 D8 报 `multiple definitions` 并任选一份丢弃。两道都靠 `validate_mappings.py` 兜。
3. **static 标记只对方法有效**，跟在字段行后会报 `Invalid TSRG v2 line`。

## 2. 复现 / 判等

```bash
cd process
sha256sum -c SHA256SUMS                       # ① 输入与工具完整性

java -Xmx900m -jar ForgeAutoRenamingTool-1.0.8-all.jar \
  --input  base/merged_ok.jar \
  --output ~/out/fart/r.jar \
  --map    process/mappings.txt             # ② 改名

python3 tools/jgit/pipeline/jar_manifest.py ~/out/fart/r.jar --list   # ③ 内容指纹
```

**判等用「内容 manifest」不要用整包 sha256**：FART 写 zip 的元数据不稳定，同一输入两次产出会差几个字节
（内容相同）。`jar_manifest.py` 对「按类名排序的内容哈希」再取哈希，与 zip 布局无关；
拿两次产物比 `--list` 的结果是否相等即可（详见 `../docs/VERIFY.md` 门 8）。
参数行带来的**唯一**内容差异是 `fernflower_abstract_parameter_names.txt`（不是 class），
`jar_manifest.py` 的 class 指纹因此不受影响。

> ⚠️ 改名前先看 `../docs/NOTES.md`：重复目标、override 家族同名、跨包 access 这三类问题
> 都会让产物“能构建但跑不起来”。

## 3. 当前产物

| 文件 | 说明 |
|---|---|
| `mappings.txt` | 12332 行 = 表头 1 + 头部 12 + 类块 880 + 成员行 6770 + `static` 592 + 参数行 4077 |
| `jobs/jgit/params.tsv` | 3238 行：1919 个方法（含 139 个 `<init>`；oracle LVT 为主，抽象方法走源码） |
| `jobs/jsch/params.tsv` | 824 行：409 个方法（jsch 0.1.51 的 LVT + 0.1.51 源码声明） |
| `jobs/aide/params.tsv` | 15 行：12 个方法（`params_manual.tsv`，每行都有判据） |
| `base/merged_pub.jar` | 由 `widen_access.py` 生成（当前改写 11 个 class） |

## 4. 参数名（`jobs/<依赖>/params.tsv`）

判据见 [docs/NAMING.md](../docs/NAMING.md) §9（oracle `LocalVariableTable` → 源码**无方法体**声明 →
AIDE 自有类的 `params_manual.tsv` 人工证据行）。三条都要求可复现，拿不到就留空。

```
2986 个方法从 oracle LVT 拿到全名（jgit 3.7.1；另有 1 个只在 4.11.9 里有）
 708 个方法从 jsch 0.1.51 的 LVT 拿到（jsch；版本判定见 docs/NOTES.md §9）
 357 个方法从源码声明补全（jgit 251 + jsch 106；jsch 用 0.1.51 的 sources）
  12 个方法（aide）来自 params_manual.tsv，共 15 行参数
   0 个方法仍是残缺
```

重跑：

```bash
python3 tools/jgit/pipeline/paramfill.py            # 只统计
python3 tools/jgit/pipeline/paramfill.py --write    # 写 jobs/<依赖>/params.tsv（按类来源分表）
```

（`rebuild_tsrg.py` 会自动跑这一句，再跑 `emit_tsrg2.py`。）
