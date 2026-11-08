# jobs/engine —— AIDE 的「引擎接入层」（38 类，**无 oracle**，按作用命名）

## 1) 这个 part 是什么

AIDE 自己的代码里，**和 `com.aide.engine`（真名）打交道的那一层**：绑定/重连 engine 服务、
把工程结构翻译成 `EngineSolution/EngineSolutionProject`、收语法错误、按语言/工程类型各自
实现 `IProject`。它不属于任何第三方库——`com/aide/engine/**` 在包里本来就是真名，
被混淆的只是**客户端这一侧**。

> 这也解释了 `docs/DEPENDENCIES.md` 里那条"Cordova/PhoneGap ~905 类"：
> 包里**没有** `org.apache.cordova`（`CordovaWebView`/`CordovaActivity`/`/android_asset/www`/
> `deviceready`/`PluginManager`/`cordova.js` 全部 0 命中，`assets/` 也没有 `www/`）。
> 那个 905 是**无向连通分量**把 AIDE 的 UI/engine 一起扫进来造成的假象。
> 真正的"PhoneGap 支持"只有 `rj`（`PhoneGapProject`）和 `sj`（判断 `www/index.html`）。

## 2) 怎么切出来的

```
python3 tools/deob/component.py --jar process/base/merged_ok.jar --prefix abcd \
    --seed abcd/Xj --directed \
    --prune-refs "com/google,androidx,io/fabric,com/crashlytics,kellinwood,org/eclipse,org/apache,org/spongycastle,com/jcraft,tv/ouya,io/github,com/android,org/json" \
    → 247 类（太宽）
```

**关键区别**：这里的 `--prune-refs` **不能**包含 `com/aide`——本 part 本身就是 AIDE 的代码，
它们当然都引用 `com/aide/**`（dropbox/dx 那些 part 里 `com/aide` 是"宿主"标记，这里不是）。

所以改用**精确判据**取核心：`abcd/**` 里**直接引用 `Lcom/aide/engine**` 的类（35 个）**
＋它们的内部类 ＝ **38 类**（`method` 合计约 1000）。这与 `jobs/README.md` 里
"引擎接入层 28 类 / 652 方法"的估算是同一批（当时按串粗估）。

## 3) 命名：没有 oracle，全部按作用

`com/aide.engine` 的实现在包里是真名，但**客户端这一侧没有可对照的开源实现**，
所以只能用"常量串 + 真实父类/接口 + 与真名 API 的调用形状"来定名。
`class_map.tsv` 第三列写的就是每一条的判据；强弱分两档：

**强证据（串或真名父类直接点名）**

| 探针 | 名字 | 判据 |
|---|---|---|
| `Xj` | `EngineServiceClient` | `Could not bind to engine service`、`/enginecache` + 持有 `ICodeAnalysisEngineService` |
| `Tj` | `EngineServiceConnection` | `ServiceConnection` + `Engine service connected to UI` |
| `rj` | `PhoneGapProject` | `Phonegap 3 Project Home:`、`/.cordova` |
| `nj`/`pj`/`uj` | `JavaScriptProject`/`CppProject`/`WebsiteProject` | 各自模板串（`HelloJavaScript.zip`/`CppHelloWorld.zip`/`Website.zip`） |
| `rd` | `ClassFileParser` | 229 方法，常量串全是 class 文件属性名（`AnnotationDefault`/`Code`/`InnerClasses`…） |
| `ag`/`bg` | `GoToNextErrorAction`/`GoToPreviousErrorAction` | `GoTo Next Error`/`GoTo Previous Error` |
| `Lk`/`Mk`/`Yj`/`sl` | `FileHighlightingsCallback`/`EngineVersionCallback`/`CodeAnalysisCallback`/`ParseResultCallback` | 分别 `extends com/aide/engine/service/{s,u,p,t}$a` 且方法参数就是对应引擎数据类型 |
| `IProject`/`EclipseJavaProject` | 同名（identity） | 类名没被混淆 |

**弱证据（按作用命名，README 记账）**

| 探针 | 名字 | 为什么弱 |
|---|---|---|
| `Hd` | `JavaTypeTable` | 105 方法/49 字段，只能从"串全是 java.lang 类型名"推 |
| `Zk` | `AppController` | 串是 `App init:`/`Opening project...`/`ProjectService`，但 super=Object（不是 Activity）→ 只能叫"控制器" |
| `Zj`/`ql` | `EngineTask`/`ProjectTask` | 只有 `run()V`，无串 |
| `ak`/`bk` | `SyntaxErrorComparator1/2` | 两个 `Comparator<SyntaxError>`，形状无法区分先后，按探针名顺序编号 |
| `Nk` | `OpenFileTable` | 串是扩展名 + `CurrentFiles`/`OpenFileService`，方法语义靠形状推 |
| `ul` | `ProjectModel` | 27 方法全部以自身类型为参数 → 是棵树，但节点语义不明 |
| `Te`/`Ue` | `ColorPickerCallback`/`ChooseColorAction` | 分别为 colorpicker 回调、`Choose Color` 动作 |
| `Wi`/`ij`/`mj`/`oj`/`qj`/`tj` | `SolutionBuilder`/`JavaEngineSolution`/`JavaScriptEngineSolution`/`NativeEngineSolution`/`WebsiteEngineSolution`/`HtmlEngineSolution` | 都产出 `EngineSolution*`，靠各自常量串区分语言 |

