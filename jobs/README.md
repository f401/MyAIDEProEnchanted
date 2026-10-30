# jobs/ —— 每个"新依赖"一个独立工程目录

一个依赖（另一个 APK / 另一个被混淆的库）就一个目录，**自包含**：

```
jobs/<名字>/
├── deob.json          工程配置（路径都相对本目录）
├── truth/class_map.tsv    类映射（探针 <TAB> 目标 <TAB> 证据）
├── truth/members.tsrg     成员映射（TSRG 块）
├── oracle/            oracle jar（真名来源，可多版本）
├── base/              改名基线 jar（FART 的 --input）
└── out/               产物（mappings.txt / dex / 日志）
```

创建：`python3 tools/deob/cli.py init --name <名字> --prefix <探针包前缀>`

**隔离约定**：`process/` 是已完成的 jgit 工程，只在维护它时才动；新任务一律在 `jobs/` 下建目录，
两边不共享任何映射文件。用 `deob status` 可以检查"写入目标是否落在本工程目录内"。
步骤见 [../docs/NEW-JOB.md](../docs/NEW-JOB.md)。
