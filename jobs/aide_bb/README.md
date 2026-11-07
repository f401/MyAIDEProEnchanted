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

## 4. 下一步

1. 找 Backbone SDK oracle（appfour/backbone 的 aar），一把解决 `runtime/*` + `closures/*` 的方法名；
2. 没有 oracle 就先做 `Qv`(WindowRuntime)/`Hv`(DecorViewHelper) 里**不参与覆写**的内部方法
   （反射辅助、窗口查找），判据是"串 + 反射名字 + 参数类型"；
3. `ow`(ProbeLoader)/`pw`(AppState)/`rw`(Preferences) 的方法可按"读写哪个键/哪个文件"定名，
   键名字符串都在 body 里。
