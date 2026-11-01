# 还原"整包被混淆"的第三方库（通用流程）

适用：库的**包名+类名+成员名全被 R8/ProGuard 重写**（如本仓库的 `com/a/b/**` = dx），
只剩结构、常量串、枚举常量名、字节码可依。不适用于只改了成员名的库（那种直接 `members` 就够）。

一句话原则：**每条命名都要有一条"改名不变"的判据支撑，判据要能重跑。**

---

## 0. 准备

```bash
# 探针（混淆态 smali 树）+ oracle（原始 jar，放 ~/out/oracle/<库名>/）
python3 tools/deob/cli.py -p process/deob.json status      # 看配置与写入目标
```

`process/deob.json` 里给这个库开一个 part：

```json
{"dir": "../jobs/dx", "probe_prefix": "com/a"}      // probe_prefix 要覆盖**所有**被引用的混淆类
```

> 坑：`probe_prefix` 少一个父包（例如只写 `com/a/b`），`com/a/a/**` 这类"兄弟包"就会被
> 当成外部类型，描述符永远对不上，命中率会假性偏低。

> 坑（读 smali 时最容易踩）：本仓库在 **FUSE（大小写不敏感）** 上，`src/smali/abcd/Af.smali`
> 里装的**可能是 `Labcd/AF;`**——和 jar 里真正的 `abcd/Af` 是两个不同的类。按"类名拼文件名"
> 手读必错，必须走 `process/truth/smali_index.tsv`（`smali.Index.file_for`）并**用文件里的
> `.class` 行确认**。批量分析优先读 `process/base/merged_ok.jar`（一个文件、快、大小写精确）。

---

## 1. 类名：结构指纹批量匹配 → `tools/deob/classmatch.py`

判据：成员描述符多重集 + static/interface/abstract 标志 + super/ifaces + `const-string` 串集；
本库内部类型换 `#` 占位（**oracle 侧未被认领的自身类型也要换 `#`**，否则两边永远不等）。

```bash
python3 tools/deob/classmatch.py -p process/deob.json --prefix com/a \
    --oracle dx-1.16 --oracle-pkg com/android/dx,com/android/dex --report ~/tmp/cm.tsv
```

## 2. 枚举体类：常量名锚点 → `tools/deob/enumanchor.py`

判据（不受改名影响）：枚举的 `<clinit>` 里 `new-instance L<体类>;` 紧跟 `const-string "CONST"`，
常量名是**字符串字面量**，混淆器不改；oracle 侧 `<clinit>` 字节码里是同样的成对关系，
按常量名 join 就把「匿名体类 → `Enum$N`」定死。

```bash
python3 tools/deob/enumanchor.py -p process/deob.json --prefix com/a \
    --oracle dx-1.16 --map jobs/dx/class_map.tsv --out ~/tmp/enum.tsv
```

嵌套类/枚举体成堆出现时，这一步能一次拿下几十个类（dx：36 个 `InstructionCodec$N`）。

## 3. 引用集硬约束自审 → `tools/deob/refmatch.py`

判据：一个类描述符里引用的类型集合，两侧经 `class_map` 必须**双向**一致：
探针引用的已定名类型 ⊆ oracle 候选的引用集；oracle 候选引用的"已定名值域内"类型 ⊆ 探针引用集。

```bash
python3 tools/deob/refmatch.py -p process/deob.json --prefix com/a --oracle dx-1.16 \
    --oracle-pkg com/android/dx,com/android/dex --map jobs/dx/class_map.tsv --cand ~/tmp/cm.tsv
```

输出两类：`!` 已定名但双向不一致（**优先修，往往是环状错位**）、未定名类的候选池。
dx 这轮就靠它抓到 4 个 ssa 匿名类互相错位（`SsaMethod$1/$2` 与 `FirstFit...$1`）。

> 判据只对"两侧都存在"的成员生效。AIDE 把 dx 编进 App 时被 R8 裁过，所以
> `oracle 多 [X]` / `探针多 [自身]`（合成访问器自引用）都是**良性噪声**，不要照着改。

## 4. 剩余类的逐条裁决 → `tools/deob/decisive.py`

