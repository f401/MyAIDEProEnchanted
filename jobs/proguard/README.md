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
