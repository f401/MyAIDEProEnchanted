# AGENTS.md —— 在本仓库里工作

本仓库把 AIDE Pro 2.8.7（freely）里被混淆的类还原成真实/可读名字，并产出可安装的 APK。
文档索引：[`docs/README.md`](docs/README.md)。

## 铁律

1. **唯一真相是 `jobs/<part>/` 下的四张表**，不要手改产物：
   - 类名 `class_map.tsv`（`探针 <TAB> 目标 <TAB> 证据`）
   - 成员 `members.tsrg`（TSRG 块；描述符用**探针空间**）
   - 参数 `params.tsv`（可缺）
   - 注释 `comments.tsv`（只进 Tiny v2，`kind/owner/name/desc/text`，`-` 占位）
2. **每条命名都要有可复现判据**，写在 `class_map.tsv` 第 3 列（前缀优先级见 `docs/NAMING.md`）。
   有歧义先找引用者消除；实在没有判据就按作用命名并在注释里写清。
3. **不要为了数字好看破坏覆写链**：覆写家族必须同名，第三方接口要么双侧一起改、要么都不改。
4. **改完必须过门禁**（详见 `docs/VERIFY.md`）：`rebuild_tsrg → validate_mappings → inherit_check →
   verify_members → innercheck → famcheck → emit_tiny2 → validate_tiny → tiny_roundtrip`，全绿才提交。
5. **part 之间不要混写**；新 part 要同时改 `process/deob.json` 的 `parts` 与 `tools/jgit/paths.py`
   的 `PART_DIRS`，且目录里必须有 `members.tsrg`（哪怕空文件）。
6. **白名单要写理由**：`process/verify_allow.tsv` 每行都要说明"上游是什么 / AIDE 改成了什么"。

## 流程入口

- 改映射 → 门禁 → 构建：`docs/VERIFY.md`、`docs/BUILD.md`
- 工具清单：`docs/TOOLS.md`（项目专用）、`docs/GENERIC-TOOLS.md`（通用 kit）
- 命名规则：`docs/NAMING.md`；坑与先验：`docs/NOTES.md`
- 还剩什么没做：`jobs/README.md` 的待办表
