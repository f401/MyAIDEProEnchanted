# 通用反混淆工具链（`tools/deob/`）

> 目的：把 jgit 这一轮里"可复用"的能力抽成**不绑定项目**的工具，下一个类似工程（另一个 APK、
> 另一个被混淆的库）可以直接用。

## 与项目专用脚本的关系

| | `tools/deob/`（通用） | `tools/jgit/`（本项目专用） |
|---|---|---|
| 路径 | 全部来自工程配置 JSON | 固定在本仓库 |
| 用途 | 新工程起步、体检、构建通路 | 本项目的历史积累（含大量一次性别名分析脚本） |
| 谁是权威 | 体检项以本项目脚本为准 | `pipeline/` + `tools/deob/{innercheck,famcheck}`，完整清单见 [VERIFY.md](VERIFY.md) |
| 真相组织 | `jobs/<依赖>/`（jgit / jsch / aide / head） | `parts` 列表，每项一个目录，可各带 `probe_prefix` |

新工程建议：先 `tools/deob/` 跑通 `emit → validate → inherit → pkgs → widen`，
再用 `tools/jgit/naming/` 里的专用分析器当**模板**改写。

## 使用

```bash
python3 tools/deob/cli.py -p process/deob.json validate
python3 tools/deob/cli.py -p process/deob.json shape abcd/Zw      # 跨 3.7.1/4.11.9/5.13.3 找形状
python3 tools/deob/cli.py -p process/deob.json widen process/base/merged_ok.jar --apply
```

命令清单见 `tools/deob/README.md`；配置字段见 `tools/deob/config.py` 顶部注释。

## 通用化的三条经验（从 jgit 这轮总结）

1. **真相两表 + 派生一个文件**：类映射（TSV，带证据列）+ 成员映射（TSRG）；
   TSRG2 永远由 `emit` 生成。这样"改哪张表"永远只有一个答案。
2. **体检分四层**：有效性（validate）→ 一致性（inherit）→ 位置正确（pkgs/widen）→ 度量（cover）。
   前三层是硬门，最后一层只是指标。
3. **一切判据落到可复现的证据**：`body:`（方法体特征）/`shape:`（唯一形状+版本）/`prop:`（版本指纹）/
   `pkg:`（访问图）/`place:`（占位原因）/`name:`（自定名理由）。见 `docs/NAMING.md`。

## 成员级批量定名（`membermatch.py` → `deob members` / `deob mgraph`）

**什么时候用**：库的**类名没被混淆**（或已经定完了），只剩成员被改名成 `j6/DW/FH…`。
这时"先定类名"退化成恒等，剩下的全是重载消歧。jsch（147 类 / 897 方法 / 537 字段）就是靠它跑完的。

```bash
# 先确认探针在哪个 smali 根下（一个 APK 常有 smali / smali_classes2…）
#   deob.json 里给 "probe_roots": ["src/smali", "src/smali_classes2", ...]
D="python3 tools/deob/cli.py -p process/deob.json"
$D members --pkg=com/jcraft/jsch --part=jsch            # 只出报告，不写真相
$D members --pkg=com/jcraft/jsch --part=jsch --apply    # 写 jobs/jsch/{class_map.tsv,members.tsrg}
$D mgraph  --pkg=com/jcraft/jsch                        # 门 10：调用图自证
```

工具契约（写工具/用工具的人都要知道）：

| 契约 | 说明 |
|---|---|
| 报告路径 | `jobs/<依赖>/out/members_<包>.tsv`；跟着 `--part` 走，不写 `process/out`；`--out` 可覆盖 |
| 幂等 | 同一份真相跑两遍结果不变（`members` 会先把文件里已有的行当种子并锁定） |
| 可增量 | 但**不是一次到位**：每遍用上一遍定出的名字做种，跨类链条才能接上；判据是"重跑不再有新增" |
| 只写本 part | `--apply` 只写该 part 的 `class_map.tsv` / `members.tsrg`，不动别的 part |
| oracle 顺序 = 优先级 | `find()` 取**第一个**含有该类的 jar；所以真版本排在兜底版本前面（jsch：0.1.51 在前，0.1.55 兜底） |
| 版本要先验 | 版本挑错时症状是"整类成片 fail"（`DHGEX256` 一次 22 条），不是零星差异；判定方法见 [NOTES.md](NOTES.md) §9 |

| 判据 | 实现 | 可信度 |
|---|---|---|
| `desc:` 描述符桶唯一 | 改名不改描述符 + 单射 + ProGuard 只删不加 ⇒ **证明** | 硬 |
| `body:` 方法体 token 对齐 | 同名字符串/整数/引用/类型 + 序列相似度与多重集 Jaccard，取"互为最优 + 领先" | 中（重载消歧主力） |
| `usg:` 字段读写签名 | 哪些已对齐方法以读/写碰过它 | 中 |
| 同序投票 `order_votes` | 构造器赋值顺序 / 同一方法里同描述符方法的调用顺序（D8 只乱声明顺序，不乱语句顺序） | 强 |
| 按图修复 `graph:N` | 已定名引用在 oracle 同方法体里能对上几条，多对上就改判 | 强（治错位） |
| 排除法 `elim:` | 同描述符桶里两侧各只剩 1 个没定名 ⇒ 双射直接给答案 | 强（要有 token 重合兜底） |
| 覆写向下传播 `ovr:继承自 X` | 祖先名字已证明 ⇒ 子类/实现类同名同描述符跟着定 | 强（Java 语义） |
| 赋值来源 `src` 通道 | 写字段前紧邻的已定名调用/常量（`V_S = kex.getV_S()`） | 中 |
| 覆写家族闭包 / 同族统一 / 同类去重 | 冲突时只让"证据明显更强"的赢，否则整族撤掉 | 安全阀 |

