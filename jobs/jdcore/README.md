# jdcore —— JD-Core v1（`org.jd.core.v1`，Java 反编译器内核）434 类

身份确认见 [docs/IDENTITY.md §1](../../docs/IDENTITY.md)。oracle：`~/out/oracle/jd/jd-core-1.1.3.jar`（470 类）
+ `jd-core-1.1.3-sources.jar` 源码。

## 包对齐（计数法，**候选**，未逐类验证）

探针 434 类 / oracle 470 类。包对齐用"oracle 计数 ≥ 探针计数且差最小"的贪心一一对应，
36 个探针包里有 35 个落在差 ≤3 的范围内（详见 `pkg_map.tsv`）。几个"精确相等"的锚点：

```
org/c/a/a/b/a/a      40 = model/classfile/attribute                40
org/c/a/a/b/a/b      13 = model/classfile/constant                 13
org/c/a/a/c/a/a/c    42 = model/javasyntax/expression              42
org/c/a/a/b/d/d      35 = model/javasyntax/statement               35
org/c/a/a/b/f        17 = model/javasyntax/reference               17
org/c/a/a/c/b/a       4 = service/deserializer/classfile            4
org/c/a/a/b/a         4 = service/converter/.../processor           4
```

## 已定名（1 个，硬判据）

```
org/c/a/a/a → org/jd/core/v1/ClassFileToJavaSourceDecompiler
```

判据：该类恰好 6 个字段，构造器逐个 `new` 出来；源码 `:24-29` 的字段顺序正是
`deserializer → converter → fragmenter → layouter → tokenizer → writer`；
`decompile()` 里 `setHeader("mainInternalTypeName"/"loader"/"printer"/"maxLineNumber"/"configuration")`
与源码 `:34-36`、`LayoutFragmentProcessor` 逐字相同。

**下一步（按这个顺序做最省力）**：

1. 用"入口类 6 个字段的类型 = 6 个 processor"把 `c/b/a/d`、`c/e/a`、`c/f`、`b/d`、`c/e/a/a`、`c/a/a/d` 六个
   service 入口类钉死（字段顺序 + 包对齐双重约束）；
2. `model/classfile/attribute`（40 类）与 `model/classfile/constant`（13 类）都是**名字常量被内联**的族，
   照 ProGuard 那套"创建点 / switch 常量"读 `ConstantParser`/`ClassFileParser`；
3. `model/javasyntax/*`（160 类）是纯数据模型，靠"谁构造它 + 字段类型"逐个读。

## 已接入（part 12）

`jobs/jdcore/` 已注册进 `process/deob.json` 的 `parts`（`probe_prefix: "org/c/a/a"`）
+ `tools/jgit/paths.py` 的 `PART_DIRS`。`rebuild_tsrg` 现在会枚举它：

```
jdcore 旧块 7 / tsv 7 / 输出块 7 / 丢陈旧块 0 / 去重成员 0
```

> 坑：`rebuild_part` 要求**同目录下 class_map.tsv 与 members.tsrg 都存在**；而且
> **空块会被当成"陈旧块"丢掉**（第一版只有类名没成员行，7 个块全被 DROP）。
> 所以每个类至少要写一条成员行。

## 已定名 7 个（全部 `src:`）

```
org/c/a/a/a      → ClassFileToJavaSourceDecompiler     6 个字段 + decompile
org/c/a/a/c/b/a/d→ .../deserializer/classfile/DeserializeClassFileProcessor   ← 字段 a 的类型
org/c/a/a/c/a/a/a→ .../converter/classfiletojavasyntax/ClassFileToJavaSyntaxProcessor ← b
org/c/a/a/c/c/a/a→ .../fragmenter/javasyntaxtojavafragment/JavaSyntaxToJavaFragmentProcessor ← c
org/c/a/a/c/d/a  → .../layouter/LayoutFragmentProcessor   ← d
org/c/a/a/c/e/a/a→ .../tokenizer/javafragmenttotoken/JavaFragmentToTokenProcessor ← e
org/c/a/a/c/f/a  → .../writer/WriteTokenProcessor        ← f
```

判据是**字段声明类型**（源码 `:24-29`）：`protected DeserializeClassFileProcessor deserializer = new ...`
六个字段名 `deserializer/converter/fragmenter/layouter/tokenizer/writer` 与探针字段 `a..f` 一一对应，
所以这 6 个 processor 的类型不用猜——它们就是入口类里那 6 个字段的类型。

成员行同理：6 个 processor 源码里**都只有一个** `process(Message)`（`grep -c "void process("` 各为 1），
探针里对应的唯一 `a(Lorg/c/a/a/b/e/a;)V` 就是它。顺带确认 **`org/c/a/a/b/e/a` = `model/message/Message`**
（原来贪心对齐把它当成了 `api/printer`，已修正 pkg_map）。

## 第二批：`model/classfile/constant` 13 个类（`src:` + `hier:` 双证）

`DeserializeClassFileProcessor` 旁边的 `org/c/a/a/c/b/a/a`（28 方法）就是常量池解析器，
它的 `packed-switch`（起始 `0x1`，20 个条目）把 JVM 常量 tag 直接连到 `new-instance`：

```
tag 1  → b/l      tag 3  → b/e     tag 4  → b/d     tag 5  → b/f     tag 6  → b/c
tag 7  → b/b      tag 8  → b/k     tag 9,10,11 → b/g   tag 12 → b/j
tag 15 → b/h      tag 16 → b/i     tag 17,18 → b/g     tag 19,20 → b/b
tag 2,13,14 → pswitch_0 = 抛 "Invalid constant pool entry"
```

