# 按作用命名（`abcd/aide/restored/`）——判据、编号规则与"不命名"清单

> 这一批类**没有真名可依**（oracle 里没有对端，或对端本身也是混淆名）。
> 目标不是"看起来像真名"，而是把**字节码里能读出的事实**写成一个可读标签，
> 并把"凭什么这么叫"逐条留在 `jobs/engine/class_map.tsv` 第 3 列。

## 1. 为什么单独开一个包

- `abcd/aide/engine/**` 是**已确认属于引擎接入层**的类（有调用形状/串可依）；
- `abcd/aide/restored/**` 是**只有作用、没有身份**的类：接口/父类/字段/串能说明它"干什么"，
  但说不出它"原本叫什么"。
- 单独成包的好处：`grep restored` 就能列出全部"按作用命名"的类，审阅时不会和真名混淆；
  将来若找到更强判据（新 oracle、上游源码），只改这一个包里的条目。

## 2. 命名规则（按硬度从高到低，命中即停）

| 级别 | 判据 | 例 |
|---|---|---|
| 1 | **AIDL 描述符字面量**（`attachInterface`/`enforceInterface` 里的全名） | `cQ` → `tv/ouya/console/internal/IStringListener` |
| 2 | **AIDE+ 2.3.5 引擎 jar 的真名对端**（串 ≥2 条且结构相容） | `vj`/`Cz`/`kA`/`sd`/`Je` |
| 3 | **唯一串**（长串、且在整个 oracle 里只有一处） | `Cz` → `CertificateChainCleaner` |
| 4 | **接口/父类 + 独有方法形状** | `gf` → `ClipboardCommand`（`MenuCommand` + 串 `clipboard`） |
| 5 | **接口作用 + 序号**（同族无区分信息） | `MenuItemCommandImpl1..N`、`RunnableTask1..N` |
| 6 | **字段/方法形状**（无接口、无串） | `IntArrays`、`UuidFormatter`、`ByteArrayWriter` |

**先看引用关系，再看形状**（2026-11 修订，用户要求）：

1. **谁用它**（`refs.txt`：哪些类把它当字段类型/参数/返回值/被调方）；
2. **它调谁**（常量池里的方法/字段引用，能翻译成真名的先翻译）；
3. 两条都指向**同一个具体角色**时才取名，例如
   * `Oz` 的唯一使用者是 `FileStoreImpl`、形状恰好是 `interface File getFile()` ⇒ fabric 的 `FileStore`（真名）；
   * `Dz` 的 `<clinit>` 读 `HttpMethod.values()` ⇒ `SwitchTableHttpMethod`；
   * `kf` 的使用者是 `CreateFolderValueRunnable` 且调 `FileSystemUtils` ⇒ `CreateFolderCommand`。
4. **引用关系只给出「某子系统的一个 Runnable/命令」这种程度时，不取名**（回到留白）。
   这一轮把此前按形状编号的 83 个名字（`RunnableTask1`、`Data14`、`MenuCommandImpl3`…）
   **全部删掉**——它们只是把 `abcd/X` 换成另一个没有信息量的名字，属于「模棱两可的名字」；
   同时把 18 个有明确引用关系的改成具体名（`LessonRunnerRunnable`、`DownloadExtractRunnable`、
   `LicenseCheckerResult`、`DialogFactory`、`IntSetIterator`、`CreateFolderCommand`…）。

## 3. 明确**不**命名的四类（当前 202 个未映射类的主体）

| 类别 | 数量 | 为什么不命名 | 正确做法 |
|---|---|---|---|
| A 逐字节同形 | 62 | jar 里已经存在同形同串同引用的类（R8 两代 dex 各留一份） | 构建期去重（`tools/build/` 里按类源去重），**不**改名 |
| B 2.3.5 时代副本 | 29 | 与 app 内另一份 `abcd/*` 同源同串（互为两代副本） | 同上；两份都没有真名，改任何一份都会与另一份撞目标 |
| C 内部类、外层未映射 | 30 | `innercheck ②`：探针 `X$y` 不许映射成顶层类；而外层 `X` 本身无名可依 | 等外层有关键判据时成对落名（雪球规则） |
| D 空壳 | 16 | 无字段、无方法、无串（`<clinit>`/`<init>` 之外为空） | 留白；改名只会把 `abcd/X` 换成另一个无信息名字 |
| E 其余 | 65 | GMS/Fabric/dx 内部件，oracle 里只有混淆名；或纯 POJO 无串 | 继续找 oracle（下一版 SDK）或上游源码 |

判据（A/B）是可复现的：
`~/tmp/dupverify.py`（形状+串+引用三元组比对）、`~/tmp/omatch2.py`（串+形状打分，
候选名若已存在于 app jar 即为两代副本）。

## 4. 门禁影响

- `innercheck ②` 会拦"探针内部类 → 顶层目标"，所以 `X$y` 一律用 `Outer$Role`
  （且外层必须同批或已在映射里）。
- `pkgclose` 的"真冲突"从 20 组涨到 29 组：新包 `abcd/aide/restored` 在若干连通分量里
  成了第二个固定包。这些类**没有任何实例化点**（`new-instance` 计数 0），运行期不受影响；
  构建时 `widen_access.py` 会把跨包访问的 package-private 成员放宽。

## 5. 当前基线（2026-11）

```
类 5000 / 方法 19215 / 字段 9733 / 参数 21825 / 注释 33948（= 5000+19215+9733）
TSRG2 57960 行；memberaudit 可校验 1125 / 无 oracle 268 / 可疑 0
4875 → 5075 之后按引用关系复核：删 83 个模棱两可名、改 18 个、新增 8 个 ⇒ 5000 类；未映射 402 → 277
```