实现要点（改工具的人看这几条就够）：

- `lookup` 统一按 `(种类, owner, 名, 描述符)` 寻址：**字段忽略描述符**（TSRG 字段行只有两段）；
- 顺序是 `字段预跑（构造器顺序）→ 方法 → 字段 → …`，外面套**多遍扫描**（证明级结果并进种子），
  因为"字段名等成员名、成员名等字段名"是相互依赖的；
- `taken_*` 保证同一目标名不被占两次（含跨轮次），种子（文件里已有的行）既占位也不改判；
- 报告落在**该 part 自己的目录**：`jobs/<依赖>/out/members_<pkg>.tsv`（不要塞进 `process/out`），
  每行 `类 / 种类 / 旧名 / 描述符 / 新名 / 证据 / 分数 / 领先`，
  末尾是 `TODO:` 行（`no-oracle-descriptor` / `body-weak` / `usage-weak`）；
- 探针名在 oracle 里同名同描述符时一律按恒等（不写映射），这条要保留。

## 参数名（`tools/deob/params.py` + `javasrc.py`）

| 能力 | 说明 |
|---|---|
| `params.jar_params(jar)` | 解析 class 的 `LocalVariableTable`，槽位按描述符换算成**实参序号**，得到 `{(owner,name,desc): {i: 参数名}}` |
| `params.fill(...)` | 把上面 + `javasrc` 的结果挂到成员映射上，写 `param_map`（`deob params [--apply]` 就是它） |
| `params.remap_desc(desc, 类映射)` | 描述符里的 `L混淆名;` → 真名（查 oracle 前必须换） |
| `javasrc.lookup(src_root, 类, 方法, 描述符)` | 源码声明里的形参名：只认无方法体（`;`）的声明，多条时用类型消歧 |

人工/证据行放 `truth/<part>/params_manual.tsv`（同格式，`src` 写判据），`deob params --apply`
合并时 manual 优先；这样"自动取不到就手工补"也不会被下次重跑冲掉。

新依赖只要在 `deob.json` 里给 `params` 目录（`parts`）+（可选）`src_root`，`deob params --apply` 即可；
没有 LVT（strip 过的 jar）且没有源码时它什么都不写——**不猜**是设计，不是缺陷。

## 还留在 `tools/jgit/naming/` 的可移植分析器（建议按需搬）

| 脚本 | 可移植性 | 说明 |
|---|---|---|
| `bodyfit.py` / `lcs.py` | 高 | 方法体指纹 / 指令序列相似度（把 oracle jar 当参数就是通用工具） |
| `fielddiff.py` / `fieldctx.py` / `fieldprint.py` | 高 | 字段定名三件套（访问者集合 / 上下文 / 读写点） |
| `javadiff.py` | 中 | 需要 jadx 反编译产物；对"有源码可对照"的场景很强 |
| `callsite.py` | 中 | 调用点对齐（需要已映射的方法做锚点） |
| `gapfill2.py` / `override.py` / `closefam.py` | 高 | 缺口补名 / 覆写传播 / 家族闭合 |
| `jgittext.py` / `keyclass.py` | 低（jgit 专用） | 依赖 jgit 的 JGitText 资源键 |
| `enclosing_groups.py` / `nestmatch.py` | 高 | dex 嵌套关系做兄弟聚类与 `Outer$N` 编号 |

## 字段定名的顺序指纹（`tools/deob/fieldseq.py`）

方法级指纹（`usg:`/`fieldfp`）在"大方法一次摸十几个字段"的类上会大量打平（jzlib 的
`proc`/`inflate`：19 个字段只有 2 个唯一命中）。这时把判据换成**同一方法里字段访问的先后
顺序**：

1. 探针侧和 oracle 侧各取"某个方法对目标类的字段引用序列"（`jvmbody.body_refs`，按字节码顺序）；
2. 用**已定名的字段**当锚点，把两条序列切成若干区间；
3. 区间内两边剩余元素**个数相等**才按序一一投票，不等就整段弃权；
4. 再加一层兜底：只看"紧邻的已定名字段"（prev/next），容忍两边字段条数不同（上下文指纹）；
5. 票数 ≥ `--min-votes`（默认 2）且唯一领先才落盘。

跨类也吃：`refs` 的 owner 指向目标类就算——`ZStream.next_in_index` 在本类方法里没人碰，
靠 `Inflate#inflate` 里它夹在 `next_in`/`avail_in` 之间定下来（48/48 票）。

坑：**比较方法前必须先把探针描述符换名**（`Labcd/…` → `Lorg/…`），否则一个方法都匹配不上
（本项目踩过：32 个方法命中 0）。