对照 JVM 常量池定义（1=Utf8, 3=Integer, 4=Float, 5=Long, 6=Double, 7=Class, 8=String,
9/10/11=Field/Method/InterfaceMethodref, 12=NameAndType, 15=MethodHandle, 16=MethodType）：

```
b/l=ConstantUtf8  b/e=ConstantInteger  b/d=ConstantFloat   b/f=ConstantLong  b/c=ConstantDouble
b/b=ConstantClass b/k=ConstantString   b/g=ConstantMemberRef b/j=ConstantNameAndType
b/h=ConstantMethodHandle  b/i=ConstantMethodType
```

剩下两个由**继承树**定死（`hier:`）：`b/a` 是 `abstract + super Object` → `Constant`；
`b/m` 是 `abstract + super b/a` → `ConstantValue`；而 `b/{c,d,e,f,l}` 恰好都 `super b/m`
（= ConstantValue 的五个子类 Utf8/Double/Float/Integer/Long），`b/{b,g,h,i,j,k}` 都 `super b/a`。
两条独立证据（tag 分派 + 继承树）完全吻合。

## 下一步

1. `api/*` 三个小包（Loader/Printer/Decompiler）用 `decompile(Loader,Printer,String)` 的形参类型钉死；
2. `model/classfile/attribute`(40) + `model/classfile/constant`(13)：读 `DeserializeClassFileProcessor` →
   `ClassFileParser`/`ConstantParser` 的 `switch`/比较链（和 ProGuard 那套一样）；
3. `model/javasyntax/*`(160 类)：纯数据模型，靠"谁 new 它 + 字段类型"逐个读。

## 第三批：`model/classfile/attribute` 14 个（`src:` 双证）

`org/c/a/a/c/b/a/a`（28 方法）就是 **`ClassFileDeserializer`**（它同时管常量池和属性）。
两个方向同时命中：

1. **源码**：`ClassFileDeserializer.java` 的 `switch (name) { case "Code": attributes.put(name, new AttributeCode(...)); … }`；
2. **字节码**：同一条 `const-string "Code"` 后面紧跟 `new-instance Lorg/c/a/a/b/a/a/f;`。

```
Module→o  MethodParameters→n  RuntimeVisible(Parameter)Annotations→r/b  Code→f
BootstrapMethods→e  LocalVariableTypeTable→m  ModulePackages→q  Exceptions→i
ModuleMainClass→p  AnnotationDefault→d  LocalVariableTable→l  LineNumberTable→k
InnerClasses→j
```

注意 jd-core 把 **Visible/Invisible 合成一个类**（`AttributeAnnotations`/`AttributeParameterAnnotations`），
所以字节码里两个名字都指向同一个 `new-instance`——这也是为什么它俩在 oracle 里只有 1 个类。

顺带发现：`"Invalid element value type:"` 后面那一串 `new-instance`（`y,z,aa,ab,ac,ad,af,ag,ah,ai,aj,ak,al,am,an`）
就是 `ElementValue*` 家族的分派表，下一轮直接按 element_value tag 读出来。

## 第四批：`model/classfile/attribute` **包内 40/40 全部定名**

剩余 15 个用"**字段类型多重集**"一次配完（全包 40 个类的字段类型组合互不相同），
其中几处是**被已定名类的字段类型反查**，属硬判据：

```
AttributeLocalVariableTable 的字段类型是 [La/b/a/a/ah;  → ah = LocalVariable
AttributeLocalVariableTypeTable 的字段是 [La/b/a/a/ai;  → ai = LocalVariableType
Annotation(a) 的字段是 [La/b/a/a/ac;                   → ac = ElementValuePair
ElementValueArrayValue(z) 的字段是 [La/b/a/a/x;         → x  = ElementValue（唯一只有 abstract accept(ElementValueVisitor)）
ElementValueAnnotationValue(y) 的字段是 La/b/a/a/a;      → a  = Annotation
```

其余按字段组合唯一：`g=AttributeConstantValue`(ConstantValue)、`ad=ElementValuePrimitiveType`(I+ConstantValue)、
`aa=ElementValueClassInfo`(String)、`ab=ElementValueEnumConstValue`(String+String)、
`ae=ElementValueVisitor`(0 字段/5 方法)、`an=UnknownAttribute`(0/1，switch 的 default)、
`h=AttributeDeprecated`、`u=AttributeSynthetic`（这两个 0 字段/1 方法**逐字节同形**，靠源码 `case` 顺序
`:261 Deprecated` → `:320 Synthetic` 与创建点顺序 `h(1401)` → `u(1444)` 定；即使互换也不影响行为）。

## 第三条自动信号：创建点签名（`tools/deob/ctorsig.py`）—— 仍然不够

思路：**谁 `new` 它 + 用什么构造器参数**是改名不变的关系，把两侧都抽出来做多重集匹配。

```
探针侧（读 smali 的 new-instance + 紧随 <init>）  1220 个创建点，覆盖 286 个类
oracle 侧（读 class 字节码的 new + invokespecial <init>）1321 个创建点，覆盖 307 个类
```

匹配规则：创建者已定名→精确相等；未定名→当变量绑定；构造器描述符逐参合一（含变量一致）。
和一元约束（标志/父类/接口/成员计数/引用集）叠加后**逐包求唯一解**：

```
包                          probe pool 唯一
b/a/a attribute                26   26   0
b/d/a declaration              33   34   0
b/d/b converter/util           39   42   0
b/d/d statement                34   34   0
c/a/a/c expression             42   42   0
…（其余 21 个包同样 0）        唯一合计 2
```

**结论：三条自动信号（形状 / 成员描述符合一 / 创建点签名）都定不住。**
jd-core 的数据模型里，`new` 的位置往往只有一两处（工厂里），而一个包内几十个类的
"被谁创建 + 什么参数"几乎同构。想一次做完只能人为指定双射，那就不是"判定"了。

