# 命名规范（本工程的完整规则）

> 一句话：**先证明身份，再取名；证不出来就不取。** 宁可留混淆名，也不编一个看起来对的假名。

## 0. 总原则

1. **顺序固定**：先定**类名**，再定**成员名**。类身份没定之前，不给它的成员取名（会连坐出错）。
2. **判错要连坐纠正**：一旦发现某个类判错，把它的成员映射、白名单、以及受它影响的下游名字**一并回滚重定**，
   不允许“错着改一半”。
3. **只认证据**：读 oracle 源码/字节码正文、读探针 smali 正文。**不接受**抽样通过、形状巧合、名字像。
4. **不写无意义映射**：恒等映射（`DW ()Z DW`）没有效果，除“祖先/子类对齐”必须外一律不写。

## 1. 判据优先级（从硬到软）

| 级别 | 判据 | 例 |
|---|---|---|
| 1 | oracle **源码/字节码正文**明证（方法体逐句对上） | `DeltaWindow.searchInWindow` 的“倒序遍历 + bestBase/deltaBuf 收尾” |
| 2 | **override 家族**强制同名（R8 保证） | 祖先 `authorize` ⇒ 子类同签名者必须也叫 `authorize` |
| 3 | 构造器/`<clinit>` 的**赋值顺序与常量** | `zC.<clinit>` 第 1 个实例 = `DEFAULT` ⇒ `uC = RawTextComparator$1` |
| 4 | **字段读写**关系（setter 写哪个字段） | `PackConfig.set(x)` 写 `deltaCacheLimit` ⇒ 名字叫 `setDeltaCacheLimit` 而不是 `setDeltaSearchWindowSize` |
| 5 | 字符串常量 / JGitText 键 / 正则字面量 | `mK.<clinit>` 三条正则与 3.7.1 `ChangeIdUtil` 逐字节相同 |
| 6 | 类型形状（成员多重集 + super 唯一匹配） | 只在 1–5 都用不上时用，且**必须再用 body 复核** |

**形状巧合不算证据**：`deob shape`（原 `shapescan --loose`）的命中必须回头读 body 确认（历史上 `Sw` 被 loose 形状判成
`TreeFilterMarker`，实际是 apache 的 `ConnPerRoute`）。

## 2. 类名规则

| 归属 | 包 | 名字 | 证据字段 |
|---|---|---|---|
| 确认是 jgit（3.7.1/4.x/5.x 有同形或正文对上） | 真包 | 真名 | `body:` / `shape:` / `prop:` / `keyclass:` |
| 确认是 jgit 的**魔改变体**（任何版本都没有同形） | 留在对应 jgit 包 | `Aide` + 作用名 | `name:` + 说明“与哪个类的哪部分同源” |
| 确认是 **AIDE 自有**（不属任何依赖） | **`abcd/aide/`** | 作用名（`HttpConnection`/`Settings`/`JsonParser`…） | `pkg:` |
| 身份未定（可能是依赖/一次性类） | `abcd` | **保留混淆简单名** | `place:`（写明为什么只能占位） |
| 第三方（jsch 等，整包未混淆） | 原包 | 原名 | `identity:jsch` |

补充规则：

- **必须可读**：凡是搬进 `abcd/aide/` 的类，**不允许**再出现 `Ji`/`Di` 这种名字。
- **匿名/内部类**：按编译器风格 `Outer$N`（同一外层下按 dex 出现顺序编号），例如
  `Settings$1 … Settings$5`、`Settings$1$1`、`Settings$1$2$1`。
- **类名等于混淆名的块**只有在“块里还有真实改名的成员”时才保留（TSRG2 的成员行必须挂在类行下）；
  纯恒等块直接删。
- 一个 target 只能被一个探针占用（否则 `rebuild_tsrg.py` 中止）。

## 3. 成员名规则

按以下顺序决定，命中即停：

1. **oracle 有真名** → 用真名（描述符也必须对上；`static` 标志要一致）。
2. **编译器合成物** → 按编译器会输出的样子（见 §4）。
3. **无 oracle 对应但能看懂作用** → 按作用命名，命名风格跟邻居（“左右命名”），例如
   `openPackedFromSelfOrAlternate`、`fillBuffer`、`readTimedOut`。
4. **判不出作用** → **保留混淆名，不写映射**（不要编语义；不要写恒等行充数）。

约束：

- 同一类里不允许两个成员落到**同一新名 + 同一描述符**（D8 会 `multiple definitions` 并任选一份丢弃）；
  同名不同描述符（重载）合法。
