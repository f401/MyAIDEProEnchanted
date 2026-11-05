# jobs/antlr —— ANTLR4 runtime **4.7.2**（AIDE 用它做 `aidepro` 的语法/格式化，117 类）

## 0. 一句话结论

| 指标 | 值 |
|---|---|
| 类 | **117 / 117 = 100%**（114 有 oracle 对应 + 3 个 `role:` 按作用命名） |
| 方法（cover 口径：剔除构造器/静态块/合成器/JDK 契约名） | **337 / 339 = 99.4%** |
| 字段（同口径） | **256 / 256 = 100.0%** |
| 参数名 | 358 行（`params.tsv`，全部来自 oracle 源码 + 少量 jar LVT） |
| 门禁 | `validate` ✔ 无无效映射 · `inherit_check` CONFLICT 0 / DUPTARGET 0 / MISSING 0 · `famcheck` 冲突 0 / 祖先未映射 0 · `innercheck` ②③ 0 · `audit` kind 0 / hier 0 / size 0 · `cover` 见上 |

## 1. 版本锁定：4.7.2（不是"某个 4.x"）

拿 `org/a/a/a/a/h`（= `atn/ATNDeserializer`）的常量串比对：

```
BASE_SERIALIZED_UUID        = 33761B2D-78BB-4A43-8B0B-4F5BEE8AACF3
ADDED_PRECEDENCE_TRANSITIONS= 1DA0C57D-6C06-438A-9B27-10BCB3CE0F61
ADDED_LEXER_ACTIONS         = AADB8D7E-AEEF-4415-AD2B-8204D6CF042E
ADDED_UNICODE_SMP           = 59627784-3BE5-417A-B9EB-8131A7286089
```

`ATNDeserializer.SUPPORTED_UUIDS` 的元素个数 = 该版本能读的序列化版本数。**恰好 4 个**（base + 上面三个）
对应 4.7.2；4.9+ 会多出新的 UUID，4.5/4.6 会少。另一个独立证据：`atn/ATNState` 的 `stateType` 常量表
`BASIC=1 … LOOP_END=12` 与 `ATNDeserializer.stateFactory` 的 `tableswitch 0..12` 完全对上（见 §3.3）。

oracle（Maven 阿里云镜像，AIDE 里是 R8 裁过的子集，117/220 比例合理）：

```
~/out/oracle/antlr/antlr4-runtime-4.7.2.jar          220 类
~/out/oracle/antlr/antlr4-runtime-4.7.2-sources.jar  174 个 .java（参数名就用它）
~/out/oracle/antlr/src/                              已解压
```

## 2. 这个 part 的探针范围是新前缀 `org/a/a/a`

`process/deob.json` 新增 part `../jobs/antlr`（`probe_prefix: "org/a/a/a"`）+ oracle
`antlr4-runtime-4.7.2` + 源码根 `$HOME/out/oracle/antlr/src`；
`tools/jgit/paths.py` 的 `PART_DIRS` 也加了 `antlr`（否则 `rebuild_tsrg.py` 不会汇总它 —— 本轮踩过：
第一次 `rebuild_tsrg` 里 antlr 块数为 0，`grep org/antlr/v4/runtime mappings.txt` 也是 0）。

APK 侧包结构被打散成 4 个（ProGuard 的一级包名重构）：`org/a/a/a`(root) / `a`(atn) / `b`(dfa) / `c`(misc)，
类数和 oracle 侧的 `runtime/*` / `runtime/atn` / `runtime/dfa` / `runtime/misc` 一一呼应；
`tree/*`（含 pattern、xpath）整包被 R8 裁掉（AIDE 没用到）。

## 3. 定名方法（三步，判据都可复现）

### 3.1 常量串一锤定音 → 23 条
`tools/deob/strmatch.py`，Jaccard=1.00 且唯一：

