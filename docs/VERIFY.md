> **当前门禁（2026-11）**：共 **11 道**，全绿才提交。真相现在是 `jobs/<part>/` 下的四张表
> （`class_map.tsv` / `members.tsrg` / `params.tsv` / `comments.tsv`），`process/mappings.txt|.tiny`
> 都是派生产物。

```bash
cd /storage/emulated/0/MyAIDEProEnchanted
python3 tools/jgit/pipeline/rebuild_tsrg.py          # 1) 逐 part 重建 members.tsrg，并串 paramfill + emit_tsrg2
python3 tools/jgit/pipeline/validate_mappings.py     # 2) 有效性：类/成员存在、static、重复目标、
                                                     #    **collide-existing（与基线类撞名）**、dup-class-source、
                                                     #    dup-member-source、field-with-type、参数行
python3 tools/jgit/pipeline/verify_members.py        # 3) 一致性：对着 oracle + process/verify_allow.tsv 白名单
python3 tools/jgit/pipeline/inherit_check.py         # 4) 继承闭合：CONFLICT / DUPTARGET / MISSING 全 0
python3 tools/jgit/pipeline/pkgclose.py              # 5) 包归属（访问图）
python3 tools/deob/innercheck.py                     # 6) 内部类/顶层类与外层归属：①②③ 全 0
python3 tools/deob/famcheck.py --jar process/base/merged_ok.jar \
        --parts jobs/*/members.tsrg                  # 7) 覆写族体检：冲突 0 / 祖先未映射 0
python3 tools/jgit/pipeline/emit_tiny2.py            # 8) 派生产物：process/mappings.tiny（带注释，--comments=none 给 FART）
python3 tools/jgit/pipeline/validate_tiny.py         # 9) Tiny 体检：语法/唯一性/desc/参数下标/注释；--parts=… 查注释覆盖
python3 tools/jgit/pipeline/tiny_roundtrip.py        # 10) **等价性硬判据**：tiny→TSRG2 与 mappings.txt 逐行相同
python3 tools/jgit/pipeline/coverage.py              # 11) 覆盖率（只度量，不判定）
```

期望值（当前基线）：`类块 4329 / 成员行 28890 / 参数行 22167`；`不一致 0`；
`CONFLICT 0 / DUPTARGET 0 / MISSING 0`；`innercheck ① 0 / ② 0 / ③ 0`；`famcheck 0/0`；
`注释 33219 = 类 4329 + 方法 19157 + 字段 9733`。

## 两种等价入口

| | 本项目门禁（带白名单/版本差异分类） | 通用 kit（配置驱动） |
|---|---|---|
| 入口 | `tools/jgit/pipeline/*.py` | `tools/deob/cli.py -p process/deob.json <cmd>` |
| 配置 | 固定在本仓库 | `process/deob.json` |
| 适用 | 本项目的门禁（权威） | 新工程 / 交叉验证 |

```bash
cd /storage/emulated/0/MyAIDEProEnchanted
python3 tools/jgit/pipeline/filter_head.py --apply    # 0) 清 mappings_head.txt 的死块/死行
python3 tools/jgit/pipeline/rebuild_tsrg.py           # 1) **逐 part** 重建 members.tsrg（块顺序/去重/类目标查重），
                                                      #    并自动接着跑 1a/1b 生成 mappings.txt
python3 tools/jgit/pipeline/paramfill.py --write      # 1a) oracle LVT / jgit 源码 → jobs/<依赖>/params.tsv（参数名）
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
$D params --apply   # = 门 1'（oracle LVT / src_root 源码 → jobs/<依赖>/params.tsv）
$D emit          # = rebuild_tsrg + emit_tsrg2（输出与本项目产物逐行一致）
$D validate      # = 门 2
$D inherit       # = 门 4
$D pkgs          # = 门 5
$D widen process/base/merged_ok.jar          # --map 缺省 = paths.MAP（合并视图）
$D cover         # ≈ 门 6（口径略严，判定以项目脚本为准）
```

## 当前基线（十道门最近一次全绿）

