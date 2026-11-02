# jobs/proguard —— ProGuard **6.0.3**（AIDE 的混淆器，757 类，**进行中**）

## 1) 版本锁定：6.0.3

`a/ah` 的常量串里直接写着：

```
ProGuard, version 6.0.3
```

（同一个类里还有 `Setting target versions...`，是 ProGuard 的 `ConfigurationParser` 一族。）
所以 oracle 直接用 Maven 的 `net.sf.proguard:proguard-base:6.0.3`（华为云镜像有）：

```
~/out/oracle/proguard/proguard-base-6.0.3.jar          804 类
~/out/oracle/proguard/proguard-base-6.0.3-sources.jar  712 个 .java（参数名用）
```

APK 里是 757 类（AIDE 自己又用 ProGuard 裁过一遍，用不到的都删了），比例合理。

## 2) 这个 part 的探针范围是新前缀 `a`

之前所有 part 的探针前缀只有 `abcd` 和 `com/a`，所以**单字母包 `a` 从来没进过任何统计**。
本轮把它接进来：

- `process/deob.json`：新增 part `../jobs/proguard`（`probe_prefix: "a"`）+ oracle `proguard-6.0.3` + 源码根；
- **`process/truth/smali_index.tsv` 重建**（新增工具 `tools/deob/mkindex.py`）：
  以前索引只存**裸文件名**（`A.smali`），`a/` 和 `abcd/` 两个空间同名短类会串味；
  现在存**相对路径**（`a/am.smali`、`abcd/am.smali`），共 **21773 条**，覆盖四个 smali 根。

## 3) 做法：候选 → 成员级验证（这一步很关键）

**第一遍：出候选（98 个）**

1. 常量串 Jaccard：`≥0.8` 且领先第二名 `≥0.10` → 71 个（ProGuard 的串很有辨识度，
   例如 `a/k → ConfigurationParser` 有 152 个串、j=1.00）；
2. 否则看"包住关系唯一"：探针的 (方法描述符集, 字段描述符集, interface/abstract/enum 标志)
   被 oracle 类包含，且这样的 oracle 类**只有一个** → 27 个。

**第二遍：用成员级信号筛掉错的（98 → 45）**

对 98 个候选跑 `members --pkg=a --part=proguard`，然后按类统计**成员命中率**：

```
命中率 = 该类已定名的成员 / 该类非合成成员
```

结果 98 个类里只有 **45 个** 命中率 ≥60%（多数 ≥80%），其余 53 个让 954 条成员落进
`no-oracle-descriptor` —— 说明**类映射本身是错的**（ProGuard 里大量单方法 visitor 接口
形状完全一样，光看形状必错）。所以：**只保留被成员级证据支持的 45 个**，
另外 53 个退回候选（它们仍然是下一轮的线索，但不算结论）。

这条经验值得记住：`classmatch` 的贪心赋值能给到 662/757，但**没有领先阈值**，
形状相同的一族会被随机配平；`members` 的命中率是最好的"事后验伪"信号。

## 4) 现状（本轮只交类级）

```
类映射   45 / 757（全部经成员级验证：成员命中率 ≥60%）
成员行   0     ← 下一步
参数行   0
```

**为什么这轮不交成员行**：ProGuard 的类层级里，子类成员先定名会让
`inherit_check` 的 MISSING 从 0 跳到 9（`a/i/n` 7 个、`a/f/t` 2 个祖先成员没定名），
门禁不允许。正确顺序是**祖先优先**：先把 `proguard/classfile/**` 的接口/父类排完，
再自上而下补成员。（本轮试跑过：45 个类能定 367/546 方法、94/100 字段，
再现一遍即可，数据在 `out/members_a.tsv`。）

门禁：`validate ✔`（类块 1985）、`inherit 0/0/0`、`innercheck ②③ 0`（① 仍是 jgit 老账）。

## 5) 下一轮的计划（712 类）

1. **用这 45 个当 `--seed` 跑 `classmatch` 迭代**（`--seed` 会先归一化类型再匹配，
   已确认的类能把 `super/ifaces` 翻成探针空间，子孙类的候选面立刻收窄）；
2. **按 ProGuard 自己的包结构分块做**：`classfile`（315 类，含 attribute/visitor/editor）、
   `optimize`（约 180）、`io`/`obfuscate`/`evaluation`/`util`；
   每个子包先做"接口和抽象类"（形状最有辨识度），再往下；
