# jobs/ —— 一个依赖一个目录（真相）

本仓库现在有十二个（`process/deob.json` 的 `parts` 按这个顺序汇总）：

| 目录 | 依赖 | 判据来源 | 内容 |
|---|---|---|---|
| `jgit` | Eclipse JGit（AIDE 内置，魔改混合版） | 多版本 oracle（按类选最贴版本）+ 逐版本差异白名单 | 685 类 / 5542 成员行 / 3238 参数行，待人工 **0** |
| `jsch` | JSch **0.1.51**（类名没混淆，只有成员被改名；见 [docs/NOTES.md](../docs/NOTES.md) §9） | oracle 同名类 | 141 类 / 1228 成员行 / 824 参数行 |
| `aide` | AIDE 自有类（目标在 `abcd/aide/`，**无 oracle**） | 常量串 / 引用者 / 实现关系，按作用命名 | 52 类 / 36 成员行 / 13 参数行（原 77 类里 25 个 HTTP/JSON 类查明是 Dropbox SDK + json-simple，已移交 `dropbox`） |
| `dx` | dx **1.16 世系**（裁掉纯 CLI 子包） | 结构指纹 + 枚举锚点 + 引用集 + 实现者集合 | 448 类 / 4366 成员行 / 2321 参数行 |
| `crashlytics` | crashlytics-core 2.7.0 / answers 1.4.7 / beta 1.2.10 / crashlytics 2.9.9 | 同上 + 常量串全集 + 外类锚定 | 176 类 / 831 成员行 / 590 参数行，待人工 **0** |
| `fabric` | fabric 1.4.8 | 同上（AAR 被 proguard 裁过，缺的按作用命名） | **69 类** / 380 成员行 / 207 参数行，待人工 **0** |
| `zipsigner` | kellinwood zipsigner 1.11 / zipio 1.6 / logging（Maven 没有，**自己用上游源码 javac 编 oracle**）| 串 + 字段类型 + 调用点常量 + 同方法体内字段读取顺序 | **24 类** / 108 方法行 + 94 字段行 / 94 参数行，待人工 0 — 见 [zipsigner/README.md](zipsigner/README.md) |
| `spongycastle` | SpongyCastle(=BouncyCastle) **1.47**；用官方 bcprov/bcpkix-jdk15on-1.47 当同版本 oracle | tag 常量 / 常量串 Jaccard / 实现者集合 / 形状包含 / 引用者 | **257 类** / 813 方法行 + 1114 字段行 / 795 参数行，成员待人工 0 — 见 [spongycastle/README.md](spongycastle/README.md) |
| `dropbox` | Dropbox **Android** SDK **1.6.2**（`com.dropbox.client2`）+ json-simple **1.1** | 上游 GitHub 仓库 `lib/` 自带的官方 jar + 源码（证书字节级比对锁版本） | **49 类** / 222 成员行（方法 113 + 字段 109）/ 122 参数行，待人工 0 — 见 [dropbox/README.md](dropbox/README.md) |
| `engine` | AIDE 的「引擎接入层」（**AIDE 自有，无 oracle**） | 常量串 + 真名父类/接口 + 与 `com/aide/engine` 的调用形状，按作用命名 | **38 类**（2 identity + 36 作用名）/ 成员行 0（下一步）— 见 [engine/README.md](engine/README.md) |
| `proguard` | ProGuard **6.0.3**（`a/**`，AIDE 的混淆器） | Maven `net.sf.proguard:proguard-base:6.0.3`（版本串 `ProGuard, version 6.0.3` 实证） | **225 类**（包结构 1:1 保真 + 类型翻译 + 包内互为最优 + 成员级验伪 + 返回值/覆写集定槽）/ 757 探针类，成员行下一轮 — 见 [proguard/README.md](proguard/README.md) |