- 字段与方法是不同命名空间，可以同名（字段 `executor` + 方法 `getExecutor` 没问题）。
- `static` 与 `virtual` 同名同描述符只能各自独立（见 `audit/staticclash.py`）。

### 3b. 字段怎么定名（实测流程）

字段名不能靠"类型像"，按下面三条走，命中即停：

1. **读写点顺序对照**：把探针方法的字段写序列（`putfield` 顺序）与 oracle 同名方法的写序列并排，
   类型能对上就按位置配。例：`PackWriter$Statistics` 的 16 个字段全部靠这个方法定名
   （`writePack` 里 `VH,XL,EQ,...,we` ↔ `totalObjects,thinPackBytes,reusedBytes…`）。
2. **源码语义核对**（顺序对上但仍有二选一时）：查 oracle 源码里该字段的赋值表达式。
   例：`stats.totalBytes = out.length()` ↔ 探针 `EQ = PackOutputStream.getCount()`；
   `stats.thinPackBytes += typeStat.bytes` ↔ 探针 `we += TH$c$a.v5`。
3. **一字段对多名就留空**：AIDE 常把两个字段合并成一个（`Status.clean` 与
   `hasUncommittedChanges` 都指向探针 `DW`；`TrackingRefUpdate.remoteName/localName` 都指向 `j6`），
   这种**不猜**，保留混淆名。

当前字段映射 1848/1855 = 99.6%，剩 7 个全是第 3 类的结构性缺口。

### 3c. 类名没被混淆的库（`deob members` 批量定成员名）

AIDE 里有一类依赖**只改了成员名、类名原样保留**（jsch 的 147 个 `com/jcraft/jsch/*` 就是）。
这时"先定类名"这一步退化为恒等，剩下的全是成员级重载消歧，用统一入口跑：

```bash
python3 tools/deob/cli.py -p process/deob.json members --pkg=com/jcraft/jsch --part=jsch [--apply]
# 报告：jobs/jsch/out/members_com_jcraft_jsch.tsv（跟着 part 目录走；每行带证据列与分数）
python3 tools/deob/cli.py -p process/deob.json mgraph  --pkg=com/jcraft/jsch   # 门 10 自证
```

两条工程约定（踩过一次，记下来）：

| 约定 | 说明 |
|---|---|
| **报告跟着 part 走** | 写 `jobs/<依赖>/out/members_<包>.tsv`，不写 `process/out`（那是组装工程的 out_dir）。`--out` 可覆盖；单工程才退回工程自己的 `out_dir` |
| **可以重复跑，会继续收敛** | 每一遍都以"文件里已知的名字"为种子，链条更全 ⇒ 又能多定几条（jsch：676 → 680 方法 / 499 字段）。跑到 `git diff` 为空就是幂等终态（jsch 3 遍） |
| **oracle 版本先验** | 先确认探针用的是哪个版本（jsch 是 **0.1.51**，不是 0.1.55）。判据：每类描述符多重集 Jaccard + 结构指纹（层次/字段数）+ 只在相邻版本间才变的东西，见 [NOTES.md](NOTES.md) §9。`oracle_jars` 顺序 = 优先级，真版本排在兜底版本前面 |

判据按硬度分三层，**命中即停**：

| 级别 | 证据 | 为什么可信 |
|---|---|---|
| 1 | `desc:` 描述符桶唯一 | 改名**不改描述符**；同类内 `(旧名,描述符)→(新名,描述符)` 是单射；ProGuard 只删不加 ⇒ 某描述符两侧各只剩一个非合成成员时，二者**必**为同一成员。这是一条证明，不是形状巧合（jsch：410 方法 + 223 字段靠它） |
| 2 | `body:` 方法体 token 对齐 | 两侧归一成同名 token 串（字符串常量 / 整数常量 / 调用与字段引用 / 类型字面量），丢掉寄存器、分支、偏移；序列相似度×0.5 + 多重集 Jaccard×0.5，取"互为最优 + 领先第二名"的对 |
| 3 | `usg:` 字段读写签名 | 字段没有方法体 ⇒ 用"哪些（已对齐的）方法以读/写方式碰过它"当指纹 |

两条**加强判据**（都是为了破"同描述符一族"的对称）：

- **同序投票**（`order_votes`）：D8 会打乱**声明顺序**，但不会打乱**方法体里的语句顺序**。
  `Channel.<init>` 的 24 次赋值与 oracle 构造器逐个位置对应，一次定出
  `recipient/lwsize_max/lwsize/lmpsize/rmpsize/exitstatus/reply/connectTimeout/notifyme/index/id`；
  同一方法里依次调用的几个 `setXxx(I)V` 也按调用顺序定。允许重复访问同一成员，只要
  `p[i]==p[j] ⇔ o[i]==o[j]`（否则整组丢弃）。