3. **~100 个单方法 visitor 接口**形状完全一致，只能靠：① 父接口已定名后的
   `implements` 关系；② 调用点（`usematch --profile`：谁调用它的 `visitXxx`）；
4. 成员级等类级到 90% 以上再统一做，避免反复触发 MISSING。

## 6) 复现命令

```
# 候选（串 + 包住关系）
python3 ~/tmp/pgmap2.py            # 一次性脚本，逻辑见 §3

# 成员级验证（看每个类的命中率）
python3 tools/deob/cli.py -p process/deob.json members --pkg=a --part=proguard --apply
awk -F'\t' 'NR>1 && $5!=""' jobs/proguard/out/members_a.tsv | cut -f1 | sort | uniq -c | head

# 门禁
python3 tools/jgit/pipeline/rebuild_tsrg.py && python3 tools/jgit/pipeline/validate_mappings.py
python3 tools/jgit/pipeline/inherit_check.py && python3 tools/deob/innercheck.py
```

## 7) 第二轮：**包结构 1:1 保真**（本轮最重要的发现）

ProGuard 混淆时**保留了包层级**，只把每一层换成单字母。实测：

```
探针 33 个包  ↔  oracle 33 个包（数量相等，深度一一对应，类数几乎相等）
a              → proguard                                   40 vs 41
a/a            → proguard/backport                          10 vs 10
a/b            → proguard/classfile                         15 vs 16
a/b/c          → proguard/classfile/editor                  74 vs 78
a/b/g          → proguard/classfile/visitor                 66 vs 79
a/d/a          → proguard/evaluation/value                  57 vs 59
a/g/b          → proguard/optimize/info                     52 vs 57
a/b/a/a/a/a    → proguard/classfile/attribute/annotation/target/visitor   2 vs 2
```

完整 33 条落在 [`pkg_map.tsv`](pkg_map.tsv)（法：锚定已确认类的包 → 自顶向下按
"类数差 + 子包数差"贪心配对，并列就不猜）。

**用处**：类级候选面从 804 缩到"本包 4~78 个"，再叠 串/成员包含/标志 三条，
一轮就多认 60 个（73 → 133）；过一遍成员命中率筛掉 52 个，**定稿 79**。

**为什么成员命中率不能当唯一判据**：AIDE 这份 ProGuard 与官方 6.0.3 的**成员集不同**
（757 vs 804 类，同一个类里也有成员被裁/内联），所以"类对了"也可能只有 40~60% 成员能对上。
它更适合当**证伪**信号（一个类如果命中率 <30%，几乎一定是配错了）。

## 8) 第三轮要做的（678 类）

1. **包约束 + 引用图**：同一包里挑不出唯一时，用 `refmatch`（引用者/被引用者集合）
   把候选砍到 1；ProGuard 的 visitor 族正好是"一个 visitor 只被少数几处 new/调用"；
2. **visitor 族专项**：`classfile/visitor`(79)、`attribute/visitor`(23) 这些包里，
   类的区分点全在"它 visit 什么类型"→ 用方法描述符里的类型 + 调用点；
3. 每轮仍然：候选 → `members` 算命中率 → 保留 ≥60% 的 → 再迭代；
4. 类级到 90% 后统一做成员级（现在做会让 `inherit_check` MISSING 变 33，门禁不允许）。

## 9) 第三轮：**类型翻译**是卡点，201/757

上一轮的"包约束 + 互为最优"只到 79，原因找到了：**描述符里的类型没翻译**。
探针侧是 `La/b/c;`、oracle 侧是 `Lproguard/classfile/ClassFile;`，
`Dice(方法描述符集)` 直接算就是 0 —— 形状再像也配不上。

改法（与 `membermatch._wild` 同源）：

```
把 oracle 描述符按 class_map 反查回探针空间；
探针描述符里的**未定名类型**当通配 L[^;]+; 去匹配 oracle：
  match_frac = (能在 oracle 里找到对应的方法数) / (探针方法数)
  score = 0.55*match_frac(方法) + 0.20*match_frac(字段) + 0.25*串 Jaccard
```

然后仍按"包内**互为最优** + 两边领先 ≥0.05 + score ≥0.60"取：

```
129 → 326 候选 → （members 命中率 ≥0.5 验伪）→ 201 定稿
```

