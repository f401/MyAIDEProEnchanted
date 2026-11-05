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

命名空间 `com/aide/backbone/*` 在 APK 里不存在（未混淆的是 `com/appfour/backbone/*`），不撞名。

## 2. 成员说明（本 part 暂时 0 行）

这 7 个类里**大部分方法名本来就是对的** —— 它们实现的是未混淆框架接口，方法名被接口钉死
（`defineEvent`/`undefineEvent`/`onDefineEventError`/`asFirstOccurrenceOf`/`setCrash`/`setIsInstall`…）。
剩下真正被改名的（如 `lw.Hw()Labcd/lw$a;`、`lw$a.Hw()` 这类内部 getter）暂时留白：
没有 oracle、也没有稳定的调用点证据，按"宁缺勿错"先不动。

## 3. 状态

```
类   7（`cli members` 不适用：无 oracle）
成员 0 行（理由见 §2）
门禁 validate ✔ · inherit CONFLICT 0 / DUPTARGET 0 / MISSING 0
```

## 4. 下一刀（同一条线）

`abcd/*` 里还有 ~75 个未定名类引用 Backbone：`closures/*` 的实现（`abcd/Au…Ju` 那批 2 方法类、
形状与 `OnEnterClosureN`/`OnExceptionClosureN` 对应）、`runtime/RuntimeApi` 的实现
（`Bv`/`Vu`/`Iv`）、以及 `Api` 的实现者 `kv`（40 方法，含 `onInAppProductPurchase`）。
它们的判据同样是"实现了框架的哪个接口 + 方法签名逐一对上"，可以照本轮的做法继续。
