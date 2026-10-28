# jgit 命名映射 · 待复核清单

> 📁 **路径说明（2025 整理）**：本文是逐轮记录，正文里的 `tools/xxx.py` 现已全部移入
> **`tools/jgit/xxx.py`**（顶层 `tools/` 只留 AIDE 侧的资源/迁移工具）。
> 另有两处结论已被后续轮次推翻，正文保留原样以便追溯：
> - §5/§6 关于「dex 嵌套注解优先」的表述 → 见 §13.2（注解脱敏/投毒，已撤销）；
> - `gE$a`/`gE$c` 的内部类命名 → 见 §13.3（保持顶层 `ConfigLine`/`ConfigSnapshot`）。


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

## 6. 第四轮：按「被调用描述符 + 自身形状」批量解阻塞类型（类 410）

新工具 `tools/typesolve.py`：对每个**阻塞类型**（出现在已映射类成员描述里的未映射 abcd 类型）
打分 = 0.45×(该类型上被调用的方法描述符覆盖率) + 0.25×(自身成员形状 Jaccard) + 0.20×(shape 覆盖)
+ 0.10×(super 对齐)；要求领先次佳明显才采纳，采纳后用 `validate_cls` 复核（配对率/super/iface）。

本轮定案（全部 validate 1.00 配对，除注明）：
| 探针 | 判定 | 分项 |
|---|---|---|
| `kI` | `transport/CredentialsProvider` | desc 1.00 |
| `mC` | `diff/HashedSequenceComparator` | 0.84（own 0.75） |
| `XG$b` | `file/ObjectDirectory$PackList` | 0.82（与 `XG=ObjectDirectory` 自洽） |
| `yI$a` | `transport/OpenSshConfig$Host` | 16/16 |
| `CH$a` | `pack/DeltaCache$Ref` | 1/1（super=SoftReference 对上） |
| `UH` | `lib/BitmapObject` | 3/3 |
| `pB` | `api/MergeResult` | 11/11（与 `pB$a=MergeResult$MergeStatus` 自洽） |
| `lF` | `lib/ThreadSafeProgressMonitor` | 16/16 |
| `hC$b` | `diff/DiffEntry$Side` | 枚举消解（DiffEntry 只有 2 个枚举，ChangeType 已被 `hC$a` 占用） |
| `gE$c` | `lib/ConfigSnapshot` | ctor(List,ConfigSnapshot) + 自引用字段 |
| `WI` | `transport/RefSpec` | 26/26 |
暂缓：`HD=ListenerList`(2/5)、`cC$c=ContentSource$Pair`(own 0.60 但多出 `[I`/`()[I`，疑 R8 合并)、
  `GG$a`(匿名,super=Object)、`BH`(0.52 与次佳仅差 0.02)、`VK`(0.71/0.68 分差 0.03)。

调用点对齐（`tools/callsite.py`）本轮仍无产出：剩余未映射成员的**候选数为 0**（不是多候选），
因为描述符里还有未映射类型；调用点证据只对「同 desc 重载」有效，需等类型全部定完。

**最终状态**：类 **410**、成员映射 **3450**、方法 **2205/2729 = 80.8%**、字段 **890/1253 = 71.0%**、
完全覆盖类 **257**、`verify_members` 不合格 **10 条**。

## 7. 第五轮：对着 jgit 源码逐条裁决（成员名不合格项 10 → 3）

从 `~/out/oracle/jgit/jgit-src.jar` 解出 669 个 .java（`~/src/jgit`），按源码逻辑核对：

