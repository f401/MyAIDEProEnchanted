# dex / class 元数据读取指南（以及「本 APK 的嵌套注解为何不能用」）

> 本文回答两个问题：
> 1. 没有 `baksmali`/`dexdump`/`apktool` 的环境下，怎么把 dex 的**注解元数据**读出来（偏移、三级跳、坑）；
> 2. 读出来的 `Ldalvik/annotation/InnerClass;` 到底能不能当**命名依据**——本仓库的结论是**不能**，并给出证据。

配套脚本：`tools/jgit/dexlib.py`、`dexinner.py`、`dex_inner_all.py`、`inner_dump.py`。

---

## 1. 环境前提

| 有 | 无 |
|---|---|
| `java 21`、`python3`、`unzip`、`javap` | `baksmali`、`smali`、`dexdump`、`apktool`（CLI 侧）、`aapt2`、`zipalign`、`apksigner` |

- `javap -v` 能读 **class 文件**（dex2jar 产物），所以 jar 侧的 `InnerClasses` / `EnclosingMethod` 属性可以白拿；
- **dex 侧**只能自己解析。`dexlib.py` 就是为此写的（不实现代码项，只做 string/type/method/注解）。

---

## 2. dex 结构速查（踩过的错都标出来了）

### 2.1 头部偏移（`header_item`）

| 偏移 | 字段 | 备注 |
|---|---|---|
| 0 | `magic[8]` | `dex\n035\0` / `038` / `039` |
| 8 / 12 | `checksum u4` / `signature[20]` | 解析时可跳过 |
| 32 | `file_size u4` | |
| 36 | `header_size u4` | 0x70 |
| 40 | `endian_tag u4` | |
| 44 / 48 | `link_size` / `link_off` | |
| 52 | `map_off u4` | |
| **56 / 60** | **`string_ids_size` / `string_ids_off`** | |
| **64 / 68** | **`type_ids_size` / `type_ids_off`** | |
| 72 / 76 | `proto_ids_size` / `proto_ids_off` | |
| 80 / 84 | `field_ids_size` / `field_ids_off` | |
| 88 / 92 | `method_ids_size` / `method_ids_off` | |
| **96 / 100** | **`class_defs_size` / `class_defs_off`** | |
| 104 / 108 | `data_size` / `data_off` | |

> ❌ **坑 1**：以为 `string/type/proto/field/method/class_defs` 是**连续 6 组** u4 直接 `unpack_from('<6I', b, 56)`。
> 实际 56 处拿到的是 `string_size, string_off, type_size, type_off, proto_size, proto_off`，
> 于是 `class_defs_off` 变成 `proto_ids_off`（几百万的偏移）→ `struct.error: requires a buffer of at least ...`。

### 2.2 `class_def_item`（32 字节）

```
u4 class_idx / u4 access_flags / u4 superclass_idx / u4 interfaces_off
u4 source_file_idx / u4 annotations_off / u4 class_data_off / u4 static_values_off
```

> ❌ **坑 2**：`annotations_off` **不是** `annotation_set_item` 的偏移，而是
> `annotations_directory_item` 的偏移。它的首 4 字节才是 `class_annotations_off`：
>
> ```
> class_def.annotations_off
>   → annotations_directory_item { class_annotations_off u4; fields_size; annotated_methods_size; annotated_parameters_size; ... }
>     → annotation_set_item { size u4; entry_off[size] }
>       → annotation_item { visibility u1; encoded_annotation }
> ```
> 直接把 `annotations_off` 当 set 用，会读出**看似合理但完全错位**的值
> （本轮据此一度误判"注解被投毒"，后来发现只是偏移错了一级——但**投毒结论本身是对的**，见 §4）。

### 2.3 `encoded_value` 类型码（`(arg << 5) | type`）

| type | 值 | 编码 |
|---|---|---|
| `0x00` | byte | 1 字节 |
| `0x02` / `0x03` | short / char | 2 字节 |
| `0x04` | int | **sleb128** |
| `0x06` | long | sleb128 |
| `0x10` / `0x11` | float / double | 4 / 8 字节 |
| `0x17` | string | uleb128 → string_idx |
| `0x18` | **type** | uleb128 → type_idx（`EnclosingClass` 用的就是这个） |
| `0x19` / `0x1a` / `0x1b` | field / method / enum | uleb128 → idx |
| `0x1c` | array | uleb128 个数 + 递归 |
| `0x1d` | annotation | 递归 `encoded_annotation` |
| `0x1e` / `0x1f` | null / boolean | 无载荷 / `arg` 即值 |

