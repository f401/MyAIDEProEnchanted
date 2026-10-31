# 注意事项 / 坑

> 真相在哪、TSRG2 基础语法、构建步骤分别见 [process/README](../process/README.md)、
> [BUILD](BUILD.md)、[VERIFY](VERIFY.md)。这里只记**工具不会自动拦、踩到会崩**的东西。

## 1. 覆写 / 接口一致性（最致命）

- 同一成员的“祖先 + 所有实现/覆写”必须映射成同一个名字，否则运行期 `AbstractMethodError`
  或分派到父类实现。`inherit_check.py` 的 `CONFLICT` / `MISSING` 都必须为 0。
- **第三方接口要双侧一起改**：jsch 的 `UserInfo` / `UIKeyboardInteractive` 方法名在 dex 里也是混淆的，
  `com/jcraft/jsch/*` 与实现者 `abcd/lI` 必须同时改成真名，FART 会重写 jar 内 180+ 处引用。只改单边必崩。
- 跨包之后 package-private 虚方法不再构成覆写，靠 `widen_access` 放宽（现在是 **public**）。

## 2. 重复目标 / 幽灵成员

- 类级重复：两个探针映射到同一 FQN ⇒ `rebuild_tsrg.py` 直接中止。
- 成员级重复：同类里两个成员映射到「同一新名 + 同一描述符」⇒ D8 报
  `Ignoring an implementation … because it has multiple definitions` 并任选一份丢弃。
  `validate_mappings.py` 抓显式的 `dup-member-target`；**FART 兜底造成的重复**由
  `inherit_check.py` 的 `DUPTARGET` 抓（未映射的 override 被祖先名字兜底后撞车）。
- 幽灵成员（mapping 里有、dex 里没有）⇒ FART 静默忽略但会误导推理，`validate` 的 `no-method/no-field`。
- **`<init>` / `<clinit>` 绝不能改名**：方法体里的 `invokespecial <init>` 仍按旧名找，
  改成一个普通名字后，那段 `this(...)`/`super(...)` 就变成"在普通方法里调用未初始化引用"，
  运行期 `VerifyError: Expected initialization on uninitialized reference`。
  `validate` / `validate_mappings` 都会报 `special-rename`（基线里修掉过一例：
  `RevWalk.<init>(ObjectReader)` 被误映射成 `parseBody`）。

## 3. FART 的坑

- **输入必须是原始 jar**（`process/base/merged_ok.jar` 或 `process/src/*.jar`）。
  `widen_access` 的产物可以喂（实测 12.8s 通过）；会让 FART 崩的是“把所有类都改成 public”的
  `merged_pubcls.jar`，那是另一个东西。
- **不要逐 jar 出包**：逐 jar 的 widen 看不到别 jar 的引用，跨 jar 的 package-private 会漏。
  链路固定为 `fix_try → widen(merged_ok) → FART(merged_pub) → D8 → 多退少补回填`（[BUILD](BUILD.md)）。
- 同一输入同一 mapping 跑两次，产物必须内容一致（`jar_manifest.py` 比对）；不一致说明还有
  `MISSING` / 名字不一致，FART 在沿继承链兜底。
- **改内部类名会自动同步 `InnerClasses.innerName`**（FART 用 ASM 处理），不用手改；但目标名必须保持
  `Outer$Inner` 形状，否则 D8 报 `Malformed inner-class attribute`
  （`abcd/Hz$b → abcd/aide/HttpRequest$HttpConnectionFactory`，不是 `abcd/aide/HttpConnectionFactory`）。
- **跨包访问有四类，`widen_access` 全要管**：成员引用、类级访问（`new`/`checkcast`/`const-class`/
  `instanceof`/`anewarray`）、继承（`extends`/`implements`）、override 家族。漏任何一类都是运行期
  `IllegalAccessError`（措辞分别是 `Method … is inaccessible` / `Illegal class access` /
  `superclass/interface access`）。
- **放宽 access 时不能只 `| ACC_PUBLIC`**：原先是 `protected` 的会变成 `public protected`（0x5），
  dex 校验直接拒绝（`Field may have only one of public/protected/private`）。
  必须 `acc & ~(private|protected) | public`；工具写完后会自检冲突数。

## 4. 大小写不敏感文件系统

`/storage/emulated/0` 是 FUSE（大小写不敏感）：`qF$a.smali` 与 `qF$a.1.smali`、`abcd/ji` 与 `abcd/JI`
会互相覆盖。**类名到文件名的映射必须查 `process/truth/smali_index.tsv`**，不要用 `类名.smali` 直接拼。

## 5. 覆盖率口径

- 分母只取 3.7.1（R8 是否删掉以它为参照）：当前未入分母 方法 890 / 字段 496，所以不可能 100%。
- **命中判定要看所有 oracle 版本**：AIDE 的 jgit 是 3.7.1 为基的混合版，222 条“版本差异”其实是真名，
  只查 3.7.1 会把它们误判成未覆盖（旧口径 89.8% → 现在 99.1%）。

## 6. dex / 反编译产物的缺陷（两个都已由工具处理）

| 现象 | 原因 | 工具 |
|---|---|---|
| `D8: Invalid input code with a call to <clinit>` | dex2jar 把显式 `invokestatic <clinit>` 留在方法体里 | `nop_clinit.py` |
| `ArrayIndexOutOfBoundsException: length=N; index=N`（`Config$StringReader.read`） | **AIDE 的 dex 本身** try 范围不含 `aget`（`try_item` = `start 0 / count 8`），偏离 jgit 源码 `try { return buf[pos++]; } catch` | `fix_try.py`（11 条基线，必须在 widen 之前） |

## 7. 构建 / 签名

- 原作者签名私钥**不在仓库**；自备 keystore，覆盖安装要先卸载。
- 顺序 `zipalign` → `apksigner`（先签名再 zipalign 会破坏签名）；本机没有这两个工具。
- D8 输出的 dex **个数会变**（按 64K 方法数自动分），回填要"多退少补"，不能 `cp` 固定几个。

## 8. AIDE 对 jgit 的魔改（读代码时的先验）

不要按 3.7.1 源码硬套：

- `ObjectChecker` 改成 boolean 字段；`ReceivePack`/`ReflogWriter`/`RebaseState` 合并进宿主类。
- 自造 `cached-packs` 索引（`ObjectDirectory.cachedPacksFile/scanCachedPacks`，对应 5.x 的 `LocalCachedPack`）。
- 多处用 `String` 代替 `AnyObjectId` 的重载（`getLooseObjectSize(curs,String,id)` 等）。
- `doFetch/doPush` 去掉 `OutputStream` 参数；`CommitCommand`/`RebaseCommand` 的私有方法少参。
- `DeltaWindow` 重写成“环形下标窗口”（`next/prev/advanceCur`），`search` 带 `ProgressMonitor` + 区间。
- 部分类整段是 AIDE 自写（HTTP 客户端一族、JSON 解析器、时间提供者），jgit 里根本不存在。
