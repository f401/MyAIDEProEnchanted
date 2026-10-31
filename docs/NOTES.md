# 注意事项 / 坑

## 0. 真相在哪

`process/truth/<part>/{class_map.tsv, members.tsrg, params.tsv}` 是**唯一真相**（已入库），
part 按来源分：`jgit` / `jsch` / `aide` / `head`，顺序见 `process/deob.json` 的 `parts`；
`process/truth/smali_index.tsv` 是全局索引。工具通过 `tools/jgit/paths.py` 优先读这里，`$HOME/out/work/` 下的同名文件是旧副本，改它们无效。

## 1. 命名与归属约定

| 情况 | 约定 | 例 |
|---|---|---|
| 确认是 jgit | 用 oracle（3.7.1 起，含 4.x/5.x）真名 + 真包 | `abcd/GG → org/eclipse/jgit/internal/storage/file/FileObjectDatabase` |
| 确认是 jgit 的**魔改变体**（任何版本都没有同形） | 留在对应 jgit 包，名字加 `Aide` 前缀按作用命名 | `OG → …/file/AidePackedObjectLoader` |
| 确认是 AIDE 自有（不属任何依赖） | 归入 **`abcd/aide/`** 子包，类名按作用；匿名内部类按编译器风格 `Outer$N` | `Zw → abcd/aide/HttpConnection`、`Di → abcd/aide/Settings$1` |
| 身份未定（可能是依赖/占位） | 留在 `abcd`，保留混淆简单名，evidence 写 `place:` | `abcd/MG` |
| 第三方（jsch 等，整包未混淆） | tsv 里直接写全名，名字保持原样 | `com/jcraft/jsch/UserInfo` |

- **类名等于混淆名的块**只有在“块里还有真实改名的成员”时才保留（TSRG2 的成员行必须挂在类行下）；
  纯恒等块直接删（`filter_head.py` / 手工删 tsv 行）。
- **恒等成员行**（`DW ()Z DW`）没有任何效果，除两种情形外一律不写：① 祖先/子类里对侧已改名，
  需要它保持同名；② 名字本身就是真名、要留档说明。

## 2. TSRG2 语法

- 类行：`probe target`（两列，空格分隔）。
- 方法行：`\t名字 描述符 新名`；字段行：`\t名字 新名`。
- 静态方法的标记是**单独一行、两个 tab**：`\t\tstatic`，必须紧跟在**方法**行之后（字段行后跟会报
  `Invalid TSRG v2 line`）；srgutils 只把它当 `meta("is_static")` 给刚解析的方法。
- 不要用 `\tstatic 名字 描述符 新名` 这种写法（FART 报 too many parts）。

## 3. 覆写 / 接口一致性（最致命）

- 同一成员的“祖先 + 所有实现/覆写”**必须映射成同一个名字**，否则运行期 `AbstractMethodError`
  或分派到父类实现。
- `inherit_check.py` 报 `CONFLICT` = 两侧名字不同；报 `MISSING` = 祖先没映射（FART 会沿继承链
  兜底，产物不确定）——两个都要清零。
- **第三方接口要双侧一起改**：jsch 的 `UserInfo/UIKeyboardInteractive` 方法名在 dex 里也是混淆的，
  我们把 `com/jcraft/jsch/*` 与实现者 `abcd/lI` **同时**改成真名（`showMessage`/`promptPassword`/
  `promptKeyboardInteractive`…），FART 会重写 jar 内 180+ 处引用。只改单边必崩。
- 跨包之后，**package-private 虚方法不再构成覆写**：靠 `widen_access.py` 把两侧放到 `protected`。

## 4. 重复目标

- 类级：两个探针映射到同一 FQN ⇒ `rebuild_tsrg.py` 直接中止。
- 成员级：同一个类里两个成员映射到**同一新名 + 同一描述符** ⇒ D8 报
  `Ignoring an implementation of the method … because it has multiple definitions` 并**任选一份丢弃**。
  `validate_mappings.py` 会列出 `dup-member-target`；修法：按字段读写/调用点证据改成正确名字，
  否则把其中一个回退成混淆名。
- 同名不同描述符（重载）是合法的，不算重复。

## 5. 幽灵成员

映射里写了 dex 里不存在的 `(名字, 描述符)`（多为手抄描述符被截断）⇒ FART 静默忽略，
但会误导后续推理。`validate_mappings.py` 的 `no-method/no-field` 就是这类，直接删行。

## 6. FART 的坑

- **输入必须是原始 jar**（`process/src/*.jar` 或 `base/merged_ok.jar`）。预先做类级 public 化
  （`merged_pubcls.jar`）会让 FART 在个别类上崩；**access 放宽放到 FART 之后**做。
- 同一输入同一 mapping 跑两次，产物必须**内容一致**（`jar_manifest.py` 比对）；不一致说明还有
  `MISSING`/名字不一致，FART 在沿继承链兜底。
- FART 只认 mapping，不会“猜”；mapping 里没有的类/成员一律保持原样。

## 7. 大小写不敏感文件系统

工作目录在 `/storage/emulated/0`（FUSE，大小写不敏感）：`qF$a.smali` 与 `qF$a.1.smali`、
`abcd/ji` 与 `abcd/JI` 会互相覆盖/被加 `.1`/`.2` 后缀。**类名到文件名的映射必须查
`process/truth/smali_index.tsv`**，不要用 `类名.smali` 直接拼。

## 8. R8 剪枝与统计口径

- oracle 里有、APK 里没有槽位（R8 删除或完全内联）的成员**不进分母**：当前方法 890 / 字段 496。
- 所以“覆盖率”不可能是 100%；跨版本比对时注意：AIDE 的 jgit 是**混合版本**（3.7.1 为基，
  部分类来自 4.x/5.x 或 AIDE 自己改写），不要拿单一版本当绝对真理。

## 9. dex2jar 产物缺陷

`D8: Invalid input code with a call to <clinit>` 是 dex2jar 反编译的缺陷（与改名无关）。
用 `tools/jgit/pipeline/nop_clinit.py <in.jar> <out.jar>` 把显式 `invokestatic <clinit>` 换成 NOP 后重试。

## 10. 构建 / 签名

- 原作者签名私钥**不在仓库**；自用请自备 keystore，否则无法覆盖安装。
- 顺序必须是 `zipalign` → `apksigner`；先签名再 zipalign 会破坏签名。
- 换 dex 时注意 `classes.dex / classes2.dex …` 的**顺序与数量**要与原包一致。

## 11. AIDE 对 jgit 的魔改（读代码时的先验）

已知的偏离，不要按 3.7.1 源码硬套：

- `ObjectChecker` 被改成 boolean 字段；`ReceivePack`/`ReflogWriter`/`RebaseState` 合并进宿主类。
- 自造 `cached-packs` 索引（`ObjectDirectory` 里 `cachedPacksFile`/`scanCachedPacks`，对应 5.x 的
  `LocalCachedPack`）。
- 多处用 `String` 代替 `AnyObjectId` 的重载（`getLooseObjectSize(curs,String,id)` 等）。
- `doFetch/doPush` 去掉 `OutputStream` 参数；`CommitCommand`/`RebaseCommand` 的私有方法少参。
- `DeltaWindow` 被重写成“环形下标窗口”（`next/prev/advanceCur`），`search` 带 `ProgressMonitor`+区间。
- 部分类整段是 AIDE 自写（HTTP 客户端一族、JSON 解析器、时间提供者），jgit 里根本不存在。