**命中率阈值降到 0.5**：直方图是双峰的（≤0.4 共 17 个 = 配错；0.5 共 22 个 =
成员被 AIDE 裁过/内联的对类；≥0.6 共 109 个）。0.5 那批抽查后确认是对类。

证据分布（`class_map.tsv` 第 3 列）：`pkg`(互为最优) 129、`contain` 27、`cm` 22、
`str` 17、`pkg+contain` 6。

## 10) 第四轮：先补 9 个祖先，再一次性落成员

本轮试跑成员级：201 个类能定 **1151/3673 方法、813/1125 字段**（1568 行），
但 `inherit_check` 的 MISSING 变 **81 条（38 个祖先成员）**，来自这 9 个还没定名的祖先：

```
a/b/c      (editor)            15 个成员
a/i/n      (shrink)             8
a/e/g      (io)                 4
a/d/a/ap   (evaluation/value)   3
a/b/g/s    (classfile/visitor)  2
a/b/f/w    (classfile/util)     2   ← 本轮反查到 proguard/classfile/util/SimplifiedVisitor
a/d/c      (evaluation)         2
a/e/ak     (io)                 1
a/j/u      (util)               1
```

**下一轮顺序**：
1. 用"子类覆写到的描述符集合（**同样要过通配**）+ 本包约束"把这 9 个祖先钉死；
2. 祖先齐了再跑 `members --apply`，MISSING 应为 0，成员级一次落地；
3. 剩下 556 个类继续"包内互为最优"迭代（每轮类型翻译都会更准，通配位越来越少）。

## 11) 第四轮：217/757（一条错路要记下来）

**继续"包内互为最优"**（类型翻译 + 通配）：198 → 352 候选 → 成员命中率验伪 → **217 定稿**。

**错路（已回滚）**：想用"子类的 oracle 父/接口唯一"把 9 个祖先一次钉死。
听起来很硬，实际不成立：

```
若 子类 C1..Cn 都 extends 探针类 P，且 Ci 的 oracle 目标是 Oi，
则 P = "Oi 的共同父"   ← 错
```

因为探针里的"父"在 oracle 里可能是**兄弟层**（同一个 probe 类既是别人的父、又在 oracle 里
处于更下一层）。实测立刻造出 **5 条 CONFLICT**：

```
a/d/a/aq 继承 a/d/a/bd   d()Z   子=isSpecific 祖先=isParticular
a/d/a/bc 继承 a/d/a/bd   c()Z   子=mayBeExtension 祖先=isSpecific
```

这条规则产出的 25 条映射**全部撤掉**，只留分数硬的 2 条：
`a/d/a/ap → ReferenceValue`(0.80)、`a/e/ak → WrappedDataEntry`(1.00)。

## 12) 卡点：`Value` 家族的同形布尔方法

`proguard/evaluation/value/Value` 同时有 `isSpecific()` 和 `isParticular()`（都是 `()Z`），
子类里还出现 `mayBeExtension()` 也是 `()Z` —— 形状完全一样，**成员级一跑就三件套齐发**
（CONFLICT 2 / DUPTARGET 1 / MISSING 86）。所以本轮成员行仍然清空，只交类级。

下一轮必须先解决这一族：
1. 用**方法体常量**定名：`isSpecific()`/`isCategory2()` 这类在本类里是 `return true/false`，
   拿返回值 + 被谁调用（`if (v.isSpecific())`）交叉确认；
2. 家族定死后再跑 `members --apply`，MISSING 才会真的归零；
3. 剩 540 个类继续"包内互为最优"迭代（每轮已定名类型更多 → 通配位更少 → 更准）。

## 13) 第五轮：`Value` 家族解决，225/757

**两个互补判据**（都在 `a/d/a` 值域家族上验证）：

1. **返回常量**：`()Z` 方法在字节码里是 `iconst_0/1 … ireturn`。拿探针的返回值去比 oracle 的
   返回值，同常量且唯一 → 定名。实得 6 条（如 `a/d/a/bc.c()` ret=0 → `isParticular`、
   `a/d/a/bc.h()` ret=1 → `mayBeExtension`）。
2. **覆写集**：`Value.isSpecific()` 与 `isParticular()` 都 `()Z` 且都返回 false，光看方法体分不开。
   改看"这个槽在**整个已映射家族**里被谁声明"：把探针里声明同名同描述符的类映射到 oracle，
   和"oracle 里声明 `isSpecific()` 的类集合 / 声明 `isParticular()` 的类集合"取交集，
   命中多的那个胜。实得 5 条，且与判据 1 在 `TypedReferenceValue` 上**互相印证**
   （`c()` 既是 ret=0 的 `isParticular`，又在覆写集里命中 `isParticular` 6/6）。

