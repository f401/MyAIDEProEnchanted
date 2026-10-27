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