真正可行的只有**按族读源码**（方案 1）：每族先读工厂/分派点（`ClassFileDeserializer`
这种 `case "Name"` 链），再按 tag/常量逐个落位——本轮的 `attribute` 14 类就是这么收的。

## 批量求解尝试（结论：做不到"一次做完"，附诊断）

对 434 个类跑了 `tools/deob/subgraph.py`（一元约束 + 双向唯一 + 回溯）**并加了一层
"成员描述符合一匹配"**（把探针描述符里的未定名类型当变量，要求整类的成员多重集能与候选
在**一致的替换**下对上）：

```
包                           probe  pool  唯一解
org/c/a/a/b/a/a (attribute)     40    40     0
org/c/a/a/b/a/b (constant)      13    13    13   ← 已由 tag 分派单独解掉
org/c/a/a/b/d/a (declaration)   36    37     0
org/c/a/a/b/d/b (converter/util)39    42     0
org/c/a/a/b/d/d (statement)     35    35     0
org/c/a/a/c/a/a/c (expression)  42    42     0
…（其余 20 个包同样 0）
合计唯一相容 24（含 20 个非数据模型类）
```

**为什么全是 0**：jd-core 的 `model/*` 是纯数据模型——大量类是
`class X { int a; ConstantUtf8 b; }` 这种**同形**，成员形状（即使带类型变量）也无法区分。
例如 `expression` 包里 42 个类，一半都是"2 个字段 + 3 个方法"的不同组合。
真正能区分的只有**引用图**（谁 new 它、谁读它的字段），那需要带种子的图同构/二分匹配，
不是现有 unary 约束能做的。

已落地的是**能被唯一确定的那批**（40 类，20 条 `src:`/`hier:` + 20 条 `csp:`），
门禁全绿。剩下的 394 类要么按族读源码（每族 1-2 轮），要么接受"按作用命名"。

## 第五批：包对齐纠错（两行 pkg_map 是错的）

按形状对表时发现两行配反了，已改：

```
org/c/a/a/b/d/c  model/token                    →  model/javasyntax/reference
org/c/a/a/b/f    model/javasyntax/reference      →  model/token
```

证据：`model/token/TextToken` 有 **31 个字段**，而探针里唯一 30+ 字段的类是
`org/c/a/a/b/f/o`（33 字段）→ `b/f` 是 token 包；反过来 `model/javasyntax/reference/AnnotationReference`
是 3 字段/10 方法，而 `org/c/a/a/b/d/c/b` 恰好 3 字段/10 方法 → `b/d/c` 是 reference 包。

> 教训（第二次了）：**计数对齐只能当候选**。这次的判定锚是"极端形态"——一个包里
> 字段数最高/最低的那几个类，少数几个这样的锚就能整包纠偏。

改完之后这两包的形状表已经能一一对上（`reference`：3 字段/10 方法、0/6、1Z/6 都是唯一解），
下一轮直接按"字段类型多重集 + 引用者的字段类型反查"收，预计 15~17 个/包。

## 第六批：reference / token 两包按"整包签名双向唯一"各收 4 个

包对齐纠错后，用**整包"字段类型多重集 + 方法数"签名**做双向唯一（探针只有一个候选、候选也只有
一个探针）就能安全落：

```
javasyntax/reference   probe 15 pool 17  双向唯一 4
model/token            probe 17 pool 17  双向唯一 4
```

剩下的要靠"字段类型多重集"之外的证据（引用者的字段类型、`accept` 目标 visitor），下一轮做。

## 突破：`str:` —— 混淆不改字符串（+86），以及源码字面量匹配（+15）

**判据一：`toString()` 里写死的类名。** jd-core 的数据模型几乎每个类都有
`toString()` 返回 `"ClassName{..."`，而 ProGuard/R8 **不会改字符串内容**：

```
smali: const-string v1, "MethodInvocationExpression{'"   → 直接就是类名
```

全量扫 434 个探针类的 `const-string "Xxx{` → 与 oracle 未占用类的**简单名**唯一匹配 →
一次定下 **86 个**（declaration/expression/statement/type/token 五个包的主要成员都在里面）。
冲突（同一个名字被两个探针声称）一律跳过，交给后续判据。

**判据二：源码字面量唯一匹配。** 把 jd-core **396 个 .java** 里的字符串字面量建索引，
探针类的常量串在索引里只命中一个文件 → +15（`ByteCodeParser`、`TypeMaker`、
`LoopStatementMaker`、`ControlFlowGraph`、`WatchDog`… 都是靠错误/调试串定的）。

门禁：`validate ✔ · inherit CONFLICT 0 / MISSING 0`。

当前 **189 / 434（43.5%）**。

## 第七批：整包形状双射 + 成员回填（276/434，方法 65.3%）

**类名**：对**所有 26 个探针包**同时跑"包内 (方法数, 字段数) 双射"——
精确相等 + 两侧唯一 → +31；放宽到方法数 ±2、字段数相等仍要求两侧唯一 → +1。
任何"多对一"一律跳过（宁可漏，不错）；落库前 `validate ✔`、`inherit CONFLICT 0`。

**成员**：对全部已定名类跑"描述符反查唯一匹配"（把 oracle 成员的描述符经 `class_map`
反查回探针名，命中唯一成员才落名）→ **+828 行 / 193 个块**：

```
方法 618/947 = 65.3%（此前 32.5%）   字段 201/603 = 33.3%
```

> 字段覆盖低，是因为大量字段类型仍未定名（剩余 158 个类互相指），类覆盖每涨一点，
> 字段覆盖会跟着跳。

## 剩余 158 个：同形簇的最后一部分

