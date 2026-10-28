# tools/jgit — jgit 反混淆流水线

把 AIDE Pro 里被混淆成 `abcd/*` 的 **jgit 3.7.1** 还原成真实类名/成员名，并验证到「能被 FART 改名、能被 D8 吃下」的程度。

> 顶层 `tools/` 是 AIDE 侧（资源 ID、support→androidx 迁移）的工具；**本目录只放 jgit 命名相关的脚本**。

---

## 1. 数据源（全部在 $HOME，不在仓库里）

| 路径 | 内容 | 谁生成 |
|---|---|---|
| `~/out/work/jgit_map_clean.tsv` | **类映射唯一真相**：`探针<TAB>目标<TAB>证据`（当前 589 行） | 人工/脚本逐步累积 |
| `~/out/work/jgit_members_clean.tsrg` | 成员映射（类行 `abcd/X 目标`，成员行 TAB 缩进） | `rebuild_tsrg.py` 从 tsv 重建 |
| `~/out/work/mappings_head.txt` | AIDE 侧改名块（TSRG2 头，162 行，**不含 jgit**） | 历史固化，勿从 tsrg 反推 |
| `~/out/work/jgit_unverified.tsv` | 撤销/暂缓记录（判错后回滚的依据） | 各轮脚本 |
| `~/out/oracle/jgit/j-3.7.1.201504261725-r.jar` | 官方 jgit 3.7.1（**判据来源**） | 版本指纹定位（`vprobe.py`） |
| `~/src/jgit/` | jgit 3.7.1 源码 669 个 `.java` | 解压 `jgit-src.jar` |
| `~/src/app_decomp/sources/abcd/*.java` | jadx 1.5.6 反编译的 353 个探针类 | `jadx` |
| `process/base/merged_ok.jar` | **改名输入基线（已入库）**，sha256 见 `process/SHA256SUMS` | dex2jar 合并 + 修 2 处缺陷 |
| `process/src/classes{,2,3,4,5}.jar` | 原始 5 个 dex 的 dex2jar 产物（已入库） | dex2jar |
| `~/icd/orig/classes*.dex` | **原始 5 个 dex**（dex 元数据来源） | 从 `AIDE Pro_2.8.7-freely_orig_src.apk.orig` 解出 |
| `/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd/` | 探针 smali（2745 个文件，文件名不可信） | apktool |

**产物**：`process/mappings.txt`（TSRG2，= `mappings_head.txt` + jgit 块）。

---

## 2. 流水线（四步）

```bash
# ① 改 tsv（人工/脚本），然后一步重建 tsrg + mappings.txt
python3 tools/jgit/rebuild_tsrg.py

# ② 三道闸（必须过）
python3 tools/jgit/verify_members.py      # 期望：不一致 0
awk '!/^\t/ && NF>=2 {print $2}' process/mappings.txt | sort | uniq -d   # 期望：空
python3 tools/jgit/inherit_check.py       # CONFLICT 逐条裁决；MISSING 尽量小

# ③ 改名（FART，单 jar 输入；输入基线已入库）
cd process && sha256sum -c SHA256SUMS
java -Xmx900m -jar ForgeAutoRenamingTool-1.0.8-all.jar \
  --input base/merged_ok.jar --output ~/out/fart/r_vN.jar --map mappings.txt

# ③' 判等/确定性：内容指纹（跑两次，两次必须相同）
python3 ../tools/jgit/jar_manifest.py ~/out/fart/r_vN.jar --check <期望的 manifest>

# ④ 出 dex（D8；jar → dex，注意 min-api≥21 时禁用 --main-dex-list）
java -Xmx900m -cp d8.jar com.android.tools.r8.D8 \
  --release --min-api 26 --thread-count 2 --lib android.jar \
  --output ~/out/dexN ~/out/fart/r_vN.jar
```

出包前再跑一次 `apk_class_diff.py`：jar 的类集与 dex 的类集**差集必须为 0**。

---

## 3. 脚本总表

### 3.1 底座

| 脚本 | 作用 |
|---|---|
| `jvmbody.py` | class 文件解析（常量池/字段/方法/方法体特征：ldc 字符串、成员引用）。**所有成员级脚本的底座** |
| `dexlib.py` | 最小 DEX 解析器（string/type/method/注解） |
| `dex_inner_all.py` / `dexinner.py` | 导出/查询 dex 的 dalvik 嵌套注解（`InnerClass`/`EnclosingClass`/`EnclosingMethod`） |
| `inner_dump.py` | 从 jar 的 class 文件读 `InnerClasses`/`EnclosingMethod` 属性（dex 侧对照） |
| `hier_audit.py` | 层级审计：探针 `super/ifaces` 的映射目标必须等于 oracle 目标的 `super/ifaces` |

### 3.2 类级判定

| 脚本 | 作用 |
|---|---|
| `rescore.py` | 类级重打分（TF-IDF 覆盖率 + kind/嵌套硬约束），复核整套类映射 |
| `typeprop.py` | 用已映射成员的**描述符逐位对齐**给未映射类型投票 |
| `keyclass.py` | 用类级 `JGitText` 键集合识别未映射的 jgit 类（键名未被混淆） |
| `findclasses.py` | 找出「几乎确定是 jgit 但还没映射」的类并给候选 |
| `graphfinger.py` | 用「引用的 jgit 类型邻域」给未映射类找候选 |
| `ctorfind.py` | 按构造器签名（经映射归一）在全 oracle 里查同类 |
| `inner_cmp.py` | 打印父类所有命名内部类指纹 + 探针指纹（定 `$` 嵌套用） |
| `anonmap.py` | 只被单个已映射类引用的类 → 命名 `<Owner目标>$N`（同时解决跨包访问） |
| `typeuse.py` / `typesolve.py` / `typefix.py` | 未映射「阻塞类型」求解三件套（jigsaw / 被调用签名） |
| `apk_class_diff.py` | jar 与 APK(dex) 的类集差集（出包核对） |