- **按图修复**（`repair_by_graph` → 证据写 `graph:N`）：把方法体里**已定名**的引用译成
  `(种类, 名, 描述符)`，看 oracle 同一方法体能对上几条；另一个候选能多对上 ≥1 条就改判。
  专治 `Channel.write ↔ write_ext` 这种"依赖的依赖还没定名时抢跑配错"。

再补三条**收尾判据**（都不猜，但能把"对称死锁"拆开）：

- **排除法**（`elim:`）：同一描述符桶里，探针侧只剩 1 个没定名、oracle 侧也只剩 1 个没被占用
  ⇒ 双射直接给答案。额外要求方法体 token 至少有一点重合（挡住"一边 AIDE 新增、一边被删"正好抵消）。
- **覆写向下传播**（`ovr:继承自 X`）：祖先的名字**已证明**（`desc:`）时，子类/实现类里同名同描述符的
  声明必须跟着定 —— Java 语义 + FART 认覆写的方式都要求这样。只从证明级往下推，不放大弱猜测。
- **赋值的来源**（`src` 通道）：写字段前紧邻的那条 token（已定名调用 / 字符串 / 整数）在两侧可比。
  `V_S = kex.getV_S()` 这类赋值就是靠它区分的。

**按图复核**：排除法和传播都可能引入"差一位"（`jce/DH.setP ↔ setG` 这种），所以收尾要用
调用图再复核一遍（`repair_by_graph`），改判会打印 `改判 … → …（对上引用 0→1）`。

**顺序很重要，而且要多遍**：字段名要等方法定完（getter/setter 的 body 才能对齐），
方法名又要等字段名（setter 写哪个字段才认得出来）。所以一轮内部是
`字段预跑（构造器顺序）→ 方法 → 字段 → …`，外面再套**多遍扫描**：
每遍把 `desc:` 级别的证明结果并进种子（种子不参与改判）重跑，越跑信息越全，3 遍内收敛。

边界（这些**不猜**）：

- AIDE 改过的方法体（crypto 换 provider、`DHG1.next` 之类）在 oracle 里对不上引用 ⇒ 留在 `TODO`；
- 一个字段对多个名字、一个名字被两个字段争 ⇒ 留空；
- 同一类里"新名 + 描述符"不许重复（`taken_*` 独占），跨轮次也不许（否则 `dup-member-target`）；
- 探针名本身就在 oracle 里同名同描述符 ⇒ 一律按恒等处理（jsch 实测 0 例冲突，
  但这条检查要留着，防止把 `run`/`close`/`flush` 这类没被改的名字改坏）。

**覆盖率口径**（别拿"已映射/全部"糊弄自己）：

| 口径 | 含义 |
|---|---|
| `identity` | 探针名本来就是真名（`run`/`close`/`toString`…），**不需要映射，算已解决** |
| `no-oracle` | oracle 里没有同描述符的成员（AIDE 改过签名/新增）⇒ 不可判定，不算分母 |
| 覆盖率 | `(已映射 + identity) / (已映射 + identity + 仍歧义)` |

jsch 当前：方法 `(678+63)/741 = **100%**`、字段 `(536+1)/537 = **100%**`。
自动化判不出的 27 条按 **jgit 对 `Aide*` 变体的老办法**处理：**读代码按作用定名**，
判据逐条留在 [NOTES.md](NOTES.md) §10（`members.tsrg` 没有证据列，证据只能落文档 + commit）。

阈值：`--min-score 0.30 --min-lead 0.12`（默认值）。绝对分低了靠"互为最优 + 领先幅度"把关，
再加上覆写族统一/去重/`mgraph` 三把安全阀；实测把阈值从 0.5/0.08 降到 0.30/0.12，
覆盖率涨了 1 个点，`mgraph` 的未对上比例反而从 1.2% 降到 1.1%（信息更全 ⇒ 自证更严）。

一个坑：**空方法体（抽象方法 / 接口）不能用 body 打分**（两边都空也能得 1.00）。
这种行会打上 `bodyless` 标记，在覆写族里排最低，只允许 `desc:` 证明级的结果向下传播。

## 4. 编译器合成物清单