```
c/a/a/c (util) 21   b/c (javafragment) 19   b/d/d (statement) 16   b/d/e (type) 16
b/d/a (declaration) 14   c/a/a/d (visitor) 14   b/d/b (expression) 11   其余 38
```

共同点：包内 (方法数,字段数) 组合重复、无 `toString`、无字符串常量、父类也在这 158 个里。
要再推进只有"逐个读源码比方法体"，每类 1~2 分钟；本仓库已把这批的**每一条已试判据与失败原因**
记录在此，接手者不必重走。

## 第八批（本会话）：`javap` 字节码指纹 + 创建点序列对齐 → **389/434（89.6%）**

前三把钥匙（形状/成员描述符合一/创建点签名）失败的原因写在上面几节；本轮换了两个
**方法体级**的判据，两个都可复现（两侧 jar + `javap` 就能重跑），并各自落成工具。

### 工具 1：`tools/deob/bytefp.py`（字节码指纹类级匹配）

把两侧 jar 都交给 `javap -p -c`，逐条指令归一化后比相似度：

```
指令多重集 0.22 · 成员描述符 0.12 · 常量串 0.05 · 方法级最佳对齐 0.36 ·
整数字面量 0.07 · 子类/实现者 0.08 · 创建点签名 0.10
```

归一化的坑（都踩过，已在代码里处理）：

1. `javap` 对**自身类**的引用不写 owner（`// Method a:(...)V`）→ 按当前类补回；
2. `aload_0..3`/`istore_2` 这类寄存器变体 → 一律折成 `aload`/`istore`（dx 与 javac 分配不同）；
3. 方法名（`"<init>"`/`"{}"`）带引号 → 去引号；
4. 内部类名折叠：已定名折真名、未定名折 `~`（两侧一致），**迭代精化**（每落一批名就重折）；
5. 父子关系一律取 `javap` 头（`extends`/`implements`），**接口的 `extends A, B` 要展开成多条**；
   `jvmbody` 的 `sup` 在这里是错的（例：`c/d/b/d` 实际 extends `c/d/c/b`，jvmbody 报成 `c/d/b/a`）。

标定（拿 283 个已定名类当留一验证集，`--test` 可复现）：

```
rank-1 命中 252/283 = 89.0%
thr=0.30 + margin=0.06 → 覆盖 224/283、精度 96.9%
thr=0.50 + margin=0.10 → 精度 98.9%；thr=0.55 → 精度 100%
```

落库分两档：`--thr 0.45 --margin 0.10`（+30，只取高余量）与默认 `0.30/0.06`（+24，97% 精度档）。
`--cluster` 还会对"剩余数相等"的包给**穷举最优指派**（N≤9），并打印最优/次优总分差——
差值 0 的包（如 statement 的 5↔5）**一律不落**，因为那是同形簇。

### 工具 2：`tools/deob/createmap.py`（创建点序列对齐）

思路：对每一对**已定名**的 `(探针类 P, oracle 类 O)`，先用**常量串序列**把方法配对
（同一类里两个方法的串序列几乎不可能相同 ⇒ 配对唯一；无串的方法用参数描述符配），
再把两侧方法体里 `new` 的**类序列按位置**对上；已定名的位置当锚点自检（不一致就整段丢弃），
未定名的位置投票。跑完全部已定名类后，票数唯一且 ≥2 的落名。

`--source <oracle 源码.java> --probe-class <探针类>` 是它的特例模式：直接拿 oracle **源码**
里的 `new` 序列（先剥注释，否则被注释掉的 `new` 会算错个数）对探针字节码。

### `model/javafragment` **27/27 整包收口**（本轮最大一块）

`c/c/a/a/b` 由常量串（`"End method body"`/`"Spacer between members"`…）判定为
`JavaFragmentFactory`，然后用 `--source` 把它的 39 个方法与 oracle 源码对齐，得到：

```
a=EndBlockFragment              b=EndBlockInParameterFragment   c=EndBodyFragment
d=EndBodyInParameterFragment    e=EndMovableJavaBlockFragment   f=EndSingleStatementBlockFragment
g=EndStatementsBlockFragment    j=ImportsFragment$ImportCountComparator
n=LineNumberTokensFragment$SearchLineNumberVisitor   o=SpaceSpacerFragment
p=SpacerBetweenMembersFragment  q=SpacerFragment               r=StartBlockFragment
s=StartBodyFragment             u=StartSingleStatementBlockFragment
w=StartStatementsBlockFragment$Group                  x=StartStatementsDoWhileBlockFragment
y=StartStatementsTryBlockFragment                     aa=TokensFragment$LineCountVisitor
```

其中 15 条来自工厂的 `new` 序列逐位对应（判据 `src:`），4 条来自"父类 + 字段多重集"
（`e`、`j`、`n`、`aa`：如 `j` 是包内唯一 `Comparator`、`aa` 的字段多重集
`(boolean,int,static)` 在 oracle 同包唯一），1 条（`w`=Group）来自
`StartStatementsBlockFragment.getGroup()` 的创建点。`x`/`y`（DoWhile/Try）由工厂里
`addStartStatementsDoWhileBlock`/`addStartStatementsTryBlock` 分别创建定死。

### 其他整包收口

