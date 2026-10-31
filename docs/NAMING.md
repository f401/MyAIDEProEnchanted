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

三元组对不上就**不出行**：AIDE 自有类、合成方法（`access$NNN`）、被魔改过签名的方法
都留空。当前基线：1667 个方法来自 LVT、117 个来自源码、0 个残缺；留空 350 个
（无类映射 149 / 方法名不同 95 / 描述符不同 106）。

写法（TSRG2，FART 1.0.8 内置 srgutils 实测）：

```
\t\t<实参序号> <旧参数名> <新参数名>     ← 3 段，两列各一个名字（我们两列写同一个）
```

- **必须 3 段**：只写「序号 + 名字」会报 `Invalid TSRG v2 line, too many parts`；
- **顺序**：紧跟方法行（以及它的 `\t\tstatic` 标记行）之后；
- 输入类若没有 `LocalVariableTable`（本项目就是这样），它只会改写 jar 内的
  `fernflower_abstract_parameter_names.txt`——这是收益，不是风险（见 VERIFY.md 门 9）。

禁止：拿 `var1/arg0` 占位、按现代变量名风格硬编、把方法名或字段名当参数名抄。
