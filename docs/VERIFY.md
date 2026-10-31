# 认证流水线

改完 mapping **必须**按顺序跑完下面 9 道门；全绿才允许构建。任何一道红了，按"失败处置"修，不要绕过。

真相在 `process/truth/`（类映射 tsv / 成员映射 tsrg / 头部 / smali 索引），`process/mappings.txt` 是派生产物。

## 两种等价入口

| | 本项目门禁（带白名单/版本差异分类） | 通用 kit（配置驱动） |
|---|---|---|
| 入口 | `tools/jgit/pipeline/*.py` | `tools/deob/cli.py -p process/deob.json <cmd>` |
| 配置 | 固定在本仓库 | `process/deob.json` |
| 适用 | 本项目的 9 道门（权威） | 新工程 / 交叉验证 |

```bash
cd /storage/emulated/0/MyAIDEProEnchanted
python3 tools/jgit/pipeline/filter_head.py --apply    # 0) 清 mappings_head.txt 的死块/死行
python3 tools/jgit/pipeline/rebuild_tsrg.py           # 1) **逐 part** 重建 members.tsrg（块顺序/去重/类目标查重），
                                                      #    并自动接着跑 1a/1b 生成 mappings.txt
python3 tools/jgit/pipeline/paramfill.py --write      # 1a) oracle LVT / jgit 源码 → truth/<part>/params.tsv（参数名）
python3 tools/jgit/pipeline/emit_tsrg2.py process/mappings.txt   # 1b) TSRG2：`\t\tstatic` 标记 + `\t\t<i> <名> <名>` 参数行
python3 tools/jgit/pipeline/validate_mappings.py      # 2) 有效性（类/成员存在、static、重复目标）
python3 tools/jgit/pipeline/verify_members.py         # 3) 一致性（对着 oracle + 白名单）
python3 tools/jgit/pipeline/inherit_check.py          # 4) 继承链闭合
python3 tools/jgit/pipeline/pkgclose.py               # 5) 包归属（访问图）
python3 tools/jgit/pipeline/coverage.py               # 6) 覆盖率（只度量）
python3 tools/jgit/pipeline/widen_access.py process/base/merged_ok.jar \
                                                # 7) 跨包 access 预演（不带 --apply 只看报告；--map 缺省用合并视图）
# 8) FART 两遍判等 + 冒烟（见 BUILD.md §3/§7）
```

通用 kit 的等价命令：

```bash
D="python3 tools/deob/cli.py -p process/deob.json"
$D params --apply   # = 门 1'（oracle LVT / src_root 源码 → truth/<part>/params.tsv）
$D emit          # = rebuild_tsrg + emit_tsrg2（输出与本项目产物逐行一致）
$D validate      # = 门 2
$D inherit       # = 门 4
$D pkgs          # = 门 5
$D widen process/base/merged_ok.jar          # --map 缺省 = paths.MAP（合并视图）
$D cover         # ≈ 门 6（口径略严，判定以项目脚本为准）
```

## 当前基线（九道门最近一次全绿）

| 门 | 期望输出 |
|---|---|
| 0 `filter_head` | `保留块 19 / 删块 0 / 删行 0` |
| 1 `rebuild_tsrg` | 逐 part：`jgit 685 / jsch 2 / aide 53`，合计 `类块 740`、`丢陈旧块 0`、`去重成员 0` |
| 1' `paramfill` | `方法映射 3307 条：命中 2957（无参 1173 / jar 参数全 1667 / 源码补全 117 / 仍缺 0）`；`参数行 3025 条（1784 个方法）`，写 `truth/jgit/params.tsv` |
| 1'' `emit_tsrg2` | `9829 行，static 方法标记 530 / 参数行 3025` |
| 2 `validate_mappings` | `类块 751 / 成员行 5522 / 参数行 3025 / 基线类 23635` → **✔ 无无效映射** |
| 3 `verify_members` | `成员映射 5352 / 不一致 0 / 类型不符 0 / R8 重写 4 / 版本差异 222` |
| 4 `inherit_check` | **CONFLICT 0 / MISSING 0** |
| 5 `pkgclose` | `约束边 464 / 需要挪的类 0 / 真冲突 3 组`（真冲突交给门 7） |
| 6 `coverage` | 方法 **3172/3533 = 89.8%**、字段 **1741/1855 = 93.9%**、类 623、完全覆盖 **480**；未入分母：方法 890 / 字段 496 |
| 7 `widen_access --report` | `跨包需放宽：类 24 / 成员 56`（`--apply` 改写 11 个 class） |