| 探针成员 | 旧名 | 源码裁决 | 依据 |
|---|---|---|---|
| `BC.FH(ProgressMonitor)V` | findRenames | **rejoinModifies** | 方法体引用 `JGitText.renamesRejoiningModifies` + `pm.update()`；RenameDetector.java:429 的 `rejoinModifies` 正是这一句（`findRenames` 在 3.7.1 根本不存在） |
| `UE.j6(Ref)Ref` | renameRef | **peel** | 方法体只调 `getRefDatabase()`+`peel()`；源码 `Repository.renameRef(String,String)` 是两参数返回 `RefRename`，而 `peel(Ref)` 才是 (Ref)->Ref |
| `uH.FH(WindowCacheConfig)I` | getOpenBytes | **tableSize** | 方法体用 `invalidWindowSize` + `windowSizeMustBeLesserThanLimit` + `Math.min`；源码 `tableSize` 逐字对应（`lockCount` 只有一行 `Math.max`） |
| `KC.DW(File,FS)DirCache` | newInCore | **read** | 体只有 `<init>` + 读方法；源码 `read(File,FS)` = `new DirCache(...)` + `c.read()` |
| `KC.j6(File,FS)DirCache` | （无） | **lock** | 体里 `new LockFailedException`（abcd/dD）+ `c.lock()`；源码 `lock(File,FS)` 逐字对应 |
| `jJ.j6(ClassLoader,String)V` | register | **load** | 体里 `Class.forName` + `getDeclaredFields` + `isAssignableFrom`；源码 `load(ClassLoader,String)`（Transport.java:178） |
| `jJ.aM()V` | scan | **registerByService** | 体里 `Thread.currentThread().getContextClassLoader()` + `Enumeration.hasMoreElements/nextElement` + 调 `load`；源码 `registerByService()`：123 |
| `qG.Hw(AnyObjectId)RevObject` | lookupAny | **lookupOrNull** | 3.7.1 的 `lookupAny(AnyObjectId,int)` 是两参数（已由 `j6(AnyObjectId,I)` 的 `invalidGitType` 分支占用）；一参数两个候选里 `parseAny` 已是 `Zo`，故为 `lookupOrNull` |

**剩 3 条属于「版本差异」而非错名**（3.7.1 的签名与探针不同，名字本身对）：
`KC.writeTo(OutputStream)V`（3.7.1 是 `writeTo(File,OutputStream)`，方法体写 `TREE` 扩展标记）,
`wH.inflate(PackFile,long,byte[],int)`（3.7.1 第 4 参是 `boolean headerOnly`）,
`wH.newObjectToPack(RevObject)LocalObjectToPack`（3.7.1 是 `newObjectToPack(AnyObjectId,int)`）。

另外用源码定了 `cC$c = diff/ContentSource$Pair`：`BC.calculateModifyScore` 的第一参数就是它，
源码签名 `calculateModifyScore(ContentSource.Pair, DiffEntry)`（配对 4/5）。

### 新一轮发现（待下轮处理）

`BH` 的阻塞点都在 `copyObjectAsIs(PackOutputStream, BH, boolean)` / `PackWriter(BH, RevFlag, ObjectWalk)`，
按源码这两处声明的类型是 `ObjectToPack`；但 `ObjectToPack` 已分配给 `abcd/MH` —— **`MH` 很可能是误判**，
需要以 `BH` 为准重新核对这一对。

#### 补充（同轮已核对，撤销上一段的怀疑）

`MH` **确认无误**：`super=PackedObjectInfo`、字段 `(ObjectId deltaBase, int flags, DeltaCache$Ref, int)`、
构造器 `(AnyObjectId,int)` 与 `(RevObject)` —— 与 `ObjectToPack` 的 javap 结果逐项吻合。
所以 `BH` 是**另一个抽象类型**：`BH` 是 `abstract`，方法为 `DW()J`、`FH()Set`、
`j6(ObjectToPack,BitmapObject)Z`、`j6()J`。它在 3.7.1 里对应不上任何抽象类（
`ObjectReuseAsIs.copyObjectAsIs` 在该版本声明的是具体类 `ObjectToPack`），
说明这处是**版本差异**：探针版本把该参数放宽成了抽象基类。`BH` 暂不映射。

## 8. 第六轮：用 11 个 jgit 历史版本做指纹定位（版本假设成立，且推翻 3 条"版本差异"）

`tools/vprobe.py` 把探针上实际观察到的签名当指纹，在 11 个 jar（3.7.1 / 4.0 / 4.2 / 4.4.1 / 4.5.0 /
4.5.7 / 4.9.10 / 4.10 / 4.11.9 / 5.6.1 / 5.13.3）里比对：

**决定性指纹**：`WindowCursor.copyPackAsIs(PackOutputStream, CachedPack, boolean)`
- **只有 3.7.1 有**；4.0 起全部改成 2 参 `copyPackAsIs(PackOutputStream, CachedPack)`。
- 探针里正好存在 `j6(PackOutputStream, BH, Z)V`（3 参带 boolean）→ **AIDE 内置的是 3.7.1 系列**，
  “以 3.7.1 为 oracle” 这个前提成立。