```
c/d/b(5/5)  = layouter/util：VisitorsHolder + $1..$4（$1/$2 靠 visit() 里 depth 的 ±1 方向区分，
              $3/$4 靠 storeIndex() 落在 Start/End 分支区分；顺序由 4 个 getter 的声明序 corroborate）
d(5/5)      = util：Base / Base$1 / DefaultList / DefaultList$EmptyList / DefaultStack
              （DefaultList 靠"父类 ArrayList + (static, 自身内部类型) 字段"，EmptyList 靠"父类=DefaultList"）
c/c/a/a/(3) = fragmenter/util：CharacterUtil / JavaFragmentFactory / StringUtil（常量串转义表逐字相同）
a/b(2)      = api/printer：Printer（decompile 第 2 形参）+ PlainTextPrinter（**role:**，jd-core 1.1.3 无此类，
              freelly 魔改新增：Printer 的唯一实现，字段 StringBuilder+2boolean+3int）
b/e/a       = model/message/Message（decompile 里 new 后立刻 setHeader("mainInternalTypeName",…)；字段 (HashMap,Object)）
b/d/a,/b    = model/javasyntax：AbstractJavaSyntaxVisitor（104 个 visit 重载）+ CompilationUnit
c/a/a/b(3)  = converter/…/processor：ConvertClassFileException / ConvertClassFileProcessor / UpdateJavaSyntaxTreeProcessor
c/b/a/a     = ClassFileDeserializer（指纹 0.642、余量 0.642）
```

### `pkg_map.tsv` 修正 8 行（都是"没有已定名类反查"的包，只能靠结构判）

```
org/c/a/a/a/b   api/printer          （原 model/javasyntax）
org/c/a/a/b/d   model/javasyntax     （原 service/layouter/model ← 那是 c/d/a）
org/c/a/a/b/e   model/message        （原 api/printer）
org/c/a/a/c/c/a/a  fragmenter/util   （原 service/writer/visitor）
org/c/a/a/c/d/a service/layouter/model（原 model/javasyntax/expression）
org/c/a/a/c/a/a/a/b/b  …/model/javasyntax/expression（原 service/writer/visitor）
org/c/a/a/c/c/a/b  fragmenter/visitor（原 …/model/javasyntax/declaration）
org/c/a/a/d     util                 （原 service/layouter/util）
```

### 一处**推翻旧判据**：`b/d/a/h`

旧行是 `csp:` 判给 `BaseLocalVariableDeclarator`。但：

* `b/d/a/h` 是 **0 方法**接口，`BaseLocalVariableDeclarator` 是 1 方法接口，`BaseTypeDeclaration` 才是 0 方法；
* 已定名的 `b/d/b`(=CompilationUnit) 的唯一字段与构造参数都是 `b/d/a/h`，而 oracle
  `CompilationUnit` 的字段类型正是 `BaseTypeDeclaration`。

两条独立证据同时指向 `BaseTypeDeclaration` → 已改正。这是"弱判据（`csp:`）必须留前缀、便于被推翻"的又一例。

## 当前进度与剩余

**389 / 434 = 89.6%**（门禁：`validate ✔ · inherit CONFLICT 0/DUPTARGET 0 · famcheck 0/0 · innercheck ②③ 0`）。

剩余 45 个按包分布（"free"= oracle 同包未占用）：

```
b/d/e  type            9   ↔ free 13   d o p t u w +（接口/抽象互指）
b/d/a  declaration     5   ↔ free 6    aa e g l y
b/d/d  statement       5   ↔ free 5    ac ai g s z   ← {DoWhile,If,Synchronized,While} 同形簇 + 2
b/d/c  reference       4   ↔ free 6    d e g + 1
b/d/b  expression      3   ↔ free 6    ac o u
c/a/a/c util          12   ↔ free 12   ac ad af al p q s t w x y z
c/a/a/d visitor        5   ↔ free 19   aa ab ac b t
c/a/a/a/c localvar     4   ↔ free 4    b f g i（`--cluster` 给出的方案余量仅 0.07，未落）
其余 1~3 个零散
```

**下一步最省力的三条**（按性价比排序）：

1. `c/a/a/c`(util) 12↔12 与 `c/a/a/a/c`(localvar) 4↔4 已经**计数相等**：用
   `createmap.py` 的创建点序列（多数创建者已定名）× `bytefp.py` 的包内穷举指派交叉验证，
   两条都指向同一解才落；只对"差 ≥0.10 的位"落。
2. `b/d/d` 的 4 个同形语句（DoWhile/If/Synchronized/While）**只能**靠 `StatementMaker`
   /`LoopStatementMaker`/`SynchronizedStatementMaker` 的创建点区分 —— 这三个类在
   `c/a/a/c` 未定名的 12 个里，所以必须先解 util 包。
3. 接口簇一律用 `hier`：**直接子类型多重集**。本轮 `BaseTypeArgument`/`BaseTypeParameter`/
   `Type`/`BaseFieldDeclarator`/`BaseElementValuePair` 5 个接口就是这么一次定的
   （子类型多重集唯一）。注意父子关系要取 `javap` 头，`jvmbody` 的会错。

## 第九批：成员回填 + 一致性审计（本轮）→ **393/434（90.6%）**，方法名 59.9% / 字段名 80.0%

### 工具 3：`tools/deob/audit.py`（**只报告、不改文件**的三方一致性审计）

三类硬矛盾，全部可复现（两侧 jar + 已定映射）：

```
kind   接口/类/注解错配 —— 形状/计数判据最容易错的一类（接口没有方法体，指纹全是空的）
hier   父类/接口矛盾 —— 父类已定名时必须同一个父类；接口按 **oracle 侧祖先闭包**判定，
       因为"探针实现的是 A、oracle 实现的是 A 的子接口 B"不算矛盾（第一版没做闭包，误报 4 条）
size   oracle 比探针**少**方法/字段（ProGuard 只删不加，所以这个方向不可能）
```

第一次跑就抓到 **4 条 kind 错配**，全是老判据（`shape:`/`csp:`）留下的：

