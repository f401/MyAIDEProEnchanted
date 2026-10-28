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

---

## 16. 第十一轮：把 26 组"家族冲突"清零

上一轮留下 `CONFLICT 26`。本轮全部裁决完，**CONFLICT 0**。

### 16.1 判定四步法（顺序不能反）

对每一组"父子同名同描述符、判成不同新名"：

1. **数个数**：父类/子类各自声明了几个同描述符方法？只有一个的那个必然是同一方法；
2. **看访问标志**：`final` 不能被覆盖、`private` 不进虚分派、`protected abstract` 必然是被覆盖的那个；
3. **看方法体**：字符串常量（`ldc "sftp"` / `"info/packs"`）、字段读（`getfield schemeSet`）、返回值形状；
4. **看 oracle 的声明**：两个候选方法是不是都真的存在。

> 三条都指向同一答案时才落库；只凭"多数子类这么判"是不够的。

### 16.2 本轮裁决的 10 处

| 族 | 结论 | 关键证据 |
|---|---|---|
| `DJ` = `TransportProtocol` | `v5=getSchemes`，`FH=getRequiredFields`，`Hw=getOptionalFields` | `EJ.v5()` = `ldc "sftp"; Collections.singleton`；`kJ.v5()` = `ldc "amazon-s3"`；`uJ` 的字段就叫 `schemeNames`/`schemeSet`，`v5()` 返回 `schemeSet` |
| `jK` = `TreeFilter`、`yG` = `RevFilter` | `clone ()L自身;` 就是 **`clone`**，不是 `negate` | 两者都只在类里声明**一个** `()L自身;` 方法且名字未被改（`clone` 是 `Object.clone` 家族，R8 保留） |
| `WF` = `FollowFilter` | 删掉幽灵映射 `clone ()LjK;` | `javap abcd.WF` 里**根本没有**这个方法 |
| `RJ` = `WalkRemoteObjectDatabase` | `DW=getAlternates`、`FH=getPackNames` | `xJ$c.DW()` 里 `ldc "info/http-alternates"`/`"info/alternates"`；`xJ$c.FH()` 里 `ldc "info/packs"` |
| `wF` = `Merger` | `FH=getResultTreeId` | 两个子类 `AF$a`/`xF` 都这么判，且 `Merger` 没有第二个 `()LyE;` |
| `wH` = `WindowCursor` | `DW=newReader` | `getShallowCommits()` 返回 `Set<ObjectId>`，与 `()Labcd/IE;`（ObjectReader）不符 |
| `fK` = `PathFilter` | `DW`↔`j6` 互换（`j6=include`、`DW=isDone`） | oracle `PathFilter` 同时有 `include(TreeWalk)` 与 `isDone(TreeWalk)`，而父类 `jK` 只有一个 → 覆盖父类的那个是 `include` |
| `MH` = `ObjectToPack` | `Mr=clearReuseAsIs` | oracle `clearDeltaBase()` 是 **final**，不可能被 `TG` 覆盖 |
| `ZG` = `ObjectDirectoryPackParser` | `EQ=onEndThinPack` | oracle `writeIdx()` 是 **private**；`onEndThinPack()` 是 `protected`（覆盖父类抽象方法） |
| `RE` = `RefUpdate` | `QX=unlock` | oracle `unlock()` 是 `protected abstract`、`disableRefLog()` 是 `public`（非 abstract）；`oH.QX()` 体是"取 lockFile→unlock()→置 null" |

### 16.3 工具同步改进

`inherit_check.py` 现在**只比较虚方法**（排除 `static`/`private`）——非虚方法同名同描述符只是巧合。

### 16.4 剩 13 条 MISSING，且不能自动补

对 `abcd/TJ`(3)、`abcd/GG`(2)、`abcd/_F`(1) 试过"子类名字继承给祖先"，`verify_members` 立刻报 4 条不一致：

```
abcd/GG  FileObjectDatabase.EQ ()LFileObjectDatabase;  → newCachedFileObjectDatabase  ✗ 不存在
abcd/GG  FileObjectDatabase.tp ()[LFileObjectDatabase$1; → myAlternates                ✗ 不存在
abcd/TJ  AbstractTreeIterator.EQ ()V → parseEntry                                     ✗ 不存在
abcd/_F  ObjectWalk.Zo (LRevObject;)V → markRoot                                      ✗ 不存在
```

⇒ 这几条**是子类的名字判错了**（不是祖先缺映射）。自动补只会把错误扩散，已回滚。
下一轮入口：这 4 个成员单独查（谁调用它、方法体做什么）。

### 16.5 基线