**但上一轮记为“版本差异”的 3 条，实测所有版本签名都一致**（`DirCache.writeTo(File,OutputStream)`、
`WindowCursor.inflate(...,boolean)`、`WindowCursor.newObjectToPack(AnyObjectId,int)`、
`ObjectStream.getType()`），因此它们是 **R8 的签名重写**（参数消除 / 成员删除），不是版本差异：
- `KC.writeTo(OutputStream)`：R8 删掉了未使用的 `File dir` 参数
- `wH.inflate(...,int)`：参数被 R8 改宽
- `wH.newObjectToPack(RevObject)`：签名被 R8 特化
- `ObjectStream`/`ObjectStream$Filter` 缺 `getType()`：无调用者的抽象方法被删

### 由此修掉 2 个类

| 探针 | 旧判 | 新判 | 判据 |
|---|---|---|---|
| `BH` | （未映射） | **`internal/storage/pack/CachedPack`** | 3.7.1 独有签名 `copyPackAsIs(PackOutputStream, CachedPack, boolean)` 的第 2 参数；javap 对得上 `getObjectCount()J`/`getDeltaCount()J`/`hasObject(ObjectToPack, StoredObjectRepresentation)Z`（第 4 个 `FH()Set` 是 R8 合并进来的，配对 3/4） |
| `UH` | `lib/BitmapObject`（**错**） | **`internal/storage/pack/StoredObjectRepresentation`** | `SG=LocalObjectRepresentation` 的父类就是它；`BH.hasObject(ObjectToPack,UH)Z` 再证。成员重定：`DW()I= getFormat`（返回 2 = `FORMAT_OTHER`）、`j6()ObjectId = getDeltaBase` |

`UH` 这次纠错说明：typesolve 的 0.82 分靠的是形状相似（`BitmapObject` 也是 3 方法），
必须用**父类/被调用签名**这类结构性证据复核——`SG` 的父类指向它是决定性的。

**当前**：类 **412**、成员 **3464**、方法 **2227/2745 = 81.1%**、字段 **891/1256 = 70.9%**、
完全覆盖类 **258**、`verify_members` 不合格 **3 条**（全部是 R8 签名重写造成，名字本身正确）。

## 9. 第七轮：JGitText 键做类级识别 + 校验白名单（类 440）

`tools/keyclass.py`：用**类级** JGitText 键集合识别未映射的 jgit 类（键名未被混淆，完全不依赖描述符翻译）。
扫 108 个「引用 JGitText / 引用已映射 jgit 类型」的未映射类，逐个用 `validate_cls` 复核：

| 探针 | 判定 | 配对 |
|---|---|---|
| `sC$a$b` | `MyersDiff$MiddleEdit$EditPaths` | 26/26 |
| `IG` | `file/FileRepository` | 15/15 |
| `IJ` | `transport/UploadPack` | 45/54 |
| `NC` | `dircache/DirCacheCheckout` | 29/32（先与 ApplyCommand 并列 0.50，用配对率裁决：ApplyCommand 0/32 且 super 不符） |
| `pI` | `transport/FetchProcess` | 25/29 |
| `xF` | `merge/ResolveMerger` | 29/37 |
| `DG` | `file/CachedObjectDirectory` | 16/25 |
| `sH`/`AF$a`/`ZF`/`BK`/`_K`/`aJ`/`AH`/`SA`/`MI`/`mH`/`cD`/`oJ`/`tB`/`uD`/`VC`/`fD`/`hK`/`mJ`/`tJ$b`/`tJ$c`/`HD` | 见 commit | 均 ≥0.8 或 super 前缀直接对上 |

几个值得记的裁决：
- `HD=ListenerList`：之前因配对 2/5 被否，`Config.java:80` 有 `private final ListenerList listeners`，
  探针 `Config.FH` 的类型正是 HD → 源码直证，恢复。
- `tJ$b/tJ$c`：与 `TransportGitSsh$SshFetchConnection/$SshPushConnection` 指纹打平，
  用 `super` 区分：`tJ$b.super=abcd/eI(BasePackFetchConnection)`、`tJ$c.super=abcd/gI(BasePackPushConnection)`。
- `AH` vs `GH`：两者都引用了 BinaryDelta 的键；`AH` 的 3 个方法描述符全部命中 BinaryDelta，
  `GH` 11 个方法只命中 2 个 → `AH=BinaryDelta`，`GH` 另寻（它 `extends InputStream` 且有 11 个字段，
  形似 PackFile/PackParser 的流式读取器，暂未定）。

### 校验脚本加 R8 白名单