| 合成物 | 规则 | 例 |
|---|---|---|
| bridge 方法 | **与目标方法同名**（不是 `access$xxx`） | `j6(iG)MH` 桥 → `newObjectToPack`（与 `j6(iG)TG` 同名） |
| 合成访问器 | `access$NNN`，ECJ 三位风格；同一类内按出现顺序编号 | `access$000`、`access$100`、`access$1500` |
| 枚举 | 常量字段 `$VALUES`、`valueOf`、`values` 保持真名 | `VH $VALUES` |
| 枚举 switch 表 | `$SWITCH_TABLE$<枚举全名>`（字段与方法同名） | `$SWITCH_TABLE$org$eclipse$jgit$lib$RefUpdate$Result` |
| 匿名类 | `Outer$N` | `RawTextComparator$1` |
| 构造器 | `<init>` 原样 | — |

> 判据：合成物在 oracle 里也能看到同样形态；`javac`/`ecj` 对同一源码产出的编号可能不同，
> 只要**同类内相对顺序**合理即可，并在 `verify_allow.tsv` 里写明“合成物编号差异”。

## 5. 覆写家族与接口（硬约束）

- 同一成员的“祖先 + 所有实现/覆写”**必须同名**：`inherit_check.py` 的 `CONFLICT` 必须为 0。
- 祖先是 package-private 而子类映射到别处时，FART 会沿继承链兜底 ⇒ `MISSING` 也必须为 0
  （补祖先的映射；必要时给祖先补恒等映射）。
- **第三方接口要双侧一起改**：jsch 的 `UserInfo/UIKeyboardInteractive` 方法名在 dex 里也混淆，
  必须把 `com/jcraft/jsch/*` 与实现者 `abcd/lI` 同时改成真名（`showMessage`/`promptPassword`/
  `promptKeyboardInteractive`…）。**只改单边 = 运行期 `AbstractMethodError`。**
- 跨包之后 package-private 虚方法不再构成 override ⇒ 用 `pipeline/widen_access.py` 放 `protected`。

## 6. 映射卫生（每次改完都要过）

| 禁止 | 检查 |
|---|---|
| 恒等成员行（`DW ()Z DW`） | `validate_mappings.py`（保留的只有 `<init>` 与“祖先对齐”那些） |
| 纯恒等类块（`abcd/jL abcd/jL` 且成员无真改名） | 同上 + 人工 |
| 幽灵成员（dex 里不存在的名字+描述符） | `validate_mappings.py` 的 `no-method/no-field` |
| 重复目标（类级 / 成员级） | `validate_mappings.py` 的 `dup-class-target` / `dup-member-target` |
| `static` 标记跟错行 | `validate_mappings.py` 的 `static-mismatch` |
| 参数行编造/序号越界/两列不同名 | `validate_mappings.py` 的 `param-*` 五项（见 §9） |
| 名字循环置换写错顺序 | `mapfix.py` 支持“先释放目标名”，同类互换不会互相踩 |

## 7. 证据与白名单怎么写

- **tsv 第三列（证据）**必须能复现：`body:`（正文特征）、`shape:`（唯一形状匹配 + 版本）、
  `prop:`（版本指纹）、`nest:`/`anonmap:`（嵌套唯一引用者）、`pkg:`（访问图归包）、
  `place:`（占位及原因）、`name:`（自定名及理由）。
- **`process/verify_allow.tsv`**：一行一条，`探针 <TAB> 新名 <TAB> 理由`，理由必须写清
  “**3.7.1 里是什么**、**AIDE 改成了什么**”。没有理由的白名单等于没有校验。

## 8. 明确禁止

1. 用“名字像/形状像”直接定名（必须读 body 或源码）。
2. 因为“覆盖率好看”而补恒等映射或瞎编名字。
3. 同一类里给两个成员起同一个名字+描述符。
4. 改第三方接口单侧（jsch 等）。
5. 手改 `process/mappings.txt`（它是派生产物）。
6. 在 `abcd/aide/` 里留混淆类名。

## 9. 参数名（TSRG2 参数行）

参数名**不是**成员名，只提升可读性，但同样**不许猜**。只有两种来源：

| 来源 | 判据 |
|---|---|
| oracle jar 的 `LocalVariableTable` | `(类, 方法名, 描述符)` 三元组**完全相等**；槽位按描述符换算成实参序号（0 起、不含 `this`、`long/double` 只占一个序号） |
| 原始源码（`src_root`） | 仅当 oracle 里那条是抽象/接口方法（没有 `Code`）。只认**无方法体**（`;` 结尾）的声明；同名同参数个数多条时用形参类型与描述符逐个比对消歧，仍不唯一就留空 |
| 覆盖标准 API 的方法 | 参数名取该 API 的公开签名（如 `HttpURLConnection.setRequestProperty(String key, String value)`），在 `params_manual.tsv` 里写 `manual:jdk(...)` |
| 无 oracle 但能读 body | 读 smali body 判断参数用途后命名（`manual:body(...)`），例如 `configureRequest(HttpUriRequest request)` |