| 指标 | §15 | 本轮 |
|---|---|---|
| 类映射 | 612 | 612 |
| 成员映射 | 3790 | **3789**（删掉 1 条幽灵映射） |
| 方法覆盖 | 2466/3146 = 78.4% | 2466/3146 = **78.4%** |
| 字段覆盖 | 1008/1447 = 69.7% | 1008/1447 = **69.7%** |
| `inherit_check` | CONFLICT 26 / MISSING 15 | **CONFLICT 0 / MISSING 13** |
| `verify_members` | 不一致 0 | 不一致 **0** |
| FART | 一致 | **一致**（`r_v16.jar`，manifest `a3ccbd07…`） |

---

## 17. 第十二轮：把 MISSING 从 13 压到 7，并揪出「工具假阳性」

### 17.1 先修工具：祖先侧是 `private`/`static` 时不构成覆盖

`_F`(ObjectWalk) 报 `TF$b.Zo (LRevObject;)V → markRoot` 缺映射，但 oracle 里 `ObjectWalk`
该描述符的方法只有 `private void addObject(RevObject)` —— **private 不参与虚分派**，
两者根本不是同一家族。上一轮只过滤了"子类侧是否虚方法"，这轮补上"祖先侧也必须是虚方法"：

```python
for a in anc:
    if (nm, desc) not in virt.get(a, set()):
        continue        # 祖先那边是 static/private ⇒ 不构成覆盖关系
```

### 17.2 `AbstractTreeIterator` 那两条：名字判错了

| 探针 | 旧 | 新 | 依据 |
|---|---|---|---|
| `UJ`(CanonicalTreeParser) `EQ ()V` | `parseEntry` | **`reset`** | oracle `AbstractTreeIterator` 只有 3 个 `()V`：`reset/skip/stopWalk`；`CanonicalTreeParser` 只覆盖 `reset`（`parseEntry` 是 `(byte[],int,int)`，描述符都不对） |
| `_J`(WorkingTreeIterator) `DW ()Z` | `mightNeedCleaning` | **`hasId`** | `TJ.DW ()Z` 是 `abstract boolean hasId()`，子类同名同描述符必然覆盖它 |
| `_J`(WorkingTreeIterator) `gn ()Z` | `isEntryIgnored` | **`eof`** | 同上，`TJ.gn ()Z` 是 `abstract boolean eof()` |

同时给 `TJ` 补上 `hasId`/`eof`/`reset` 三条，家族闭合。
`mightNeedCleaning`/`isEntryIgnored` 是 `WorkingTreeIterator` 自己的方法，被 R8 起了别的名字，
不能占用 `hasId`/`eof` 的槽位 → 这两条映射**撤销**（记进 `jgit_unverified.tsv` 的等价位置）。

### 17.3 `ObjectDirectory` 那条：描述符宽度不符，先撤销

`XG.EQ ()Labcd/GG;` 曾判 `newCachedFileObjectDatabase`。oracle 里这个方法确实叫
`ObjectDirectory.newCachedFileObjectDatabase()`，但**返回类型是 `CachedObjectDirectory`**，
而探针返回的是 `FileObjectDatabase`（`abcd/GG`）。两者宽度不同 ⇒ 不是同一个方法。
`CachedObjectDirectory` 本身已映射（`DG`），所以问题在探针侧：
`XG` 可能还有一个返回 `DG` 的包装方法被 R8 合并了。

处理：**撤销该条映射**（宁缺勿错），记进 `jgit_unverified.tsv`，等把 `ObjectDirectory`
的方法表整块对完再回填。同理 `XG.tp ()[Labcd/GG$a;` 也撤销——`GG$a` 目前的
`FileObjectDatabase$1` 是分组推出来的临时名，描述符无法归一。

> 这也暴露一个方法论问题：**分组推出来的 `$N` 名字会污染描述符归一化**。
> 凡是"返回/参数类型是分组命名类"的成员，`verify_members` 都会报不一致，属于
> 假阴性，不能直接当成"名字错"。

### 17.4 基线

| 指标 | §16 | 本轮 |
|---|---|---|
| 类 / 成员 | 612 / 3789 | 612 / **3790**（+3 TJ、+1 UJ、+2 _J、−2 XG） |
| 方法覆盖 | 2466/3146 | 2465/3146 = **78.4%** |
| 字段覆盖 | 1008/1447 = 69.7% | 1008/1447 = **69.7%** |
| 完全覆盖类 | 309 | **310** |
| `inherit_check` | CONFLICT 0 / MISSING 13 | **CONFLICT 0 / MISSING 7**（6 条是 jsch 真名接口） |
| `verify_members` | 不一致 0 | 不一致 **0** |
| FART | 一致 | **一致**（`r_v17.jar`，manifest `13a521ca…`） |