| 门 | 期望输出 |
|---|---|
| 0 `filter_head` | `保留块 1 / 删块 0 / 删行 0`（head 只剩 `abcd/vj → abcd/aide/AssetProvider`；见 NOTES §15） |
| 1 `rebuild_tsrg` | 逐 part：`jgit 685 / jsch 141 / aide 54`，合计 `类块 880`、`丢陈旧块 0`、`去重成员 0` |
| 1' `paramfill` | `参数行 4022 条（2328 个方法）`，按类来源写各 part 的 `params.tsv`（jgit 3238 / jsch 784 / aide 15） |
| 1'' `emit_tsrg2` | `55480 行，static 方法标记 2073 / 参数行 22167` |
| 2 `validate_mappings` | `类块 4329（含头部 1）/ 成员行 28890 / 参数行 22167 / 基线类 23636` → **✔ 无无效映射** |
| 3 `verify_members` | `成员映射 5376 / 不一致 0 / 类型不符 0 / R8 重写 4 / 版本差异 223` |
| 4 `inherit_check` | **CONFLICT 0 / MISSING 0** |
| 5 `pkgclose` | `需要挪的类 34 / 真冲突 18 组`（真冲突交给门 7；jsch 的 `jce`/`jgss` 子包间是原库本来就有的包私有访问，不挪包） |
| 6 `coverage` | 方法 **3501/3533 = 99.1%**、字段 **1848/1855 = 99.6%**、类 623、完全覆盖 **604**；未入分母：方法 890 / 字段 496；未命中明细 39 条 → `~/out/work/cov_miss.tsv` |
| 7 `widen_access --report` | `跨包需放宽：类 31 / 成员 58`（`--apply` 改写对应 class） |
| 12 `tools/jgit/audit/apk_refs.py`（构建链 `apkrefs` 步） | **产物里不许有"旧类名"残留**：class_map 里被改名的旧名 `L旧名;` 在 dex / 嵌套 jar 里一个都不许有（另含 `assets/data/functions/**` 格式检查：必须仍是 `zip(classes.dex)`；踩过 `com/aide/ui/U` 引用残留 → NOTES §12、资产格式 → NOTES §13） |
| 12'' `tools/deob/assetcheck.py`（新增）| **资产包引用一致性**。`assets/data/functions/**` 的 4 个 bundle 不参与 FART 改名（构建时原样回填），所以它们**引用到的类/成员都不许改名**；否则运行到那行就是 `NoClassDefFoundError: L旧名;`（踩过：en/zh 语言包引用 `abcd/Be`，改名后崩）。要保留可读名就把 bundle 自己也过一遍 FART（见 RESTORE §8）。当前：en 12 类 / zh 12 / ndk 10 / packagingservice 19，**违规 39 条**（见下） |

> **违规 39 条 → 已由构建链新增的 `assetdex` 步根治（待用户构建验证）**。en/zh 语言包里引用了这些被改名的符号：
> `abcd/Ea→FileManager`、`abcd/la→FileType`、`abcd/na→LanguageServices`、`abcd/pa→Indenter`、
> `abcd/Hd→JavaTypeTable`、`abcd/Nk→OpenFileTable`、`abcd/Wi→SolutionBuilder`、`abcd/Zk→AppController`、
> `abcd/ck→SyntaxErrorTable`、`com/aide/ui/build/android/I→UsageSearch`、`abcd/GA→ZipSigner`、
> `abcd/Ek.j6/Zo`、`abcd/GA.j6/DW`、`abcd/ApplicationUtils.j6`。
> 影响面：**只有"Show Code Help"这条功能**（bundle 是离线 API 文档库），不影响编译/编辑/构建。
> 已落地：`tools/build/assets_rename.py` + `build_apk.py` 的 `assetdex` 步（`dex2jar → FART → D8 → zip`），
> `repack` 优先用 `out/build/assetdex/<key>.zip`；单个 bundle 失败只告警并回落原 bundle（不会更差）。
> 实测 `en` bundle 经这一步后 `abcd/Ea→com/aide/engine/FileManager`、`abcd/na→LanguageServices` 全部换名。 |
| 12' `tools/deob/innercheck.py`（新增）| **内部类归属不变量**：探针 `X$y` 若映射成 `A$b`，则 `A` 必须 = `map(X)`；探针内部类不许映射成顶层类（否则外层 `InnerClasses` 变成 `outer=X / inner=顶层类 / innerName=a` 的自相矛盾条目，D8 报 `Malformed inner-class attribute`）。当前：①外层归属不一致 0 ②内部类↔顶层错配 0 ③重复目标 0 |
| 11 `tools/jgit/audit/jdk_refs.py`（构建链 `jdkrefs` 步） | **改名前后指向 `java/`/`javax/`/`android/`… 的引用必须一模一样**；踩过一次 `toString→getLongname` 被 FART 传播到 `java.lang.Object` / `CharSequence`，780 条 JDK 引用被改坏，装机即崩（见 NOTES §11） |
| 10 `deob mgraph --pkg=com/jcraft/jsch` | `调用图自证：530 个方法 / 2462 条已定名引用，未对上 6 条（0.2%），可疑方法 4 个`（4 条均已知：1 条 AIDE 改的方法体 + 3 条 `Compression.stream` 类型被换成 `abcd/Oy`，见 NOTES §9/§10） |

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