```
b/d/b/a  → Expression（接口）        实为 AbstractLambdaExpression       ← 唯一 extends
                                       AbstractLineNumberTypeExpression 且带 BaseStatement 字段
b/d/c/o  → AbstractNopReferenceVisitor（类）  实为 ReferenceVisitor（接口，8 个 visit(X)）
b/d/e/l  → AbstractNopTypeVisitor（类）       实为 BaseType（6 个方法签名逐一对应
                                       createType/getDimension/getInternalName/isXxx）
b/d/e/m  → Type（接口）              实为 AbstractType（**role:**：abstract、implements
                                       BaseType，被 GenericType/ObjectType/PrimitiveType 继承；
                                       jd-core 1.1.3 的 type 包 28 个类里没有它，属魔改/新版）
```

顺带修掉的三处：

```
b/d/c/c  AnnotationElementValue → **AnnotationReferences**（与 b/d/c/a 撞车 DUPTARGET；
         真 AnnotationElementValue 是 a，其 toString 串 "AnnotationElementValue{type="）
b/d/c/d / b/d/c/e  → BaseAnnotationReference / BaseElementValue（hier：唯一实现者分别
         是 AnnotationReferences / ElementValues）
c/a/a/a/c/d  Frame → **Frame$GenerateLocalVariableNameVisitor**（implements TypeArgumentVisitor，
         字段 String[]+StringBuilder+HashSet+HashMap+String、构造器 (HashSet,HashMap) 全同；
         原判来自"常量串命中 Frame.java"，与 c/b 撞车）
b/d/a/z  BaseMemberDeclaration → **MemberDeclaration**（ClassFileMemberDeclaration 的直接父）
c/a/a/a/b/a/e  → **ClassFileConstructorOrMethodDeclaration**（实现者 d/l/m = Constructor/
         Method/StaticInitializer；ClassFileTypeDeclaration 在 freelly 里被并掉了）
```

> `hier` 还剩 3 条，都是**魔改本身的结构差异**，不是判错，已在此记录：
> `c/a/a/d/c` 的父类在 freelly 里改成了 `AbstractJavaSyntaxVisitor`（原版是
> `AbstractTypeArgumentVisitor`）；`b/d/a/c`(TypeDeclarations) 多实现一个 `VariableInitializer`；
> `b/d/e/l`(BaseType) 多继承一个 `TypeArgument`。

### 成员回填（`cli.py members --apply`）

```
成员行 1111 → 2762 行（400 个类块）
方法 1989/3321 = 59.9%（此前 33%）         字段 779/974 = 80.0%（此前 25%）
已定名类内部：方法 1922/1933 = 99.4%      字段 776/793 = 97.9%
参数行 params.tsv 1615 行（rebuild_tsrg 顺带重算）
待人工 608 条：no-oracle-descriptor 568（freelly 新增/成员被内联）+ ambiguous 40
```

**踩到的两个坑（都已修进工具）**：

1. `membermatch.write_members()` 会给"没有类映射"的类补 **identity 类行**（`探针名 → 探针名`，
   证据写"类名未被混淆"）。这对 jsch 这种类名真实的库是对的，对 jd-core 是**灾难**——
   跑一次 `--apply` 就往 class_map 里塞 8 行假名。修法：`process/deob.json` 的 part 里加
   `"allow_identity": false`，并让 `config.py` 把这个键透传下来（原来 `_parse_parts` 只挑固定键，
   写了也不生效）。清掉这些行时记得**连成员块一起删**，否则 rebuild 会留 7 个"陈旧块"。
2. `inherit_check.py` 打印 DUPTARGET 详情的格式串有 6 个占位符、元组只有 5 项 →
   一有 DUPTARGET 就 `TypeError` 崩掉（等于"有错却看不到"）。已修。
   修完立刻抓到一条真错：`org/c/a/a/d/a`(util/Base) 的 `size()I` 被填成 `getDimension`，
   与祖先的兜底名撞车 → 改为 `size`（oracle Base 的 6 个 default 方法之一）。

### 状态

```
393/434 = 90.6%（41 个类未定名）
门禁：validate ✔ 无无效映射 · inherit CONFLICT 0 / DUPTARGET 0（MISSING 418 条=71 个祖先成员，
      全在未定名类） · famcheck 0/0 · innercheck ②③ 0 · audit kind 0 / hier 3（见上）
```

## 第十批：子类多重集 + 调用点（callee）两把新钥匙 → **402/434（92.6%）**

成员名一填起来，`bytefp` 的指纹立刻变准（折叠时用 `members.tsrg` 改名表）：

```
标定 rank-1 89.0% → 92.8%；thr=0.30/margin=0.06 时精度 98.1%
按默认档落 2 条：b/d/a/y=LocalVariableDeclarators、b/d/b/ac=NewInitializedArray
```

### 钥匙一：`hier` —— **直接子类型多重集**（接口/抽象类的唯一可行判据）

接口没有方法体，指纹全空；但"谁实现/继承我"是改名不变的。这个多重集**唯一**时就是硬判据
（父子关系取 `javap` 头，接口的 `extends A, B` 展开）：

```
b/d/b/o → ExpressionVisitor            children={AbstractNopExpressionVisitor,
                                       ExpressionVisitor$HexaExpressionVisitor, AbstractJavaSyntaxVisitor}
b/d/d/z → SwitchStatement$Label        children={$DefaultLabel, $ExpressionLabel}
b/d/e/o → TypeVisitable                children={BaseType}
c/a/a/a/c/g → LocalVariableReference   children={ClassFileFormalParameter,
                                       ClassFileLocalVariableReferenceExpression}
```

> `z` 在 freelly 里被改成了 **abstract class**（原版是 interface，extends Statement）——
> `audit.py` 的 `kind` 会一直报这一条，属结构差异，不是判错。

### 钥匙二：**创建点分布**（谁来 new 我，按"哪几个类"而不是"哪个位置"）

