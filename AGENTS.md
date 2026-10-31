# AGENTS.md —— 在本仓库里工作

本仓库是 **AIDE Pro 的 jgit 反混淆工程**：把 `abcd/*` 里被混淆的 jgit（及 AIDE 自带）类还原成
真实/可读的类名与成员名，并产出可安装的 APK。文档全部在 [`docs/`](docs/README.md)。

## 铁律

1. **唯一真相是按 part 分开的三类表**，不要手改产物：
   - 类名：`jobs/<依赖>/class_map.tsv`（`探针 <TAB> 目标 <TAB> 证据`）
   - 成员：`jobs/<依赖>/members.tsrg`（TSRG 块）
   - 参数：`jobs/<依赖>/params.tsv`（可缺）
   - part：`jgit` / `jsch` / `aide` / `head`，顺序见 `process/deob.json` 的 `parts`；**不要跨 part 混写**
   - 派生产物：`process/mappings.txt`（TSRG2，FART 消费；用 `tools/jgit/pipeline/rebuild_tsrg.py` 生成）
2. **改完必须过认证流水线**（[docs/VERIFY.md](docs/VERIFY.md)）：validate / verify / inherit /
   pkgclose 全绿，`widen_access` 无遗漏，才允许构建。
3. **覆写家族必须同名**；第三方接口（jsch 等）要么双侧一起改，要么都不改。
4. 拿不准的身份**不要瞎猜**：留在 `abcd` 并标 `place:`；确认是 AIDE 自有的放 `abcd/aide/`。
5. 任何一条白名单（`process/verify_allow.tsv`）都要写清“3.7.1 里是什么 / AIDE 改成什么”。

## 标准流程

```bash
python3 tools/jgit/pipeline/filter_head.py --apply     # 头部死块清理
python3 tools/jgit/pipeline/rebuild_tsrg.py            # tsv/tsrg → process/mappings.txt（块顺序/去重）
python3 tools/jgit/pipeline/emit_tsrg2.py process/mappings.txt   # 补 TSRG2 的 `\t\tstatic` 标记
python3 tools/jgit/pipeline/validate_mappings.py       # ✔ 无无效映射
python3 tools/jgit/pipeline/verify_members.py          # 不一致 0
python3 tools/jgit/pipeline/inherit_check.py           # CONFLICT 0 / MISSING 0
python3 tools/jgit/pipeline/pkgclose.py [--apply]      # 需要挪包 0
python3 tools/jgit/pipeline/coverage.py                # 记录指标
```

构建（FART → access 放宽 → D8 → 回填 → 签名 → 冒烟）见 [docs/BUILD.md](docs/BUILD.md)；
工具清单见 [docs/TOOLS.md](docs/TOOLS.md)；坑见 [docs/NOTES.md](docs/NOTES.md)。

## 目录

| 路径 | 内容 |
|---|---|
| `src/` | apktool 反编译产物（smali / res / manifest） |
| `Dex/` | 原始 dex 与解析工具 |
| `process/` | `mappings.txt`、`base/`（改名基线 jar + `merged_pub.jar`）、`src/`（逐 dex jar）、`d8.jar`、`android.jar`、`SHA256SUMS` |
| `tools/jgit/` | 定名 / 校验 / 改名工具（40+ 个，见 docs/TOOLS.md） |
| `docs/` | 文档（索引 `docs/README.md`） |

## 当前规模

类映射 740（其中 `abcd/aide/` 53 个 AIDE 自有类）；成员映射 5514 行；
`mappings.txt` 6804 行（类块 751 / 成员行 5522 / static 961）；
方法 3172/3533 = **89.8%**、字段 1741/1855 = **93.9%**、完全覆盖类 **480**；
verify 不一致 0、inherit CONFLICT 0 / MISSING 0、validate ✔。
