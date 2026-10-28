# 构建与还原踩坑清单（jgit 改名 / 重打包）

> 本文记录从「APK 反编译 → 类名还原 → FART 改名 → D8 出 dex → 回填」全过程中
> 实际踩过并已定位的坑。每条给出**症状 → 根因 → 正确做法**，避免重复排查。
> 出包步骤见 `docs/JGIT-PIPELINE.md`；dex 元数据见 `docs/JGIT-METADATA.md`。

---

## 0. 正确流水线（按此顺序）

```
原始 APK 的 classes*.dex（orig 那 5 个）
  → dex2jar（= process/src/classes*.jar，合并成 ~/out/fart/merged.jar）   # 有缺陷，见 §3
  → 修 <clinit> 误引用（tools/jgit/nop_clinit.py 思路）                     # §3.1
  → 修接口字段标志（public static final）                                   # §3.2
= process/base/merged_ok.jar（已入库，sha256 见 process/SHA256SUMS）
  → tsv → rebuild_tsrg.py → mappings.txt（589 类 / 3780 成员）              # §2
  → FART（+ jar_manifest.py 校验内容指纹）                                # §2、§4、§2.5
= ~/out/fart/r_vN.jar
  → D8（--release --min-api 26 --lib android.jar）                         # §3、JGIT-PIPELINE §4
  → 换 dex / zipalign / 签名
```

**禁止**：
- 不要用 `src/smali` 树重新生成 dex 来"顺带"改名（两条路线不要混用）；
- 不要在 jar 上做"全局 public 放宽"（§4）。

---

## 1. 大小写不敏感文件系统：smali 文件名 ≠ 类名

**症状**：按文件名找 smali（`os.path.join(SM, cn + '.smali')`）时，随机拿到**别的类**的内容，
统计结果荒谬（例如 `DC=SequenceComparator` 明明 3/3 全中却被判 0/3）。

**根因**：`/sdcard` 是 FUSE 且大小写不敏感。APK 里存在大量**仅大小写不同**的类名对
（`abcd/ji` 与 `abcd/JI`、`abcd/Eh` 与 `abcd/EH`），文件互相覆盖/被 apktool 加 `.1`、`.2` 后缀转义。
实测：2745 个 smali 文件里 **1559 个文件名与内部 `.class` 声明不一致**。

**正确做法**：
- 遍历目录里**所有** `.smali`，读第一行的 `.class Lxxx;` 得到真实类名做索引；
- 任何工具都不要用"类名拼文件名"的方式定位；
- 类是否存在要查 **`merged.jar`**（dex2jar 产物）或 **`~/icd/orig/classes*.dex`**，不要查 smali 树。

---

## 2. FART 的坑

### 2.1 重复目标 → 整体中止
**症状**：`IllegalStateException: Duplicate entries detected: a/B.class, ...`，输出 jar 是半成品
（类还在旧名下），后续 D8 报各种 ClassNotFound 只是**表象**。

**根因**：`mappings.txt` 里两个不同探针映射到**同一个目标类名**。

**正确做法**：生成 mappings 后必须查重（两条都要空）：
```bash
awk '!/^\t/ && NF>=2 {print $2}' mappings.txt | sort | uniq -d    # 目标重复
awk '!/^\t/ && NF>=2 {print $1}' mappings.txt | sort | uniq -d    # 左值重复
```

### 2.2 tsrg 里的"陈旧块"会制造重复
**症状**：tsv（类映射表）已经去重，FART 仍报重复。

**根因**：`mappings.txt` 由 `jgit_members_clean.tsrg` 生成，而 tsrg 里残留了**旧类块**
（类行仍指向某个已被别类占用的目标）。上一轮实测：tsrg 611 块 vs tsv 589 类 → **22 个陈旧块**。

**正确做法**：以 tsv 为准**重建 tsrg**（`tools/jgit/rebuild_tsrg.py`）——只保留 tsv 里存在的类，
成员行从旧 tsrg 按旧类名取，其它块整块丢弃。

### 2.3 `mappings_head.txt` 自己就是双份的（本轮新发现）
**症状**：tsrg 已重建、jgit 块 0 重复，FART 仍报 19 组重复；`uniq -d` 查出来的重复目标全在**头部**。

