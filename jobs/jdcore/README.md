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