内部类（`Nk$a/$b/$c`、`ck$a`、`ul$a`）先跟随父类保留 `$a` 后缀——`innercheck` 只要求
外层归属一致，作用等成员级再定。

## 4) 现状

```
类映射   38 / 38（2 条 identity + 36 条按作用命名）
成员行   0（下一步：本 part 没有 oracle，只能逐个读方法体/串按作用命名）
参数行   0
```

门禁：`validate ✔ 无无效映射`（类块 1940 / 成员行 14734 / 参数行 8204）、
`inherit 0/0/0`、`innercheck ② 0 / ③ 0`（① 仍是 jgit 老账 `abcd/tB$a`）。

## 5) 下一步（按顺序）

1. **成员级**：38 类约 1000 个方法。没有 oracle，做法是
   - 先给"真名父类/接口"上的成员定名（`IProject` 的 37 个方法、`ICodeAnalysisEngineService`
     回调、`Comparator`/`Runnable` 契约）——这些**靠继承关系就能定**；
   - 剩下用常量串 + 方法体（`rolefill.py` 的 `acc:`/`role:` 档）逐个收口；
2. **参数名**：只有能从真名 API（`com/aide/engine/*` 的公开签名）反推的才填，其余留空；
3. 之后再看 `docs/DEPENDENCIES.md` 里剩下的几个子系统（编译/诊断 18 类、probe 21 类、
   Trainer 9 类、IAP 20 类、SCM 18 类…），每轮照本文的切法做一块。

## 6) `com/aide/engine/M` 是**混合**回调（下一轮定 c$b 剩余接口时必读）

`M` 的唯一实现者是 `com/aide/engine/service/e`，它把方法分成两路：

| M 的方法 | service/e 的去向 | 用途 |
|---|---|---|
| `j6(SourceEntity)` / `Hw(String)` / `j6(String,List)` / `DW(String,List)` / `v5(String)` | AIDL `service/r` = **IGotoSymbolListener** | 跳转符号（按分组名 + SourceEntity 列表） |
| `j6(String,long,int,int)` 等位置类 | `CodeAnalysisEngineService` + AIDL `service/o` = **ICodeCompletionListener** | 补全位置/上下文 |
| `VH(String)` / `j6(List<SourceEntity>)` | 只到 `CodeAnalysisEngineService` | 全局符号表 |

所以**不能**把 `M` 当“补全回调”一把梭：`kb`/`nb`/`mb` 这三个桥接口按上表分路定名，
`kb` 的 `DW()/Hw()/FH()/v5()` 走的是**符号跳转**那一路，`mb` 的位置类方法才是补全那一路。
另：`com/aide/engine/c` 的字段 `b: List` 只有 `FH(c,List)` 这一个写入口、**全 jar 无人读**，
`nb.j6()`/`DW()` 就是在填它——定名时不要假设它参与运行期逻辑。

## 7) 仍待定名的（已侦察到的证据，下一轮直接接着做）

### c$b 的 16 个桥接口：还剩 3 个
| 探针 | 已知 | 缺哪一环 |
|---|---|---|
| `mb` | 3 方法全走 `M` 的“位置类”口：`j6(Da)`→`M.Zo(路径)`、`j6(Da,I×8)`→`M.j6(路径,I×8)`、`j6(na,I×4,Z)`→`M.j6(语言名,I×4,Z)`；**这三个在 `service/e` 里都是空实现**；调用者 `abcd/{Gd,be,re}`(Sa,I,I) 与 `abcd/Z` | 先确认这三口是否真的整条链都被忽略（若是，只能按“引擎内部的候选位置上报”命名） |
| `nb` | `j6()` 建表 → `j6(Aa)`(`Aa.rN()` 为真时用 `SourceEntity(La,Aa,int)`)、`j6(Za)`、`j6(String)` 入表 → `DW()` 调 `c.FH(engine,list)` 写进 **`Engine.b`**；而 `b` 全 jar 无人读；调用者 `abcd/{Od,kd}`(带 `(nb,Da,I,I,String,List)`) | 同上：目标字段只写不读，只能按“声明/符号表填充”命名 |
| `lb` | 空接口（0 方法），唯一实现 `c$b$m` 也是空；`La.aM:Labcd/lb;` 只在构造里赋值、**从不读** | 暂无判据 → **故意不命名**（不编造） |