**根因**：`mappings_head.txt`（AIDE 侧改名块）是**两份同样的块被拼接**在一起：
`abcd/wu → abcd/ApplicationUtils` 同时出现在第 2 行和第 221 行；61 个块里有 **23 个重复**，
且两份的成员条数还不一样（`abcd/Vi` 23 条 vs 46 条）。

**正确做法**：对 head 也做"按类名分组合并 + 成员行去重"（保留并集，不是简单 keep-first——
简单去重会把 `abcd/common/h` 的 16 条砍成 8 条）。合并后：**359 行 → 162 行 / 38 个块**。合并脚本思路见 `tools/jgit/rebuild_tsrg.py` 头部注释。

### 2.4 输入 jar 必须是"已修好的"那个
`merged_pubcls.jar`（做过类级 public 化的）会让 FART 在 `a/a/i` 上崩：
`RuntimeException: Failed to execute task a/a/i` → `IllegalArgumentException`。
**用 `merged_ok.jar`**（只修 §3 的两处，不动访问标志）。

### 2.5 FART 输出**不确定**：同一输入两次产出内容不同（本轮新发现）
**症状**：输入 jar 和 mappings.txt 都没动，跑两次 FART，`jar_manifest.py` 报
「3 个类内容不同」；差别落在**成员名**上（`Ref.isPeeled` vs `Ref.isSymbolic`）。

**根因**：**映射没沿继承链闭合**。R8/ProGuard 为保住虚分派，同一个 override 家族用同一个混淆名。
如果子类把 `Zo ()Z` 判成 A、父接口把 `Zo ()Z` 判成 B（或父接口**根本没判**），
FART 重写 `invokeinterface` 时找不到精确的 `(owner,name,desc)`，就**沿继承链兜底查找**，
兜底结果取决于 HashMap 遍历顺序 → 每次结果不同。更糟的是错的那一半在运行时会
`AbstractMethodError` 或调错方法。

**实例**：`abcd/ME`（`Ref` 接口）的两个 `()Z` 方法**完全没映射**，而
`abcd/BE`（`ObjectIdRef`）把 `Zo ()Z` 判成 `isSymbolic`、`abcd/kF`（`SymbolicRef`）判成 `isPeeled`
——同一个 R8 家族被判成两个名字。用方法体一眼定案：
`kF.Zo()` 是 `iconst_1;ireturn`（`isSymbolic` 返回 true）、`kF.Hw()` 是 `getLeaf().Hw()`（即 `isPeeled`）；
`BE.Zo()` 是 `iconst_0`（`ObjectIdRef.isSymbolic` 返回 false）。补上 3 条映射后**两次运行完全一致**。

**正确做法**：
```bash
python3 tools/jgit/inherit_check.py        # CONFLICT=0 且 MISSING 尽量小
```
- `CONFLICT`（祖先判成别的名字）必须**逐条裁决**，不能自动改；
- `MISSING`（祖先还没命名）可自动继承子类的名字（`--apply`），但**必须**随后跑
  `verify_members.py` 兜底——实测自动补 69 条里有 5 条名字在 oracle 里不存在，要删掉。
- 出包前用 `jar_manifest.py` 跑两次 FART，**内容指纹必须相同**。

---

## 3. dex2jar 产物缺陷（会让 D8 直接失败）

### 3.1 显式调用 `<clinit>`（JVM 非法）
**症状**：`D8: Invalid input code with a call to <clinit>`（编译中止，整包 dex 不出）。
**实例**：`com/aide/appwizard/runtime/e`（全库仅 1 个类）。

**根因**：dex 允许 `invoke-static {} LSome;-><clinit>()V`，dex2jar 逐条直译成 JVM 的
`invokestatic <clinit>`，JVM 规范不允许。

**修法**：该 Methodref 的 `NameAndType` 里 `name_index` 被指到了 `<clinit>`，
正常应是 `<init>`。若该 NameAndType **只被一个引用使用**，直接改回 `<init>` 的 UTF8 索引即可。
连带症状：该类构造器"没有 invokespecial <init>"（super 调用丢了）。
已确认**不是 FART 造成**（FART 前后单类 D8 测试都失败）。

### 3.2 接口字段不是 public static final
**症状**：
```
Failure to verify dex file '...base.apk':
  Interface field is not public final static, Lcom/FR1ENDS/tools/asm/AsmAbstract;.a: 18(final static)
```
→ **整个 dex 校验失败** → 该 dex 里所有类都"找不到" →
`ClassNotFoundException: com.s1243808733.aide.application.App`、`NoClassDefFoundError: AIDEApplication`。