```
python3 tools/deob/strmatch.py -p process/deob.json --prefix org/a/a/a \
    --oracle antlr4-runtime-4.7.2 --oracle-pkg org/antlr/v4/runtime --min 0.0 --top 3
```

串不受混淆影响，23 条满分且无并列（`af→LexerActionType`、`b→ATNConfig`、`h→ATNDeserializer`、
`c→CharStream`、`l→CommonToken`、`p→Lexer`、`x→RuntimeMetaData` …）。

### 3.2 层次闭包（super / interface 逐位对齐）→ +42 条
`bytefp.py` 指令流指纹先给 60 条（`body:` 证据写进 `class_map.tsv` 第 3 列），
再用闭包把"探针侧未定名、oracle 侧已定名"的 super/interface 位置**当成等式**传递下去。
比如 `be`(=`SemanticContext$Predicate`) 的超类是 `bd`，oracle 同位置的超类是 `SemanticContext`
⇒ `bd = SemanticContext`，这条是硬约束，不是打分。

> 反例（本轮修掉的错误）：只做"结构包含打分"时 `bd` 曾被判成 `tree/ParseTreeWalker`
> —— 因为两者都是 2~5 个方法、超类都是 Object，形状"装得下"。**闭包约束优先级高于打分**。

### 3.3 结构包含 + 唯一性 → +40 条；状态机子类靠 `stateFactory` 的 switch

关键事实：**版本相同 ⇒ 描述符未被改动**。所以对每个候选做"探针成员（把已定名的内部类型折成真名、
未定名的折成通配 `?`）能否被 oracle 同签名成员一一容纳"，并要求
**候选唯一、超类与接口逐位相等**。收尾后剩 12 个类，其中 7 个是空壳状态类（只有构造器、超类相同），
形状完全同构，必须换判据：读 `ATNDeserializer.stateFactory(int)` 的 `tableswitch`：

| case(stateType) | 探针侧 `new` | oracle（ANTLR 常量表） |
|---|---|---|
| 1 | `a/u` | BasicState |
| 3 | `a/t` | BasicBlockStartState |
| 5 | `a/bh` | StarBlockStartState |
| 6 | `a/bk` | TokensStartState |
| 7 | `a/bb` | RuleStopState |
| 9 | `a/bj` | StarLoopbackState |
| 11 | `a/au` | PlusLoopbackState |

（`2/4/8/10/12` 各自已由别处锁死：`ba`=RuleStartState、`at`=PlusBlockStartState、`v`=BlockEndState、
`bi`=StarLoopEntryState、`ap`=LoopEndState —— 与表内不冲突，正好把 12 个 stateType 填满。）

`a/ay` 用**引用者**定：只有 `ATNSimulator(a/m)` 与 `LexerATNSimulator(a/ab)` 引用它，oracle 同位置字段类型是
`PredictionContextCache` ⇒ `a/ay = PredictionContextCache`。
`d` 用常量串（`UTF_8` / `ISO_8859_1` / `<unknown>`）+ 方法体（`CharBuffer.allocate`、`reader.read`、
`(Reader)CodePointCharStream`）⇒ `CharStreams`。

### 3.4 最后 3 个：oracle 里根本没有 ⇒ `role:`（用户授权）
* `y` → `PositionSource`：接口，两个无参 int 抽象方法 `j()/k()`；实现者是 `ac`(=TokenSource) 与 `z`。
* `z` → `AbstractTokenProducer`：`abstract class implements y`，字段有 `StringBuilder`、`TokenFactory`，
  唯一的 `Token` 返回方法用 `TokenFactory.create(CommonToken.EMPTY_SOURCE, type, text, channel, start,
  stop, line, col)` 造 token。**整个 APK 没有任何类引用它**（R8 保留下来的死代码）。
* `c/i` → `misc/IntervalSet$ParcelableCreator`：`implements android.os.Parcelable$Creator`，
  `createFromParcel` 读两个 int 后 `new IntervalSet(int[])`；它同时被 `misc/Interval` 的 `CREATOR`
  静态字段引用（两个同形 Creator 被 R8 合并成一个）。