### com/aide/engine 包内还剩下的
- `Ia`（97 方法，`extends Aa`）：字段 `ua J8`+`Da we`+`Ea/Ga/Ba`+`Ia$a Ws`；`Ia$a` 是 14 个 int / 9 个 boolean / 3×`Ab<Ya>` / 2×`Yb` / 3×`Cb` / `Ya vy` / `String cn` / `long KD` 的状态结构；方法里有 `SourceEntity` 用它做的分类判定（`hz/ko/et/oY/XG/vJ/…`）、子节点增删（`DW(Ya,int)`/`j6(int,Ya)`）、`Sf()/cn()→Yb<Ia>`、`FH()→ua`。倾向“**单个声明的 AST 模型**”，但还没到能下笔的程度。
- `C` = `(String,int,int)` + clone/equals/hashCode：两处构造，一处 `(Da.XL(),1,1)`，一处 `(Da.XL(),Ia.J8(),Ia.Ws())` ⇒ 像“文件内的区间”，但 **line/col 与 offset 二义未定**。
- `E` = `List<Integer> + 3×List<String>` 的载荷，由 `hb.aM()` 造、交 `J.j6(E)`；AIDL `v`(IRefactoringListener) 只有 `(String,List)/(List)/(String,String)/(String,Map)`，**对不上**，需再看 `service/j` 的同名方法走哪条。
- `o` = `byte[][]` 二维字节缓冲（`DW(int,int)byte` / `j6(byte,int×4)` / `j6()`），用途未查。
- `b` = 只有 `static final int[]`，被合成访问器构造器当占位参数（`c$b(...,Lcom/aide/engine/b;)V`）。
- `P` = 无成员空类。
- `c$a` / `c$c` = 两个枚举（11 个 / ≥13 个常量），要按常量语义定名。

### `abcd/dw`（Crashlytics/Fabric 的上报线程）——查过 oracle，仍不敢定名
`run()` 里：拼 `?clientTime=...&formatVersion=2&deviceId=...&reportId=...&currentSessionId=...`，
`POST` + `Content-Type: application/stream+json`，读 200/202 成功→删已发文件；410 GONE→写 "gone" 文件并置 `AtomicBoolean`；
没文件时 `ReentrantLock`+`Condition` 等待；串里有
`"No files ready for transmission - sleeping..."` / `"Found N files ready for transmission."` / `"Empty file encountered sending log files"`。
**但 crashlytics 2.9.9 / crashlytics-core 2.7.0 / fabric 1.4.8 三个 oracle 里都没有这些串**（strmatch 也 0 匹配），
所以只能确定它是 Fabric 家族的「事件文件上报 Runnable」，无法确证该叫 `ReportUploader` 还是它的内部 `SendReportRunner`
⇒ 先留名。

## 8) 父类型反查：139 个未命名类的“父类型已有真名”清单（2026-11）

做法：把 `abcd/*` 里未命名的顶层类，按「父类/接口是否已命名」筛出来，再按父类型分组。
凡是父类型已定的，类的语义范围就定了，只剩“具体是哪一种”。当前分组：

| 父类型（真名） | 未命名子类 | 说明 |
|---|---|---|
| `InstructionPrinter`(Lt) | `No Bo Fo Lo Ao Co Do Eo Go Ho Io …`（约 11 个，6~8 方法） | DEX 各指令的打印器；要逐个看它读哪些指令字段 |
| `ArrayItem` | `Jm Qn Wn du`（7~8 方法） | DEX 数组元素 |
| `FixedInstruction` | `Tn po`（8 方法） | 固定长度指令 |
| `DexBaseReference` | `os ps`（8 方法） | 引用常量 |
| `DexAnnotation` | `Mm`（14 方法） | 注解实现（构造收 un/qn/Js） |
| `TypeInfo` | `bs`(36) `Wm`(10) | 类型信息（`bs` 有 HashMap 单例池 + `Rs`/`Vr` 字段） |
| `CodeWriter`(Lt) | `Qt`(26) | 被 `Vo/_o/ap/hp` 等 DEX 写出器大量使用（190 引用点），方法含 `writeByte(I)`/`gn()[B` |
| `RunTarget`(ze) | `Le`(11) | 运行目标实现，`Zo()` 返回 `RunTarget$Type` |
| `Task`+`Dependency`+`PriorityProvider` | `gz`(11) `ez`(10) | 带 `Collection<lz>` 的任务/依赖（`gz` 还能包 Runnable/Callable） |
| `Configuration`(BaseProjectConfig 的真名) | `Je`(14) | 与 `He`(MavenMetadataXml) 同族，形状分曾给到 `ui/util/BuildGradleExt`(0.88) |

已按此法定名的：`Jd → com/aide/codemodel/language/js/JavaScriptCodeAnalyzer`
（implements CodeAnalyzer + 构造收 (Model, JavaScriptLanguage)，与 `dd`=JavaCodeAnalyzer 同族）。

**注意**：`{Pf, pf}` 这对“菜单命令”仍是死结——两者都实现 MenuCommand+FileBrowserCommand、6 个方法形状全同，
`run()` 分别调 `U.lg/J8/mk/ma` 与 `Zk.j6/gn/VH`，仅凭字节码分不出各自是哪个菜单项。
