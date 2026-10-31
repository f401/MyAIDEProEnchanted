# jobs/ —— 一个依赖一个目录（真相）

本仓库现在有三个（`process/deob.json` 的 `parts` 按这个顺序汇总）：

| 目录 | 依赖 | 内容 |
|---|---|---|
| `jgit` | Eclipse JGit（AIDE 内置，魔改混合版） | 685 类 / 5478 成员行 / 3025 参数行 |
| `jsch` | JSch（`UserInfo` / `UIKeyboardInteractive` 双侧改名） | 2 类 / 6 成员行 / 9 参数行 |
| `aide` | AIDE 自有类（目标在 `abcd/aide/`） | 53 类 / 30 成员行（无 oracle，无 params） |

一个依赖就一个目录，**自包含**（可以嵌进某个 APK 的工程里当 part，也可以独立成工程）：

```
jobs/<依赖>/
├── class_map.tsv    类映射（探针 <TAB> 目标 <TAB> 证据）
├── members.tsrg     成员映射（TSRG 块）
└── params.tsv       参数名（deob params --apply 生成，可缺）
```

要单独跑成工程（新的 APK / 新的库）：

```
jobs/<名字>/
├── deob.json         工程配置（路径都相对本目录）
├── truth/main/…      同上三张表
├── oracle/           oracle jar（真名来源，可多版本）
├── base/             改名基线 jar（FART 的 --input）
└── out/              产物（mappings.txt / dex / 日志）
```

创建：`python3 tools/deob/cli.py init --name <名字> --prefix <探针包前缀>`

**隔离约定**：`process/` 是**已落地**的工程（构建输入 + 汇总 mapping + 本 APK 自己的补丁/白名单），
它只通过 `deob.json` 的 `parts` 引用这里的目录；新任务也在这里建目录，互不共享文件。
`deob status` 可以检查"写入目标是否落在预期目录内"。

顺序由 `process/deob.json` 的 `parts` 决定：`process/truth/head` → `../jobs/jgit` →
`../jobs/jsch` → `../jobs/aide`。步骤见 [../docs/NEW-JOB.md](../docs/NEW-JOB.md)。
