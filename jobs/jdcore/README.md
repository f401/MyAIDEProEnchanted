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
