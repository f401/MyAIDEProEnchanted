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
process/           已落地的改名工程：truth/（按 part 分开的真相）、mappings.txt、base/、src/
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
# 3) 构建（详见 docs/BUILD.md；一条命令：python3 tools/build/build_apk.py all）
```

## 当前规模

| 指标 | 值 |
|---|---|
| 类映射 | 880（`jgit` 685 / `jsch` 140 / `aide` 55，其中 `abcd/aide/*` 55 个 AIDE 自有类） |
| 成员映射 | 6762 行（只放真实改名；jgit 5502 / jsch 1229 / aide 31） |
| mappings.txt | 12332 行 = 表头 1 + 头部 12 + 类块 880 + 成员行 6770 + `static` 592 + 参数行 4077 |
| 覆盖率 | jgit：方法 3501/3533 = **99.1%**、字段 1848/1855 = **99.6%**、完全覆盖类 **604**；jsch：方法 **741/741 = 100%**、字段 **537/537 = 100%**（oracle 0.1.51 + 27 条读码定名） |
| 参数名 | 2340 个方法（jgit 1919 / jsch 409 / aide 12）= 4077 行：3665 由 oracle LVT、357 由源码声明、15 由手工证据 |
| 真相分表 | `jgit` 685 类 / `jsch` 141 类 / `aide` 55 类；`head` 12 行历史补丁 |
| 认证 | verify 不一致 0；inherit CONFLICT 0 / MISSING 0；validate ✔ 无无效映射；mgraph 未对上 0.2%（4 条均已知） |

## 文档

见 [docs/README.md](docs/README.md)。

> ⚠️ `process/mappings.txt` 是派生产物；唯一真相是 `jobs/<依赖>/` 下的
> `class_map.tsv`（类名）、`members.tsrg`（成员）、`params.tsv`（参数名）。
> part 按来源分：`jgit` / `jsch` / `aide` / `head`（顺序与拼接见 `process/deob.json` 的 `parts`）。
> 改完必须跑 `rebuild_tsrg.py`（逐 part 重建，并自动串 `paramfill` + `emit_tsrg2`）再跑认证。
