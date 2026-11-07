# jobs/ —— 一个依赖一个目录（真相）

本仓库现在有 **19 个** part（`process/deob.json` 的 `parts` 按这个顺序汇总；下表只列 12 个早期的，后面新增的 `engine/jdcore/antlr/antlr492/asn1bc/jzlib/aide_iap/aide_bb/aide_ui` 见 `docs/DEPENDENCIES.md` 的状态总表）：

| 目录 | 依赖 | 判据来源 | 内容 |
|---|---|---|---|
| `jgit` | Eclipse JGit（AIDE 内置，魔改混合版） | 多版本 oracle（按类选最贴版本）+ 逐版本差异白名单 | 685 类 / 5542 成员行 / 3238 参数行，待人工 **0** |
| `jsch` | JSch **0.1.51**（类名没混淆，只有成员被改名；见 [docs/NOTES.md](../docs/NOTES.md) §9） | oracle 同名类 | 141 类 / 1228 成员行 / 824 参数行 |
| `aide` | AIDE 自有类（目标在 `abcd/aide/`，**无 oracle**） | 常量串 / 引用者 / 实现关系，按作用命名 | 66 类 / 203 成员行 / 104 参数行（原 77 类里 25 个 HTTP/JSON 类查明是 Dropbox SDK + json-simple，已移交 `dropbox`） |
| `dx` | dx **1.16 世系**（裁掉纯 CLI 子包） | 结构指纹 + 枚举锚点 + 引用集 + 实现者集合 | 448 类 / 4366 成员行 / 2321 参数行 |
| `crashlytics` | crashlytics-core 2.7.0 / answers 1.4.7 / beta 1.2.10 / crashlytics 2.9.9 | 同上 + 常量串全集 + 外类锚定 | 176 类 / 831 成员行 / 590 参数行，待人工 **0** |
| `fabric` | fabric 1.4.8 | 同上（AAR 被 proguard 裁过，缺的按作用命名） | **69 类** / 380 成员行 / 207 参数行，待人工 **0** |
| `zipsigner` | kellinwood zipsigner 1.11 / zipio 1.6 / logging（Maven 没有，**自己用上游源码 javac 编 oracle**）| 串 + 字段类型 + 调用点常量 + 同方法体内字段读取顺序 | **24 类** / 108 方法行 + 94 字段行 / 94 参数行，待人工 0 — 见 [zipsigner/README.md](zipsigner/README.md) |
| `spongycastle` | SpongyCastle(=BouncyCastle) **1.47**；用官方 bcprov/bcpkix-jdk15on-1.47 当同版本 oracle | tag 常量 / 常量串 Jaccard / 实现者集合 / 形状包含 / 引用者 | **257 类** / 813 方法行 + 1114 字段行 / 795 参数行，成员待人工 0 — 见 [spongycastle/README.md](spongycastle/README.md) |
| `dropbox` | Dropbox **Android** SDK **1.6.2**（`com.dropbox.client2`）+ json-simple **1.1** | 上游 GitHub 仓库 `lib/` 自带的官方 jar + 源码（证书字节级比对锁版本） | **49 类** / 222 成员行（方法 113 + 字段 109）/ 122 参数行，待人工 0 — 见 [dropbox/README.md](dropbox/README.md) |
| `engine` | AIDE 的「引擎接入层」（**AIDE 自有，无 oracle**） | 常量串 + 真名父类/接口 + 与 `com/aide/engine` 的调用形状，按作用命名 | **61 类**（含语言服务 11 + 文件类型 10）/ 成员行 25— 见 [engine/README.md](engine/README.md) |
| `proguard` | ProGuard **6.0.3**（`a/**`，AIDE 的混淆器） | Maven `net.sf.proguard:proguard-base:6.0.3`（版本串 `ProGuard, version 6.0.3` 实证） | **698 类**（92.2%）/ 7163 成员行 / 9896 参数行，成员级 cover 方法 99.0% · 字段 97.9%，剩余 59 类见 [todo_classes.txt](proguard/todo_classes.txt) — 见 [proguard/README.md](proguard/README.md) |

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

## 剩余待还原：`abcd` 里 **1493** 类（ProGuard / BC-ASN.1 / jd-core / ANTLR 都已收口，见 `docs/DEPENDENCIES.md`）

