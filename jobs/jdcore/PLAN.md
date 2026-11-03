# jdcore 剩余族的施工图（每一族都有已定位的锚点）

现状：**54 / 434**。已定名的判据分布：`src:` 32、`hier:` 2、`csp:` 20。

三条自动信号已证伪，别再重复：
1. 形状/计数（`subgraph.py` 的 unary）→ 逐包 0 唯一；
2. 成员描述符合一（带类型变量的多重集）→ 逐包 0 唯一；
3. 创建点签名（`tools/deob/ctorsig.py`，两侧 1220/1321 个 `new` 点）→ 唯一合计 2。

所以只能按族读源码。下面每族的"锚点"都已经在字节码/源码里定位好了，照着做就是机械劳动。

## A. `model/classfile/attribute`（40 类，已 14）

锚点：`ClassFileDeserializer.java:248-340` 的 `switch (name)`；字节码侧 `src/smali_classes3/org/c/a/a/c/b/a/a.smali`。
已收：Module/MethodParameters/ParameterAnnotations/Annotations/Code/BootstrapMethods/
LocalVariableTypeTable/ModulePackages/Exceptions/ModuleMainClass/AnnotationDefault/
LocalVariableTable/LineNumberTable/InnerClasses。
**剩余 5 个**（ConstantValue/Deprecated/Signature/SourceFile/Synthetic）在这份字节码里
`new-instance` 与 `const-string` 不相邻（编译器把创建提到了公共前导），要按"哪个方法返回/写入哪个类型"读；
另有 11 个"元素类"（`InnerClass/LineNumber/LocalVariable/LocalVariableType/MethodParameter/ModuleInfo/PackageInfo/ServiceInfo/BootstrapMethod/CodeException/UnknownAttribute`）
在 `InnerClasses` 解析方法同一处创建，按**创建顺序 + 字段类型**对源码即可。
剩余 10 个是抽象/接口（`Attribute`/`Annotation`/`Annotations`/`UnknownAttribute` 家族）用"谁继承它"定。

## B. `model/classfile/constant`（13 类，**已完成**）

`packed-switch`（起始 `0x1`，20 项）+ 继承树双证。

## C. `ElementValue*`（目标包 `org/c/a/a/b/a/a` 内 8 个）

锚点：`src/smali_classes3/org/c/a/a/c/b/a/a.smali:1527` 的方法
`.method protected e(La/c/b/a/c;La/b/a/b;)La/b/b/a/x;`（= `parseElementValue`），
方法体内 6 个 `new-instance`：`ad, ab, aa, y, a, z`。
对应源码 `ClassFileDeserializer.parseElementValue` 的分支（tag `B/C/D/F/I/J/S/Z/s` → Primitive，
`e` → EnumConst，`c` → ClassInfo，`@` → AnnotationValue，`[` → ArrayValue），
按分支里的 `const/16 0x4x` 字符常量逐个对。**注意** `a` 是包内另一个类，不是 ElementValue。

## D. `model/javasyntax`（160 类：declaration 37 / expression 42 / statement 35 / type 29 / reference 17）

没有分派表，只能"谁 new 它 + 字段语义"逐个读。建议按**构造器签名 + 字段类型多重集**分组：
先读 `service/converter/classfiletojavasyntax/visitor`（47 类里已定 33 的对应包）里
创建它们的地方（那些 visitor 已定名，`new XxxDeclaration(...)` 的参数语义直接给出类名）。
预计每轮 15~25 个。

## E. `service/*` 的 processor（6 类，**已完成**）+ `api/*`（4 类）

`api` 三类用 `decompile(Loader, Printer, String)` 的形参类型钉（`org/c/a/a/a/a/a`=Loader、
`org/c/a/a/a/b/a`=Printer、`a/a` 与 `a/b` 两包各 2 类需要再核一次）。

## 结论

完成度上限取决于"每轮能读多少源码"，经验值 **每轮 15~30 个类**，
剩余 380 类 ≈ **13~25 轮**。任何声称"一轮全解"的做法都只能靠人工指定双射，不是判定。