`audit.py` 对这 3 条报 `missing（两侧 jar 缺类）` —— 这是**预期**，不是遗漏。

## 4. 成员（methods / fields / params）

版本相同 ⇒ **成员描述符一一对应**，所以 `cli.py members` 基本是"同名搬运"：

```
python3 tools/deob/cli.py -p process/deob.json members --pkg org/a/a/a --part ../jobs/antlr --apply
python3 tools/deob/cli.py -p process/deob.json params --apply     # 需要 src_root 里有 antlr 源码
```

方法 328 条直接定名 + 5 条覆写家族闭包 → 口径内 **337/339**；字段 **256/256**。
剩下的 2 条方法落在 `no-oracle-descriptor` / `ambiguous`（见 `out/members_org_a_a_a.tsv`），
是因为它们调用的类型被 R8 合并/裁掉，oracle 侧没有同签名可对，**保持原样不改**（宁缺勿错）。
参数名 358 行：`ATNDeserializer.deserialize(char[])` 这种签名在 oracle 源码里能逐个对上，
`src` 列写 `antlr4-runtime-4.7.2+src` 的就是源码补的。

## 5. 已知偏差（如实记录）

1. **AIDE 给 `misc/Interval` / `IntervalSet` 加了 Parcelable**：APK 的 `c/h`(=Interval) 多出
   `Parcelable` 接口、`CREATOR` 字段、`writeToParcel`、以及一个 1001 项的 intern 缓存 `Interval[]`；
   `c/j`(=IntervalSet) 少了 `IntSet` 接口（被 R8 垂直合并）。所以这两个类的"成员包含"检查会报
   探针多出 1~2 个成员，属**已知偏差**。
2. `ac`(=TokenSource) 在 APK 里多实现了 `y`(=`PositionSource`)；oracle 的 `TokenSource` 没有父接口。
3. `l`(=CommonToken) 的接口顺序两侧不同（`Serializable, WritableToken` vs `WritableToken, Serializable`），
   `dx` 重排所致，不影响语义。
4. `w`(=RuleContext) 少了 `tree/RuleNode`（R8 垂直合并）。
5. 一批 CodePoint* 类探针多出 `int[]` 字段和 `()int[]` 方法（R8 的构造器/数组外提），oracle 没有。

## 6. 复现

```bash
python tools/deob/strmatch.py -p process/deob.json --prefix org/a/a/a --oracle antlr4-runtime-4.7.2 \
       --oracle-pkg org/antlr/v4/runtime --min 0.0            # 串证据
python tools/deob/bytefp.py --part ../jobs/antlr --oracle antlr4-runtime-4.7.2 \
       --prefix org/a/a/a --oprefix org/antlr/v4/runtime --thr 0.30 --margin 0.06
python tools/deob/audit.py -p process/deob.json --part ../jobs/antlr --oracle antlr4-runtime-4.7.2 \
       --prefix org/a/a/a --oprefix org/antlr/v4/runtime
python tools/deob/cli.py -p process/deob.json cover --pkg=org/a/a/a
python tools/jgit/pipeline/rebuild_tsrg.py && python tools/jgit/pipeline/validate_mappings.py
python tools/jgit/pipeline/inherit_check.py
python tools/deob/famcheck.py --jar process/base/merged_ok.jar --parts jobs/antlr/class_map.tsv --prefix org/a/a/a
```

（本轮用来做闭包/包含求解的一次性脚本在 `~/tmp/antlr_{solve2,final,check,cache}.py`，
`class_map.tsv` 第 3 列的 `str:` / `body:` / `hier:` / `contain:` / `src:` / `recv:` / `role:`
就是逐条的判据。）

## 7. `inherit_check` 抓到的真错（本 part 修掉 3 条）