同形簇（{If, While, DoWhile, Synchronized} 四个语句字段全同：`BaseExpression + BaseStatement`）
只能靠 maker 分：

```
ai → WhileStatement        同时被 StatementMaker(1 处) 与 LoopStatementMaker(3 处) 创建；
                           oracle 里同时出现在这两个 maker 的只有 WhileStatement
g  → DoWhileStatement      只被 LoopStatementMaker 创建（oracle 该文件只有 1 处 new DoWhileStatement）
ac → SynchronizedStatement 唯一创建者是 al；al 的静态方法签名 (LocalVariableMaker, Statements,
                           Statements)→Statement 与 oracle synchronizedStatementMaker.make 逐参相同，
                           且字段 (static boolean) 就是 $assertionsDisabled
al → SynchronizedStatementMaker   ← 同时把老映射 v→SynchronizedStatementMaker **推翻撤销**
                           （v 的 2 个静态方法返回 Field/AbstractExpression，与 maker 签名不符）
```

顺带纠正两处"抽象基类"：

```
b/d/b/n  CommentExpression → **AbstractExpression**（role:）
         abstract、0 字段、implements BaseExpression，直接子类是 AbstractLineNumberExpression /
         ObjectTypeReferenceExpression / TypeReferenceDotClassExpression；1.1.3 的 expression 包
         42 个类里没有它（魔改/新版），CommentExpression 是 final 且有 1 个 String 字段
b/d/e/m  Type → **AbstractType**（role:，同上一批）
```

### 状态

```
402/434 = 92.6%（32 个类未定名）
成员：方法 2079/3321 = 62.6%、字段 787/974 = 80.8%（已定名类内部 99.5% / 98.1%）
门禁：validate ✔ · inherit CONFLICT 0 / DUPTARGET 0 · famcheck 0/0 · audit kind 1(已知)
      / hier 3(已知) · 成员行 2860
```

剩余 32 个集中在三块，且都已确认"同形"：`c/a/a/c`(util) 12↔12（其中 `ad/af` 与
`TypeMaker$TypeTypes/$MethodTypes` 的字段**顺序**不同但多重集相同，指令流逐字一样——
需要靠 TypeMaker 里的调用点区分）、`c/a/a/d`(visitor) 5、`b/d/e`(type) 5、
`b/d/a`(declaration) 6。

## 第十一批：`--source` 工厂对齐打到 util 包 → **417/434（96.1%）**

### 破局点：`src:` 字面量判据会**命中文件**而不是类

`ae` 原来判成 `TypeMaker`（证据是"常量串只出现在 TypeMaker.java"）。本轮用
`createmap.py --source TypeMaker.java --probe-class <候选>` 做**方法体级的 new 序列对齐**，
发现 `ae` 的方法体里根本没有 `parseClassFileSignature`，而 `ac` 有：

```
ac.a(ClassFile)  ↔ TypeMaker.parseClassFileSignature
   new 序列 探针 [af, v, ae, v]  ↔  oracle [TypeTypes, UnmodifiableTypes, SignatureReader, UnmodifiableTypes]
             （v=Types 是已定名锚点，双向一致）
```

一处对齐同时定死 4 个类，并推翻一条旧判据：

```
ac → TypeMaker                  （原未定名）
af → TypeMaker$TypeTypes        （对齐第 1 位）
ae → TypeMaker$SignatureReader  （对齐第 3 位；toString 串 "SignatureReader{index="/", nextChars=" 同，
                                 9 个方法也对得上。**原判 TypeMaker 是错的**——字面量在 TypeMaker.java
                                 这个文件里，内层类的串也在这个文件，`src:` 天然分不清）
ad → TypeMaker$MethodTypes      （TypeMaker 只有两个"1 方法内层类"，TypeTypes 已定死，剩它）
```

还有一处对齐把 `parseTypeParameter` 的 new 序列读出来 `[q, p, r, r]`：
`r`=TypeParameterWithTypeBounds（已定名，双锚点）✓；`q` 有 toString `"TypeParameter{identifier="`
→ `q`=TypeParameter ✓；`p` 落在 UnmodifiableTypes 的位置但字段/方法数差太远，
判据不足，**留白不猜**。

### 其他新判据

```
b/d/b/u → LambdaIdentifiersExpression   str:toString 串 "LambdaIdentifiersExpression{"/"->" 逐字相同
                                        + 父类 = 已定名 AbstractLambdaExpression
b/d/e/t → TypeArgumentVisitable         signature:唯一方法形参是 u(=TypeArgumentVisitor)
b/d/e/p → UnmodifiableTypes             hier:oracle 里唯一 extends Types 的类
b/d/e/w → DiamondTypeArgument           hier:实现 TypeArgument 的类里同包唯一（去 DIAMOND 单例的简化版）
b/d/a/f → BaseLocalVariableDeclarator   hier:子类型多重集 {LocalVariableDeclarator, LocalVariableDeclarators}
b/d/a/y → LocalVariableDeclarators      fp:0.48/0.16
b/d/b/ac → NewInitializedArray          fp:0.33/0.09
```

### 4 个"魔改新增"类按作用命名（`role:`，都已标明无 oracle 对应）

```
w  → ClassTypeResolver                      Loader + 两个 String 缓存 + getObjectType(String)
                                            + isRawTypeAssignable；由 ClassFileToJavaSyntaxProcessor 构造。
                                            1.1.3 里这段逻辑在 TypeMaker 内部，freelly 拆成了独立类
z  → ClassTypeResolver$TypeNameResolver     接口 (ClassFileReader, String, String) → String
x  → ClassTypeResolver$1                    上面接口的实现 #1（持 ClassTypeResolver、由它构造）
y  → ClassTypeResolver$2                    实现 #2（与 x 同形，无判别证据，按创建顺序编号）
c/a/a/a/c/f → LocalVariable                 局部变量的可访问接口 (accept/getName/getType)
b/d/d/s     → AbstractStatement             abstract + implements Statement + Base 默认实现
b/d/e/m     → AbstractType                  （上一批）
b/d/b/n     → AbstractExpression            （上一批）
```

