# 通用反混淆工具链（`tools/deob/`）

> 目的：把 jgit 这一轮里"可复用"的能力抽成**不绑定项目**的工具，下一个类似工程（另一个 APK、
> 另一个被混淆的库）可以直接用。

## 与项目专用脚本的关系

| | `tools/deob/`（通用） | `tools/jgit/`（本项目专用） |
|---|---|---|
| 路径 | 全部来自工程配置 JSON | 固定在本仓库 |
| 用途 | 新工程起步、体检、构建通路 | 本项目的历史积累（含大量一次性别名分析脚本） |
| 谁是权威 | 体检项以本项目脚本为准 | `pipeline/` 下的 9 道门 |
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
