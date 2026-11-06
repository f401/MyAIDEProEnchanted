# jobs/aide_bb —— AIDE 对 **Backbone 框架**的实现类（AIDE 自有代码，框架本身未混淆）

## 0. 为什么这块好做

APK 里带着 **`com/appfour/backbone/api/*`（54 个类，未混淆）** —— 这是 appfour 的 Backbone 应用框架
（`define/{DefineAnalytics,DefineHook,DefineHookRuntime,DefineOccurrences}`、
`objects/{EventData,InAppProduct,Market,UIScene,User*Action}`、`closures/OnEnterClosure0..5` 等）。
AIDE 侧对它的实现类是**混淆的 `abcd/*`**，但它们 `implements` 的是**真名接口**，
所以"实现者是哪个接口"就是天然判据 —— 和 `jzlib` 里 ZStream 靠字段类型反推是同一招。

## 1. 这一轮的 7 个类

| 探针 | 目标 | 判据 |
|---|---|---|
| `abcd/yu` | `com/aide/backbone/HookDefinition` | implements `DefineHook` + `DefineHookRuntime`；方法 `j6(J,EventData)V`/`j6(J,Throwable)V` |
| `abcd/jw` | `com/aide/backbone/AnalyticsDefinition` | implements `DefineAnalytics`；方法名就是接口的 `defineEvent(String)DefineOccurrences` / `undefineEvent(String)` / `onDefineEventError(Throwable)`（未改名） |
| `abcd/lw` | `com/aide/backbone/OccurrencesDefinition` | implements `DefineOccurrences`；方法 `asEachOccurrenceOf` / `asFirstOccurrenceOf` / `asFirstOccurrencePerAppVersionOf` / `asFirstOccurrencePerDayOf` |
| `abcd/lw$a` | `com/aide/backbone/OccurrencesDefinition$Hook` | implements `DefineHook`、构造器收 `lw`、方法形状与 `yu` 相同 |
| `abcd/lv` | `com/aide/backbone/ReflectionRuntime` | extends `jw` + implements `runtime/a`；方法体是反射（`(J)Class` / `(Class)Object` / `(Object,JJ)Object` / `(Object,[Object,JJ)Object`），串 `Field not found` / `Invocation failed` |
| `abcd/Mv` | `com/aide/backbone/UISceneRuntime` | extends `lv` + implements `runtime/a`；方法全是 `(UserTouchAction/UserActionWidget/UserActionWindow/UserNotificationAction/View/String) → String/int`，串 `center`/`outside`/`top|`/`left`/`bottom|`（UIScene 布局描述） |
| `abcd/Xv` | `com/aide/backbone/EventDataImpl` | implements `EventData`；`setCrash(Throwable,boolean)` / `setIsInstall(boolean)` / `setIsProperty(boolean)` 就是接口 setter，另有 6 个 `(Backbone 对象)→UIScene` 转换 |
| `abcd/Vu` | `com/aide/backbone/RuntimeApiImpl` | 六个 `onEnter(JJ,OnEnterClosure0..5)DefineHook` 重载 = `api/runtime/RuntimeApi` 的方法族 |
| `abcd/Iu` | `com/aide/backbone/RuntimeContext` | extends `Bv`，且被 `Au..Hu` 这些闭包适配器的构造器当第一个参数接走 |
| `abcd/Bv` | `com/aide/backbone/RuntimeFlags` | 17 个 boolean 字段 + 33 个方法（几乎全是 `()Z` getter） |
| `abcd/Iv` | `com/aide/backbone/NotificationFactory` | 串 `BACKBONE_INTENT`；造 `PendingIntent(Context,I,Intent,I,Bundle)` + `UserNotification`/`UserNotificationAction`，并读写 `File` |
| `abcd/Gv` | `com/aide/backbone/ActivityLifecycleTracker` | implements `android/app/Application$ActivityLifecycleCallbacks`（8 个 `onActivityXxx` 未改名） |
| `abcd/kv` | `com/aide/backbone/CallbackDispatcher` | 40 个方法全是回调派发（含 `DW(Activity,InAppProduct)V`=`onInAppProductPurchase`），字段有 `ThreadLocal`；串里列了 `onActivityStarted`/`onLongPress` 等 |