第一版 `cli members` 给 `IntStream(org/a/a/a/o)` 的三条 `()I` 判成了
`b=mark / c=index / d=size`，而它的实现者 `CodePointCharStream(org/a/a/a/h)` 判成了
`b=index / c=size / d=mark` —— 同一覆写家族名字不一致，`inherit_check` 直接报 3 条 CONFLICT。

判据（可复现，靠**实现者**的方法体，不靠接口的猜）：

```
CodePointCharStream.b()  = getfield c(position)   ⇒ index()
CodePointCharStream.c()  = getfield a(size)       ⇒ size()
CodePointCharStream.d()  = iconst_m1; ireturn     ⇒ mark()   （IntStream.mark 返回 -1）
```

按覆写家族同名规则把 `IntStream` 的 `b/c/d` 改成 **index / size / mark**，CONFLICT 归零。
这就是为什么 `class_map` 之后一定要跑 `inherit_check`：接口的 `()I` 三个同形方法，
纯按描述符对齐是会错位的。

## 8. 收尾：最后 10 条缺口全部落地

`cli members` 留下的缺口是 2 条方法 + 8 个字段，逐个读完码都定住了：

### 8.1 R8 的"枚举 switch 表"（4 个字段 + 4 个方法）

四个类各有一对 `private static int[]` + `static int[] xxx()`：

```
org/a/a/a/a/h (ATNDeserializer)   i    / a()   ← 建表时 getstatic org/a/a/a/a/af(=LexerActionType).a..h, 按 ordinal 写 1..8
org/a/a/a/e   (CodePointBuffer)   f    / h()
org/a/a/a/f   (Builder)           g    / b()
org/a/a/a/h   (CodePointCharStream) e  / e()
```

方法体是**逐字可读的模板**：`new int[Enum.values().length]` → `arr[CONST.ordinal()] = k` →
`putstatic` → `getstatic` 缓存返回。这正是 `javac` 那个匿名 `Class$1` switch-map 的
**R8 版实现**（表放在宿主类的静态字段里）。所以：

* 字段/方法都命名 `typeSwitchMap`（`ATNDeserializer` 里叫 `lexerActionTypeSwitchMap`，因为它的枚举是 `LexerActionType`）；
* oracle 侧不存在这些成员 ⇒ 证据写 `role:`（在 `class_map`/说明里），名字是"按作用"。

### 8.2 `misc/Interval` 的 Parcelable 附加件

`c/h` 的 `CREATOR`（`static final Parcelable$Creator`，`<clinit>` 里 `new IntervalSet$ParcelableCreator`）
⇒ 名字 `CREATOR`（Android 约定名，不是猜）。同一类的 `describeContents()` / `writeToParcel(Parcel,int)`
本来就已是正确名字（`Parcelable` 契约），`members` 报 `ambiguous` 只是"oracle 里没有同描述符成员"
（oracle 的 `Interval` 不实现 Parcelable），**不动**。

### 8.3 `CharStreams` 的两个 Charset 缓存

`c`… 不，是 `org/a/a/a/d`(=CharStreams) 的 `static Charset a/b`，`<clinit>` 里
`Charset.forName("UTF_8")` / `Charset.forName("ISO_8859_1")` ⇒ 名字 `UTF_8` / `ISO_8859_1`
（字符串常量就是权威写法，`StandardCharsets` 的字段名同形）。

### 8.4 剩下 1 条**真歧义**，按规则不动

`org/a/a/a/p`(=Lexer) 的 `a()[Ljava/lang/String;` 有 3 个同描述符候选
（`getChannelNames` / `getModeNames` / `getTokenNames`），而 4.7.2 源码里**这三个方法体都是 `return null;`**
—— 字节码上完全同形，任何判据都选不出来。按用户规则"不确定处如实说"，保持原名。

（另：`items` 报告里 `c/h` 的 `writeToParcel` 被标 `AIDE 改过签名`，已在 §8.2 说明。）
