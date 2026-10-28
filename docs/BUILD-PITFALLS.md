# 构建与还原踩坑清单（jgit 改名 / 重打包）

> 本文记录从「APK 反编译 → 类名还原 → FART 改名 → D8 出 dex → 重打包」全过程中
> 实际踩过并已定位的坑。每条都给出**症状 → 根因 → 正确做法**，避免重复排查。

---

## 0. 正确流水线（按此顺序）

```
原始 APK 的 classes*.dex
  → dex2jar（process/src/old/classes*.jar）        # 产物有缺陷，见 §3
  → 修 <clinit> 误引用（tools/nop_clinit.py 思路）  # §3.1
  → 修接口字段标志（public static final）           # §3.2
= merged_ok.jar
  → FART（mappings.txt，589 类 / 3740+ 成员）       # §2
= r_vN.jar
  → D8（--min-api 26 --lib android.jar）            # §5
  → 替换 dex / zipalign / 签名
```

**禁止**：
- 不要用 `src/smali` 树重打包（§1）；
- 不要在 jar 上做"全局 public 放宽"（§4）。

---

## 1. 大小写不敏感文件系统：smali 文件名 ≠ 类名

**症状**：按文件名找 smali（`os.path.join(SM, cn + '.smali')`）时，随机拿到**别的类**的内容，
统计结果荒谬（例如 `DC=SequenceComparator` 明明 3/3 全中却被判 0/3）。

**根因**：`/sdcard` 是大小写不敏感（FUSE）。APK 里存在大量**仅大小写不同**的类名对
（`abcd/ji` 与 `abcd/JI`、`abcd/Eh` 与 `abcd/EH`），文件互相覆盖/被 apktool 加 `.1`、`.2` 后缀转义。
实测：2745 个 smali 文件里 **1559 个文件名与内部 `.class` 声明不一致**。

**正确做法**：
- 遍历目录里**所有** `.smali`，读第一行的 `.class Lxxx;` 得到真实类名做索引；
- 任何工具都不要用"类名拼文件名"的方式定位；
- 类是否存在要查 **`merged.jar`**（dex2jar 产物，不受文件名影响），不要查 smali 树。

---

## 2. FART 的三个坑

### 2.1 重复目标 → 整体中止
**症状**：`IllegalStateException: Duplicate entries detected: a/B.class, ...`，输出 jar 是半成品
（类还在旧名下），后续 D8 报各种 ClassNotFound 只是**表象**。

**根因**：`mappings.txt` 里两个不同探针映射到**同一个目标类名**。

**正确做法**：生成 mappings 后必须查重：
```bash
awk '!/^\t/ && NF>=2 {print $2}' mappings.txt | sort | uniq -d    # 必须为空
```

### 2.2 tsrg 里的"陈旧块"会制造重复
**症状**：tsv（类映射表）已经去重，FART 仍报重复。

**根因**：`mappings.txt` 由 `jgit_members_clean.tsrg` 生成，而 tsrg 里残留了**旧类块**
（类行仍指向某个已被别类占用的目标）。

**正确做法**：以 tsv 为准**重建 tsrg**——只保留 tsv 里存在的类，成员行从旧 tsrg 按旧类名取；
其它块全部丢弃。

### 2.3 输入 jar 必须是"已修好的"那个
`merged_pubcls.jar`（做过类级 public 化的）会让 FART 在 `a/a/i` 上崩：
`RuntimeException: Failed to execute task a/a/i` → `IllegalArgumentException`。
**用 `merged_ok.jar`**（只修 §3 的两处，不动访问标志）。

---

## 3. dex2jar 产物缺陷（会让 D8 直接失败）

### 3.1 显式调用 `<clinit>`（JVM 非法）
**症状**：`D8: Invalid input code with a call to <clinit>`（编译中止，整包 deck 不出）。
**实例**：`com/aide/appwizard/runtime/e`（全库仅 1 个类）。

**根因**：dex 允许 `invoke-static {} LSome;-><clinit>()V`，dex2jar 逐条直译成 JVM 的
`invokestatic <clinit>`，JVM 规范不允许。

**修法**：该 Methodref 的 `NameAndType` 里 `name_index` 被指到了 `<clinit>`，
而正常应是 `<init>`（构造器/super 调用）。若该 NameAndType **只被一个引用使用**，
直接把 `name_index` 改回 `<init>` 的 UTF8 索引即可（已验证 D8 通过）。
连带症状：该类的构造器"没有 invokespecial <init>"（super 调用丢了）。

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