`verify_members.py` 内置 `R8={(KC,writeTo),(wH,inflate),(wH,newObjectToPack)}`，
这三条是 R8 的参数消除/类型改宽造成的签名差异，不计为错误。现在输出：
**成员映射 3664 条，不一致 0 条，已知 R8 签名重写 3 条**。

### 最终状态

类 **440**、成员映射 **3664**、方法 **2358/2948 = 80.0%**、字段 **953/1376 = 69.3%**、完全覆盖类 **268**。
（R8 删除/无同形对应：方法 856、字段 645，不入分母）

## 10. 「无调用者可否删除」的实测结论：0 个可安全删

用 `tools/deadmembers.py` 统计（判据：全 App 的 smali 里没有任何 `L<类>;-><名>(<描述符>)` 引用）：

- 455 个已映射类里共 **693 个未映射方法**，其中 **163 个全 App 零引用**；
- 未映射字段 **0 个零访问**（每个字段都至少有一处 get/put）。

把这 163 个按「能否安全删除」分类：

| 类别 | 数量 | 为什么不能删 |
|---|---|---|
| 枚举合成 `values`/`valueOf` | 47 | 编译器生成，无源码名；删了会破坏 `Enum.valueOf` 语义 |
| override / 实现接口 | 62 | **静态引用指向接口方法**，实现方法通过虚调用可达（零静态引用 ≠ 死代码） |
| 非 private（public/protected/包内） | 54 | 属于库 API，可能被 AIDE 自身代码或反射调用 |
| **private + 无调用 + 非 override（真可删）** | **0** | — |

结论：**R8 已经做过死代码消除**，真正没人用的成员早被删掉了；剩下"无静态调用者"的成员都仍然可达。
删除对产物没有收益、且有崩溃风险，因此不采用。

### 附带验证：覆写传播也无收益（`tools/override.py`）

原理：若子类方法与已映射的父类/接口方法同名同描述符，则直接继承其名字。
实测 3025 个未映射方法里命中 **0** —— 因为覆写者若父类型已映射，早被"唯一签名"那一步补掉了；
剩下 62 个 override 的父类型本身还未映射（属于结构性不可判）。

## 11. 人工抽查 + 同名冲突裁决

### 抽查（`tools/review.py`）四个高价值类，语义全部吻合

- **UploadPack**：`upload(InputStream,OutputStream,OutputStream)`、`sendAdvertisedRefs(RefAdvertiser)`、
  `negotiate()Z`、`okToGiveUp()Z`/`okToGiveUpImp()Z`、`recvWants()`、`processHaveLines(List,ObjectId)`、
  `reportInternalServerErrorOverSideband()Z`；字段 `pckIn/pckOut/rawIn/walk/db/refs/multiAck/unshallowCommits/packConfig`
- **PackWriter**：`searchForReuse`、`findObjectsNeedingDelta`、`beginPhase`、`pruneEdgesFromObjectList`、
  `sortByName`、`computeName`、`writePack`、`setShallowPack`、`reuseDeltaFor`；字段 `instances/objectsMap/tagTargets/...`
- **DirCache**：`skipOptionalExtension/nextEntry/findEntry/getEntryCount/requireLocked/readFrom/commit/builder/
  write/unlock/writeTree/replace/toArray`；字段 `myLock/liveFile/entryCnt/sortedEntries/SIG_DIRC/ENT_CMP/NO_ENTRIES`
- **RevWalk**：`allocFlag/sort/hasRevSort/parseCommit/parseTree/release/getRewriteParents/
  finishDelayedFreeFlags/reset/getRevFilter`

### 抽查暴露的问题：同名同描述符自相矛盾（36 组）

`verify_members` 只检查“名字存在且形状一致”，查不出“两个探针成员映射到同一个 名字+描述符”。
`tools/conflict_fix.py` 按三级规则裁决：

| 规则 | 结果 |
|---|---|
| 字段：按探针字段类型 == oracle 字段类型 分配 | **6 组**判定（如 `OI.status/type` 的对调被纠正） |
| 方法：JGitText 键集合必须被 oracle 方法覆盖 | **10 组**判定 |
| 方法：两边键集合都为空/都覆盖（无法区分） | 13 组整组丢弃 |
| 其余（无键且判不了） | 9 组整组丢弃 |

裁决后 **同名冲突 0 组**、`verify_members` 不一致 0。代价：成员 3779→3720（净 -59），
换来的是“不再有任何自相矛盾”。

**当前**：类 455、成员 3720、方法 2396/3019 = 79.4%、字段 992/1432 = 69.3%、完全覆盖类 274。