对着 `process/src/*.jar + base/merged_ok.jar` 校验：类存在、方法/字段存在、构造器没被改名、
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

只做度量，不做判定。口径：

- **分母**只用 3.7.1（R8 是否删掉以它为参照）；
- **命中判定放宽到"任一 oracle 版本里有"**——AIDE 的 jgit 是 3.7~4.x 混合版，
  `verify_allow.tsv` 里 222 条"版本差异"其实都是真名，只在 3.7.1 里查会误判成未覆盖
  （旧口径 89.8%，放宽后 99.1%）；
- 未命中会写 `~/out/work/cov_miss.tsv`（探针 / 目标 / oracle 名 / 描述符 / 探针候选）。

剩下的 63 条绝大多数是**同签名多方法**造成的假缺口（AIDE 把几个重载合成一个，
例如 `BinaryDelta.getBaseSize/getResultSize` 都 `([B)J`、`LongList.set/fillTo` 都 `(IJ)V`），
映射无法再拆，属度量口径的固有局限。

通用版 `deob cover` 分母略大（方法 78.1%、字段 94.0%，含 jsch 的 147 类），仅作参考。

## 门 7：`widen_access.py`

| 期望 | 说明 |
|---|---|
| 列出的 class/成员都"确实会被跨包访问" | 只统计**本次映射造成**的（原本同包、现在不同包），不误伤原有代码 |

有输出就带 `--apply`（产出 `process/base/merged_pub.jar`），否则运行期 `IllegalAccessError`。
本项目当前：候选 29 类 / 56 成员，`--apply` 改写 29 个 class（含类级访问 `new`/`checkcast`/`const-class`
与继承 `extends`/`implements`；成员一律升 `public`，`protected` 对构造器/静态方法的跨包调用不够）。

**位置很关键**：只能在 **FART 之前、对 `merged_ok.jar`、带 `--map`** 跑。
FART 之后再跑（名字已最终、没有映射）实测是 **类 0 / 成员 0**；FART 后**逐 jar** 跑则看不到
别 jar 的引用，跨 jar 的 package-private 会漏。命令与三种位置的对比见 [BUILD.md](BUILD.md) §3。

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

## 门 9：参数名（`paramfill.py`）

判据（oracle `LocalVariableTable` / 源码**无方法体**声明 / `params_manual.tsv` 的人工证据行）
见 [NAMING.md](NAMING.md) §9。这里只给“跑什么、期望什么”。

| 期望 | 说明 |
|---|---|
| `方法映射 4187 条：命中 3845（无参 1480 / jar 参数全 2130 / 源码补全 190 / 仍缺 45）` | 「仍缺 45」是参数名取不到但方法本身有 oracle 的（AIDE 魔改签名） |
| 未命中 `无类映射 146 / 方法名不同 95 / 描述符不同 101` | 没有 oracle 对应物，故意留空（不编语义） |
| 参数行 `4077`（`mappings.txt` 实际行数）= jgit 3238 / jsch 824 / aide 15 | jgit 含 139 个构造器（`<init>` 的 LVT）；aide 的 15 行来自 `params_manual.tsv` |
| 重跑 `paramfill.py --write` 后各 `jobs/<依赖>/params.tsv` 不变 | 幂等；成员改名后必须重跑（`rebuild_tsrg` 已自动串起来） |