**根因**：dex2jar 丢了 `public` 位。dex 规范硬性要求接口字段为 `public static final`，
校验器对**整个 dex 文件**一次性拒绝。

**修法**：对所有 `ACC_INTERFACE` 的类，字段标志改为 `(acc|0x19) & ~0x2 & ~0x4`。
实测全库只有 1 个类踩到（`AsmAbstract.a`：0x18 → 0x19）。

### 3.3 结构坏掉的类
`abcd/td`、`sun1/security/x509/X509CertImpl`、`sun1/security/pkcs12/PKCS12KeyStore`
等连常量池都解析不过（解析器报 `ValueError: 0`）。这类要在扫描/修复脚本里 **try/except 跳过并计数**，
不要让它中断整批处理（曾经导致脚本只处理了 9403/21773 个类）。

---

## 4. 访问权限：不要做"全局 public 放宽"

**症状（错误做法导致）**：
```
Field may have only one of public/protected/private, La/ah;.a: 13(public private final)
```
→ dex 校验失败，整包崩。

**根因**：`acc | 1` 只加 public，没有清 private/protected，产出 `0x13`(public+private) 这种非法组合。

**正确做法**：**跨包访问问题用"命名"解决，不用"放宽"解决**：
只要把内层类映射到**与外层/引用者同包**的名字（`<引用者目标名>$N`），package-private 访问自然合法。

实例：`abcd/vJ` 没被映射，留在 `abcd` 包，而 `TransportHttp` 已改名到 `org.eclipse.jgit.transport` →
`IllegalAccessError: TransportHttp attempting to access abcd.vJ`（发生在 `<clinit>`）。
修法：`abcd/vJ → org/eclipse/jgit/transport/TransportHttp$4`。

**处理模板**（崩溃栈出现 `Illegal class access: X attempting to access abcd.Y`）：
1. **不要**去查 `Y` 的 `EnclosingClass` 注解——本 APK 里那是投毒值（§5）；
2. 查 `Y` 的**调用点**：谁 `new` 它 / 谁把它当返回值或参数（`tools/jgit/anonmap.py` 的"唯一引用者"）；
3. 目标名 = `<引用者目标名>$N`（N 取该外层下未占用的序号）；
4. 补进 tsv → `rebuild_tsrg.py` → 重跑 FART。

---

## 5. 命名判定：**dex 的嵌套注解不能用**（本轮推翻上一轮结论）

上一轮本文写过"以 dex 的 `InnerClass` 注解为准、源码为辅"。**这条是错的**，已撤销。

**证据（详见 `docs/JGIT-METADATA.md` §4）**：
- `InnerClass.name` 在 324 个类里只有 **12 种取值**，其中 `Landroid/support/v4/media/a;` 复用了 **201 次**、
  `Lcom/aide/appwizard/runtime/h;` **62 次**、`Lcom/aide/engine/c$b$i;` **39 次**——且与**后缀字母**一一对应
  （`$a`→诱饵1、`$b`→诱饵2、`$c`→诱饵3）。`name` 本应是简单标识符，这里全是完整类型描述符。
- `EnclosingClass` 指向诱饵命名空间 `a/b/a/d/*`（= "abcd" 逐字符插 `/`）、`a/b/c/*`、`La/ag;`；
  `uJ`/`vJ`/`wJ` 三个**不同**的匿名类被写成同一个 `Labcd/UM;`（而 class 文件侧是 `abcd/xJ`）。
- 只有 `accessFlags` 看起来是真的。

**因此类级判定的顺序是**：

1. **字段构成**（字段数量 + 类型多重集）——必过关卡，成员名对得上**不算证据**（`AE→NoteMap` 假证据教训）；
2. **jgit 官方 jar 的成员形状 1:1 对照**（`javap -p`）+ 3.7.1 源码确认嵌套关系；
3. **调用点**（匿名类归属只认这个）；
4. `$` 只当**混淆器命名分组**的提示，不当"真嵌套"的证据。

**实例（为什么 `$` 不能当嵌套证据）**：