命名空间 `com/aide/backbone/*` 在 APK 里不存在（未混淆的是 `com/appfour/backbone/*`），不撞名。

## 1.1 闭包适配器 9 个：靠**外层 API 方法**区分（形状完全一样）

`abcd/Au..Hu` + `abcd/zu` 全部 implements `abcd/jv`（`EventData j6(Object[])`）、构造器都是
`(Iu, <某个 Backbone 闭包>)`，`j6` 的字节码在**同形孪生**之间**逐字节相同**（Au≡Eu、Cu≡Du、Fu≡Gu）。
唯一的判据是：它们都在 `abcd/Iu` 里被 `new`，而 `new` 所在的那个方法**名字没被混淆**——
因为那是 Backbone 的 API 方法：

| 适配器 | 被 `Iu` 的哪个方法 new | 包的闭包 |
|---|---|---|
| `Au` | `onReferrerMarketClick` | `OnMarketClosure` |
| `Eu` | `onInstall` | `OnMarketClosure` |
| `Bu` | `onCrash` | `OnCrashClosure`（`j6` 里传 2 个实参） |
| `Cu` | `onInAppProductImpression` | `OnInAppProductClosure` |
| `Du` | `onInAppProductPurchase` | `OnInAppProductClosure` |
| `Fu` | `onUpdate` | `OnVoidClosure`（`j6` 里不传实参） |
| `Gu` | `onNewVersion` | `OnVoidClosure` |
| `Hu` | `onApplicationCreate` | `OnApplicationClosure`（传 1 个实参） |
| `zu` | `onReferrerMarketImpression` | `OnMarketImpressionClosure` |

顺带按证据修正了两个类的名字：`Iu` 是 **AbstractApi**（那一族 `onXxx(*Closure)DefineHook` 全在它身上），
`Vu` 是 **EnterHookDefinition**（`extends hv extends yu`，唯一新增 API 是 `onEnter(JJ,OnEnterClosureN)`），
`hv` 补为 **AbstractHookDefinition**。

## 1.2 `onEnter` / `onException` 两族适配器（24 个类）：**形参类型**就是判据

`Vu`(=EnterHookDefinition) 的 `onEnter(long,long,OnEnterClosure0..5)` 与 `hv`(=AbstractHookDefinition)
对应的 `OnExceptionClosure0..5`，各自需要一个 `abcd/jv` 适配器 + 一个 `abcd/lv$a` 调用封装：

```
OnEnterClosureN     Ku Mu Ou Qu Su Uu   ← 构造器 (Labcd/Vu;J…OnEnterClosureN;)V
OnExceptionClosureN Xu Zu av cv ev gv   ← 构造器 (Labcd/hv;J…OnExceptionClosureN;)V
调用封装 Ju Lu Nu Pu Ru Tu ← 构造器首参分别指向 Ku..Uu（implements abcd/lv$a）
调用封装 Wu Yu _u bv dv fv ← 构造器首参分别指向 Xu..gv
```

判据只有一条但很硬：**构造器里那个闭包接口的类型**（`OnEnterClosure3` 就是 3 号，不用猜），
而调用封装的首参类型又反过来钉住它属于哪个适配器。

## 1.3 UI/生命周期闭包监听器 15 个：判据是"谁 new 它"

`abcd/Bv`（**ApiBase**，17 个 boolean + 33 个方法）里有一串**名字没被混淆**的 API 方法，
每个方法里 `new` 一个 `abcd/jv` 适配器 —— 于是适配器的归属一目了然：

```
Av→onClick   mv→onLongPress   nv→onInput   ov→onTouch
pv→onNotificationShown   qv→onNotificationAction   rv→onLaunch
sv→onActivityStart  tv→onActivityStop  uv→onActivityCreate
vv→onWindowShown  wv→onWindowHidden  xv→onMenuItemSelected
yv→onItemClick  zv→onItemLongPress
```