## 12. 字段「上下文推断」（`tools/fieldctx.py`）

思路（针对“字段有引用但访问者集合分不开”的那批）：同一方法内的**字段访问序列**对齐，
用已映射字段当锚点。

- 探针侧：jadx 反编译的 Java 里，把每个方法体中出现过的本类字段按出现顺序列出，已映射的翻译成 jgit 名，未映射的记 `?`；
- 源码侧：同一个方法（探针方法名经 tsrg 翻成源码方法名）里的字段序列；
- 若两边序列等长 → 逐位对齐，`?` 位置的源码字段即为答案；同一字段在多个方法里投票，要求 ≥2 票、占比 ≥60%、且无并列。

采纳 5 条（全部一致票）：`IG(FileRepository).tp=repoConfig`、`RC(DirCacheIterator).XL=currentSubtree`、
`XG(ObjectDirectory).EQ=alternates`、`_F(ObjectWalk).Mr=currVisit`、`mF(TreeFormatter).FH=overflowBuffer`。

字段 992→996（69.6%），`verify` 不一致仍 0。

---

## 13. 第八轮：tsrg 重建出包 + 推翻「dex 嵌套注解优先」

本轮做三件事：**把 mappings.txt 修到能被 FART 吃下**、**查清 dex 注解到底可不可信**、**修正被注解带偏的类名**。

### 13.1 FART "Duplicate entries detected" 的真凶是「头部自身重复」

上一轮以为是 tsrg 陈旧块。本轮分层排查：

| 层 | 检查 | 结果 |
|---|---|---|
| tsv | `awk -F'\t' '{print $2}' jgit_map_clean.tsv \| sort \| uniq -d` | 空 ✅ |
| tsrg 类块 | 611 块 / 589 tsv 类 → 22 个陈旧块 | 已丢弃 ✅ |
| **head** | `mappings_head.txt` 61 块里 **23 个重复块** | **真凶** ❌ |

`mappings_head.txt` 是**两份同样的 AIDE 侧块被拼接**（`abcd/wu → abcd/ApplicationUtils` 出现两次），
且两份成员条数不同（`abcd/Vi` 23 vs 46），所以不能简单 keep-first——
要**按类名分组合并 + 成员行去重取并集**：359 行 → **162 行 / 38 块**。

重建后 `mappings.txt` = 162 + 4302 = 4464 行，两条查重全空，FART 一次通过 →
`~/out/fart/r_v12.jar`（22761 条目 / 659 个 `org/eclipse/jgit/*`）。

### 13.2 dex 的 `InnerClass` 注解是**投毒**的

从 `*_orig_src.apk.orig` 的 5 个原始 dex 里解出全部嵌套注解（`tools/jgit/dex_inner_all.py`）：

- `InnerClass.name` 在 324 个类里只有 **12 种取值**，且**只与后缀字母有关**：
  `$a`→`Landroid/support/v4/media/a;`（201 次）、`$b`→`Lcom/aide/appwizard/runtime/h;`（62 次）、
  `$c`→`Lcom/aide/engine/c$b$i;`（39 次）。`name` 本应是简单标识符，这里是完整描述符。
- `EnclosingClass` 指向诱饵包 `a/b/a/d/*`（"abcd" 逐字符插 `/`）、`a/b/c/*`、`La/ag;`；
  `uJ`/`vJ`/`wJ` 三个不同的匿名类被写成同一个 `Labcd/UM;`（class 文件侧是 `abcd/xJ`）。
- `accessFlags` 可信；`name == null` 只能当弱信号（与 `anonmap` 判定 107 一致 / 37 不一致）。

**结论：`$` 只反映混淆器命名分组，不是"真嵌套"的证据；dex 注解的 name/EnclosingClass 一律不采信。**
取证细节与偏移坑见 `docs/JGIT-METADATA.md`。

### 13.3 由此修正 / 撤销的三条

| 探针 | 旧 | 新 | 依据 |
|---|---|---|---|
| `abcd/gE$a` | `Config$ConfigLine`（上一轮按注解改，尚未落地） | **`ConfigLine`（顶层，保持原样）** | 6 个 String 字段 + `forValue`/`match`×2/`eq*`×2/`toString`，与 3.7.1 `ConfigLine` **1:1** |
| `abcd/gE$c` | `Config$ConfigSnapshot`（同上） | **`ConfigSnapshot`（顶层，保持原样）** | `List<ConfigLine>` + `Map` + `ConfigSnapshot baseState` + `(List, ConfigSnapshot)` 构造器 **1:1** |
| `abcd/eI$a` | `BasePackFetchConnection$2` | **`BasePackFetchConnection$CancelledException`** | 探针 `extends Exception` + 私有无参构造；jgit 的 `$2` 是 `$SwitchMap` 合成类（只有一个 `static final int[]`） |