三元组对不上就**不出行**：AIDE 自有类、合成方法（`access$NNN`）、被魔改过签名的方法
都留空。当前基线（`paramfill.py`）：`方法映射 4187 条：命中 3845（无参 1480 / jar 参数全 2130 /
源码补全 190 / 仍缺 45）`，`参数行 4022 条（2328 个方法）`（写出到 `mappings.txt` 后是 4040 行）；未命中 342 条
（无类映射 146 / 方法名不同 95 / 描述符不同 101）——jsch 那 147 个类整包走 LVT（678 方法），
所以 LVT 来源比 jgit 单干时多了近一倍。

写法（TSRG2，FART 1.0.8 内置 srgutils 实测）：

```
\t\t<实参序号> <旧参数名> <新参数名>     ← 3 段，两列各一个名字（我们两列写同一个）
```

- **必须 3 段**：只写「序号 + 名字」会报 `Invalid TSRG v2 line, too many parts`；
- **顺序**：紧跟方法行（以及它的 `\t\tstatic` 标记行）之后；
- 输入类若没有 `LocalVariableTable`（本项目就是这样），它只会改写 jar 内的
  `fernflower_abstract_parameter_names.txt`——这是收益，不是风险（见 VERIFY.md 门 9）。

后两档写进 `jobs/<依赖>/params_manual.tsv`（格式同 `params.tsv`，`src` 列写判据），
`paramfill` 合并时 **manual 优先**——所以人工补充不会被下次生成冲掉，也永远可追溯。

禁止：拿 `var1/arg0` 占位、按现代变量名风格硬编、把方法名或字段名当参数名抄。

## 收口：待人工=0 的三条路（`tools/deob/rolefill.py`）

`members` 跑完总会剩一小撮成员——描述符在 oracle 里找不到同形对应者（多版本混合、
AIDE 改过签名、ProGuard 把字段类型换成了别的类）。**不能一直挂着，也不能瞎配**，
所以约定按下面的优先级收口，每条都写进 `members.tsrg`，证据列固定前缀：

| 前缀 | 含义 | 可复现判据 |
|---|---|---|
| `cand:唯一同形` | 用 oracle 名 | 同描述符（未定名探针类型按通配）的候选**只有一个** |
| `cand:同名(identity)` | 不用改 | 探针名 == oracle 同名成员的 name |
| `acc:<getter>` | 用 oracle 命名习惯 | 同类里恰好有一个 get/is/set 读写该字段 → 取名去掉前缀 |
| `role:类型` | **作用名** | 由字段类型推：`Labcd/CH;`(DeltaCache) → `deltaCache`；JDK 类型查表 |
| `role:seq` | **作用名** | 类型也不带信息（`I`/`J`）→ 按构造器形参顺序给语义位（`index`/`count`） |

> `role:` 开头的**不是 oracle 名**，是把"这个成员干什么"写成人能读的名字。
> 搬回源码编译时如果发现与上游命名不同，是预期内的——按上游改名即可，不影响字节码等价性
> （FART 只按名字重写引用，名字本身只要自洽）。

### 配套的三处匹配器改进（2026-11 那一轮加的）

1. **未定名类型当通配**（`membermatch._wild`）：描述符里 `Labcd/xx;` 这种还没进 class_map
   的类型放宽成 `L[^;]+;`，**JDK / Apache 等外部类型照旧逐字符对齐**——否则
   `Ljava/util/Set;` 会通配到任意字段上（真踩过，字段多认了 3 条错的）。
2. **多版本 oracle 按"最贴形状"选版**（`oracle_lookup.find(cls, pst)`）：jgit 这种混合版里
   同一个类可能只存在于某一版，取"第一个命中的 jar"会让整类的描述符全对不上
   （`DeltaTask` 在 3.7.1 就有，但 AIDE 用的是另一版形状）。
3. **private / static 不算覆写族**（`unify_families` + `smali.parse` 新增 `macc`）：
   两个类里同名同描述符的 **private** 方法只是撞名，不是覆写；按覆写族统一会
   把两条各自正确的映射一起撤掉（jgit `PackParser.endInput` vs `writeIdx` 就是这么被撤的）。

### 收口后的硬约束（门禁会拦）

- 同一类里"新名 + 描述符"不能重复（`dup-member-target`）→ 重载合法，撞名非法；
- 覆写链上同名同描述符必须同新名（`inherit_check` CONFLICT/DUPTARGET/MISSING 三条都要 0）；
- 字段行**只有两列**（`<旧名> <新名>`），写成三列会被当成方法行解析 → `no-method` 报错。
