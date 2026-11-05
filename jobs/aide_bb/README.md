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

## 2. 成员说明（本 part 暂时 0 行）

这 7 个类里**大部分方法名本来就是对的** —— 它们实现的是未混淆框架接口，方法名被接口钉死
（`defineEvent`/`undefineEvent`/`onDefineEventError`/`asFirstOccurrenceOf`/`setCrash`/`setIsInstall`…）。
剩下真正被改名的（如 `lw.Hw()Labcd/lw$a;`、`lw$a.Hw()` 这类内部 getter）暂时留白：
没有 oracle、也没有稳定的调用点证据，按"宁缺勿错"先不动。

## 3. 状态

```
类   13（`cli members` 不适用：无 oracle）
成员 0 行（理由见 §2）
门禁 validate ✔ · inherit CONFLICT 0 / DUPTARGET 0 / MISSING 0
```

## 4. 下一刀（同一条线）

**闭包适配器 8 个**：`abcd/Au..Hu` 都 implements `abcd/jv`（`EventData j6(Object[])`），
构造器 `(Iu, <某个 Backbone 闭包>)` 直接暴露了它包的是谁：

```
Au, Eu → OnMarketClosure      Bu → OnCrashClosure        Cu, Du → OnInAppProductClosure
Fu, Gu → OnVoidClosure        Hu → OnApplicationClosure   Ju → implements lv$a（另一族）
```

Au/Eu、Cu/Du、Fu/Gu 是**同形孪生**（同一个闭包接口），要靠 `j6(Object[])` 里**调用闭包时传的参数个数/类型**
区分（例如 `OnVoidClosure` 的 `onVoid()` 与 `onVoid(EventData)`），下一轮照这个做。

再往后：`abcd/*` 里还有 ~60 个未定名类引用 Backbone（`RuntimeDebug`/`UnknownClass`/`MarketReferrer`
的实现、`Api` 相关），判据同样是"实现了框架哪个接口 + 方法签名逐一对上"。