剩下的 `MISSING 7` 里 6 条是 `com/jcraft/jsch/UserInfo`/`UIKeyboardInteractive`
（本身就是真名，不需要映射），实际只剩 `abcd/GG` 1 条。

---

## 18. 第十三轮：四件事依次做完

### 18.1 `ObjectDirectory`（`XG`）整块对完 —— 上一轮撤销的两条**回填**了

关键发现：oracle 里 **`ObjectDirectory.myAlternates()` 返回 `ObjectDirectory$AlternateHandle[]`**。

| 项 | 结论 |
|---|---|
| `abcd/GG$a` | → **`ObjectDirectory$AlternateHandle`**（`this$0 = ObjectDirectory`、`close()`；`XG.tp()` 返回它的数组） |
| `XG.tp ()[Labcd/GG$a;` | → **`myAlternates`**（上一轮以"描述符归不了"为由撤销，属误撤） |
| `XG.EQ ()Labcd/GG;` | → **`newCachedFileObjectDatabase`**（oracle 声明返回 `CachedObjectDirectory`，比探针的 `FileObjectDatabase` 窄——形状校验通过） |

### 18.2 「描述符归一化」那条判断错了 —— `verify_members` 本来就是形状比较

上一轮我写"分组推出来的 `$N` 会污染描述符归一化，`verify_members` 会假阴性"。**这是错的**：
`verify_members.py` 的 `shape()` 把描述符里所有对象类型都折成 `O`，本来就**不比对具体类型**，
只比参数个数/基本类型/返回值是否为对象。所以：

- 分组命名**不会**造成假阴性；
- 上一轮那两条失败的真实原因很简单：我把名字改成了 `newCachedFileObject`——
  **这个方法名在 oracle 里根本不存在**（存在的是 `newCachedFileObjectDatabase`）。

结论：**工具不需要改**，需要改的是"不要凭描述符宽度去改名字"。

### 18.3 新工具 `shapefind.py`：用「成员形状多重集 + super」找唯一匹配

给"只出现在别人描述符里、自己没有成员映射"的类型定名：

```
字段多重集（类型 + static/final）与方法多重集（描述符 + static/可见性）双向相等，
且 super 归一化后相同（或两边都是 Object），且全 oracle **唯一**命中 ⇒ 才输出 ★
--loose 模式把描述符里的对象类型折成 O（容忍未映射类型）
```

本轮命中 4 个唯一 + 1 个推断：

| 探针 | 目标 | 依据 |
|---|---|---|
| `XJ` | **`treewalk/NameConflictTreeWalk`** | super=TreeWalk，3 字段 12 方法，全库唯一 |
| `RK$c` | **`util/TemporaryBuffer$Heap`** | super=TemporaryBuffer，0 字段 2 方法，全库唯一 |
| `VJ` | **`treewalk/EmptyTreeIterator`** | super=AbstractTreeIterator，0 字段 14 方法，全库唯一 |
| `nH$g` | **`RefDirectory$PackedRefList`** | super=RefList；RefDirectory 的 Loose* 六个已定名，只剩它 |
| `AB` | **`api/RebaseResult`** | `AB$a` 已是 `RebaseResult$Status` ⇒ 父探针只能是 `RebaseResult` |

`--loose` 对剩下 22 个候选**没有**唯一命中（形状撞车或缺成员），说明这批必须人工看代码，
不能靠形状。

### 18.4 基线

| 指标 | §17 | 本轮 |
|---|---|---|
| 类映射 | 612 | **617** |
| 成员映射 | 3790 | **3792**（方法 2623 + 字段 1169） |
| 方法覆盖 | 2465/3146 | **2467/3185 = 77.5%** |
| 字段覆盖 | 1008/1447 | **1010/1468 = 68.8%** |
| 完全覆盖类 | 310 | 310 |
| `inherit_check` | 0 / 7 | **0 / 7** |
| `verify_members` | 不一致 0 | **不一致 0** |
| FART | 一致 | **一致**（`r_v18.jar`，manifest `6fe2c3ea…`） |

> 百分比下降**不是退步**：分母随新增 5 个类从 3146 涨到 3185，绝对命中数是 2465 → 2467。
> 口径见 `docs/BUILD-PITFALLS.md` §7。

---

## 19. 第十四轮：批量补名 458 条（+ gapfill 两个 bug、`Object` 家族铁律）

### 19.1 `gapfill.py` 的 bug：提案里混进了大量"已映射"成员