| 探针 | 混淆名暗示 | 实际（1:1 成员配对） | 正确目标 |
|---|---|---|---|
| `abcd/gE$a` | `Config` 的内部类 | 6 个 String 字段 + `forValue` + 2×`match` + 2×`eq*` + `toString` | **`org.eclipse.jgit.lib.ConfigLine`（顶层）** |
| `abcd/gE$c` | 同上 | `List<ConfigLine>` + `Map` + `ConfigSnapshot baseState` + `(List, ConfigSnapshot)` 构造器 | **`ConfigSnapshot`（顶层）** |
| `abcd/gE$b` | 同上 | `interface { T get(Config) }` | `Config$SectionParser` |
| `abcd/eI$c` | `BasePackFetchConnection` 的内部类 | 3 个常量的枚举；BPFC 里有 `private MultiAck` 字段 | `GitProtocolConstants$MultiAck` |
| `abcd/eI$a` | 同上 | `extends Exception` + 私有无参构造 | `BasePackFetchConnection$CancelledException`（本轮修正，原记 `$2`——那是 jgit 的 `$SwitchMap` 合成类） |

---

## 6. 校验脚本的盲区

`verify_members.py` 只验证"改后的名字在目标类里存在且描述符形状一致"，**查不出**：

1. **两个不同探针映射到同一个 名字+描述符**（自相矛盾）——需单独的"同名冲突"检查（`conflict_fix.py`）；
2. **两个不同探针映射到同一个目标类名**——FART 会报重复（§2.1）；
3. **成员被 R8 内联/合并后无对应**——只能靠"探针成员形状 ⊆ oracle 形状"的统计（`nopair.py`/`excess.py`）。

每次出包前跑的四项检查见 `docs/JGIT-PIPELINE.md` §2。

---

## 7. 覆盖率口径（不要跨轮直接比百分比）

- 分母 = oracle 成员里"在探针类中存在同 desc+static 对应者"的那些（R8 删掉的不入分母）；
- 排除：`<init>`/`<clinit>`/`bridge`/`access$NNN`/枚举 `values`+`valueOf`/
  编译器生成的 `$SwitchMap` 数组（**dex 里没有 synthetic 标记**，容易被误算成"未还原"）；
- 因此"新增一个类"会让分母变大、百分比**下降**，只有**绝对命中数**可比。

当前基线（589 类 / 3780 成员）：方法 **78.4%**（2456/3132）、字段 **70.0%**（1008/1440）、
完全覆盖类 307、`verify_members` 不一致 0、FART 两次运行内容一致。

---

## 8. 运行时崩溃的快速定位顺序

看到 `ClassNotFoundException` / `Unable to instantiate application` 时，**先看 `Suppressed` 行**：

1. `Suppressed: IOException: Failed to open dex files ... Failure to verify dex file ...`
   → **dex 本身非法**（§3.2 接口字段、§4 的 0x13 等），此时"类找不到"全是表象；
2. `Caused by: NoClassDefFoundError: <父类>` → 父类缺失/父类所在 dex 校验失败；
3. `IllegalAccessError: ... attempting to access abcd.X` → 跨包访问 package-private（§4）；
4. `D8: Malformed inner-class attribute`（Info）→ 嵌套关系不一致（§5），不致命但应修。

---

## 9. 工具清单

全部在 **`tools/jgit/`**，逐脚本说明见 `tools/jgit/README.md`。最常用的六个：

| 工具 | 作用 |
|---|---|
| `rebuild_tsrg.py` | **tsv → tsrg → mappings.txt**（丢陈旧块、成员去重、查重复目标） |
| `inherit_check.py` | 映射是否沿继承链闭合（不闭合 = FART 输出不确定，§2.5） |
| `jar_manifest.py` | jar 的**内容指纹**（与 zip 布局无关），用来判"两次产物是否一样" |
| `verify_members.py` | 成员映射一致性（含 R8 白名单） |
| `coverage.py` | 精确覆盖率（口径见 §7） |
| `conflict_fix.py` | 同名同描述符冲突裁决 |
| `anonmap.py` | 单引用者类 → `<外层>$N`（同时解决跨包访问，§4） |
| `dexlib.py` / `dexinner.py` / `dex_inner_all.py` | dex 元数据（注解）读取，见 `docs/JGIT-METADATA.md` |

> 所有脚本的共同纪律：**按 `.class` 描述符 / dex 类定义定位类，不按文件名**（§1）。