> ❌ **坑 3**：只实现到 `0x17` 就在 4566 个类上报 `ValueError: valuetype 0xf`——多半是解码器在某个
> 不支持的 tag 上**悄悄错位**。写解码器时把整张表补齐，并把异常连类名一起打印（`dex_inner_all.py` 会输出 `PARSE_FAIL:`）。

### 2.4 其他

- 字符串是 **MUTF-8**：`U+0000` 编成 `C0 80`，所以**不能用 `\0` 截断**找结尾；按 `uleb128` 长度或 `b.index(b'\x00')` 均可，但要确认串里没有 `C0 80`。
- `method_ids_item`：`u2 class_idx / u2 proto_idx / u4 name_idx`（`dexlib.Dex.method()`）。
- `type_ids_item`：`u4 descriptor_idx`（指向 string）。

---

## 3. 工具用法

```bash
# 从原始 APK 里取 dex（5 个）
unzip -o "AIDE Pro_2.8.7-freely_orig_src.apk.orig" 'classes*.dex' -d ~/icd/orig

# 全部类的嵌套注解码表（TSV）
python3 tools/jgit/dex_inner_all.py ~/icd/orig/classes*.dex > ~/out/work/dex_inner.tsv

# 单类查询（含 EnclosingMethod）
python3 tools/jgit/dexinner.py ~/icd/orig/classes3.dex 'Labcd/gE$a;' 'Labcd/uJ;'

# class 文件侧对照（dex2jar 合成后的 InnerClasses / EnclosingMethod）
javap -v -p ~/icd/abcd/gE\$a.class | sed -n '/InnerClasses/,/^$/p'
python3 tools/jgit/inner_dump.py process/src/classes3.jar 'abcd/gE$a.class'
```

TSV 列：`类描述符 | InnerClass.name | accessFlags | EnclosingClass | EnclosingMethod | 来源dex`

---

## 4. 结论：本 APK 的嵌套注解**被投毒**，不能当命名依据

### 4.1 证据一：`InnerClass.name` 只有 12 种取值，且与后缀字母一一对应

统计 `Labcd/*` 中 324 个带注解的类：

| 出现次数 | `InnerClass.name` 的值 |
|---|---|
| **201** | `Landroid/support/v4/media/a;` |
| **62** | `Lcom/aide/appwizard/runtime/h;` |
| **39** | `Lcom/aide/engine/c$b$i;` |
| 7 | `\u0001\u0002\u00c0\u0080\u0001…`（二进制垃圾） |
| 4 | `Lcom/google/android/gms/internal/ads/Fg;` |
| 4 | `Lcom/google/android/gms/internal/ads/bj;` |
| … | 其余 ≤2 次 |

规律：**`$a` 一律拿到诱饵 1，`$b` 一律拿到诱饵 2，`$c` 一律拿到诱饵 3**。
例如 `Labcd/xJ$d$b;`（`TransportHttp$Service$HttpOutputStream`）的 `name` 也是 `Lcom/aide/appwizard/runtime/h;`——
和它真实语义毫无关系。

> `InnerClass.name` 本应是**简单标识符**（如 `"Service"`）。这里全是**完整类型描述符**，
> 单凭"不是合法标识符"就能判死。

### 4.2 证据二：`EnclosingClass` 指向诱饵包 `a/b/a/d/*`

```
Labcd/gE$a;  outer=La/b/a/d/m;      Labcd/gE$c;  outer=La/b/a/d/m;
Labcd/AI$a;  outer=La/b/a;          Labcd/Be$k;  outer=La/b/c/bv;
Labcd/xJ$d$b; outer=Labcd/UJ;       Labcd/uJ;    outer=Labcd/UM;
```

`a/b/a/d` 正是 **"abcd" 逐字符插入 `/`** 得到的诱饵命名空间（dex 里确实存在一批 `a/b/a/d/*`、`a/b/c/*` 类）。
而 `uJ`/`vJ`/`wJ` 三个**不同**的匿名类，`outer` 全被写成同一个 `Labcd/UM;`——
相比之下 dex2jar 从 class 文件里读到的 `EnclosingMethod` 是 `abcd/xJ`（三者一致且与代码吻合）。

### 4.3 证据三：结构与"应有语义"矛盾