`eI$c → GitProtocolConstants$MultiAck` 保持不动：3 常量枚举 + `BasePackFetchConnection` 有 `private MultiAck` 字段，
且 `MultiAck` 在 3.7.1 里确实是 `GitProtocolConstants` 的 `static enum`（源码第 175 行）。

### 13.4 回退为"未映射"的 22 个类

`conflict_fix.py` 那轮"判不了就整组丢弃"留下 22 个**只有 tsrg 块、没有 tsv 行**的幽灵类。
它们的目标名都被别的探针占了，本轮**整体退出映射**（保留混淆名，功能不受影响）：

```
FE$a GD IH LB PC$a PF QH SG$a UC VB VK dE fE nH$a nH$d oK qD rI
tH$a$$ExternalSyntheticBackportWithForwarding0 xJ$d$a zD zJ$a
```

其中 `nH$d`（曾判 `ReflogWriter`）、`rI`（曾判 `HttpAuthMethod`）此前已进 `jgit_unverified.tsv`。

下一步若要补回来，正确姿势是**成对判定**：同一外层下的匿名类必须整体编号
（例如 `xJ$d$a → TransportHttp$Service$1`、`wJ → TransportHttp$3` 不能都叫 `$3`），
用 `tools/jgit/inner_cmp.py` 打印该外层所有内部类的指纹后统一排序。

### 13.5 本轮后的基线

| 指标 | 值 |
|---|---|
| 类映射 | 589 |
| 成员映射 | 3713（方法 2544 + 字段 1169） |
| 方法覆盖 | 2406/3132 = **76.8%** |
| 字段覆盖 | 1008/1440 = **70.0%** |
| 完全覆盖类 | 303 |
| `verify_members` | 无法校验 0 / 不一致 0 / R8 白名单 3 |
| `mappings.txt` | 4464 行，重复目标 0、重复左值 0 |
| FART 产物 | `r_v12.jar` 22761 条目 |

> 与上一轮"方法 79.4%"的差异**不是退步**：分母因新增类从 3019 涨到 3132，
> 绝对命中数 2396 → 2406（+10）。口径说明见 `docs/BUILD-PITFALLS.md` §7。

---

## 14. 第九轮：把「改名」变成可复现（以及 FART 输出不确定的根因）

本轮的目标不是提覆盖率，而是让**仓库自己能产出和别人一样的 jar**。

### 14.1 基线 jar 入库

`process/base/merged_ok.jar`（25.5 MB）入仓 = FART 的 `--input`。
再加上已有的 `process/src/classes{,2,3,4,5}.jar`（本轮补齐 4/5）和 `mappings.txt`，
**改名这一步不再依赖 `$HOME` 里的任何中间产物**：

```bash
cd process
sha256sum -c SHA256SUMS          # 10 个输入/工具，全 OK
java -Xmx900m -jar ForgeAutoRenamingTool-1.0.8-all.jar \
  --input base/merged_ok.jar --output ~/out/fart/r_v13.jar --map mappings.txt
```

指纹表在 `process/SHA256SUMS`；`r_v13.jar` 的期望内容指纹
`6e440b94…bf6c4b`（`tools/jgit/jar_manifest.py --check` 可校验）。

> 判等**必须用内容指纹**：FART 写 zip 的元数据不稳定，同一输入两次产出差几个字节，
> 但逐类内容相同。

### 14.2 FART 输出**不确定**：真因是「映射没沿继承链闭合」

比对两次独立运行（同输入、同 mapping、同 JDK）→ **3 个类内容不同**，差别在成员名：
`org.eclipse.jgit.lib.Ref.isPeeled` vs `isSymbolic`。

根因链：
1. R8/ProGuard 为保住虚分派，**同一个 override 家族用同一个混淆名**；
2. `abcd/ME`（`Ref` 接口）的两个 `()Z` 方法**完全没映射**；
3. `abcd/BE`（`ObjectIdRef`）把 `Zo ()Z` 判成 `isSymbolic`，`abcd/kF`（`SymbolicRef`）判成 `isPeeled`
   —— 同一家族两个名字；
