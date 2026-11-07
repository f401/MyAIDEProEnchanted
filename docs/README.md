# 文档索引

## 主文档（先读这三份）

| 文档 | 内容 |
|---|---|
| [`../AGENTS.md`](../AGENTS.md) | **铁律**：四张真相表、门禁、part 隔离、白名单规则 |
| [NAMING.md](NAMING.md) | **命名规范（全量）**：判据优先级、类/成员取名、合成物、覆写家族、映射卫生、禁止事项 |
| [VERIFY.md](VERIFY.md) | **认证流水线**：11 道门 + 期望值 + 失败处置 |

## 操作手册

| 文档 | 内容 |
|---|---|
| [BUILD.md](BUILD.md) | **编译步骤**：mapping → fix_try → widen → FART → D8 → 回填 → 签名；**附录**：装包与冒烟（安装、jgit 功能清单、logcat 归因、回滚） |
| [TOOLS.md](TOOLS.md) | **项目专用工具**（`tools/jgit/pipeline` 等）：逐个脚本的作用与期望输出；Tiny v2 的 `p` 下标实测记录；`comments.tsv` 约定 |
| [GENERIC-TOOLS.md](GENERIC-TOOLS.md) | **通用反混淆 kit**（`tools/deob/`）：配置驱动，给下一个类似工程用；含"顺序指纹"字段定名法 |
| [NEW-JOB.md](NEW-JOB.md) | **新建一个 part/工程**：目录布局、`deob create`、自检 |
| [RESTORE-OBFUSCATED-LIB.md](RESTORE-OBFUSCATED-LIB.md) | **整包混淆库的还原流程**：探针/oracle 准备、形状与串判据、闭包与覆写传播 |
| [DEPENDENCIES.md](DEPENDENCIES.md) | **这个 APK 里到底有哪些依赖** + 每个"是哪个库/哪个版本"的判据链（含已还原/未还原状态） |
| [NOTES.md](NOTES.md) | **坑**：覆写一致性、重复目标、FART 四类 access、dex 产物缺陷、AIDE 魔改先验 |

## 其它目录的 README

| 文件 | 内容 |
|---|---|
| [`../process/README.md`](../process/README.md) | 已落地工程：构建输入、汇总产物、`truth/`、`parts` 顺序 |
| [`../jobs/README.md`](../jobs/README.md) | 每个 part 的规模与判据来源 + **剩余待还原清单（按业务子系统）** |
| [`../tools/jgit/README.md`](../tools/jgit/README.md) | 项目专用工具的目录树 + **本机 oracle/源码路径**（不在仓库里的东西） |
| [`../tools/deob/README.md`](../tools/deob/README.md) | 通用 kit 的入口与最小用法 |
| [`../tools/aide/README.md`](../tools/aide/README.md) | ⚠️ 历史归档（资源改名 / support→androidx），与反混淆无关，仅备查 |
| `jobs/*/README.md` | 每个 part 的**证据日志**：这一批类/成员是凭什么定名的、哪些定不了及原因 |

> 历史逐轮记录已从仓库移除（见 `git log`）；这套文档是可直接照做的操作手册。