| 探针 | 注解怎么说 | 实际是什么（成员精确配对） |
|---|---|---|
| `abcd/gE$a` | `Config` 的私有静态内部类，`name`=诱饵 | **顶层** `org.eclipse.jgit.lib.ConfigLine`（6 个 String 字段 + `forValue` + 两个 `match` + 两个 `eq*` + `toString`，**1:1**） |
| `abcd/gE$c` | 同上 | **顶层** `ConfigSnapshot`（`List<ConfigLine>` + `Map` + `ConfigSnapshot baseState`，构造器 `(List, ConfigSnapshot)` **1:1**） |
| `abcd/gE$b` | `name` 解析直接失败 | `Config.SectionParser`（`interface { T get(Config) }`） |
| `abcd/eI$c` | 外层 `La/ag;` | `GitProtocolConstants$MultiAck`（3 个常量的枚举；`BasePackFetchConnection` 里有 `private MultiAck` 字段） |

结论：**混淆名里的 `$` 只反映混淆器的命名分组，不反映真嵌套**；
而 dex 的 `InnerClass`/`EnclosingClass` 值被替换成了诱饵。

### 4.4 还有多少可信？

| 字段 | 可信度 | 说明 |
|---|---|---|
| `accessFlags` | 可用 | 各不同（如 `$a`=9/10、`$b`=8/10），能区分 `private/static` |
| `name == null` | 弱信号 | 匿名类多为 `null`，但与 `anonmap` 判定仅 107 一致 / 37 不一致 |
| `name` 的字面值 | **不可用** | 见 §4.1 |
| `EnclosingClass` | **不可用** | 见 §4.2 |

> 想判"是不是匿名类 / 属于哪个外层"，正确做法是**看调用点**：
> 谁 `new` 它、谁把它当返回值/参数用（`tools/jgit/anonmap.py` 的"唯一引用者"逻辑）。

### 4.5 取证必须用原始 APK

仓库里有两个 APK：

| 文件 | dex 数 | 用途 |
|---|---|---|
| `AIDE Pro_2.8.7-freely_orig_src.apk.orig` | **5** | ✅ 一切分析/取证的基线 |
| `AIDE Pro_2.8.7-freely_ac_src.apk` | 4 | ❌ 已重打包，字符串/类型索引不可信 |

早期误从重打包那份取到 `La/b/a/d/p;` 这类值，浪费了半轮排查。

---

## 5. 那到底怎么判嵌套 / 命名

按可靠性排序：

1. **jgit 官方 jar 的成员形状**（`javap -p`）——字段数量+类型、方法签名多重集，**1:1 对上才认**。
   `ConfigLine`、`ConfigSnapshot` 就是这样钉死的（顶层，不加 `$`）。
2. **jgit 3.7.1 源码**（`~/src/jgit`）——确认"这个内部类在源码里到底挂在哪"。
   例：`static enum MultiAck` 在 `GitProtocolConstants` 里（第 175 行），而 `BasePackFetchConnection` 只是**使用**它。
3. **调用点/引用者**——匿名类的归属只认这个。
4. **命名取舍**：目标是不是"真嵌套"不影响字节码正确性，只影响可读性与**访问权限**。
   package-private 的类被别的包访问时会 `IllegalAccessError`，此时把它的目标名写成
   `<引用者目标名>$N`，让类**留在同一个包**（`abcd/vJ → TransportHttp$4` 就是这么修的）。

> ⚠️ 本轮修正：曾按"dex 注解优先"把 `gE$a`/`gE$c` 记成 `Config$ConfigLine`/`Config$ConfigSnapshot`，
> 依 §4 已**判定为错**，保持顶层 `ConfigLine`/`ConfigSnapshot`。
> 同时把 `abcd/eI$a` 从 `BasePackFetchConnection$2`（jgit 里那是 `$SwitchMap` 合成类）
> 改为 `BasePackFetchConnection$CancelledException`（`extends Exception` + 私有构造，形状 1:1）。

---

## 6. 元数据可用性清单（本轮实测，abcd 2788 类 / 20638 方法）

用 `tools/jgit/dex_meta_inventory.py ~/icd/orig/classes*.dex` 得到：