对每个未定名类，列出候选并给 5 个**互相独立**的分量：

| 分量 | 含义 |
|---|---|
| `sim` | 成员签名多重集 Jaccard（类型已归一） |
| `str` | 常量串集合：`1.000` = 与候选完全相同（多数情况下这一条就够） |
| `int` | 整数字面量多重集 Jaccard（`iconst/bipush/sipush`） |
| `impl` | **实现者/子类集合**一致率（接口类唯一可用判据：`1.00` 即定案） |
| 候选集 | 候选数（`UNIQ` = 硬约束只剩一个，直接采纳） |

```bash
python3 tools/deob/decisive.py -p process/deob.json --prefix com/a --oracle dx-1.16 \
    --oracle-pkg com/android/dx,com/android/dex --map jobs/dx/class_map.tsv --top 3 --tsv ~/tmp/dec.tsv
```

裁决顺序（弱 → 强）：`sim` > `int` > `impl` > **常量串全集相等** > **体系证据**
（谁抛它、谁 new 它、它在谁的 ctor 里当参数、它的子类是谁）。
体系证据最硬，例如：
- `new a/a/c` 只出现在 `size() > 0x10000` 的地方 ⇒ `DexIndexOverflowException`；
- `MutabilityControl.l()/m()` 抛 `"immutable instance"` ⇒ `MutabilityException`；
- `ConcreteMethod` 的 ctor 第 2 参类型 + `DirectClassFile implements` ⇒ `cf/iface/ClassFile`。

## 5. 成员名：`members`（**必须先修描述符翻译**）

```bash
python3 tools/deob/cli.py -p process/deob.json members --pkg com/a --part dx --apply
```

工具读 `jobs/<依赖>/members.tsrg` 当种子做多遍扫描；`--apply` 把结果写回（新增行 + 已有行都保留）。

> 坑（会毁数据）：`write_members` 早先会无条件给每个写了成员行的类补一条 `identity` 类映射，
> 对**类名也被混淆**的库等于把 `class_map` 全部冲成自身。现在加了 `if not cm.dict.get(cls)` 守卫。
> 跑 `--apply` 前先 `cp jobs/<依赖>/class_map.tsv ~/tmp/cm.bak.tsv`。

产物 `jobs/<依赖>/out/members_<pkg>.tsv` 里 `TODO:` 行就是剩下的缺口，原因分三类：

| `why` | 含义 | 处理 |
|---|---|---|
| `no-oracle-descriptor` | oracle 里没有同描述符成员（AIDE 改过签名 / R8 裁掉 / D8 合成的 `$SwitchMap`） | **按作用命名**，见下 |
| `ambiguous` | 同描述符多候选 | **用引用者消除**，见 §6 |
| `body-weak` | 打分不够 | 读 body，必要时手写一行进 `members.tsrg` |

### 没有 oracle 对应物时：按"作用"命名

不要留 `a`/`b`。按它实际干的事取名，判据是代码本身：

| 情形 | 命名 | 判据 |
|---|---|---|
| `static int[]` + 类里对枚举 `switch` | `$SwitchMap$<枚举全名>` | 类里有 `static synthetic ?()[I` 惰性初始化：`<枚举>.values()` + 逐个 `<枚举常量>.ordinal()` 填表（R8 内联了 `$SwitchMap` 伴生类） |
| `static final` 且类型=自身 | `DEFAULT`/`INSTANCE` | 只被 `sget-object` 后当同类型参数传出 |
| AIDE 加过参数的公开入口 | 沿用 oracle 同名方法 | 同位置、同返回、body 是"造对象 → 委托给无参数版" |

## 5b. 静态常量表：一条描述符靠不住，得看「值」

一个类里有上百个 `static final ASN1ObjectIdentifier` 或 `static final String` 时，
描述符全都一样，"桶唯一"直接失效（见过 129 个同描述符候选）。四种写法要有四种判据：