（`mv` 包的是 `OnClickClosure` 但注册在 `onLongPress` 里，所以按**外层方法**叫 `OnLongPressListener`；
`Bv` 因为持有这 15 个注册点，命名从 `RuntimeFlags` 修正为 **`ApiBase`**。）

## 1.4 窗口运行时（10 类）：判据 = implements 的 **Android 框架接口**

`Qv`(=WindowRuntime) 持有 5 个内部类，全部靠"实现的是哪个框架接口 + 构造器收谁"定：

```
Qv$a → WindowRuntime$Window            ctor 收 UserActionWindow
Qv$b → WindowRuntime$TouchInterceptor  implements View$OnTouchListener（反射 PopupWindow 的 mTouchInterceptor）
Qv$c → WindowRuntime$WindowFrameLayout extends android.widget.FrameLayout
Qv$d → WindowRuntime$WindowCallback    implements Window$Callback（28 个接口方法未改名；反射 IME 高度）
Qv$e → WindowRuntime$MenuReflector     14 个方法全是反射 com.android.internal.view.menu.*
Rv   → WindowRuntime$GlobalLayoutListener  implements ViewTreeObserver$OnGlobalLayoutListener，ctor 收 Qv$d
Pv   → WindowRuntime$ShowWindowTask    implements Runnable，ctor (Qv$a, UserAction…)
Hv   → DecorViewHelper                 反射 com.android.internal.policy.DecorView / mWindow
Hv$a → DecorViewHelper$InputConnectionHook  extends InputConnectionWrapper
zw   → window/RectProvider             5 个方法 → android/graphics/Rect
```

## 1.5 运行时支撑（7 类）：常量串就是判据

```
ow → ProbeLoader            'Probe loading' / 'classes.dex' / 'assets/dev.probes' / 'Error loading probes'
pw → AppState               'appstate.json' / 'has_occurred_for_app_version_' / 'I/O error accessing appstate'
rw → Preferences            'last_run_version' / 'is_event_defined_' / 'probesdex_' / 'BACKBONE_' / 'is_developer'
ww → DeveloperNotificationTask  Runnable + 'backbone developer notifications' / 'Probe notification'
iw → EventRecorder          ') Event recording start: ' / ') Event: ' / ') Event error: '
_v → EventContext           deviceWidth/deviceHeight/imeHeight/pressedKey/touchX/touchY… 13 个字段 + toJSON
jv → ClosureInvoker         接口 EventData j6(Object[])，被 40+ 个闭包适配器 implements
lv$a → ReflectionRuntime$Invocation  接口，被 12 个调用封装 implements
```

## 2. 成员说明（本 part 暂时 0 行）

这 7 个类里**大部分方法名本来就是对的** —— 它们实现的是未混淆框架接口，方法名被接口钉死
（`defineEvent`/`undefineEvent`/`onDefineEventError`/`asFirstOccurrenceOf`/`setCrash`/`setIsInstall`…）。
剩下真正被改名的（如 `lw.Hw()Labcd/lw$a;`、`lw$a.Hw()` 这类内部 getter）暂时留白：
没有 oracle、也没有稳定的调用点证据，按"宁缺勿错"先不动。

## 3. 状态

```
类   81（`cli members` 不适用：无 oracle）
成员 0 行（理由见 §2）
门禁 validate ✔ · inherit CONFLICT 0 / DUPTARGET 0 / MISSING 0
```

## 4. 下一刀（同一条线）

**闭包适配器已做完**（§1.1，9 个）。剩下 `abcd/Ju`（implements `lv$a`，由 `abcd/Ku` 创建，是另一族）。

再往后：`abcd/*` 里还有 ~60 个未定名类引用 Backbone（`RuntimeDebug`/`UnknownClass`/`MarketReferrer`
的实现、`Api` 相关），判据同样是"实现了框架哪个接口 + 方法签名逐一对上"。