结果：**带着成员行跑也不再 CONFLICT / DUPTARGET**（这是上一轮的卡点）。

**祖先类的新判据**（替掉上一轮那条错的）：
> 未映射祖先 A 的候选 = （A 的每个已映射后代的 **oracle 祖先集合**）∩ 包约束 ∩ 标志集
> 交集唯一 → 定名；交集 ≥2 时再用"成员描述符（通配）最佳"挑，要求领先 ≥0.05。

实得 8 个：`a/b/a/a→Attribute`、`a/b/d/a/e→MultiInstructionVisitor`、
`a/b/f/w→SimplifiedVisitor`、`a/d/a/c→BasicValueFactory`、`a/d/a/d→Category1Value`、
`a/d/a/e→Category2Value`、`a/g→ClassSpecificationVisitorFactory`、`a/i/n→UsageMarker`。

## 14) 现状与最后一个阻塞

```
类映射   225 / 757（29.7%）
成员行   0     ← 试跑过：1065/2282 方法（47%）、632/730 字段（87%），共 ~1600 行
参数行   0
```

**阻塞只剩一个**：`inherit_check` 的 MISSING 56 条（25 个"抽象/接口祖先"）。
它们的候选交集 ≥2、成员最佳也分不出（`a/d/a/af`、`a/b/g/s` 这类），
而只给子类改名、祖先留空会让 FART 的不确定性上升，所以成员行仍然清空。

**下一轮**：
1. 这 25 个祖先用**调用点**定（`usematch --profile`：谁调用它 / 它被谁 new）——
   ProGuard 的 `Visitor`/`Unit` 家族调用点很集中；
2. 齐了以后 `members --apply` + 我的两道补槽脚本（返回常量 / 覆写集），成员级一次落地；
3. 剩 532 个类继续"包内互为最优"（已定名越多 → 通配越少 → 更准）。

## 15) 第六轮：成员级终于落地（243 类，方法 99.0% / 字段 98.3%）

**接口祖先的新判据**（上一轮 MISSING 56 的来源都是**接口**，不是类——它们不出现 `super` 里）：

```
未映射接口 A 的实现者 = 已映射类里有 A 在"接口传递闭包"里的那些
候选 = ∩(每个实现者的 oracle 目标在 oracle 里的**祖先集合**) ∩ 包约束 ∩ 标志
唯一 → 定名（17 个）
```

**值域家族按"覆写槽一致"统一**（这条才是根治）：

同一个槽在整个家族里必须同名，否则 FART 一定错。所以不是逐类挑名字，而是
**先定槽、再全族统一**：

```
c()Z = isParticular    d()Z = isSpecific
h()Z = mayBeExtension  b()Z = isCategory2
```

（`c()/d()` 谁是谁由 `TypedReferenceValue` 的**方法体返回常量**锚定，再按槽传播到全族 16 行。）

**最后一个祖先** `a/b/a/b/a/d`：它的唯一方法形参是 `La/b/a/b/g;`，而 `a/b/a/b/g` 已定名为
`RequiresInfo` ⇒ 它就是 `RequiresInfoVisitor`。**形参类型已定名 ⇒ 访问者身份唯一**。

结果：

```
类映射   243 / 757（32.1%）
成员行   1959（方法 + 字段）
参数行   1549
待人工   640（都在已定名的类里，下一轮用 rolefill 收）
cover(a) 方法 5292/5348 = 99.0%   字段 3847/3913 = 98.3%
门禁     validate ✔ / inherit 0/0/0(missing 0) / innercheck ②③ 0
```

**关键经验**：ProGuard 的 `MISSING`（祖先未定名）几乎全是**接口**，而且必须用
"实现者的 oracle 祖先集合交集"来定；定完接口，成员级才能一次性落地。

## 16) 第七轮：343 类（45.3%），`strict` 判据是主力

**新判据 `strict`（这轮贡献 93 个）**：
```
把探针的成员描述符**全部**翻译成 oracle 空间（任何一个类型未定名就放弃）→
要求 方法集 与 字段集 **完全相等** 且 标志相同 → 候选唯一
```
比"包住关系"严得多（是等号不是包含），所以几乎不可能错；随着已定名类型增多，
可判定面越来越大：243 类时 92 个可判、291 类时 123 个可判。