`abcd/**` 共 2745 类，**已还原 1252**（19 个 part）。剩下 1493 类没有 oracle
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
| Maven/AAR 依赖 | 3 | 45 | 14 | 高（`maven-metadata.xml`、`.exploded.aar`） | 1/3 完成（`MavenDependencyResolver`）；`Kj$a`/`Kj$b` 因外层 `abcd/Kj` 被 R8 删掉而暂缓 |
| UI 面板/动作 | 117 | 1372 | 500 | 中（`input_method`、Dialog、Editor…） | **已开张**：动作族 27 类做完 → [jobs/aide_ui](aide_ui/README.md)；剩 ~90 类 |
| 无特征串的核心 | ~1700 | — | — | 低（只互相引用） | 只能按图结构逐个推，建议按"一个业务子系统一轮" |

**每轮的固定动作**（与 dx/crashlytics 那几轮一致）：
1. `tools/deob/cluster.py` 分诊 → 2. 常量串/实现关系/外类锚定出候选 →
3. `class_map.tsv` 每行写判据 → 4. `members` 定成员 → 5. 过 6 道门
（validate / inherit / famcheck / innercheck / assetcheck / cover）→ 6. 提交前调 `cover` 看真实分母。

## 第三方 lib 还剩什么（2026-11-05 清点，含三条**纠正**）

`abcd/*` 2745 类现在已还原 **1122**（1108 + jzlib 14），剩 1623。按"能不能拿到真名"分三类：

### A. 有官方 oracle、可做（本轮做了 jzlib）

| 簇 | 类数 | 身份 | 状态 |
|---|---|---|---|
| `abcd/Dy…Oy` | **14** | **JZlib 1.1.1** | ✅ 本轮完成 → [jobs/jzlib](jzlib/README.md) |
| `abcd/NB…` + `abcd/jI$*` | 34 | **JGit 的异常/凭据族**（`GitAPIException` 子类、`CredentialItem$*`） | ❌ **已核实无判据**：全 APK 只有 2 个类引用它们、方法级 `new` 顺序对齐只投出 1 票；34 个类彼此连通、对外零引用（R8 保下来的死代码），且形状完全同构（都是 `<init>(String)`/`<init>(String,Throwable)`）⇒ 按规则保持原名 |

### B. 上游本来就是混淆的（拿不到"真名"，只能按作用命名）

| 簇 | 类数 | 身份 | 说明 |
|---|---|---|---|
| `abcd/Zx` | 30 | Play Services **Tasks**（`com.google.android.gms.tasks`） | 公开 API 是 `Task/Tasks/OnCompleteListener…`，内部是 `zz*`；要版本对齐才有意义 |
| `abcd/px` / `abcd/tx` / `abcd/Nx` / `abcd/dx$a$a` | 6 / 5 / 5 / 3 | play-services 的 basement / ads-identifier / auth / externalreferrer | 同上 |
| `abcd/uy` | 7 | Firebase Analytics | 同上 |

### C. 不是第三方库 —— 三条**纠正**（此前清点时我按 1~3 个字符串猜错了）

| 簇 | 我上次的猜测 | 实际是什么 |
|---|---|---|
| `abcd/Tz…oA`（11 类） | ~~Volley~~ | **AIDE 自己的缓存策略枚举 + 常量持有类**：`abcd/kA` 是 3 值枚举（`USE_CACHE`/`SKIP_CACHE_LOOKUP`/`IGNORE_CACHE_EXPIRATION`），其余 10 个只有 `<clinit>` 和若干常量字段，字段名是 `DW/FH/j6/v5` 这种混淆名 —— 属上表"UI/核心"那类 |
| `abcd/Jv…yk`（15 类） | ~~json 库~~ | **AIDE 自己的 IAP/计费/订阅**：`aide_prime_monthly_0500`、`purchaseState`、`https://api.appfour.com/aideservices/subscriptions/v1/registerPurchase`、`OUYA check purchases failed` ⇒ 就是本表下面那行"IAP/计费/licensing 20 类" |
| `abcd/bQ…hQ`（10 类） | ~~OUYA SDK~~ | **OUYA 的 AIDL 存根**（`tv.ouya.console.internal.IIapServiceDefinition` / `IStringListener` 的 `$Stub`/`$Stub$Proxy`）。APK 里 `tv/ouya/console/{api,api/store,util}` 42 类是未混淆的，但 `internal/` **不存在**未混淆副本 ⇒ 命名不会撞车，只是 AIDL 模板货，可读性收益低 |

> 教训：**"一个类里出现某个字符串"不等于"这个类属于那个库"**。判第三方库至少要"多类共享同组特征串（错误文案/URL/包名）+ 形状能和某个 oracle 对上"，
> 本轮 jzlib 就是靠 4 条 zlib 判定文案 + 22 个 oracle 类形状全部对上才敢认的。