4. FART 重写 `invokeinterface` 时找不到精确 key，**沿继承链兜底查找**，
   兜底结果取决于 HashMap 顺序 → 每次不同；错的那一半运行时 `AbstractMethodError`/调错方法。

方法体一眼定案（javap -c）：

| 探针 | 方法 | 字节码 | 结论 |
|---|---|---|---|
| `kF`(SymbolicRef) | `Zo ()Z` | `iconst_1; ireturn` | `isSymbolic`（返回 true） |
| `kF`(SymbolicRef) | `Hw ()Z` | `getLeaf().Hw()` | `isPeeled`（委托） |
| `BE`(ObjectIdRef) | `Zo ()Z` | `iconst_0; ireturn` | `isSymbolic`（返回 false） |

修法：给 `abcd/ME` 补 `Zo→isSymbolic`、`Hw→isPeeled`；把 `abcd/kF` 的 `Zo` 从 `isPeeled`
改成 `isSymbolic` 并补 `Hw→isPeeled`（共 3 条净增）。**改完两次运行内容完全一致。**

### 14.3 新工具：`inherit_check.py`

规则：若探针 P 把 `(旧名,描述符)` 映射成 n，而 P 在**混淆侧**的某个祖先也声明了同一个
`(旧名,描述符)`，则祖先必须映射成同一个 n。

```
CONFLICT  祖先映射成别的名字 → 运行时分派错（必须逐条裁决）
MISSING   祖先还没映射 → 调用点靠兜底，结果不确定（可自动继承）
```

首次运行：**CONFLICT 26 / MISSING 78**（去重后 78 个祖先成员）。按规则自动补了 69 条，
再跑 `verify_members.py` 发现 **5 条名字在 oracle 里根本不存在**（自动补的"一致"≠"正确"），
删掉后：`verify_members` 不一致 0、MISSING 降到 **16（去重 14）**、成员 3713 → **3780**。

> 教训：`--apply` 只是省手工，**必须**用 `verify_members` 复核；`CONFLICT` 不能自动改。

### 14.4 剩余待裁决（下一轮的入口）

`CONFLICT 26` 全部是"同一组名字在父子类里被**轮换**配错"，典型三条：

| 子类 | 祖先 | 键 | 子类判 | 祖先判 |
|---|---|---|---|---|
| `abcd/EJ` | `abcd/DJ` | `FH ()Ljava/util/Set;` | getRequiredFields | getSchemes |
| `abcd/EJ` | `abcd/DJ` | `Hw ()Ljava/util/Set;` | getOptionalFields | getRequiredFields |
| `abcd/EJ` | `abcd/DJ` | `v5 ()Ljava/util/Set;` | getSchemes | getOptionalFields |

`abcd/kJ`、`abcd/nJ` 同样继承 `DJ`，说明**要么 `DJ` 三个名字整体轮换错了，要么三个子类错了**。
这类必须拿方法体（谁会调用、返回什么）逐个定，不能靠模式。

另外 `abcd/GJ$a`/`abcd/lJ$a` 继承 `abcd/RJ` 的 `getAlternates`/`getPackNames` 也是成对轮换。

### 14.5 本轮后的基线

| 指标 | 上一轮 | 本轮 |
|---|---|---|
| 类映射 | 589 | 589 |
| 成员映射 | 3713 | **3780**（方法 2611 + 字段 1169） |
| 方法覆盖 | 2406/3132 = 76.8% | **2456/3132 = 78.4%** |
| 字段覆盖 | 1008/1440 = 70.0% | 1008/1440 = 70.0% |
| 完全覆盖类 | 303 | **307** |
| `verify_members` | 不一致 0 | 不一致 0 |
| FART 确定性 | 不确定（3 类漂移） | **两次运行内容一致** |

---

## 15. 第十轮：从 dex 挖剩下的结构关系（+25 类，修 5 类）

### 15.1 先把"还剩什么"清点清楚

`tools/jgit/dex_meta_inventory.py` 的结论（详见 `docs/JGIT-METADATA.md` §6）：
`SourceFile` 7/2788、调试信息 94/20638、参数名 0、`ACC_DECLARED_SYNCHRONIZED` 0、`static_values` 11。
**能给"真名"的元数据已经被清空**，剩下的只有结构关系与形状。

### 15.2 新信号：`EnclosingClass` 的等价关系

值被投毒成诱饵，但**同外层→同诱饵**，因此划分可信（§7）。
`tools/jgit/enclosing_groups.py` 把它变成两类产出：