**全库「待人工」= 0**（2026-11 收口）：9 个 part 全部清零。最后一条
`com/crashlytics/android/core/Z.v5()Labcd/cz;` 是靠**把它的祖先纳入 part** 解决的——
把 fabric 的 `PriorityProvider / PriorityTask / Dependency / Task / Priority`
（探针名 `abcd/hz / jz / _y / lz / cz`）补进 `jobs/fabric/`，覆写链才完整，
`getPriority` 才能同时落在祖先与实现者身上（否则 `inherit_check` MISSING 会 +2）。
收口规则见 [docs/NAMING.md](../docs/NAMING.md) §「收口」。

一个依赖就一个目录，**自包含**（可以嵌进某个 APK 的工程里当 part，也可以独立成工程）：

```
jobs/<依赖>/
├── class_map.tsv    类映射（探针 <TAB> 目标 <TAB> 证据）
├── members.tsrg     成员映射（TSRG 块）
├── params.tsv       参数名（deob params --apply 生成，可缺）
└── out/             本 job 的核对报告（派生，已 gitignore；不进真相）
```

**产物落点也按 part 走**：`deob members --part=<依赖>` / `deob mgraph` 的报告写
`jobs/<依赖>/out/members_<包>.tsv`，**不写** `process/out`——那是"已落地工程"的 out_dir，
把某个 job 的报告塞进去等于让依赖去污染组装工程。单工程（没有 `parts`）才退回工程自己的 `out_dir`；
`--out` 可以显式覆盖。

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

---

## 剩余待还原：`abcd` 里 1637 类 + `a`(ProGuard) 532 类 + `c/r/...`(BC) 114 类 + `org/c`+`org/a` 551 类

`abcd/**` 共 2745 类，**已还原 1108**（9 个第三方 part + engine 38 类）。剩下 1637 类没有 oracle
（AIDE 自有 + 一些未公开的第三方），只能按 [docs/RESTORE-OBFUSCATED-LIB.md](../docs/RESTORE-OBFUSCATED-LIB.md)
的"按作用命名"路线做。按常量串/引用的真实包先切成**可独立交付的部分**：

| 部分 | 类数 | 方法 | 字段 | 证据密度 | 状态 |
|---|---|---|---|---|---|
| ~~引擎接入层~~（`com/aide/engine`、`engine/service`） | **38** | ~1000 | — | 高（外部是真包名 + 串 "Could not bind to engine service"、"/enginecache"、ProjectService…） | ✅ **类级完成**（38/38，按作用命名），成员级下一轮 → [jobs/engine](engine/README.md) |
| 编译/诊断 | 18 | 624 | 276 | 中（`.java`、`SyntaxError`、`aapt`…） | 待办 |
| 运行/调试 probe | 21 | 447 | 111 | 中（`Probe`、`classes.dex`、`appstate.json`…） | 待办 |
| Trainer/教程 | 9 | 347 | 120 | 高（`$package_name$`、`$code_hint$`、Lesson…） | 待办 |
| IAP/计费/licensing | 20 | 317 | 112 | 高（`aide_prime_monthly_0500`、`InAppProduct`、`LicenseService`…） | 待办 |
| SCM/git 冲突 | 18 | 227 | 94 | 高（`Resolve conflict`、`Download conflict`） | 待办 |
| Maven/AAR 依赖 | 3 | 45 | 14 | 高（`maven-metadata.xml`、`.exploded.aar`） | 待办（可并进 IAP 那轮一起） |
| UI 面板/动作 | 117 | 1372 | 500 | 中（`input_method`、Dialog、Editor…） | 待办（最大，最后做） |
| 无特征串的核心 | ~1700 | — | — | 低（只互相引用） | 只能按图结构逐个推，建议按"一个业务子系统一轮" |

**每轮的固定动作**（与 dx/crashlytics 那几轮一致）：
1. `tools/deob/cluster.py` 分诊 → 2. 常量串/实现关系/外类锚定出候选 →
3. `class_map.tsv` 每行写判据 → 4. `members` 定成员 → 5. 过 6 道门
（validate / inherit / famcheck / innercheck / assetcheck / cover）→ 6. 提交前调 `cover` 看真实分母。
