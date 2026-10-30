# tools —— 三套工具

```
tools/
├── deob/    通用反混淆工具链（配置驱动，给"下一个类似工程"用）★ 新工程从这里开始
├── jgit/    本项目（AIDE/jgit）专用：流水线门禁、定名分析器、读码助手
└── aide/    归档：AIDE 侧的一次性工程（资源 ID 守卫、support→androidx 迁移、dex/类差异）
```

| 目录 | 文档 | 说明 |
|---|---|---|
| `deob/` | [deob/README.md](deob/README.md)、[../docs/GENERIC-TOOLS.md](../docs/GENERIC-TOOLS.md) | 无第三方依赖；`python3 tools/deob/cli.py -p <工程>.json <命令>` |
| `jgit/` | [jgit/README.md](jgit/README.md)、[../docs/TOOLS.md](../docs/TOOLS.md) | 本项目产物与门禁脚本；很多分析器可当模板移植到别的工程 |
| `aide/` | [aide/README.md](aide/README.md) | 与反混淆无关的历史工具，保留备查 |

**分工原则**：能力能通用的都放 `deob/`（validate/inherit/pkgs/widen/cover/emit/shape/读码）；
只对本项目有意义、或依赖 jgit 特性的留 `jgit/`（allow 白名单、JGitText 键、oracle 版本差异分类等）。