## 又两处清点结论（2026-11-05 晚，含一个 497 类的大发现）

### A. `abcd/*` 里藏着**第二份 dx/dex**（497 类）—— 已核实是**死代码**，不建议命名

按引用连通块切出来一块 **497 类**的簇，字符串/形状与 **dx 1.16** 的类逐一对上（抽样 47 个，35 个
Jaccard=1.00 且唯一）：

```
abcd/Cp  → com/android/dx/dex/file/MethodIdsSection      'method_ids_size: ' / 'cst == null'
abcd/Ap  → com/android/dx/dex/file/MethodAnnotationStruct
abcd/Es  → com/android/dex/DexFormat 的一支（CstLong / CstKnownNull / CstArray …）
abcd/Fm  → com/android/dx/ssa/…BaseMachine（'local variable type mismatch: attempt to set or access…'）
abcd/Fp$a→ MixedItemSection$SortType
```

但：**全 APK 对这块 497 个类的外部引用数 = 0**（扫描所有 class 的常量池）。
也就是说 AIDE 真正用的是 `com/a/*` 那份（已在 `jobs/dx` 定名 448 类），这份是 R8 保下来的死副本。

⇒ 结论：**不命名**。理由 ① 它和 `jobs/dx` 的目标名会完全撞车（同一个库同一份代码）；
② 死代码，命名不改善运行/可读性收益，还会把 500 行映射噪声塞进真相表。
（`newseq.py` 这类"创建点"工具也帮不上：没有活的调用点。）

### B. IAP/计费那簇是**活的**，而且比表里的 20 类大得多（89 类）

下面待办表里"IAP/计费/licensing 20 类"这一行，用线索串（`aide_prime_` / `appfour` / `InAppProduct`）
在未定名的 `abcd/*` 里扫，实际命中 **89 类**，且**有 24 个外部引用者**（全部是未定名的 AIDE 自有代码，
不是死代码）⇒ 这是"按作用命名"路线里**优先级最高、证据最足**的一块：

* SKU 串：`aide_prime_monthly_0500`、`aide_prime_yearly_3000`、`aide_prime_monthly_0500_7days_trial`
* 服务端：`https://api.appfour.com/aideservices/subscriptions/v1/registerPurchase`
* 商店协议：`purchaseState`/`productId`/`packageName`/`purchaseTime`（Play Billing 的 JSON 字段）
* 自身文案：`Internal error in in-app billing (JSON parse).`、`Error communicating with Play Store service.`
* 与未混淆的 `com/aide/licensing`（19 类，license 校验）互相独立：那 19 类只引用
  `abcd/ApplicationUtils` 等 4 个类，不碰这块

（**纠正**：上一轮我把 `abcd/Jv…yk` 那 15 类说成"就是 IAP/计费 20 类"，实际那一行是 89 类。）

## 新增 part 一览（2026-11-05，按开工顺序）

| part | 库/对象 | 类 | 判据要点 | 状态 |
|---|---|---|---|---|
| `jdcore` | JD Core（AIDE 魔改版反编译器） | 434 | 多版本 oracle + 形状/串/创建点 + 作用命名 | 类 100%，方法 99.8% / 字段 99.7% |
| `antlr` | ANTLR4 runtime **4.7.2** | 117 | 4 个序列化 UUID 锁版本；stateFactory 的 tableswitch 定状态类 | 方法 99.7% / 字段 100% |
| `asn1bc` | BouncyCastle **1.56** 的 ASN.1 子集（`c/*`） | 76 | 串 + 描述符包含 + **encode 的 tag 常量** + R8 合并件的 flag | 类 74/76，方法/字段 100% |
| `jzlib` | **JZlib 1.1.1**（`abcd/*` 里） | 14 | zlib 判定文案 + 形状；字段靠顺序票/用法指纹 | 字段 89.9% |
| `aide_iap` | AIDE 的 **Play 内购**（AIDL + 骨架） | 19 | `onTransact` 的 txn 号定方法名；SKU 串/枚举/WebService 串 | 类 19，成员 29 行 |
| `aide_bb` | AIDE 对 **Backbone 框架**的实现类 | 7 | implements 的是未混淆框架接口 ⇒ 实现者判据 | 类 7 |

（`abcd/*` 里另外两块已核实**不做**：第二份 **dx（497 类）是死代码**、jgit 的异常/凭据族（34 类）
形状全同构且零引用 —— 理由见上一节。）
