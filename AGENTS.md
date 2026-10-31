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

## 流程入口

- 改映射 → 认证 → 构建：见 [docs/VERIFY.md](docs/VERIFY.md) 与 [docs/BUILD.md](docs/BUILD.md)
- 工具清单：[docs/TOOLS.md](docs/TOOLS.md)（通用 kit 见 [docs/GENERIC-TOOLS.md](docs/GENERIC-TOOLS.md)）
- 坑与先验：[docs/NOTES.md](docs/NOTES.md)；命名规则：[docs/NAMING.md](docs/NAMING.md)
- 目录与当前数字：[README.md](README.md)；工程真相布局：[process/README.md](process/README.md)
