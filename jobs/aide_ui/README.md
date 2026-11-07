# jobs/aide_ui —— AIDE 自有 UI/动作族（无 oracle，按作用命名）

这一 part 专收"没有 oracle、但常量串足够硬"的 AIDE 自有类。第一批 15 个类，判据全是
**动作标签串 + 实现的接口**（AIDE 的 `_l`/`Wl`/`Yl` 就是它的 Action 接口）：

| 探针 | 目标 | 判据 |
|---|---|---|
| `Cf` | `com/aide/ui/actions/ExpandSelectionAction` | 串 `"Expand Selection"` + `implements abcd/_l,abcd/Wl` |
| `Dg` | `.../RenameInCodeAction` | 串 `"Rename in Code"` + `implements abcd/Yl,abcd/Wl` |
| `Ef` | `.../ExtractMethodAction` | 串 `"Extract Method"` |
| `Gg` | `.../ReplaceTextuallyAction` | 串 `"Replace Textually"` |
| `Kf` | `.../FindExtendedUsagesAction` | 串 `"Find Extended Usages"` |
| `Lg` | `.../SaveFilesAction` | 串 `"Save Files"` |
| `Gf` | `.../LogCatFilterByPriorityAction` | 串 `"LogCat - Filter by Priority"` |
| `Hf` | `.../LogCatFilterByProcessAction` | 串 `"LogCat - Filter by Process"` |
| `If` | `.../LogCatFilterByTagAction` | 串 `"LogCat - Filter by Tag"` |
| `Jf` | `.../LogCatFilterCurrentAppAction` | 串 `"LogCat - Filter current App"` |
| `Jk` | `com/aide/maven/MavenDependencyResolver` | 串 `"/maven-metadata.xml"`、`".exploded.aar"`、`"Extracted AAR "`、`"/.aide/maven"`；34 个方法的参数类型是 `abcd/Be$g/Be$m`（`Be`=MavenDependenciesConfig） |
| `Cl` | `com/aide/trainer/LessonRunner` | 串 `"$package_name$"`/`"$project_name$"`/`"$code_hint$"`/`"Skip Lesson Dialog Shown"`，引用 `com/aide/ui/trainer` 79 处；72 方法 13 字段 |
| `Ck` | `com/aide/licensing/LicenseVerificationTask` | 串 `"Licensed verification failed"` + `implements abcd/g`（AIDE 任务接口） |
| `Ki` | `com/aide/licensing/LicensingServiceConnection` | 串 `"Licensing service connected."`/`"Licensing service unexpectedly disconnected."` + `ServiceConnection` |
| `Ah` | `com/aide/ui/scm/InitialCommitTask` | 串 `"libs/*/*.so"`、`"Initial commit"`；`Runnable`；引用 `com/aide/ui/scm` |

## 第二批 12 个（动作 / 许可证 / 引擎钩子）

| 探针 | 目标 | 判据 |
|---|---|---|
| `rg` | `com/aide/ui/actions/ShowSearchResultsAction` | 串 `"Show Search Results"` + `implements abcd/Yl,abcd/Wl` |
| `qf` | `.../CreateSettersGettersAction` | 串 `"Create Setters & Getters"` |
| `Jg` | `.../LogCatResumeAction` | 串 `"LogCat - Resume"` + `implements abcd/_l,abcd/Wl` |
| `Rg` | `.../ShowCodeHelpAction` | 串 `"Show Code Help"` |
| `Se` | `.../ShowCharacterPickerAction` | 串 `"Show Character Picker"` + `implements abcd/am` |
| `Qd` | `.../JavaScriptCommentsAction` | 串 `"JavaScript Comments"` + `implements abcd/na` |
| `T` | `com/aide/refactor/MoveClassesOperation` | 串 `"Select a class or namespace identifier in the code to be moved."`、`"All classes of namespace  "`、`" will be moved to the new namespace and all references will be updated."`、`"This class is defined outside of the project."` |
| `Oi` | `com/aide/licensing/LicenseChecker` | 串 `"Requesting license check"`、`"Binding to "` + 常量 `NOT_LICENSED`/`OVER_GRACE_PERIOD`/`TEMPORARY_ERROR` |
| `uw` | `com/aide/backbone/BackboneDataDir` | 串 `"backbone"`、`"dataDir"` + `ApplicationInfo`/`SDK_INT` |
| `vl` | `com/aide/licensing/LicenseSignatureChecker` | 内嵌 RSA 公钥 Base64（`MIIBIjANBgkq…`）+ `"SHA1withRSA"`，引用 `Ek`(license 控制器) |
| `Ev` | `com/aide/backbone/HookRegistry` | 串 `"Set onEnter "`、`"Set onThrow "`、`": container "`；被 `lv`(ReflectionRuntime) 调用 |
| `Bk` | `com/aide/ui/KeybindingsService` | 串 `"KeybindingsService_2"` + `implements abcd/Wl,abcd/Xl` |

> 这批里 **6 个被排除**：`Hj/Gj/Fj/Ij/Mi/Cj` 都有 `EnclosingMethod` 属性（是 `ApplicationUtils` 里的**匿名类**），
> 探针名是顶层但语义是 `Outer$N`，映射成顶层名会重演 `Kj$a` 的问题 ⇒ 保持原名。

## 为什么 `abcd/Kj$a`、`abcd/Kj$b` 没进这一批

它们是**内部类**（类文件里 `InnerClasses: a=class abcd/Kj$a of class abcd/Kj`），但外层 `abcd/Kj`
**在 jar 里根本不存在**（R8 把它删/并了）。映射成顶层目标会被 `innercheck ②` 判成
"探针内部类 → 目标顶层类（会毁外层 InnerClasses）"，D8 侧还可能报 Malformed ⇒ 保持原名，
等找到外层归处再说（`Kj$b` 是 `Callable`，串里带 `".aar"`，`Kj$a` 串里是
`"Downloading "/"Extracting "/"Removing old libraries"`）。

## 下一步

按 `~/tmp/clusters.tsv`（`tools/deob/cluster.py` 生成，按"引用到的真实包 + 常量串"聚类）继续：
`com/s1243808733/**`（魔改作者自己的 11 类）、`com/aide/ui/scm`、`com/aide/licensing` 剩余的类，
然后是 UI 面板那 117 类（最大、证据最弱，最后做）。