## 门 0：`filter_head.py`

| 期望 | 不符时 |
|---|---|
| 删块/删行 为 0（稳定态） | 非 0 说明头部有"已应用/不存在"的条目：`--apply` 后重跑门 1 |

## 门 1：`rebuild_tsrg.py` + `emit_tsrg2.py`

| 期望 | 不符时 |
|---|---|
| `输出类块 == tsv 类`、`丢弃陈旧块 0`、`去重成员 0`、**无 `目标重复` 异常** | 目标重复 = 两个类映射到同一 FQN；改 tsv |
| emit 后 `static 方法标记` 数量与 jar 一致 | 少写=成员不是 static；多写=元数据跟错行（门 2 会抓） |

> `rebuild_tsrg` 只保证块顺序与去重，**不写 static 标记、也不写参数行**；这两类都由 `emit_tsrg2` 补。

## 门 2：`validate_mappings.py`（无需参数）

对着 `process/src/*.jar + base/merged_ok.jar` 校验：类存在、方法/字段存在、
`\t\tstatic` 位置与 jar 一致、类目标不重复、成员目标（新名+描述符）不重复、新名合法，
以及参数行（跟在方法行后、3 段、两列同名、序号在参数个数内、同一方法内不重复）。

| 期望 | 不符时 |
|---|---|
| `✔ 无无效映射`，退出码 0 | `no-method/no-field`=幽灵成员（描述符抄错）→ `mapfix.py` 删该行；`dup-member-target`=两个成员同新名同描述符 → 保留一个、另一个回退或改名；`static-mismatch`=元数据跟错了方法 |

> `class-not-in-base` 只对 **头部**（历史首轮映射，探针已在 src jar 里改名）允许；jgit 侧出现即错。

## 门 3：`verify_members.py`

| 期望 | 说明 |
|---|---|
| `不一致 0`、`字段类型不符 0` | 不一致 = 改后的名字在 oracle 目标类里不存在/描述符不同 |
| `已知R8签名重写 4`、`已知oracle版本差异 222` | 白名单项，见 `process/verify_allow.tsv`（每条都要写理由） |

新出现不一致时：要么改回正确名字，要么在 `verify_allow.tsv` 追加一行 `探针<TAB>新名<TAB>理由`
（理由必须写清"3.7.1 里是什么、AIDE 改成了什么"）。

## 门 4：`inherit_check.py`

| 期望 | 说明 |
|---|---|
| `CONFLICT 0` | 子类与祖先同一**虚方法**被映射成不同名字 ⇒ 运行时分派错，必须同名 |
| `MISSING 0` | 祖先成员未映射但子类已改名 ⇒ FART 沿继承链兜底，结果不确定；补祖先的（必要时补恒等映射） |

> 只比较虚方法（非 static / 非 private / 非 `<init>`）；同名同描述符的 static/private 只是巧合。

## 门 5：`pkgclose.py`

用「访问包私有成员 ⇒ 必须同包」的并查集 + 不动点求每个类该在哪个包。

| 期望 | 说明 |
|---|---|
| `需要挪的类 0` | 有输出就 `--apply`，然后重跑门 1；会链式漂移，**迭代到 0** |
| 真冲突（多包同一分量） | 挪包解决不了 ⇒ 留给门 7 放宽 access；在当前基线里是 3 组，稳定存在 |

## 门 6：`coverage.py`

只做度量，不做判定。分母 = oracle 里在 APK 中有同形对应者的成员（R8 删掉的**不入分母**）。
口径见上表；通用版 `deob cover` 分母略大（77.9%/93.6%），仅作参考。

## 门 7：`widen_access.py`

| 期望 | 说明 |
|---|---|
| 列出的 class/成员都"确实会被跨包访问" | 只统计**本次映射造成**的（原本同包、现在不同包），不误伤原有代码 |