`used` 字典的键是**裸名**（`xF`），但筛选时用了 `used[cn]`（`abcd/xF`）——
defaultdict 于是返回空集，`taken` 永远为空 → 已经映射过的成员又被当成候选提出来，
`--apply` 时因为行已存在被跳过，所以**看起来"写了 2024 条"实际只落 94 条**。

修法：`taken={(x[0],x[1]) for x in used[cn.replace('abcd/','')]}`。
修好后真提案 **293** 条（原来报的 2024 里九成是重复）。

### 19.2 `rebuild_tsrg.py` 的 bug：无脑给探针加 `abcd/` 前缀

要给 `com/jcraft/jsch/UserInfo` 落成员映射时，重建脚本把它写成
`abcd/com/jcraft/jsch/UserInfo com/...` —— 一个**不存在的幽灵类**，
真正的块反而被当成陈旧块丢掉。修法：

```python
key = probe if '/' in probe else 'abcd/' + probe     # 探针名可能已带包
```

### 19.3 批量补名的两个副作用（都已处理）

| 现象 | 处理 |
|---|---|
| `CONFLICT` 从 0 冒出 2 条（`MC.resort` vs `IC.finish`、`_F.reset` vs `qG.freeFlag`） | 删掉**子类侧**那两条（父类映射是早先定过的），回到 0 |
| `MISSING` 从 7 涨到 14 | 给 12 个祖先成员补上映射（含 jsch 两个接口的 **identity 类行**——它们的成员在 dex 里也被改名了，必须建块才能落成员） |

### 19.4 新铁律：`java.lang.Object` 的成员**绝不允许改名**

`toString/equals/hashCode/clone/finalize` 一旦被映射成别的名字，
FART 会把这个改名**沿继承链传播给所有子类**（包括未映射的类），后果有两层：

1. **结果不确定**：`QC.toString → getPathString` 让未映射的 `AL/AM` 两次产出不同；
2. **语义破坏**：`toString` 改名后 `String.valueOf`/日志/调试器全部失效。

清扫后 `abcd/QC` 只保留 `v5 → getPathString`（真·`getPathString`）。
出包前的固定检查：

```bash
awk -F' ' '/^\t/ && ($1=="toString"||$1=="equals"||$1=="hashCode"||$1=="clone") && $NF!=$1' \
    ~/out/work/jgit_members_clean.tsrg     # 必须为空
```

### 19.5 基线

| 指标 | §18 | 本轮 |
|---|---|---|
| 类映射 | 617 | **619**（+2 是 jsch 的 identity 类行） |
| 成员映射 | 3792 | **3964**（方法 2719 + 字段 1245） |
| 方法覆盖 | 2467/3185 = 77.5% | **2549/3185 = 80.0%** |
| 字段覆盖 | 1010/1468 = 68.8% | **1067/1468 = 72.7%** |
| 完全覆盖类 | 310 | **350** |
| `inherit_check` | 0 / 7 | **0 / 7** |
| `verify_members` | 不一致 0 | 不一致 **0** |
| FART | 一致 | **一致**（`r_v19.jar`，manifest `e87267b8…`） |

净增 **+172 成员 / +40 完全覆盖类**；剩下 `MISSING 7` 里 2 条是 `FileObjectDatabase`
在 3.7.1 里没有 `newCachedFileObjectDatabase`/`myAlternates`（版本差异），另 5 条待查。

---

## 20. 第十五轮：成员级判据见底 → 转攻类级（+26 类）

### 20.1 先确认成员级工具已经挖不动

| 工具 | 判据 | 本轮新增 |
|---|---|---|
| `javadiff.py`（jadx vs 源码结构对齐） | **0**（`noinner 57 / noapp 164 / ambig 112 / tiny 56`） | 0 |
| `lcs.py`（指令级相似度破重载） | `ambig 267 / nosig 172 / nocand 7` | 3（其中 `qG.retainOnReset` 在 3.7.1 不存在，实际 2） |
| `gapfill.py`（唯一签名） | 已榨到 167（多数是新增类带出来的） | 167 |

结论：**成员级的三条主判据已经到边际**，剩下的 669 条"多候选"要靠人工读码。

### 20.2 新工具 `shapescan.py`：O(n) 全库形状扫描

和 `shapefind.py` 同一判据（字段/方法多重集 + super），但用**哈希桶**建索引，
一次扫完 2745 个未映射类（`shapefind` 是两两比较，只能小批量用）。

两条安全规则：