### 3.3 成员级定名

| 脚本 | 作用 |
|---|---|
| `gapfill.py` | 唯一签名补名（同 desc+static 唯一且未被占用） |
| `gapfill2.py` | 多候选时用方法体证据（字符串常量 + 引用成员对）定名 |
| `javadiff.py` | jadx 反编译产物 vs jgit 源码，做「标识符无关」结构对齐 |
| `lcs.py` | 指令级语义序列比对（invoke/字段/字符串/new），difflib 破重载歧义 |
| `sigmatch.py` | 泛型 `Signature` 属性指纹（javac 签名两边一致，只是类型名被改） |
| `jgittext.py` | `JGitText` 消息键指纹定名（最有效的成员判据之一） |
| `callsite.py` | 调用点对齐：探针成员在已映射方法里被调用 → 用调用者反推 |
| `fielddiff.py` | 字段用「访问者方法集合」对齐 |
| `fieldfill.py` | 多候选字段用「访问者方法集合」定名 |
| `fieldctx.py` | 字段上下文推断：同一方法内的字段访问序列对齐（已映射字段做锚点） |
| `fieldread.py` | 字段「被谁读、在什么条件下比较」 |
| `initfill.py` | 字段初始化常量配对（`<init>`/`<clinit>` 的 `sget`/`putstatic` 常量） |
| `confield.py` / `constctx.py` | 静态常量字段按 `ConstantValue` / 值+使用点定名（**实测收益≈0**，见 QC §…） |
| `add_members.py` / `apply_types.py` / `apply_batch1.py` | 批量写入 tsv+tsrg+mappings.txt（三处同步） |
| `conflict_fix.py` | 裁决「两个探针成员映射到同一 名字+描述符」 |

### 3.4 校验与体检

| 脚本 | 作用 | 通过标准 |
|---|---|---|
| `verify_members.py` | 新名必须在 oracle 目标类（或祖先）存在且描述符一致 | 不一致 0 |
| `coverage.py` | 精确覆盖率（分母剔掉 R8 删掉的成员） | 只比**绝对命中数**，不比百分比 |
| `excess.py` | 探针成员多重集超出 oracle 的类（R8 合并 or 类级误判） | — |
| `nopair.py` | 「找不到同形对应者」最多的类 → 定位类级误判 | — |
| `deadmembers.py` | 统计全 App 无调用/访问的成员（可删候选） | 实测 0 个可安全删 |
| `override.py` | 覆写/实现传播 | 实测收益 0 |
| `validate_cls.py` / `review.py` / `cls2txt.py` | 单类体检 / 抽查全貌 / 探针↔候选成员对照 | — |

### 3.5 构建与修补

| 脚本 | 作用 |
|---|---|
| `rebuild_tsrg.py` | **tsv → tsrg → mappings.txt**，丢弃陈旧类块、成员去重、查目标重复 |
| `inherit_check.py` | 映射是否沿继承链闭合（不闭合 ⇒ FART 结果不确定 + 分派错） |
| `jar_manifest.py` | jar 的**内容指纹**（与 zip 布局/时间戳无关），判"两次产物是否一样" |
| `sync_maps.py` | 旧版（只拼 mappings.txt，不做去重）→ 已被 `rebuild_tsrg.py` 取代 |
| `nop_clinit.py` | 修 dex2jar 产物：方法体里对 `<clinit>` 的 `invokestatic` 改 NOP（D8 不接受） |
| `vprobe.py` | 用探针观察到的签名当指纹，定位 AIDE 内置 jgit 的真实版本 |

---

## 4. 硬规则（违反就会得出错误映射）

1. **字段构成是类级判定的必过关卡**；成员名对得上**不算证据**（`AE→NoteMap` 假证据教训）。
2. **不要按文件名定位 smali**：FUSE 大小写不敏感，2745 个文件里 1559 个文件名与内部 `.class` 声明不一致。一律解析 `.class`/`.dex`。
3. **dex 的嵌套注解不可信**（本 APK 被投毒，4 个诱饵值复用在 306 个类上）→ 见 `docs/JGIT-METADATA.md`。
4. **不要全局放宽访问标志**（`acc|1` 会造出 `0x13` public+private → dex 校验失败）；跨包访问用"嵌套命名"解决。
5. 混淆名里的 `$` **只说明混淆器的命名分组**，不等于真嵌套（`gE$a` 是顶层 `ConfigLine`）。
6. 覆盖率分母随类数变化，**只比绝对命中数**。
7. **映射必须沿继承链闭合**：同一 R8 override 家族只能有一个新名（`inherit_check.py`）。
   不闭合时 FART 靠兜底解析 → 同一输入两次产出不同，且运行时分派错。
8. **判"产物一样"用内容指纹**（`jar_manifest.py`），不要用整包 sha256（zip 元数据不稳定）。

---

## 5. 脚本通用约定

- 全部为**单文件 python3**，无第三方依赖；`python3 xxx.py` 直接跑，`--apply` 才写文件（默认 dry-run）。
- 需要 `jvmbody`/`dexlib` 的脚本已把**自身目录**插到 `sys.path` 最前，所以仓库副本可直接运行；同时保留 `~/tools` 兜底。
- 存在硬编码路径（`~/out/work`、`~/src`、`/storage/emulated/0/...`）：换机器先
  `grep -n "out/work\|out/oracle\|MyAIDEProEnchanted" tools/jgit/*.py`。
- 环境里**没有 `/tmp`**（`/` 只读），临时目录用 `$HOME/tmp`。`which` 不可用，用 `command -v`。
