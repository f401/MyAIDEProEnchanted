# jgit 命名映射 · 待复核清单

类级映射来自「稀有字符串 → 引用邻居传播 → 交叉复核」三阶段，
成员级来自「签名 / 方法体 / 调用点 / 立即数常量」四类判据。
下列类在**字段类型构成**复核中与其 oracle 目标不符，需要按顺序复核。

## 判据

比较探针类与目标类的**字段类型多重集**（类型按类映射表翻译后再比）。
方法能对上、字段全错的类，几乎一定是类名判错。

复核一个类时：改名 → 作废其名下全部成员映射 → 重新做成员匹配。

## 清单（按可疑度排序）

| 探针 | 现映射 | 探针字段 | 目标字段 | 说明 |
|---|---|---|---|---|
| `abcd/_J$a` | `dircache/DirCacheCheckout` | `int, byte` | Repository/HashMap/ArrayList×3/ObjectId×2/DirCache/DirCacheBuilder/NameConflictTreeWalk/WorkingTreeIterator/Z×2 | ✅ **已确认错**：`_J$a` 在 `WorkingTreeIterator` 里被当作内部状态类使用，字段 `{int,byte}` 与 `WorkingTreeIterator$Entry` 吻合。定为 `WorkingTreeIterator$Entry` |
| `abcd/AE` | `notes/NoteMap` | `int×4, **`Note[][]`** | ObjectReader, InMemoryNoteBucket | ✅ **已确认错**：探针是 `int×4 + Note[][]`（哈希表结构）+ `clear/size/iterator`，NoteMap 只有 2 个字段且无 clear/size。注意它名下的 `contains`/`getNote` 是**假证据**（NoteMap 恰好有同名同形状方法） |
| `abcd/AE$a` | `notes/Note` | `Note` | ObjectId | 可疑：`Note` 的字段是 `data:ObjectId` |
| `abcd/IF` | `api/ApplyCommand` | `FileHeader` | `InputStream` | 可疑：ApplyCommand 只有 `in:InputStream` |
| `abcd/cC$a` | `internal/storage/file/CachedObjectDirectory` | `File` | ObjectIdOwnerMap, ObjectDirectory | 可疑 |

字段指纹存在多方并列（如 `{int,byte}` 同时匹配 3 个 oracle 类），
所以复核时必须叠加：方法形状多重集 + 父类 + 已有成员映射的自洽性。

## 假证据陷阱（重要）

类名匹配时，若目标类恰好有与被匹配方法同名同形状的成员，会产生**虚假支撑**。
`AE -> NoteMap` 就是这样：`contains(ObjectId)Z` 和 `getNote(ObjectId)Note` 完全对得上，
但字段构成（`int×4 + Note[][]` 的哈希表 vs NoteMap 的 `reader + root`）直接推翻它。

结论：**任何类级判定都必须过字段构成这一关**，成员名对得上不算证据。

## 已修正

- `abcd/OI`：`BatchRefUpdate` → **`RefUpdate`**
  判据：探针字段是两个 `ObjectId` + `Ref` + 两个内部类 + 两个 `String`，
  与 `RefUpdate(newValue/oldValue/expValue/result/ref)` 吻合；
  `BatchRefUpdate` 的字段是 `refdb/commands/三个布尔量`，完全不符。
  连带修正 8 条成员映射（`ref`/`result`/`name`/`refLogMessage` 及其 getter）。

## 成员级已知上限

以下属于**静态证据原理上不可分**，不再投入：

- `AI` PackParser 的 `(SmallObject|LargeObject, Delta)Delta` 四路重载；
- `EH` DeltaIndex 的 3 行数学/哈希工具函数；
- `_J` 的 4 个 `getXxxAttributesNode`（方法体完全相同）；
- `iC` 已用「立即数常量」判据解决（`0x20/0x2b/0x2d` → `writeContextLine/writeAddedLine/writeRemovedLine`）。

---

# 第二轮复核（2025，R8 全量类映射审计）

## 0. 先把工具修对：access_flags 被当成 attributes_count

`tools/jvmbody.py` 里解析 class 成员时把 `(access_flags, name, desc, attrs_count)`
的**第 4 个** u2 当成了访问标志，于是：

- 所有「static / synthetic / bridge」判定恒为假 → 早期自动匹配实际上没用到这些判据；
- 覆盖率分母把「探针没有的方法」也算进去了 → 分母虚高。

修正后 **口径写死在 `tools/coverage.py`**：

- 方法分母：oracle 方法去掉 `<init>`/`<clinit>`/`ACC_SYNTHETIC`（含 `access$NNN`）/bridge/`values`/`valueOf`，
  **且**该成员在 abcd 类里存在「描述符(经类映射归一)+static 一致」的对应者（R8 删掉的不入分母）；
- 字段分母：oracle 字段去掉 `this$0`/`$assertionsDisabled`/`serialVersionUID`/`ACC_SYNTHETIC`，同样要求在 abcd 侧存在对应者。

**修正后基线（314 类）**：方法 **1366/1609 = 84.9%**，字段 **589/865 = 68.1%**。
（旧值 1536/1908=80.5%、661/1266=52.2% 分母口径不同，不可直接比较。）

## 1. 本轮修正（commit d4356a72）

| 探针 | 旧 | 新 | 判据 |
|---|---|---|---|
| `abcd/GF` | `nls/TextBundle`（不存在于任何 jgit 版本） | `nls/TranslationBundle` | 字段原名 `effectiveLocale`/`resourceBundle` + `j6(Locale)V` = `load()`（`getClass().getName()` + `ResourceBundle.getBundle`） |
| `abcd/DF` | — | `nls/GlobalBundleCache` | `static Map<Locale,Map<Class,TranslationBundle>>` + `synchronized lookupBundle`（`newInstance` + `load`） |
| `abcd/FF` | — | `nls/NLS` | `ROOT_LOCALE=Locale("","","")`、`InheritableThreadLocal<NLS>`、`ConcurrentHashMap<Class,TranslationBundle>`、`get`/`getBundleFor` |
| `abcd/EF` | — | `nls/NLS$1` | `EnclosingClass=FF`，`initialValue()->new NLS(Locale.getDefault())` |
| `abcd/zK` | `util/FS` | `util/FileUtils` | 6 个 static File 方法按委托链+`File.mkdirs/mkdir/delete` 定名；FS 是抽象实例方法类 |
| `abcd/lH` | `dfs/DfsPackFile` | `file/PackReverseIndex` | `ctor(PackIndex)` + `findObject(J)ObjectId` + `findNextOffset(JJ)J` + 桶数组 |
| `abcd/OA` | `transport/UploadPack` | `api/AddCommand` | `extends GitCommand`、`call()->DirCache`、`filepatterns`/`workingTreeIterator`/`update` |

> `TextBundle` 这条 `seed:9.9` 是**伪造 seed**：jgit 3.7.1/4.x 都不存在该类，同目录的
> `TranslationBundle` 才是它。凡 `seed:9.9` 的 43 条都值得逐条重验（本轮已扫，其余 42 条结构自洽）。

## 2. 新发现的硬约束

`abcd/X$y` 的 abcd 探针**绝大多数**对应 oracle 的「命名内部类」，且父前缀一致
（现有 79 条命名内部类映射 100% 满足，`xJ$d$b -> TransportHttp$Service$HttpOutputStream` 这种二级嵌套也对）。
**例外**：`abcd/PK -> util/SystemReader$Default`（扁平探针指向命名内部类）内容铁证如山
（`openUserConfig`/`openSystemConfig`/`getHostname`/`getenv`/`getProperty`/`getCurrentTime`/`getTimezone`
+ 字符串 `localhost`/`.gitconfig`/`etc`,`gitconfig`），说明 R8 的命名**不严格保持**父子关系。
所以嵌套规则只能当「强提示」，不能当证明。

## 3. 仍需复核的类（本轮审计找出的 10 条，未改映射）

每条都给了**决定性矛盾**（构造器描述符或字段构成），但 R8 full-mode 的类合并
（水平合并同形状类）与 AIDE 对 jgit 的私有补丁都可能造成假矛盾，故本轮只记录不改。

| 探针 | 现映射 | 矛盾点 | 下一轮优先做法 |
|---|---|---|---|
| `abcd/OG` | `lib/ObjectReader` | 探针 `ctor(JJILPackFile;GG;)V` + 7 字段（`J,J,J,PackFile,GG,I,I`）+ `open(WindowCursor)InputStream`；`ObjectReader` 是抽象类、无此构造器 | 在 `PackedObjectLoader`/`LargePackedWholeObject`/`DeltaObjectLoader` 里定；父类 `abcd/FE`（与 `PG` 同父）须先定 |
| `abcd/MG` | `internal/storage/file/FileObjectDatabase` | 探针 `ctor(ObjectReader,I,J,InputStream,ObjectDirectoryInserter,WindowCursor,File,ObjectId)` + 只有 `close()`；目标字段是 `File directory/objects/infoDirectory…` | 与 `OG` 一起处理（同一「对象加载/解包」族） |
| `abcd/IF` | `api/ApplyCommand` | 探针 `ctor(FileHeader)V`、只有 1 个字段 `FileHeader`；`ApplyCommand` 的构造器是 `(Repository)V`，字段是 `InputStream` | 探针 `super=abcd/JF$a`，先定 `JF`/`JF$a`（`patch/FileHeader` 族） |
| `abcd/sJ` | `transport/SshSessionFactory` | 探针 `ctor(TransportGitSsh)V`、字段 `TransportGitSsh`、`getSession(URIish,CredentialsProvider,FS,I)->RemoteSession`；目标是抽象无参构造、无字段 | 探针 `super=abcd/cJ`；`tI=JschConfigSessionFactory` 反推 `cJ=SshSessionFactory`，则 `sJ` 应是其**内部类** |
| `abcd/cC$a` | `internal/storage/file/CachedObjectDirectory` | 探针 `super=abcd/cC`，且 `abcd/cC$d` 已定为 `diff/ContentSource$WorkingTreeSource` ⇒ `cC` 应是 `ContentSource`；`CachedObjectDirectory` 的父类是 `FileObjectDatabase` | 在 `ContentSource` 的命名内部类里选（`ObjectReaderSource` 方法全对，但字段是 `File` 而非 `ObjectReader`） |
| `abcd/XG$b` | `internal/storage/file/GC` | 探针 `final`，2 字段 `[PackFile` + `LG`，`ctor(LG,[PackFile)`；`GC` 是巨型类 | 先定 `XG`；`rescore` 最像 `ObjectDirectory$PackList` |
| `abcd/nH$d` | `internal/storage/file/ReflogWriter` | 探针 `ctor(abcd/nH, KK)`、字段 `int`+`KK$a`×2+`KK`+`nH`，字符串 `refs/`/`HEAD`/`/`；`nH$c`/`nH$e` 指向 `RefDirectory$LooseScanner`/`$LooseSymbolicRef` ⇒ `nH=RefDirectory` | 在 `RefDirectory` 的内部类里选（3.7.1 无 `ReflogWriter` 内部类，可能是版本差异） |
| `abcd/gE$a` | `lib/ConfigLine` | 探针 `ctor(ConfigLine)V`（synthetic）+ 6 个 `String` 字段 + `static (String,String)Z`×2 | `abcd/gE$b` 已定 `Config$SectionParser` ⇒ `gE=Config`，在 `Config$ConfigEnum`/`Config$StringReader` 里选 |
| `abcd/AI$b` | `lib/ObjectInserter` | 探针 `ctor()V`/`ctor(ObjectInserter)V`、字段 `ObjectId/byte[]/ObjectInserter/AI$f×2`；`ObjectInserter` 是抽象类 | `AI=PackParser`，在 `PackParser$ObjectTypeAndSize`/`$DeltaChain`/`$UnresolvedDelta` 里选 |
| `abcd/pF` | `merge/MergeAlgorithm` | 字段/方法配对 0/2；目标是抽象算法类 | 与 `sC/oC/qC`（`MyersDiff`/`HistogramDiff`/`LowLevelDiffAlgorithm`）一起按父类链复核 |

> `abcd/PK -> util/SystemReader$Default` **保留**：内容与目标 1:1（见 §2）。

## 4. 下一轮工具

- `tools/coverage.py`：精确覆盖率（口径见 §0）
- `tools/rescore.py`：TF-IDF 类级重打分（输出 `~/out/work/rescore.tsv`，含每类 top-3 候选）
- `tools/hier_audit.py`：层级一致性（探针 `super`/`implements` 的映射目标必须等于 oracle 的）
- `tools/cls2txt.py`：探针/oracle 成员对照（`python3 tools/cls2txt.py OA org/eclipse/jgit/api/AddCommand`）
- `tools/inner_cmp.py`：父类全部命名内部类的指纹 vs 探针指纹
- 注意：`hier_audit.py` 的 71 条冲突里，绝大多数是因为**父类探针本身还没映射**，
  只有「父类已映射」的那几条才是真冲突。

### §3.1 上表里已定的一条：`abcd/IF` → `patch/HunkHeader$1`

`javap` 给出 `HunkHeader$1 extends HunkHeader$OldImage`，字段 `final FileHeader val$fh`，
构造器 `(FileHeader)` —— 与探针（`super=abcd/JF$a`、字段 `FileHeader`、`ctor(FileHeader)`、无其他字段）
逐项吻合。同时确认 `abcd/JF$a` = **`HunkHeader$OldImage`**（抽象、4 个 int、`getStartLine`/`getLineCount`/
`getLinesDeleted`/`getLinesAdded`、抽象 `getId()`），补进映射表（类级，无成员映射）。

注意这条**符合**「扁平探针 ↔ 匿名类」的规则（`IF` 无 `$`，目标是 `$1`），
说明 `$` 命名规则是：**命名内部类 ↔ 带 `$` 的探针；匿名类 ↔ 扁平探针**，
`PK -> SystemReader$Default` 属于 R8 合并/命名顺序造成的例外。

`abcd/IF` 原先的 `api/ApplyCommand` 作废（构造器 `(Repository)V` vs `(FileHeader)V`，且字段是 `InputStream`）。

## 5. 第三轮进度（本次会话末）

- 类映射 **317** 条；成员映射 **2705** 条。
- 覆盖率：方法 **1468/1652 = 88.9%**，字段 **638/878 = 72.7%**，完全覆盖类 225。
- 新增类：`FE=lib/ObjectLoader`、`JE=lib/ObjectStream`、`JE$a=lib/ObjectStream$Filter`、
  `GG=file/FileObjectDatabase`、`IF=patch/HunkHeader$1`、`JF$a=patch/HunkHeader$OldImage`、
  `sJ=transport/TransportGitSsh$2`，以及 nls 三件套；修正 `PG=file/LargePackedWholeObject`（字段名由
  getter 方法体 `iget` 反推）。
- 丢弃：`OG`（3.7.1 无 `openStream(WindowCursor)` 的类，形似 jgit 2.x 的 `PackedObjectLoader`）、
  `MG`（父类 `ObjectStream$Filter` 在各版本 file 包无对应子类）。两条都记在
  `~/out/work/jgit_unverified.tsv`。
- 批量补名用 `tools/gapfill.py`：类别质量闸（≥0.6 配对率、排除 7 个待定类）+ 唯一签名，一次补 1139 条，
  `tools/verify_members.py` 的不合格数没有变化（11 条）。
- 剩余 11 条不合格成员名（BC.findRenames、KC.newInCore/writeTo、UE.renameRef、jJ.register/scan、
  qG.lookupAny、uH.getOpenBytes、wH.inflate/newObjectToPack、HI.advertiseHaves）需要方法体判据或先定类。
