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