1. **同一目标被多个探针命中 → 整组丢弃**（本轮 `BaseReceivePack$Reporter` 被 `SI$b` 和 `ck$a` 同时命中）；
2. 目标名不能已被占用、探针不能已在 tsv 里。

结果：`strict 唯一 15 / 多候选 50`，`--loose 唯一 35 / 多候选 144`，共落 **26 个类**。

### 20.3 命中的一致性（这是最让人放心的部分）

同一父类下的兄弟被**一起**命中，互相印证：

| 探针 | 目标 | 交叉印证 |
|---|---|---|
| `VI` | `transport/RefFilter` | `UI → RefFilter$1`（`$1` 必须嵌在 `RefFilter` 里）✓ |
| `VK$a` / `VK$b` | `InterruptTimer$AlarmState` / `$AlarmThread` | 两个内部类同父 ⇒ **`VK` = `util/io/InterruptTimer`** |
| `RK$c` / `RK$b` | `TemporaryBuffer$Heap` / `$BlockInputStream` | 同父 ✓（`RK` = TemporaryBuffer） |
| `PD$a/$b/$f/$g` | `GroupHead$CharacterPattern/$CharacterRange/$OneCharacterPattern/$PunctPattern` | 同一 `PD` 下四个都命中 ✓ |
| `xJ$d$a` | `TransportHttp$Service$HttpExecuteStream` | 上一轮被当成"陈旧块"丢掉的类，现在定名了 |

其他：`FH→DeltaIndexScanner`、`KH→IntSet`、`TK→DisabledOutputStream`、`zC→RawTextComparator`、
`NE→RefComparator`、`RD→fnmatch/LastHead`、`Sw→TreeFilterMarker`、`NF→BlockObjQueue`、
`iL→CheckoutEntry`、`qF→MergeChunk`、`vE→NullProgressMonitor`、`_D→AsyncObjectSizeQueue`、
`RE$b→RefUpdate$Store`、`eE$a→BatchingProgressMonitor$Task`、`jG$a→RevObjectList$Block`、
`pK$a→FS$Holder`、`IH$a→DeltaWindow$ZipStream`、`Yz→ArchiveCommand$FormatEntry`、
`LP→IndexDiff$1`、`Iz→JDKHttpConnectionFactory`、`LJ→UploadPackLogger`、
`bL→UnionInputStream$1`、`WK→MessageWriter`、`XK→SafeBufferedOutputStream`、`ZK→TeeInputStream`、
`AI$b→PackParser$DeltaVisit`、`QF$a→DateRevQueue$Entry`、`gE$d→Config$StringReader`。

> `gE$d → Config$StringReader` 顺便印证了 §4 的结论：`Config` 的四个内部类里，
> `gE$a`=顶层 `ConfigLine`、`gE$c`=顶层 `ConfigSnapshot`、`gE$b`=`Config$SectionParser`、
> `gE$d`=`Config$StringReader` —— 混淆名带 `$` 与真嵌套**没有必然关系**。

### 20.4 剔除一条：`Vo$a → ConfigSnapshot$LineComparator`

`ConfigSnapshot` 已经由 `gE$c` 占用，而 `Vo` 本身未映射、父关系无从确认 → 不采用（记进 `jgit_unverified.tsv`）。

### 20.5 新机制：DENY 表（防止 gapfill 反复重提错判）

`MC.DW ()V → resort`（祖先 `IC.DW ()V → finish`）和 `_F.Zo (I)V → reset`（祖先 `qG → freeFlag`）
每次批量补名都会被 `gapfill` 重新提出，删了下轮又回来。现在落到
`~/out/work/jgit_deny.tsv`（每行 `abcd/类<TAB>成员名`），**`gapfill.py` 与 `rebuild_tsrg.py` 都会按它过滤**。

### 20.6 基线

| 指标 | §19 | 本轮 |
|---|---|---|
| 类映射 | 619 | **645** |
| 成员映射 | 3964 | **4001**（方法 2733 + 字段 1268） |
| 方法覆盖 | 2549/3185 = 80.0% | **2586/3235 = 79.9%** |
| 字段覆盖 | 1067/1468 = 72.7% | **1088/1498 = 72.6%** |
| 完全覆盖类 | 350 | **369** |
| `inherit_check` | 0 / 5 | **0 / 5** |
| `verify_members` | 不一致 0 | 不一致 **0** |
| FART | 一致 | **一致**（`r_v20.jar`，manifest `64b8ac86…`） |

> 百分比微降是分母随 +26 个类涨了 50，绝对命中 +37 / +21。

---

## 21. 第十六轮：清理 `$N` 占位名（16 个换成真名）