**参数行对产物有没有副作用**（新旧 mapping 各跑一遍 FART 比 22763 个条目）：

| 结果 | 说明 |
|---|---|
| 条目数/顺序一致，`.class` 逐字节相同 | 输入类没有 `LocalVariableTable`，FART 没东西可改 |
| 唯一差异：`fernflower_abstract_parameter_names.txt`，357 行从 `varN` 变成真名（jgit 251 + jsch 106） | 这是**收益**：Fernflower 反编译抽象方法时能显示真参数名 |

## 门 10：`deob mgraph`（调用图自证）

改完映射最容易留下的错不是"编造"，而是**错位**：同名同描述符的一族方法（四个 `setXxx(I)V`、
`write`/`write_ext`、一堆 `getXxx()Ljava/lang/String;`）在方法体相似时会被配错一位。
`mgraph` 把这种错误变成可复现的数字：

```bash
python3 tools/deob/cli.py -p process/deob.json mgraph --pkg=com/jcraft/jsch
# 调用图自证：482 个方法 / 2218 条已定名引用，未对上 25 条（1.1%），可疑方法 1 个
```

判据：把探针方法里**已定名**的引用译成 `(种类, 名, 描述符)`，与 oracle 同一方法体的引用集比。
对不上的比例超过 1/3 就列为可疑。

- 只看**已定名**引用 + 非本依赖的类（JDK/Android）：本依赖里还没定名的引用无法判定，跳过；
- **不比 owner**：继承来的字段，javac 记的 owner 可能是子类（`ChannelDirectTCPIP.io` vs `Channel.io`），
  比 owner 会假报警；
- AIDE 魔改过的方法体（crypto/provider 换实现、`DHG1.next` 之类）会有真实差异，这类算"已知差异"，
  在报告里看得到、不强行改判。

`deob members` 内部用同一套判据做**按图修复**（`repair_by_graph`）：非证明级的方法，
如果另一个候选能对上更多引用，就改判（会打印 `改判 … → …（对上引用 1→2）`）。

## 一页速查

| 症状 | 根因 | 修法 |
|---|---|---|
| `NoSuchMethodError` / `NoSuchFieldError` | mapping 指向不存在的成员 | 门 2 `validate_mappings` |
| `IllegalAccessError` | 跨包访问包私有 | 门 7 `widen_access --apply` |
| `AbstractMethodError` | 接口与实现名不一致 | 双侧同名（`verify_allow.tsv` 记录） |
| 覆写"失效"（调到父类实现） | 跨包 package-private 虚方法 | `widen_access`（放 protected） |
| FART 两遍产物不同 | 祖先成员未映射 / 子类改名 | 门 4 `inherit_check` 补 MISSING |
| D8 `multiple definitions` | 同类内新名+描述符重复 | 门 2 `dup-member-target` |
| `NoClassDefFoundError: Failed resolution of: Lcom/aide/…;` | 产物里残留旧类名（dex 没换全 / 嵌套 jar 没换） | 门 12 `apk_refs.py`；并确认手机上装的是新产物（不是旧安装包） |
| `NoSuchMethodError: … in class Ljava/lang/CharSequence;`（或任何 JDK 类型） | 契约方法（`toString`/`equals`/`hashCode`/`length`…）被改名，FART 沿覆写链传播到 JDK | 门 11 `jdk_refs.py` + 门 2 `contract-rename`；把那条映射删掉（见 NOTES §11） |
| Fernflower 里抽象方法参数名还是 `varN` | 参数行没生成 / 没被 FART 吃到 | 门 9 `paramfill` + 检查 `jobs/<依赖>/params.tsv` |
| D8 `Invalid input code with a call to <clinit>` | dex2jar 产物缺陷（非改名造成） | `tools/jgit/pipeline/nop_clinit.py` 处理后重试 |
