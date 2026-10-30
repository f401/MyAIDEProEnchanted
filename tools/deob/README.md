# tools/deob —— 反混淆通用工具链

给"下一个类似还原工程"用的**可复用**工具：不绑定任何具体项目，全部通过一份工程配置 JSON 驱动。

> 本项目（AIDE/jgit）自己的历史脚本仍在 `tools/jgit/`（含更多一次性/专用分析），
> 通用能力已抽到这里；新工程请直接用 `tools/deob/`。

## 隔离：一个依赖一个工程目录

```bash
python3 tools/deob/cli.py init --name mylib --prefix zz   # → jobs/mylib/（自包含）
python3 tools/deob/cli.py -p jobs/mylib/deob.json status  # 写入目标是否都在本工程目录内
```

`process/` 是已完成的 jgit 工程，**新任务只读它**。完整步骤见 [../../docs/NEW-JOB.md](../../docs/NEW-JOB.md)。

## 快速开始

```bash
# 1) 写一份工程配置（示例见仓库 process/deob.json）
cat > myjob/deob.json <<'JSON'
{
  "name": "myjob",
  "root": "..",
  "probe_prefix": "abcd",
  "probe_dir": "src/smali/abcd",
  "smali_index": "process/truth/smali_index.tsv",
  "class_map": "process/truth/class_map.tsv",
  "member_map": "process/truth/members.tsrg",
  "head": "process/truth/mappings_head.txt",
  "out_tsrg": "process/mappings.txt",
  "base_jars": ["process/base/merged.jar"],
  "input_jars": ["process/src/classes.jar"],
  "oracle_jars": [{"label": "v1", "path": "$HOME/oracle/v1.jar"}]
}
JSON

# 2) 用统一入口
python3 tools/deob/cli.py -p myjob/deob.json emit        # 生成 TSRG2
python3 tools/deob/cli.py -p myjob/deob.json validate    # 映射是否有效（✔/✘）
python3 tools/deob/cli.py -p myjob/deob.json inherit     # CONFLICT / MISSING
python3 tools/deob/cli.py -p myjob/deob.json pkgs        # 包归属求解（--apply 写入 tsv）
python3 tools/deob/cli.py -p myjob/deob.json widen in.jar --apply   # 跨包 access 放宽
python3 tools/deob/cli.py -p myjob/deob.json cover       # 覆盖率
python3 tools/deob/cli.py -p myjob/deob.json shape abcd/X   # 形状候选（跨 oracle 版本）
python3 tools/deob/cli.py -p myjob/deob.json q abcd/X       # 成员与目标名一览
```

## 模块

| 模块 | 作用 |
|---|---|
| `config.py` | 工程配置（JSON）解析；所有路径都由它给，工具不再硬编码 |
| `jvm.py` | class 文件解析 + 方法体特征（ldc 字符串 / 引用），用于成员级比对 |
| `dex.py` | 最小 DEX 解析（无 baksmali 时读元数据/嵌套/注解） |
| `smali.py` | 探针侧解析 + `类→文件名` 索引（大小写不敏感 FS 必用索引） |
| `oracle.py` | 多版本 oracle jar 访问；描述符归一化（`norm_desc`）与形状（`shape_of`） |
| `mapping.py` | 类映射 TSV + 成员映射 TSRG 的读写；`emit_tsrg2`；声明式编辑 |
| `checks.py` | `validate / inherit / pkgs / widen / cover / manifest` |
| `shape.py` | 形状索引与跨版本候选（`find` / `overlap_index`） |
| `view.py` | 读码命令：`q / prof / dump / hdr / elim / iface / shape` |
| `cli.py` | 统一入口 |

## 约定（与 `docs/NAMING.md` 一致）

- 真相是 `class_map`（TSV）与 `member_map`（TSRG）；`out_tsrg` 永远由 `emit` 生成。
- 成员映射只写**真实改名**；恒等行除"祖先对齐"外不写。
- `emit` 会按 base/input jar 的 access 自动补 `\t\tstatic`（只对方法有效）。
- `validate` 会报 `class-not-in-base`（头部历史条目常见）、`no-method/no-field`（幽灵成员）、
  `dup-class-target` / `dup-member-target`（FART/D8 会中止或任选其一）、`static-mismatch`。
- `pkgs` 与 `widen` 是**分工**关系：能"挪同包"就挪（便宜）；挪不了（多包同一分量）再放宽 access。
- `cover` 只是指标；口径与项目自带的 coverage 脚本可能略有差别，判定以项目脚本为准。