成员级判据见底后，这轮做两件事：**已知父类的内部类配对** + **把 `$数字` 占位名换成真名**。

### 21.1 `nestmatch.py`：已知父 → 小集合配对 + 排除法

探针 `X` 已映射到 `T`，则 `abcd/X$y` 只可能是 `T$z`。在 2~10 个候选里做形状配对，
再用排除法补刀。结果只有 **2 个**：`SI$b→BaseReceivePack$Reporter`、
`NF$b→BlockObjQueue$BlockFreeList`。

原因很实在：**大部分内部类早就映射过了**，而剩下的多数对不上数
（R8 删了兄弟类或父类未映射）——这条路的天花板很低。

### 21.2 主戏：195 个 `$N` 占位名逐个重比

对 tsv 里所有 `目标以 $数字 结尾` 的类（211 个）重新做形状匹配（strict → loose），
**19 个能换成真名**，其中 **16 个落库**：

| 探针 | 旧（占位） | 新（真名） | 模式 |
|---|---|---|---|
| `AI$b` | `PackParser$2` | **`PackParser$DeltaVisit`** | loose |
| `FH` | `DeltaIndex$2` | **`DeltaIndexScanner`** | strict |
| `KH` | `BaseSearch$1` | **`IntSet`** | strict |
| `PD$b/$f/$g` | `GroupHead$1/$5/$6` | **`$CharacterRange/$OneCharacterPattern/$PunctPattern`** | strict/loose |
| `RD` | `FileNameMatcher$2` | **`LastHead`** | loose |
| `RK$b` | `TemporaryBuffer$1` | **`TemporaryBuffer$BlockInputStream`** | loose |
| `eE$a` | `BatchingProgressMonitor$2` | **`BatchingProgressMonitor$Task`** | loose |
| `gE$d` | `Config$1` | **`Config$StringReader`** | strict |
| `iC$a` | `DiffFormatter$1` | **`DiffFormatter$FormatResult`** | loose |
| `lK$a` | `BlockList$1` | **`BlockList$MyIterator`** | loose |
| `pK$a` | `FS$2` | **`FS$Holder`** | strict |
| `uH$a` | `WindowCache$1` | **`WindowCache$Entry`** | loose |
| `wI$a` | `LongMap$1` | **`LongMap$Node`** | loose |
| `xJ$a` | `TransportHttp$2` | **`TransportHttp$DummyX509TrustManager`** | loose |

`gE$d → Config$StringReader` 让 `Config` 的四个内部类全部定名
（`gE$a`=顶层 `ConfigLine`、`gE$c`=顶层 `ConfigSnapshot`、`gE$b`=`SectionParser`、`gE$d`=`StringReader`）。

### 21.3 否掉的 3 个（方法论上的坑）

| 候选 | 为什么否 |
|---|---|
| `MF → revwalk/AsyncRevObjectQueue` | **接口的形状 == 匿名实现类的形状**（方法集相同）→ 必然误判 |
| `oG → events/ListenerHandle` | 同上（`RevWalk$2` 很可能就是它的匿名实现） |
| `UI → FS$FSFactory` | 扫描器的 `taken` 集合里包含**它自己当前的** `RefFilter$1`，于是去找了别的 → 自匹配漏洞 |

由此得到两条固定规则：

1. **目标若为 `interface`，不接受"形状匹配"结论**（匿名实现类与接口同形）；
2. 重比前必须把**该探针自己的当前目标**从 `taken` 里排除。

### 21.4 一条命名规律

混淆器给**命名内部类**用 `<outer>$<字母>`，给**匿名类**用**扁平名**（如 `uJ`/`vJ`）。
所以：

- 探针名形如 `X$字母` ⇒ 优先当**命名内部类**（`xJ$a` 因此改成 `DummyX509TrustManager`，而不是 `$2`）；
- 探针名是扁平 `abcd/xx` 且带 `EnclosingClass` ⇒ 匿名类，只能叫 `<外层目标>$N`。

### 21.5 `rescore` 的 12 条"cur 0.00 / best 1.00"逐条复核

`rescore.py` 会列出"当前映射得分 0、但有高分候选"的类。这 12 条里：

- **4 条确实是占位名写错了** → 已按上面的表改掉（`DG$a`/`AI$b`/`pK$a`/`uH$a`）；
- **1 条是 rescore 错**：`vJ`（它给出的 `TransportSftp$1` 形状相同，但 `EnclosingClass` 分组
  明确显示 `vJ` 与 `xJ$a..$e` 同父 ⇒ 仍是 `TransportHttp$4`）；
- 其余 7 条形状无唯一解（`✗` 或 2 候选），保持不动。