**修法**：对所有 `ACC_INTERFACE` 的类，把其字段标志改为 `(acc|0x19) & ~0x2 & ~0x4`。
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
R8 把内部类命名成 `Outer$a`；只要我们把内层类映射到**与外层类同包**的名字
（`<外层目标名>$N`），package-private 访问自然合法。

实例：`abcd/vJ`（`EnclosingClass=abcd/xJ`、`name=null` 的匿名类）没被映射，留在 `abcd` 包，
而 `TransportHttp` 已改名到 `org.eclipse.jgit.transport` →
`IllegalAccessError: TransportHttp attempting to access abcd.vJ`（发生在 `<clinit>`）。
修法：`abcd/vJ → org/eclipse/jgit/transport/TransportHttp$4`。

**处理模板**：崩溃栈里出现 `Illegal class access: X attempting to access abcd.Y` 时：
1. 查 `Y` 的 `Ldalvik/annotation/EnclosingClass;` 注解 → 得到外层探针；
2. 目标名 = `<外层目标名>$N`（N 取该外层下未占用的序号）；
3. 补进映射 → 重跑 FART。

---

## 5. 命名判定：dex 的嵌套注解优先于源码

- `.annotation system Ldalvik/annotation/InnerClass;` 里 **`name = "x"`** → 命名内部类；
  **`name = null`** → 匿名类；
- **以 dex 为准，源码为辅**：混淆器保留了嵌套关系，而源码版本可能不一致。
  实例：`gE$a`（6 个 String 字段 + forValue/match，语义上是 `ConfigLine`）在 dex 里是
  `Config` 的私有静态内部类；而 jgit 3.7.1/4.x/5.x 的 `ConfigLine` 都是**顶层类**。
  → 说明 AIDE 的混淆器（FR1ENDS tools）把顶层类**搬进了外层类**。
  正确命名：`org/eclipse/jgit/lib/Config$ConfigLine`、`Config$ConfigSnapshot`。
- 反例（规则例外）：`abcd/PK → SystemReader$Default`（扁平探针指向命名内部类），
  `eI$c`（`GitProtocolConstants$MultiAck` 却嵌在 `BasePackFetchConnection` 下）。
  这类以**内容（字段/方法/常量）**判定，注释只作参考。

---

## 6. 校验脚本的盲区

`verify_members.py` 只验证"改后的名字在目标类里存在且描述符形状一致"，**查不出**：

1. **两个不同探针映射到同一个 名字+描述符**（自相矛盾）——需单独的"同名冲突"检查；
2. **两个不同探针映射到同一个目标类名**——FART 会报重复（§2.1）；
3. **成员被 R8 内联/合并后无对应**——这类只能靠"探针成员形状 ⊆ oracle 形状"的统计（`nopair`/`excess`）。

补充检查（每次出包前跑）：
```bash
# a) 同名同描述符冲突
# b) 类目标重复
# c) 接口字段 public static final
# d) 是否存在 Methodref -> <clinit>
```

---

## 7. 覆盖率口径（不要跨轮直接比百分比）

- 分母 = oracle 成员里"在探针类中存在同 desc+static 对应者"的那些（R8 删掉的不入分母）；
- 排除：`<init>`/`<clinit>`/`bridge`/`access$NNN`/枚举 `values`+`valueOf`/
  编译器生成的 `$SwitchMap` 数组（**dex 里没有 synthetic 标记**，容易被误算成"未还原"）；
- 因此"新增一个类"会让分母变大、百分比**下降**，只有**绝对命中数**可比。

当前基线（589 类）：方法 ~79%、字段 ~70%，成员映射 3740+ 条，`verify_members` 不一致 0。

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

| 工具 | 作用 |
|---|---|
| `tools/coverage.py` | 精确覆盖率（口径见 §7） |
| `tools/verify_members.py` | 成员映射一致性（含 R8 白名单） |
| `tools/rescore.py` / `typeprop.py` | 类级重打分 / 描述符+super 投票 |
| `tools/keyclass.py` / `findclasses.py` | 用 JGitText 键 / 类型邻域找未映射的 jgit 类 |
| `tools/jgittext.py` | 用 JGitText 消息键给成员定名 |
| `tools/javadiff.py` / `fieldctx.py` / `fielddiff.py` | jadx 反编译产物 vs 源码的结构对齐 |
| `tools/anonmap.py` | 单引用者类 → `<外层>$N`（同时解决跨包访问） |
| `tools/nop_clinit.py` / 接口字段修复脚本 | 修 dex2jar 产物缺陷（§3） |
| `tools/sync_maps.py` | 从 tsrg 重建 mappings.txt（头部固化在 `mappings_head.txt`） |

> 所有脚本的共同纪律：**按 `.class` 描述符定位类，不按文件名**（§1）。
