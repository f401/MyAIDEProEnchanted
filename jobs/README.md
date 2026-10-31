# jobs/ —— 每个"新依赖"一个独立工程目录

一个依赖（另一个 APK / 另一个被混淆的库）就一个目录，**自包含**：

```
jobs/<名字>/
├── deob.json          工程配置（路径都相对本目录）
├── truth/main/class_map.tsv   类映射（探针 <TAB> 目标 <TAB> 证据）
├── truth/main/members.tsrg    成员映射（TSRG 块）
├── truth/main/params.tsv      参数名（deob params --apply 生成，可缺）
├── oracle/            oracle jar（真名来源，可多版本）
├── base/              改名基线 jar（FART 的 --input）
└── out/               产物（mappings.txt / dex / 日志）
```

创建：`python3 tools/deob/cli.py init --name <名字> --prefix <探针包前缀>`

**隔离约定**：`process/` 是**已落地**的工程（构建输入 + 按 part 分开的真相 + 产物）；
新任务一律在 `jobs/` 下建目录，两边不共享任何映射文件。
`deob status` 可以检查"写入目标是否落在本工程目录内"。

一个工程里如果要同时改多个依赖，就在 `truth/` 下按依赖再分 part
（`truth/<依赖>/{class_map.tsv,members.tsrg,params.tsv}`），用 `deob.json` 的 `parts` 定顺序：
见 `process/` 里的 `jgit` / `jsch` / `aide` / `head`。
步骤见 [../docs/NEW-JOB.md](../docs/NEW-JOB.md)。