> 结论：`rescore` 是"可疑清单"，不是"改名清单"——每条都要形状复核。

### 21.6 基线

| 指标 | §20 | 本轮 |
|---|---|---|
| 类映射 | 645 | **647** |
| 成员映射 | 4001 | **4049**（方法 2753 + 字段 1296） |
| 方法覆盖 | 2586/3235 = 79.9% | **2620/3272 = 80.1%** |
| 字段覆盖 | 1088/1498 = 72.6% | **1115/1548 = 72.0%** |
| 完全覆盖类 | 369 | **375** |
| 仍用 `$N` 占位 | 211 | **195** |
| `inherit_check` | 0 / 5 | **0 / 5** |
| `verify_members` | 不一致 0 | 不一致 **0** |
| FART | 一致 | **一致**（`r_v21.jar`，manifest `133dd74f…`） |

---

## 22. 第十七轮：一条负结果 + 一个能预演运行时崩溃的新工具

### 22.1 `refpick.py`（用"引用的类型集合"破形状撞车）——负结果

思路：形状相同的两个候选，引用的类型往往不同（`ForwardEditPaths` 引 `Forward` 那套、
`BackwardEditPaths` 引 `Backward` 那套），于是用
`重叠率 = |探针引用类型 ∩ 候选引用类型| / |探针引用类型|` 打分，要求 ≥0.6 且领先第二名 ≥0.2。

**实测：95 个形状多候选，0 个可判定。**

原因很实在：能撞车的本来就是**同形兄弟**（`MyersDiff$MiddleEdit$ForwardEditPaths` vs
`BackwardEditPaths`、`GroupHead` 的几种 Pattern），它们引用的类型集合几乎相同，
分数差值 < 0.05。这条路对"兄弟撞车"无效，仅对"远亲撞车"有效，而远亲撞车在
`shapescan` 阶段就已经被唯一性筛掉了。

> 记录在这里是为了**避免以后再试一遍**。

### 22.2 `access_audit.py`：预演 `IllegalAccessError`（本轮最大产出）

改名的真正风险不是"名字不好看"，而是**跨包访问 package-private**：
原来同在 `abcd` 包里的两个类互相访问合法，一旦其中一个改名到 `org.eclipse.jgit.x`，
链接期就会 `IllegalAccessError`（我们踩过 `TransportHttp accessing abcd.vJ`）。

工具做三类检查：

1. **类型可达**：super/接口/字段与方法描述符里出现的类型 T，跨包则 T 必须 public；
2. **成员可达**：常量池引用的 owner+name+desc，跨包则 owner 必须 public 且成员 public/protected；
3. （由 1 覆盖）被跨包引用的类自身必须 public。

对 `r_v21.jar` 扫出 **196 处跨包不可达（97 个不同目标）**，这就是**装到设备上会崩的清单**。
按 owner 汇总直接变成"下一批该映射的类"：

```
IH 12  OG 7  GC 6  QF 5  MG 5  gJ 4  LF 4  yc 3  jG 3  PF$a 3  MP 3  GD 3
tH 2  rI 2  cG 2  bC 2  VK$c 2  VK 2  OF$a 2  OF 2  NP 2  LD 2  LC 2  KP 2  EC 2
```

典型条目：
- `owner-not-public org/eclipse/jgit/revwalk/Generator` 13 处（`Generator` 在 jgit 里是包私有，
  却被还留在 `abcd` 的 `LF`/`QF`/`OF` 访问）；
- `member-not-visible abcd/NB.<init>(Ljava/lang/String;)V` 7 处（`NB` 未映射 ⇒ 构造器仍是包私有，
  却被改名到 `org.eclipse.jgit.api` 的 `CherryPickCommand$1` 调用）。

**修法就是"把相关类一起映射"**，让它们回到同一个包——这也给了类映射一个**优先级排序**。

### 22.3 顺带补上 `InterruptTimer` 全家

`VK$c` 形状唯一命中 `InterruptTimer$AutoKiller`；加上此前的 `VK$a=AlarmState`、`VK$b=AlarmThread`，
三个内部类全中 ⇒ **`VK` = `util/io/InterruptTimer`** 坐实。

违规数：**196 → 187**。

### 22.4 基线