| 信号 | 规模 | 可用性 | 说明 |
|---|---|---|---|
| `SourceFile` | **7 / 2788** | ❌ | 只有 `AbcdAccess.java`、`AccessProxy.java`、`D8$$SyntheticClass`——混淆类的 SourceFile 被整体剥掉 |
| `debug_info_item` | **94 / 20638** | ❌ | 仅剩 `$d2j$hex$…$decode_*` 这类字符串解密方法的调试信息 |
| 参数名（debug/`MethodParameters`） | **0** | ❌ | 参数注解 0 条，`MethodParameters` 不存在 |
| `ACC_DECLARED_SYNCHRONIZED` | **0** | ❌ | dex 独有标志，一个都没有（源码里 synchronized 已被 R8 清掉） |
| `ACC_VARARGS` | 34 | ⚠️ | 太少，dex2jar 也保留了，无增量 |
| `static_values` | **11** | ❌ | 常量基本都被内联 |
| 方法注解 | 2066 `Labcd/su;` / 390 `Signature` / 954 解码失败 | ⚠️ | 自定义运行时注解（`su/ru/tu/uu/vu`）量很大，但**值是混淆后的类型/整数**，不含真名 |
| 字段注解 | 1840 `ru` / 690 `tu` / 684 `uu` / 187 `vu` / 205 `Signature` | ⚠️ | 同上 |
| `MemberClasses` | 196 | ⚠️ | 值也指向诱饵命名空间（`La/b/a/t;`…），但**列表长度（成员数）是真的** |
| `EnclosingClass` | 203 组 | ✅（有损） | **等价关系可信、名字不可信**，见 §7 |

> 结论：dex 里**能给出"真名"的元数据已经被清干净了**。剩下能用的只有
> **结构关系**（谁是谁的成员、谁和谁同组）与**形状**（字段/方法多重集）。
> 这也解释了为什么前面几轮最后都回到"成员形状 1:1 对比 oracle"。

> 附：`Signature` 注解有 954 条解不出来（`valuetype 0x7` 之类）。dex2jar 已经把可用的
> `Signature` 搬进 class 文件了（`tools/jgit/sigmatch.py` 用的就是那一份），
> 所以这条**不必再修**；只是别把"解析失败"误当成"数据被破坏"。

---

## 7. `EnclosingClass`：等价关系可信，但不是单射

这是本轮唯一**新挖到的可用信号**。做法：

```bash
python3 tools/jgit/enclosing_groups.py            # 分组概览
python3 tools/jgit/enclosing_groups.py --check    # 与 tsv 交叉验证
```

### 7.1 为什么等价关系可信

- 同一外层的所有成员 → **同一个**诱饵值：
  `abcd/gE$a/b/c/d` 全为 `La/b/a/d/m;`；`abcd/uJ/vJ/wJ` 与 `abcd/xJ$a..$e` 全为 `Labcd/UM;`。
- 不同外层 → 不同诱饵值。

所以它给出的划分（partition）是对的，只是"外层的名字"被替换成了诱饵。

**直接收获**：`uJ`/`vJ`/`wJ` 与 `xJ$a..$e` 同组 ⇒ 它们的父类确实是 `xJ`（`TransportHttp`），
和 dex2jar 的 `EnclosingMethod`、以及"谁 new 它"的结论三方一致。
这也第一次给出了**匿名类归属**的机械判据。

### 7.2 但它**不是单射**（有碰撞），所以不能盲用

203 个组里：152 组能唯一确定父探针，24 组出现**父探针冲突**（组内 `$` 名字来自 2 个以上外层），
27 组没有任何 `$` 成员可用于定父。冲突组就是诱饵复用：
`La/a/e;` 里同时装着 `abcd/Gn$a`、`abcd/iE`、`abcd/nJ`、`abcd/rJ`、`abcd/tJ$a..$c`。

**反例（差点写错）**：`abcd/RI` 与 `abcd/bH$b` 同组（`La/b/a/c/q;`），按分组应叫 `PackIndex$…`；
但 `RI` 的成员 `parse(Labcd/gE;)Labcd/SI$a;` 明确是"Config → ReceiveConfig"的解析器，
所以它其实是 `BaseReceivePack$ReceiveConfig$1`。**分组错、成员对。**

### 7.3 使用规则

1. 组内 `$` 名字必须**只有一个外层**（否则整组丢弃）；
2. 目标类不能已经是 `X$数字`（说明它自己是匿名类，不可能再当别人的外层）；
3. 被命名的类**不能有任何成员级证据**与之矛盾——有成员就先用成员判，
   例如 `nH$c` 有 `FileSnapshot VH()` + `LooseRef j6(ObjectIdRef)`，据此判成 `RefDirectory$LooseRef`，
   而不是分组给的 `LooseScanner`；
4. 落库前跑 `verify_members.py` + **两次 FART 比对内容指纹**（新加的类可能引入新的家族歧义）。
