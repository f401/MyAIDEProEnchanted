# AIDE Pro 个人魔改版

*** 仅供学习交流使用；请自行准备合法授权的签名私钥 ***

## 特性

- 与 Termux 共享 UID（`sharedUserId=com.termux2`，刻意与真 Termux 脱钩）
- 自定义终端环境变量、更新 D8 版本
- **jgit 反混淆**：把 AIDE 内置的 jgit 从 `abcd/*` 还原成真实类名/成员名（进行中）

## 目录

```
src/               apktool 反编译产物（smali / res / AndroidManifest.xml 等）
Dex/               原始 dex 与解析工具
process/           改名工程：mappings.txt（TSRG2）、base/（改名基线 jar）、src/（逐 dex 的 jar）
tools/jgit/        定名 / 校验 / 改名辅助工具（见 docs/TOOLS.md）
docs/              文档（见 docs/README.md）
out/               中间产物（jar、dex、日志）
```

## 快速开始

```bash
# 1) 改 mapping（唯一真相是 tsv，不要手改 mappings.txt）
python3 tools/jgit/pipeline/rebuild_tsrg.py          # tsv → tsrg → process/mappings.txt
# 2) 认证
python3 tools/jgit/pipeline/validate_mappings.py     # 期望 ✔ 无无效映射
python3 tools/jgit/pipeline/verify_members.py        # 期望 不一致 0
python3 tools/jgit/pipeline/inherit_check.py         # 期望 CONFLICT 0 / MISSING 0
# 3) 构建（详见 docs/BUILD.md）
```

## 当前规模

| 指标 | 值 |
|---|---|
| 类映射 | 740（其中 `abcd/aide/*` 53 个 AIDE 自有类） |
| 成员映射 | 5514 行（只放真实改名） |
| mappings.txt | 6804 行 / 类块 751 / 成员行 5522 / static 标记 961 |
| 覆盖率 | 方法 3172/3533 = **89.8%**、字段 1741/1855 = **93.9%**、完全覆盖类 **480** |
| 认证 | verify 不一致 0；inherit CONFLICT 0 / MISSING 0；validate ✔ 无无效映射 |

## 文档

见 [docs/README.md](docs/README.md)。

> ⚠️ `process/mappings.txt` 是派生产物；唯一真相是 `process/truth/jgit_map_clean.tsv`（类名）与
> `process/truth/jgit_members_clean.tsrg`（成员）。改完必须跑 `rebuild_tsrg.py` 再跑认证。