**访客族**（`classfile/attribute/visitor`、`.../annotation/target/visitor`）：
把被访问的类型（`RequiresInfo`、`LocalVariableTargetElement`…）先定名，
访客的身份就唯一——这轮的 MISSING 清零全靠它。

**rolefill 收尾**：把 387 条待人工里能按
`cand:唯一同形 / acc:<getter> / role:类型 / role:seq` 收掉的 **52 条**补齐，
剩 **335 条**（都是方法体无串、同族同形的硬骨头，留给人读方法体）。

现状：

```
类映射   343 / 757（45.3%）
成员行   2695
参数行   3133
待人工   335（都在已定名的类里）
cover(a) 方法 5830/5880 = 99.1%   字段 3995/4058 = 98.4%
门禁     validate ✔（类块 2283 / 成员行 17429 / 参数行 11337）
         inherit 0/0/0 · innercheck ②③ 0
```

## 17) 第八轮：344 类；把剩下的缺口量化了

本轮 `strict` 又拿 11 个（全类型已定名 + 成员集完全相等），过一遍命中率过滤（保留 344/354），
**净增 1 个类**——因为新映射的类里有 10 个在验伪时被剔掉（它们的成员命中率 <0.5，
说明那两个类彼此配错了）。这轮主要收获是**把剩余缺口量化清楚**：

```
324 条待人工 = 27 条 ambiguous + 297 条 no-oracle-descriptor
297 条里，**291 条（98%）的描述符里含"未定名探针类型"**
  e.g. a/a/f.a(La/b/c;La/b/b/q;)V   ← a/b/b/q 还没定名 → 描述符翻不过去 → 桶里空
```

也就是说：**成员级缺口几乎全是"类型还没定名"的连锁反应**，不是方法名猜不出。
所以正确顺序还是先啃类级（每多定名一个类型，就有一批成员自动解锁）。

`groupmatch`（同描述符组按方法体指纹）本轮跑出 **0 条**——因为它的指纹里含"被引成员"，
而那些成员名还没定名 → 指纹对不上。等类级到 80% 以后再回来用它。

现状：

```
类映射   344 / 757（45.4%）
成员行   2695
参数行   3133
待人工   324（98% 卡在"类型未定名"）
cover(a) 方法 5573/5623 = 99.1%   字段 4001/4072 = 98.3%
门禁     validate ✔（类块 2283 / 成员行 17429 / 参数行 11337）
         inherit 0/0/0 · innercheck ②③ 0
```

## 18) 第九轮：526 类（69.5%）——飞轮转起来了

上一轮把缺口量化成"98% 卡在类型未定名"，这一轮验证了那个判断：**类型一多，判定就变准**。

```
strict（全类型已定名 + 成员集完全相等）      +12
包内互为最优（类型翻译 + 通配，pg2）        +188
祖先（后代 oracle 祖先集合交集）             +2
接口（实现者的 oracle 祖先交集）             +5
→ 551 候选 → 命中率验伪 → **530 保留（只剔 10）**
```

对比：同样这条 `pg2` 在两轮前是"352 候选 → 只留 217（剔 38%）"，这次**剔除率从 38% 掉到 1.8%**。
原因就是已定名类型从 198 涨到 344：通配位少了，候选自然唯一。

**踩到并修掉的坑**：`pgstrict` 里 `taken` 只在末尾更新，导致 6 个"成员集完全相同"的
`*TargetInfo` 全被塞给 `SuperTypeTargetInfo`（rebuild 报了"目标重复"）。做法：
① 目标级去重（保留证据最强的一条）；② 这 6 个类的成员集**确实完全一样**，
`strict` 原理上分不开 → 全部留空，等别的判据。

最后一个祖先 `a/b/a/a/b/i`：唯一方法形参是 `(Clazz, TypeAnnotation, TypePathInfo)`
⇒ `proguard/classfile/attribute/annotation/visitor/TypePathInfoVisitor`（oracle 里只有它长这样）。

现状：

```
类映射   526 / 757（69.5%）
成员行   5001
参数行   4336
待人工   403（多数仍是"类型未定名"的连锁）
cover(a) 方法 6750/6791 = 99.4%   字段 4627/4710 = 98.2%
门禁     validate ✔（类块 2466 / 成员行 19735 / 参数行 12540）
         inherit 0/0/0 · innercheck ②③ 0
```
