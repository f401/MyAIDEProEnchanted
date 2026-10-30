# 文档索引

| 文档 | 内容 |
|---|---|
| [NEW-JOB.md](NEW-JOB.md) | **还原一个新依赖的复用路径**：独立工程目录（`jobs/<名字>/`）、五步流程、隔离与自检 |
| [NAMING.md](NAMING.md) | **命名规范（全量）**：判据优先级、类/成员取名规则、合成物、覆写家族、映射卫生、禁止事项 |
| [BUILD.md](BUILD.md) | **编译步骤**：mapping → FART → access 放宽 → D8 → 回填 → 签名 → 冒烟 |
| [SMOKE.md](SMOKE.md) | **冒烟测试**：安装、jgit 功能清单、logcat 三类异常归因、判定与回滚 |
| [VERIFY.md](VERIFY.md) | **认证流水线**：8 道门 + 期望值 + 失败处置 + FART 两遍判等 |
| [TOOLS.md](TOOLS.md) | **工具链**：`tools/jgit/` 目录树与逐个脚本的用途 |
| [GENERIC-TOOLS.md](GENERIC-TOOLS.md) | **通用工具链**：`tools/deob/`（配置驱动，给下一个类似工程用） |
| [NOTES.md](NOTES.md) | **注意事项**：TSRG2 语法、重复目标、jsch、FART 不确定性、大小写不敏感 FS… |

> 历史逐轮记录已从仓库移除（见 `git log`）；这套文档是可直接照做的操作手册。