### 状态

```
417/434 = 96.1%（17 个类未定名）
成员：方法 2116/3321 = 63.7%、字段 802/974 = 82.3%（已定名类内部 99.5% / 97.9%）
门禁：validate ✔ · inherit CONFLICT 0 / DUPTARGET 0 · famcheck 0/0 · innercheck ②③ 0
      · audit kind 1 / hier 5（全部是 freelly 的结构差异，见下）
```

`audit.py` 也一并改进：父类/接口比对只对**oracle 侧真实存在**的类做（`role:` 命名的魔改类
必然对不上，跳过），被跳过的已在上面逐条列明。

剩余 17 个：`c/a/a/c`(util) 5（p/q/s/t/v，其中 v 的 2 个静态方法返回 Field/AbstractExpression、
`w` 拆出去之前它属于 TypeMaker 的一部分）、`c/a/a/d`(visitor) 5、`b/d/a` 4、`b/d/c` 1、
`b/d/e` 1、`c/a/a/a/a` 1。下一轮的主攻方向：`c/a/a/d` 的 19 个空闲 oracle 类用
"子类型多重集 + 创建点分布"批量筛；`c/a/a/c` 的 5 个用 `StatementMaker`/`TypeMaker`
剩余方法的 new 序列逐个对。

## 第十二批：`this$0` 反查 + 静态字段序 + 参数类型 → **423/434（97.5%）**

### 判据一：内层类的 `this$0`（外类）只有一个

`ac` 与 `o` 同形（都是 `extends AbstractJavaSyntaxVisitor` + `visit(ClassDeclaration/Enum/Interface)`），
靠 `final <外类>` 字段分：

```
ac.this$0 = ab   → ab 是 Step2 构造器里 new 的 UpdateBridgeMethodVisitor（见下）
                 → ac = UpdateBridgeMethodVisitor$BodyDeclarationsVisitor
o.this$0  = j    → j = InitInnerClassVisitor，它的两个直接内层类里 l 已定名 = UpdateNewExpressionVisitor
                 → o = InitInnerClassVisitor$UpdateFieldReferencesVisitor
                   （原判 BodyDeclarationsVisitor 已改判给 ac；o 另有 updateExpression 方法可佐证）
```

### 判据二：`<clinit>` 里的**字段声明顺序**

```
UpdateJavaSyntaxTreeStep2Visitor.<clinit> 只造两个静态访问器，源码字段顺序是
(AGGREGATE_FIELDS_VISITOR, SORT_MEMBERS_VISITOR)；
探针 af 的 <clinit> 造 [b, aa] 逐位对应 + b 另有硬证据（见下）→ aa = SortMembersVisitor。
```

`b = AggregateFieldsVisitor` 是 **callee** 判据：全库唯一调用 `AggregateFieldsUtil` 的类就是它。

### 判据三：构造器签名 + `init()` 返回值

```
ab: (ClassFileBodyDeclaration)→boolean  = oracle UpdateBridgeMethodVisitor.init
    (Expression)→Expression            = updateExpression
    字段 (内层访问器, HashMap)           = (bodyDeclarationsVisitor, bridgeMethodDeclarations)
  ⇒ ab = UpdateBridgeMethodVisitor（由 UpdateJavaSyntaxTreeStep2Visitor 构造器创建）
```

### 判据四：Comparator 的**参数类型**（推翻两条形状判据）

```
i: compare 的形参是 b/a/g = ClassFileEnumDeclaration$ClassFileConstant
   → InitEnumVisitor$EnumConstantComparator   （原判 PopulateBlackListNamesVisitor 是 (方法数,字段数) 形状撞的）
k: compare 的形参是 b/a/k = ClassFileMemberDeclaration，且本类在 visitor 包、无外类字段
   → InitInnerClassVisitor$MemberDeclarationComparator
     （util 包里同签名的 MergeMembersUtil$MemberDeclarationComparator 已定名给 u，两者不是同一个类）
t: 字段 HashSet + 构造器(HashSet) + 3 个 visit(GenericType/InnerObjectType/ObjectType)，父类 = AbstractNopTypeArgumentVisitor
   → PopulateBlackListNamesVisitor
g: 已定名 i(=BodyDeclaration) 的字段类型是 (String, g)，oracle BodyDeclaration 的字段是
   (internalTypeName, memberDeclarations:BaseMemberDeclaration) ⇒ g = BaseMemberDeclaration
```

### 状态

```
423/434 = 97.5%（11 个类未定名）
成员：方法 2143/3321 = 64.5%、字段 814/974 = 83.6%（已定名类内部 99.5% / 97.9%）
门禁：validate ✔ · inherit CONFLICT 0 / DUPTARGET 0 · famcheck 0/0 · innercheck ②③ 0
```

剩余 11：`c/a/a/c`(util) 5（p/q/s/t/v）、`b/d/a`(declaration) 3（aa/e/l）、`b/d/c` 1、`b/d/e` 1、
`c/a/a/a/a` 1。其中 `aa` 已查明是"abstract + implements MemberDeclaration + Base 默认方法 +
直接父类是被 5 个 declaration 类继承的那个"，与 `i`(=BodyDeclaration) 形成一对"到底哪个是
BodyDeclaration/BaseMemberDeclaration"的待解对，下一轮用 BodyDeclaration 的字段/构造器再对一次即可。