| 工具 | 判据 | 读法 |
|---|---|---|
| `constfields.py` | `<clinit>` 里赋的**字面量串** | smali 里"`sput` 前最后一条 `const-string`" / 字节码里 `ldc…putstatic` |
| `oidfields.py` | 重建出的**完整 OID** | 探针侧跑寄存器机（`new X("…")` / `x.branch("1")` / `getId()+拼接` / `StringBuilder`），oracle 侧直接读官方 `-sources.jar` |
| `derivedfields.py` | 值**派生自另一个已定名常量** | `sget-object`+`sput-object` 配对（`DATA = CMSObjectIdentifiers.data.getId()`）|
| `groupmatch.py` | 同描述符**方法**组 | 方法体指纹：`(整数字面量, 被引成员{kind,owner→真名,描述符}, 字符串)` 三路 Jaccard |

三条经验（都是用错之后总结出来的）：

1. **"最后一条 const-string"会串位**。`new ASN1ObjectIdentifier(base + ".1")` 这种写法里，
   最后一个串是 `.1`（下一个字段的尾巴），于是整类前后错一位。所以拿到更强的 OID 证据后，
   一定要**回头把整块字段行重建一遍**（`oidfields --rebuild`）——这轮就靠它抓出 12 条移位错映射。
2. **声明顺序不可信**。本来想用"ProGuard 不重排"来拆同描述符重载，实测在 dex 里顺序是乱的
   （`SHA256Digest` 的 4 个 `(I)I` 与源码顺序不一致），按顺序对齐会全错。
3. oracle 的发布 jar 常常是 `-g:none`（连 `LocalVariableTable` 都没有）→ 参数名走
   Maven 上的 `-sources.jar`（`src_root` 里加一条就能吃到 `paramfill` 的源码分支）。

## 5c. 什么时候"按作用命名"

证据确实到不了就别猜：`functional.tsv` 一行一条记 `类/旧名/描述符/新名/判据`，
写清"为什么定不了"。典型不可分：

- 两个方法返回值常量相同（`getDigestSize`/`getByteLength` 都是 32）；
- 同类型的多个 `Hashtable` 表，内容无法从字节码里对齐；
- 反编译工具**合成**出来的方法（dex2jar 的 `$d2j$hex$…$decode_*`，oracle 里根本没有）；
- 形状同族且零引用（28 个 `*$Mappings`）。

纯"没有 oracle 对应物"的类，统一放进 `<库包名>/synthetic/` 下，一眼能看出是人起的名字。

## 6. 歧义：用引用者（调用点）消除

两条独立路子，都只看"谁在用它"，不看 oracle 方法体：

1. **实参字面量**：`static boolean isX(int flags)` 这类。把探针侧所有调用点传入的
   整数字面量收集起来（`ACC_NATIVE=0x100` 之类），落在哪个候选的语义区间就定哪个。
   dx 的 `AccessFlags.i/j`、`InsnFormat.b/c/d/e` 都是这么交叉验证的
   （第二判据：oracle `javap -c` 里的掩码字面量必须与之相符）。
2. **调用图自证**：`mgraph` 把"探针里 A 调 B"与"oracle 里 A' 调 B'"逐条对照，
   名字判错会在对应方法上直接暴露。

```bash
python3 tools/deob/cli.py -p process/deob.json mgraph --pkg com/a
# 调用图自证：1956 个方法 / 7564 条已定名引用，未对上 43 条（0.6%），可疑方法 17 个
```

> 坑：`mgraph`/`members` 里 oracle 侧的**描述符与 owner 必须翻回探针空间**再比对
> （`membermatch.oracle_to_probe()`），否则 `Lcom/android/dx/...` vs `Lcom/a/b/...` 永远不等，
> 会把命中数打到 0、把缺口虚报成几千条。

## 6b. 内部类归属（D8 `Malformed inner-class attribute` 的根因）

```bash
python3 tools/deob/innercheck.py            # 全 part
```

不变量：探针 `X$y` 映射成 `A$b` 时 `A` 必须等于 `map(X)`；**探针真内部类不许映射成顶层类**
（FART 只改名字，会留下 `outer=X / inner=顶层类 / innerName=a` 这种自相矛盾的 InnerClasses 条目，
D8 打 `Malformed inner-class attribute`，反射取 `getEnclosingClass/getSimpleName` 也会错）。
反向（探针顶层 → 目标 `X$1`）是**正常**的：R8 把匿名类拍平成了顶层 `abcd/AC`。