有输出就带 `--apply` 产出 `process/base/merged_pub.jar`（或 FART 后对产物跑），否则运行期 `IllegalAccessError`。
本项目当前：候选 24 类 / 56 成员，`--apply` 改写 11 个 class。

## 门 8：FART 两遍判等 + 冒烟

```bash
J=process/ForgeAutoRenamingTool-1.0.8-all.jar
java -jar $J --input <jar> --output out/v1.jar --map process/mappings.txt --lib ...
java -jar $J --input <jar> --output out/v2.jar --map process/mappings.txt --lib ...
H1=$(python3 tools/jgit/pipeline/jar_manifest.py out/v1.jar --list)
H2=$(python3 tools/jgit/pipeline/jar_manifest.py out/v2.jar --list)
[ "$H1" = "$H2" ] && echo "内容一致 ✔" || python3 tools/jgit/pipeline/jar_manifest.py out/v1.jar --check "$H2"
```

指纹不同 = FART 沿继承链兜底（还有 MISSING 或名字不一致）→ 回门 4。
最后按 BUILD.md §7 做安装冒烟（clone/commit/push）。

## 门 9：参数名（`paramfill.py` + FART 副作用核对）

参数名只认**可复现的证据**：

1. oracle jar 里 `(类, 方法名, 描述符)` **三元组完全相等**的那条方法的 `LocalVariableTable`
   （槽位 → 实参序号：0 起、不含 `this`、`long/double` 只占一个序号）；
2. 那条是抽象/接口方法（没有 `Code`，也就没有 LVT）时，退到 `~/src/jgit` 的同名源码：
   只认**无方法体**（`;` 结尾）的声明，多条时用形参类型与描述符逐个比对消歧，仍不唯一就留空。

三元组对不上（AIDE 改过签名、方法名被合过、AIDE 自有类、合成 `access$NNN`）一律**不出行**。

| 期望 | 说明 |
|---|---|
| `命中 2957（无参 1173 / jar 参数全 1667 / 源码补全 117 / 仍缺 0）` | 「仍缺 0」= 凡有参数的方法都拿到了名字 |
| 未命中 `无类映射 149 / 方法名不同 95 / 描述符不同 106` | 没有 oracle 对应物，故意留空（不编语义） |
| 重跑 `paramfill.py --write` 后各 `truth/<part>/params.tsv` 不变 | 幂等；成员改名后必须重跑（`rebuild_tsrg` 已自动串起来） |

**参数行对产物有没有副作用**（新旧 mapping 各跑一遍 FART 比 22763 个条目）：

| 结果 | 说明 |
|---|---|
| 条目数/顺序一致，`.class` 逐字节相同 | 输入类没有 `LocalVariableTable`，FART 没东西可改 |
| 唯一差异：`fernflower_abstract_parameter_names.txt`，117 行从 `varN` 变成真名（+213 字节） | 这是**收益**：Fernflower 反编译抽象方法时能显示真参数名 |

## 一页速查

| 症状 | 根因 | 修法 |
|---|---|---|
| `NoSuchMethodError` / `NoSuchFieldError` | mapping 指向不存在的成员 | 门 2 `validate_mappings` |
| `IllegalAccessError` | 跨包访问包私有 | 门 7 `widen_access --apply` |
| `AbstractMethodError` | 接口与实现名不一致 | 双侧同名（`verify_allow.tsv` 记录） |
| 覆写"失效"（调到父类实现） | 跨包 package-private 虚方法 | `widen_access`（放 protected） |
| FART 两遍产物不同 | 祖先成员未映射 / 子类改名 | 门 4 `inherit_check` 补 MISSING |
| D8 `multiple definitions` | 同类内新名+描述符重复 | 门 2 `dup-member-target` |
| Fernflower 里抽象方法参数名还是 `varN` | 参数行没生成 / 没被 FART 吃到 | 门 9 `paramfill` + 检查 `truth/<part>/params.tsv` |
| D8 `Invalid input code with a call to <clinit>` | dex2jar 产物缺陷（非改名造成） | `tools/jgit/pipeline/nop_clinit.py` 处理后重试 |
