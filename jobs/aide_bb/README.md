# jobs/aide_bb —— Backbone（com.appfour.backbone）在 AIDE 里的实现类

81 类。类级命名与判据见 `class_map.tsv`；本文只记**成员级**为什么大多是空的、以及已经做掉的部分。

## 1. 成员盘点（570 个方法）

| 分类 | 数量 | 说明 |
|---|---|---|
| 合成 / 构造器 | 78 | `access$NNN`、`<init>`、`<clinit>` |
| 覆写（名字由祖先定） | 192 | 描述符按 class_map 换名后与祖先/接口一致 ⇒ FART 会沿覆写传播，不需要（也不该）单独写行 |
| 自有方法 | 300 | 下面 §2 说明为什么大部分仍然空着 |

## 2. 为什么 300 个自有方法大多定不了：**Backbone API 的接口名也被混淆了**

反直觉的地方：APK 里 `com/appfour/backbone/api/**` 是**未改包名**的，但**方法名是字母**：

```
public interface com.appfour.backbone.api.runtime.a extends ...define.DefineAnalytics {
  int DW();  String DW(Object);  String DW(Throwable);  long EQ();  int FH();
  String Hw();  String J0();  String J8();  String QX();  long VH();
  String Ws();  boolean Zo();  boolean gn();  long j6();  Class<?> j6(long);
  <T> T j6(Class<T>);  Object j6(Object,long,long);  ...
}
```

即：Backbone 的 `define/*` 接口保留了真名（`onActivityCreate`/`onCrash`/`defineEvent`…），但
`runtime/*`、`closures/*` 这些被 R8 连方法名一起改了。`jobs/aide_bb` 里 `lv`(ReflectionRuntime)、
`Mv`(UISceneRuntime) 等实现的就是这些**同样被混淆的接口**，所以：

* 改实现类的方法名 = 必须**同时**改接口（否则覆写链断）——这要先知道 Backbone SDK 里这些
  方法叫什么；
* 我们没有 Backbone 的 oracle（`~/out/oracle` 里没有 appfour 的 jar），按项目规则
  **不能猜**，所以这批（约 200+ 个）保持原名。

想要推进只有两条路：①找到 appfour backbone 的 aar/jar 当 oracle；②按作用命名**整个接口族**
（`runtime/a` 的方法 → 实现类一起改），风险高、收益是"字母变中文语义"，等确认后再做。

## 3. 已经定名的 10 个（判据都是 body/类型，不依赖 SDK）

| 类 | 方法 | 新名 | 判据 |
|---|---|---|---|
| `zw` RectProvider | `j6()` | `getScreenRect` | `WindowManager.getDefaultDisplay().getRealSize(Point)`（SDK≥17 分支）⇒ 屏幕矩形 |
| `zw` | `j6(Activity)` | `getActivityRect` | `activity.getWindow().getDecorView()` 后转调 `j6(View)` |
| `zw` | `j6(View)` | `getViewRect` | 参数类型 View、返回 Rect |
| `zw` | `j6(UserActionWidget)` | `getWidgetRect` | 参数类型 UserActionWidget、返回 Rect |
| `zw` | `j6(UserActionWindow)` | `getWindowRect` | 参数类型 UserActionWindow、返回 Rect |
| `iw` EventRecorder | `j6(lw,JJ)V` | `recordStart` | 串 `") Event recording start: "` + 调 `lw.DW()String`（定义名） |
| `iw` | `j6(lw,J,EventData)V` | `recordEvent` | 参数里有 `EventData` |
| `iw` | `j6(lw,J,Throwable)V` | `recordError` | 参数里有 `Throwable` |
| `iw` | `DW(J)J` | `now` | 按 `iw$a.DW(J)Z` 在两个时钟持有者之间选一个再取时间 |
| `iw` | `j6()String` | `getProcessName` | `com/appfour/backbone/api/Api.getProcessName()`，空串则返回 null |