| 用途 | 结果 |
|---|---|
| 交叉验证 | 已映射成员里只有 2 处与分组矛盾（且这 2 处是分组碰撞的假警报，见 §15.3） |
| 补未映射匿名类 | 一次补 **25 类** |

补的 25 类（`<父目标>$N`，N 取该父下最小空闲号）：
`zJ$a→TransportLocal$3`、`nH$a/$b/$d`、`BE$a/$b/$c→ObjectIdRef$1..3`、`TF$a/$b/$c→DepthWalk$*`、
`TH$c/QH→PackWriter$5/$6`、`cD$a/$c→LargeObjectException$*`、`EG$a/$b→DeltaBaseCache$*`、
`GG$a/$b→FileObjectDatabase$1/2`、`JE$b→ObjectStream$1`、`EE$a→ObjectInserter$1`、
`FE$a→ObjectLoader$1`、`PC$a→DirCacheEditor$2`、`TI$a→RefAdvertiser$1`、`cC$a→ContentSource$2`、
`dE/xc→BatchingProgressMonitor$3/4`、`RI→PackIndex$1`、`cD$b→LargeObjectException$2`。

### 15.3 立刻踩到的坑：分组会碰撞，成员不会

加上去之后 `verify_members` 仍 0 不一致，但 **FART 又变成不确定**（`RefDirectory$LooseScanner` 漂移）。
顺着查下去发现两件事：

1. `RI`：分组说属于 `bH`(PackIndex)，但它的成员 `parse(Labcd/gE;)Labcd/SI$a;` 明确是
   `ReceiveConfig` 的 `SectionParser`。**分组错、成员对** → 回滚成 `BaseReceivePack$ReceiveConfig$1`。
2. `cD$b`：分组说属于 `cD`(LargeObjectException)，但该类没有任何成员证据，
   与 `anonmap` 的"唯一引用者"结论冲突 → 保守回滚成 `DiffFormatter$2`。

> 规则沉淀进 `docs/JGIT-METADATA.md` §7.3：**有成员证据时以成员为准，分组只当交叉验证**。

### 15.4 真正的收获：整个 `RefDirectory` 家族定名

`nH$c` 之前被判成 `RefDirectory$LooseScanner`，但它的形状是：

```
interface abcd.nH$c extends abcd.ME {          //  extends Ref
  public abstract abcd.LG VH();                 //  FileSnapshot getSnapShot()
  public abstract abcd.nH$c j6(abcd.BE);        //  LooseRef peel(ObjectIdRef)
}
```

⇒ 它是 **`RefDirectory$LooseRef`**（接口），不是 `LooseScanner`。顺着把整族摆平：

| 探针 | 形状 | 目标 |
|---|---|---|
| `nH$c` | interface extends Ref，`getSnapShot`+`peel` | **`RefDirectory$LooseRef`** |
| `nH$a` | `extends BE$a` + ctor(FileSnapshot,String,ObjectId) | **`LooseUnpeeled`** |
| `nH$b` | `extends BE$b` + ctor(…,ObjectId,**ObjectId**) 4 参 | **`LoosePeeledTag`** |
| `nH$f` | `extends BE$c` + ctor(FileSnapshot,String,ObjectId) | **`LooseNonTag`**（原记 `RefDirectory$2`） |
| `nH$d` | `RefList<LooseRef>`+`int curIdx`+`Builder` 字段，ctor(RefList) | **`RefDirectory$LooseScanner`** |
| `nH$e` | `extends kF(SymbolicRef)` | `LooseSymbolicRef`（原就正确） |

顺带给 `nH$a/b/c/e/f` 补齐 `getSnapShot`/`peel`（家族闭合），`nH$d` 补 `scan(String)`。
**修完 FART 两次运行内容一致**——和 §14 一样，家族不闭合就是不确定性的源头。

### 15.5 基线

| 指标 | §14 | 本轮 |
|---|---|---|
| 类映射 | 589 | **612** |
| 成员映射 | 3780 | **3790**（方法 2621 + 字段 1169） |
| 方法覆盖 | 2466/3146 = 78.4% | 2466/3146 = **78.4%** |
| 字段覆盖 | 1008/1447 = 69.7% | 1008/1447 = **69.7%** |
| 完全覆盖类 | 307 | **309** |
| FART 确定性 | 一致 | **一致**（`r_v14.jar` 内容指纹 `94be2280…`） |