## 7. 门禁

```bash
D="python3 tools/deob/cli.py -p process/deob.json"
$D emit && $D validate && $D inherit && $D cover --pkg=com/a && $D mgraph --pkg com/a
python3 tools/jgit/pipeline/rebuild_tsrg.py       # 项目侧权威：逐 part 汇总进 process/mappings.txt
```

**覆盖率口径（探针口径）**：分母 = 探针里有意义、且 oracle 里存在同形对应者的成员；
命中 = 名字判对（有改名行看映射值，本来就是真名也算命中）。以下**不入分母**：

- `<init>` / `<clinit>`
- `ACC_SYNTHETIC`（`access$NNN` 合成访问器）/ `ACC_BRIDGE`（协变返回桥）
- JDK/框架**契约名**（`toString`/`equals`/`hashCode`/`run`/`compareTo`/`close`… 见
  `checks.CONTRACT_METHODS`）——这些名字被外部类型钉死，既不该改也不该计入分母

```bash
$D cover --pkg=com/a
# 方法 2502/2502 = 100.0%   字段 1774/1774 = 100.0%  口径=剔除 构造器/静态块/合成器/JDK契约名
#   （不剔除时 2689/2769 方法、1774/1774 字段）
```

## 8. 资产里的"独立 dex 包"要一起改

`assets/data/functions/**` 下是运行期动态加载的 dex 包（`zip(classes.dex)`），
**如果它们引用了被改名的类，就必须一起改名**，否则运行到那行
`NoClassDefFoundError: Failed resolution of: L旧名;`。本机没有 dex 级改名器，用这条链：

```bash
# dex → jar（dex2jar） → 按 mappings.txt 改名（FART） → 新 dex（D8） → 重新 zip
java -cp "process/dex2jar/*" com.googlecode.dex2jar.tools.Dex2jarCmd classes.dex -o ps.jar
java -jar process/ForgeAutoRenamingTool-1.0.8-all.jar --input ps.jar --output ps_renamed.jar \
     --map process/mappings.txt --lib process/android.jar --lib process/base/merged_ok.jar
java -cp process/d8.jar com.android.tools.r8.D8 --release --min-api 26 \
     --lib process/android.jar --output out ~/tmp/ps/ps_renamed.jar
```

`--lib process/base/merged_ok.jar` 是必需的：这些包会 `extends abcd/**`（AIDE 自己的类），
缺了 FART 会在 inheritance map 里崩。改完回填 `src/assets/...` 再 `sync_assets`。

---

## dx 这轮的实际结果（2026-11）

| 项 | 结果 |
|---|---|
| 类 | **448/448 真名**（441 `com/a/b/**` + 7 `com/a/a/**`） |
| 方法 | 3305 个：**2588 真名** + 526 构造器/静态块 + 191 本来就是真名（契约名/覆写）；**单双字符名 0 个** |
| 字段 | **1778/1778 真名**（含 3 对 `$SWITCH_TABLE$<枚举>` 字段+方法，ECJ 命名约定） |
| 参数名 | **2323 条**（oracle jar 带 `LocalVariableTable`，直接取真名，写 `jobs/dx/params.tsv`） |
| 编译器合成物 | 80 个 `access$<目标名>`（R8 访问器，源码里无此标识符；按"为谁开后门"命名） |
| 覆盖率 | 方法 **100.0%** / 字段 **100.0%**（剔除 构造器/静态块/合成器/契约名 口径）；不剔除 2689/2769 |
| `refmatch` 自审 | 448 条，31 条不一致全部解释为 AIDE 裁剪 / D8 合成自引用 |
| `mgraph` 引用者自证 | 1956 方法 / 7564 条引用，未对上 **0.6%** |
| 版本判定 | dx **1.16 世系**（有 `BootstrapMethodsList`/`CallSiteIdItem`；1.7 没有），裁掉纯 CLI 子包 |
| 死代码 | `com/s1243808733/android/{dx,dex}`（673 类）= D8 产物，类集合 Jaccard 0.889/0.792，唯一独占物是 `.source "D8$$SyntheticClass"`，引用链为 0 —— 不还原 |