| 指标 | §21 | 本轮 |
|---|---|---|
| 类映射 | 647 | **649** |
| 成员映射 | 4049 | **4042**（方法 2753 + 字段 1289；`VK`/`VK$c` 的成员随类块重建） |
| 方法覆盖 | 2620/3272 = 80.1% | **2621/3276 = 80.0%** |
| 字段覆盖 | 1115/1548 = 72.0% | **1116/1557 = 71.7%** |
| 完全覆盖类 | 375 | 375 |
| **跨包不可达** | 未测（196） | **187** |
| `inherit_check` | 0 / 5 | **0 / 5** |
| `verify_members` | 不一致 0 | 不一致 **0** |
| FART | 一致 | **一致**（`r_v22.jar`，manifest `0260bf0e…`） |

---

## 23. 第十八轮：按 access_audit 队列作业，违规 187 → 158

### 23.1 用"同父兄弟"把候选缩到 1~3 个

上一轮的 multi-candidate 全库扫描太宽。这轮改成：**先取探针的 super 目标，只在"同父"的
oracle 类里找**（jgit 的类层级很密，同父通常只剩 1~3 个候选）。立竿见影：

| 探针 | 同父候选 | 结论 | 依据 |
|---|---|---|---|
| `GC` | **1 个** | `diff/Subsequence` | super=`diff/Sequence`，且 3 字段 6 方法**完全一致** |
| `LF` | 9 个 | `revwalk/AbstractRevQueue` | `static EMPTY_QUEUE` + `int outputType` + `abstract add(RevCommit)` + `abstract next()` + `abstract everbodyHasFlag(int)` + `protected static describe(StringBuilder,RevCommit)` —— **1:1** |
| `QF` | — | `revwalk/FIFORevQueue` | 两个 Block 字段（head/tail）+ `clear/unpop/everbodyHasFlag/anybodyHasFlag/removeFlag/toString` |
| `OF` | — | `revwalk/LIFORevQueue` | 单个 Block 字段 head + 方法集更少 |
| `QF$a` | — | `revwalk/BlockRevQueue$Block` | `RevCommit[] commits` + `int headIndex/tailIndex` + `next` |

`LF` 的判定特别干净——7 个成员里有 5 个和 `AbstractRevQueue` 一一对应，
其中 `static final EMPTY_QUEUE`（自类型静态单例）几乎是签名级的证据。

### 23.2 新发现：FART 会把**未映射的内部类**跟着外层一起改名

映射 `OF → LIFORevQueue` 之后，审计里出现了 `org/eclipse/jgit/revwalk/LIFORevQueue$a`——
但 oracle 里根本没有这个类。原因是 **FART 按外层前缀传播**：
`abcd/OF$a` 没映射，但它在外层 `OF` 改名后会变成 `LIFORevQueue$a`。

后果有两面：

- **好的一面**：内部类至少跟着外层走了，包内关系不乱；
- **坏的一面**：它会和新包里的其他类发生**跨包访问**（本轮 `LIFORevQueue$a` 因此新增 12 处违规）。
  而且名字在 oracle 里不存在，等于给读者一个假名。

⇒ **推论**：一旦决定映射某个外层类，就必须**把它的内部类一起处理**（映射或确认它们是匿名类）。
这条已写进 `BUILD-PITFALLS.md` §4 的处理模板。

### 23.3 违规数变化

| 版本 | 跨包不可达 |
|---|---|
| `r_v21` | 196 |
| `r_v22`（+InterruptTimer 全家） | 187 |
| **`r_v23`**（+GC/LF/QF/OF/QF$a） | **158**（85 个目标） |

剩下的头号条目：`LIFORevQueue$a` 12、`Generator` 8、`abcd/EC` 8、`abcd/NB.<init>` 7、`abcd/tH` 5、
`ObjectDirectoryInserter` 4、`LIFORevQueue` 4 —— 其中 `LIFORevQueue$a`/`LIFORevQueue` 那 16 条
正是 §23.2 的副作用，下一轮把 `OF$a`/`OF$b` 定名即可消掉。

### 23.4 基线

| 指标 | §22 | 本轮 |
|---|---|---|
| 类映射 | 649 | **654** |
| 成员映射 | 4042 | 4042 |
| 方法覆盖 | 2621/3276 = 80.0% | **2622/3300 = 79.5%** |
| 字段覆盖 | 1116/1557 = 71.7% | **1115/1564 = 71.3%** |
| 完全覆盖类 | 375 | 374 |
| **跨包不可达** | 187 | **158** |
| `inherit_check` | 0 / 5 | **0 / 5** |
| `verify_members` | 不一致 0 | 不一致 **0** |
| FART | 一致 | **一致**（`r_v23.jar`，manifest `f1b81ffc…`） |

> 覆盖率微降仍是分母变大（+24 方法 / +7 字段的分母，绝对命中 +1 / -1）。
> 本轮的收益主要体现在**运行期可访问性**（违规 -29），不是覆盖率。