## 3.1 第二批 20 个（`ow`/`pw`/`rw`，判据是**方法体里的串/键/文件名**）

| 类 | 方法 | 新名 | 判据（body 里的字面量/调用） |
|---|---|---|---|
| `rw` Preferences | `DW(String,J)V` / `DW(String,Z)V` | `putLong` / `putBoolean` | `SharedPreferences$Editor.putLong/putBoolean` + `commit` |
| | `j6(String,J)J` / `j6(String,Z)Z` | `getLong` / `getBoolean` | `SharedPreferences.getLong/getBoolean` |
| | `VH()` | `getSharedPreferences` | `Application.getSharedPreferences` + 进程名拼键 |
| | `FH()` | `getPreferencesFile` | `File(<base>, …)` + `Api.getProcessName` |
| `pw` AppState | `DW()` | `getAppStateFile` | 串 `appstate.json` |
| | `DW(String)` / `FH(String)` / `Hw(String)` | `appVersionKey` / `dayKey` / `monthKey` | 串 `has_occurred_for_app_version_` / `_for_day_` / `_for_month_` |
| | `gn()` | `load` | `BufferedReader` + `FileReader` + `JSONObject`（读 `appstate.json`） |
| | `u7()` | `save` | `File.createTempFile` + `BufferedWriter.flush/write` + `File.delete`（原子写） |
| `ow` ProbeLoader | `tp()` | `getDownloadedProbesApk` | 串 `dev.download.apk` / `public.download.apk` |
| | `u7()` | `getCurrentProbesApk` | 串 `dev.current.apk` / `public.current.apk` |
| | `gn()` | `getBuiltinProbesApk` | 串 `dev.builtin.apk` / `public.builtin.apk` + `assets/dev.probes` / `assets/public.probes` |
| | `FH(File)` | `createProbesClassLoader` | 串 `classes.dex` / `.dex` / `.opt` / `Error loading probes` |
| | `j6(ZJString,String)V` | `loadProbes` | 串 `Opening downloaded probes ` / `Opening built-in probes ` / `Opening no probes` / `Waited for load ` |
| | `j6(Class)V` | `registerProbesClass` | 串 `define` / `Probes` / `Opening ` + 反射 `getDeclaredMethod/setAccessible` |
| | `DW(ClassLoader,Z)V` | `loadAllProbes` | 串 `Probe loading` |
| | `j6(lw,J,Throwable)V` | `recordProbesError` | 串 `backbone probes event error: ` + 调 `iw.j6`(EventRecorder#recordError) |

合计已定名 **30** 个（§3 的 10 + 本节 20），剩下 270 个仍卡在 §2 的"接口名被混淆"和"无 oracle"上。

## 3.2 `com/appfour/backbone/api/runtime/a`、`b`：整族 27 个（判据在实现类里）

`runtime/a` 是 Backbone 的运行时接口，**类名没混淆、26 个方法名全是字母**；两个实现
`lv`(ReflectionRuntime) / `Mv`(UISceneRuntime) 的方法体把每个方法的语义写得很清楚
（反射、PackageManager、Looper、ActivityManager…）。做法：把 `runtime/a`、`runtime/b` 以
**恒等映射**纳入本 part（否则没地方写方法行），再逐方法按实现体定名；实现类不用写行 ——
FART 会沿覆写传播下去（`inherit_check` MISSING 0 已确认）。

| 方法 | 新名 | 判据（`lv`/`Mv` 的实现体） |
|---|---|---|
| `j6()J` | `getFirstInstallTime` | `PackageInfo.firstInstallTime` |
| `VH()J` | `getLastUpdateTime` | `PackageInfo.lastUpdateTime` |
| `EQ()J` | `currentTimeMillis` | `System.currentTimeMillis()` |
| `FH()I` / `J8()String` | `getVersionCode` / `getVersionName` | `getPackageInfo(...).versionCode/versionName` |
| `QX()String` | `getPackageName` | `Application.getPackageName()` |
| `u7()String` | `getAppLabel` | `ApplicationInfo.labelRes` + `getString` |
| `Hw()String` | `getAppLabelWithVersion` | 拼 `label + " " + versionName` |
| `J0()String` | `getCurrentProcessName` | 遍历 `RunningAppProcesses`，按 `pid` 取，截掉最后一个 `:` 之后 |
| `gn()Z` | `isActivityProcess` | 同上 + `processName.contains(":activity")` |
| `Zo()Z` | `isMainThread` | `Looper.getMainLooper().getThread() == Thread.currentThread()` |
| `DW(Object)String` / `DW(Throwable)String` | `getObjectDescription` / `getExceptionDescription` | `Thread.getName()` 分派 / `Class.getName()` + 逐层 `getCause()` |
| `j6(Object)String` | `describeObject` | 组合上面两个 |
| `j6(Throwable)StackTraceElement` | `getTopStackFrame` | `getStackTrace()[0]` + 沿 cause 找 |
| `j6(View)String` | `getViewName` | `View.getId()` 后按 id 名解析 |
| `j6(CharSequence)String` | `resolveString` | `CharSequence.toString()` + `Dv.j6`/`Uv.j6`（资源/翻译） |
| `v5()String` | `getScreenInfo` | `DisplayMetrics` + `Rect.width/height` + `"x"`/`"/"` |
| `we()String` | `getHardwareFeatures` | `PackageManager` + 过滤 `android.hardware.`（排除 sensor）后排序 |
| `tp()EventData` | `newEventData` | `new Xv(...)`（EventDataImpl） |
| `j6(J)Class` / `j6(Class)Object` / `j6(Object,J)Z` | `getClassById` / `newInstance` / `isInstanceOf` | 都走 `Ev.j6/DW`（类注册表） |
| `j6(Object,JJ)Object` | `getFieldValue` | `Field.setAccessible` + `Field.get`，串 `Field not found` |
| `j6(Object,Object[],JJ)Object` | `invokeMethod` | `Method.setAccessible` + `invoke`，串 `Invocation failed` |
| `runtime/b.j6()` / `j6(a)` | `getRuntime` / `setRuntime` | 只有 `private static a` 的读写 |

没定名的 2 个：`DW()I`（只是读 `Qv.DW` 这个 int 字段，而该字段在哪赋值还没定位）、
`Ws()String`（转调 `ApplicationUtils.DW()String`，那个方法本身还叫 DW）。

## 3.3 `Hv`(DecorViewHelper) 19 个（判据是反射字段名/串）

| 方法 | 新名 | 判据 |
|---|---|---|
| `DW(View)Window` | `getWindow` | 反射 `com.android.internal.policy.DecorView` 的 `mWindow` |
| `j6(View)PopupWindow` | `getPopupWindow` | 反射 `this$0`（匿名 `OnClickListener` 的外层 PopupWindow） |
| `j6(Window,PopupWindow,View)UserActionWindow` | `createWindowAction` | `WindowManager$LayoutParams.getTitle()`（串 `Toast` 分流）+ `new UserActionWindow` |
| `we()` | `hookInputConnection` | 反射 `mInputConnection`/`mServedInputConnectionWrapper`，`getSystemService("input_method")` |
| `u7()` | `installLifecycleCallbacks` | 反射 `android.view.WindowManagerImpl/Global` + `Application.registerActivityLifecycleCallbacks` |
| `DW(Intent)Z` | `isLauncherIntent` | `ACTION_MAIN` + `CATEGORY_LAUNCHER` |
| `Hw(View)Z` | `isDecorView` | `activity.getWindow().getDecorView() == view && view.isShown()` |
| `FH(View)Z` | `isViewOfWindowType` | `getWindow(view)` + `UserActionWindow.getType()` |
| `gn()UserActionWindow` | `findWindow` | 遍历窗口表按 `getActivity()`/`getType()` 匹配 |
| `v5(View)UserActionWindow` | `findWindowForView` | `getWindow(view)` + `Qv.j6` + `kv.Hw` |
| `j6(Context)Activity` | `getActivityFromContext` | `ContextWrapper.getBaseContext()` 递归 |
| `EQ()List` / `J0()` / `j6()` / `refresh` | `collectWindows` / `refreshWindows` / `refresh` | 同一个刷新流程的三层（EQ 收集、J0 组合、j6 入口） |
| `Zo()` / `tp()` | `scheduleRefresh` / `postRefresh` | `Handler.post/removeCallbacks` |
| `DW()` | `install` | 唯一调 `we()` 的入口（hook + 生命周期） |
| `VH()` / `v5()` | `getCurrentActivity` / `getHandler` | 直接返回字段 |

## 3.3.1 `Bv`(ApiBase) 34 个 + `iv` → ApiImpl（判据：`onXxx` 方法里 putfield 到哪个 flag）

`Bv` 的 14 个 `onXxx(...)` 方法（它们实现的是 `DefineHook`，所以名字没被混淆）每个都**只置一个
boolean 字段**，于是字段语义可以逐个钉死：

| 字段 | 被谁置位 | 新名 |
|---|---|---|
| `u7`/`tp`/`EQ` | onActivityCreate / onActivityStart / onActivityStop | `hasActivityCreateHooks` / `hasActivityStartHooks` / `hasActivityStopHooks` |
| `XL` | onInput | `hasInputHooks` |
| `aM` | onLaunch | `hasLaunchHooks` |
| `Ws`/`J8` | onNotificationAction / onNotificationShown | `hasNotificationActionHooks` / `hasNotificationShownHooks` |
| `QX` | onTouch | `hasTouchHooks` |
| `J0`/`we` | onWindowHidden / onWindowShown | `hasWindowHiddenHooks` / `hasWindowShownHooks` |
| `j3` | onClick | `hasClickHooks` |
| `a8` | onItemClick | `hasItemClickHooks` |
| `lg`/`U2` | onItemLongPress / onLongPress | `hasItemLongPressHooks` / `hasLongPressHooks` |
| `Mr` | onMenuItemSelected | `hasMenuItemSelectedHooks` |
| `er`(int) | 被 onClick/onItemClick/onItemLongPress/onLongPress/onMenuItemSelected 共同写 | `registeredViewTypes` |
| `rN`(Class) | 同上（记注册时的 Activity 类） | `registeredActivityClass` |

17 个 getter 是这些 flag 的读取端（`J0()Z`→u7、`J8()Z`→tp、…、`we()I`→er、`EQ()Class`→rN），
按同一套语义命名（`hasXxxHooks()` / `getRegisteredViewTypes()` / `getRegisteredActivityClass()`）。

`abcd/iv`（原来没映射）：`extends abcd/Iu`(AbstractApi)、只有一个构造器，却出现在 `kv` 所有派发入口
的参数位置上，且 `ow`(ProbeLoader) 用 `getDeclaredConstructor().newInstance()` 反射创建 probe
⇒ 定名 **`com/aide/backbone/ApiImpl`**（ApiBase/AbstractApi 的对偶：SDK 侧 Api 的具体实现）。

## 3.4 `kv`(CallbackDispatcher) 28 个（判据：方法体里直接写着事件名）

`kv` 的每个派发方法在拼 key 时会写事件名（`"onActivityStarted"`、`"onWindowShown"`…），
这是**逐字证据**，28 个直接照抄：

| 事件 | 方法 |
|---|---|
| 生命周期 | `onActivityCreated(Activity)`、`onActivityStarted(Activity)`、`onActivityStopped(Activity)`、`onApplicationCreate(Application)` |
| 窗口 | `onWindowShown(UserActionWindow)`、`onWindowHidden(UserActionWindow)` |
| 输入 | `onInput(UserInputAction)`、`onTouch(UserTouchAction)`、`onLongPress(UserTouchAction,View)`、`onClick(UserTouchAction,View)`、`onItemClick(UserTouchAction,View,Object,int,View)`、`onItemLongPress(...)`、`onMenuItemSelected(UserTouchAction,MenuItem)` |
| 内购/安装 | `onInAppProductPurchase(Activity,InAppProduct)`、`onInAppProductImpression(Activity,InAppProduct)`、`onInstall(Market)` |
| 通知/启动/更新 | `onNotification(UserNotification)`、`onNotificationAction(UserNotificationAction)`、`onLaunched(UserLaunchAction)`、`onUpdate()` |
| 钩子 | `onEnter(long,Object,Object[])`、`onThrow(long,Throwable,Object,Object[])`、`onCrash(Thread,Throwable)` |
| 其它 | `now()`（`System.currentTimeMillis`）、`log(String,CharSequence)`、`getThreadState()`（返回内部 ThreadLocal 状态）、`markHandledAt(long,long)`（`Set.add`）、`invokeHook(long,iv,Object[])`（`ThreadLocal` + `jv.j6` + `yu.DW/j6`） |

剩 12 个没定：`DW/j6(abcd/iv)`、`DW/j6(UserActionWindow)`（无串、纯委派）、`DW(List)/j6(List)`
（同名同描述符必须不同名，尚未区分）、`j6(MarketReferrer,JJ)`、`j6(Z)`、`v5()Z`、`Hw()` 之外的
内部件等。

## 3.5 `Qv`(WindowRuntime) 26 个：查完了，结论是**语义不可区分**（不是没查）

用 Bv 的新名和 kv 的新名把 26 个方法全部追了一遍（每个方法的完整调用链）：

```
v5(UserTouchAction) → kv.onTouch              ← 终点
Hw(UserTouchAction) → kv.onTouch              ← 终点
Zo(UserTouchAction) → kv.onTouch              ← 终点
DW(UserTouchAction) → Qv.v5 → kv.onTouch      ← v5 的别名
FH(UserTouchAction) → Qv.Hw → kv.onTouch      ← Hw 的别名
j6(UserTouchAction) → Qv.Zo → kv.onTouch      ← Zo 的别名
（UserActionWindow / UserInputAction / View / MenuItem 四族同理）
```

也就是说 `(UserTouchAction)V` 这 6 个方法是**三对同义别名**（两级别名 + 三个终点，全部落到
`kv.onTouch`，中间不做任何额外的事）。它们描述符完全相同，要起不同名字只能编
（`dispatchTouch`/`dispatchTouch2`/…），违反"每条命名要有可复现判据" ⇒ **保持原名不猜**，
并把这条结论记在这里（以后有人再问"为什么 Qv 是字母"就有答案了）。

`Qv` 里另外 8 个方法（`j6(View,Window)`/`j6(Window,Window)`/`j6(PopupWindow,Window)` 等）是
**窗口挂载**入口：分别 new `Qv$c`(FrameLayout) / `Qv$d`(Window$Callback) / `Qv$b`(TouchInterceptor)
并挂到对应窗口上 —— 这 8 个可以命名，但它们是私有流程的一部分，价值低于上面那块，留给下一轮。

## 3.4 `kv`(CallbackDispatcher) 28 个（判据：方法体里直接写着事件名）

`kv` 的每个派发方法在拼 key 时会写事件名（`"onActivityStarted"`、`"onWindowShown"`…），
这是**逐字证据**，28 个直接照抄：

| 事件 | 方法 |
|---|---|
| 生命周期 | `onActivityCreated(Activity)`、`onActivityStarted(Activity)`、`onActivityStopped(Activity)`、`onApplicationCreate(Application)` |
| 窗口 | `onWindowShown(UserActionWindow)`、`onWindowHidden(UserActionWindow)` |
| 输入 | `onInput(UserInputAction)`、`onTouch(UserTouchAction)`、`onLongPress(UserTouchAction,View)`、`onClick(UserTouchAction,View)`、`onItemClick(UserTouchAction,View,Object,int,View)`、`onItemLongPress(...)`、`onMenuItemSelected(UserTouchAction,MenuItem)` |
| 内购/安装 | `onInAppProductPurchase(Activity,InAppProduct)`、`onInAppProductImpression(Activity,InAppProduct)`、`onInstall(Market)` |
| 通知/启动/更新 | `onNotification(UserNotification)`、`onNotificationAction(UserNotificationAction)`、`onLaunched(UserLaunchAction)`、`onUpdate()` |
| 钩子 | `onEnter(long,Object,Object[])`、`onThrow(long,Throwable,Object,Object[])`、`onCrash(Thread,Throwable)` |
| 其它 | `now()`（`System.currentTimeMillis`）、`log(String,CharSequence)`、`getThreadState()`（返回内部 ThreadLocal 状态）、`markHandledAt(long,long)`（`Set.add`）、`invokeHook(long,iv,Object[])`（`ThreadLocal` + `jv.j6` + `yu.DW/j6`） |

剩 12 个没定：`DW/j6(abcd/iv)`、`DW/j6(UserActionWindow)`（无串、纯委派）、`DW(List)/j6(List)`
（同名同描述符必须不同名，尚未区分）、`j6(MarketReferrer,JJ)`、`j6(Z)`、`v5()Z`、`Hw()` 之外的
内部件等。

## 3.5 `Qv`(WindowRuntime) 26 个为什么还没做（用 kv 的新名做了传递追踪）

把 Qv 的每个方法沿"Qv 内部调用 → kv"追到深度 4，结果是**六条平行车道**：

```
DW/FH/Hw/Zo/j6/v5 (UserTouchAction)V   → 全部汇到 kv.onTouch
DW/FH/j6 (UserTouchAction,View)V       → kv.onClick / kv.onLongPress
```

也就是说同一个事件在 Qv 里有 6 个同描述符的入口（`(UserTouchAction)V` 就有 6 个！），
它们必须是**不同**的方法名，否则 `validate_mappings` 的 `dup-member-target` 直接报错。
要区分这六条车道，得先弄清每条车道的语义差别（一个像"分发给已注册闭包"、一个像
"写分析事件"、一个像"窗口内控件"…），这需要读 `Bv`(ApiBase) 的 15 个闭包字段与 `iv` 的定义，
不是看串就能定的。**下一步**：先做 `Bv`/`iv` 的成员，再回头给 Qv 的六条车道命名。

### 3.6.1 旧记录的原文（保留）

它的方法全是**同一个分派阶梯**（`DW/FH/Hw/j6/Zo/v5` × `UserActionWindow/UserTouchAction/UserInputAction/MenuItem/View`），
每个最终都转到 `kv`(CallbackDispatcher) 的某个方法上，而 `kv` 的 40 个方法也全是字母。
也就是说：**Qv 的方法名必须由 kv 的语义决定**（谁对应 onWindowShown、谁对应 onTouch…），
单独改 Qv 只能得到 `dispatchA/dispatchB` 这种没信息量的名字。下一步应先做 `kv`。

## 4. 下一步

1. 找 Backbone SDK oracle（appfour/backbone 的 aar），一把解决 `runtime/*` + `closures/*` 的方法名；
2. 没有 oracle 就先做 `Qv`(WindowRuntime)/`Hv`(DecorViewHelper) 里**不参与覆写**的内部方法
   （反射辅助、窗口查找），判据是"串 + 反射名字 + 参数类型"；
3. `ow`(ProbeLoader)/`pw`(AppState)/`rw`(Preferences) 的方法可按"读写哪个键/哪个文件"定名，
   键名字符串都在 body 里。
