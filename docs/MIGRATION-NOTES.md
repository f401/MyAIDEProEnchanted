# support → androidx 迁移（结论与产物）

## 目标与边界
- 只迁**被 support 包外引用**的类（43 个引用点 / 105 处引用）；
- 原 support 实现**整体删除**；`support/v7` 与 `support/annotation` 保留（v7 在原包本就不存在，annotation 无迁移收益）；
- **资源零改动**：`arsc` 与 `public.xml` 不动，靠"自带 androidx 已按其编译" + "补位库全零 R 引用"实现。

## 结论
| 项 | 结果 |
|---|---|
| 迁移目标 | 37 条映射 → **36 个唯一 androidx 类**，全部存在 |
| 类来源 | **24 个用 AIDE 自带 androidx**（930 类里）+ **13 个用 Maven 补位**（90 类，全部零 R） |
| 删除 | `support/{v4,customtabs,multidex}` + `android/arch` 共 **513 类** |
| 保留的 20 个 `android/support/...` | androidx 官方自带的 AIDL/Parcelable（`ICustomTabs*`、`ResultReceiver`、`INotificationSideChannel`、`IconCompatParcelizer`），**不可删** |
| 引用改写 | **203 处**（62 个类），含 **36 处声明改名**（覆写传播） |
| 零副作用 | **23 020 / 23 082 类字节完全一致** |
| 悬空引用 | 原包 12 处 → 迁移后 11 处，**新增 0**，另修复 1（`PagerAdapter`）；剩余 11 处全是 `support/v7`（原包既有缺陷） |
| res | `arsc`/`public.xml` 零改动 |

## 需要的清单改动（仅一行）
```xml
android:name="android.support.v4.content.FileProvider"  →  androidx.core.content.FileProvider
```
`android.support.FILE_PROVIDER_PATHS` 这个 meta-data 键**保持不变**。

## 断言：迁移时必须同时改"声明"
只改引用会触发：
```
AbstractMethodError: abstract method "int androidx.viewpager.widget.PagerAdapter.getCount()"
```
因为子类仍声明 `j6()I`。正确做法见 `PITFALLS.md §4`：**继承传播 + patch method_info.name_index**，范围限定"迁移目标 → 其子类"。

已修复的覆写样例：
```
AIDEEditorPager$a   j6()I → getCount / j6(VG,I)Object → instantiateItem / j6(Object)I → getItemPosition
BrowserPager$a      同上
TrainerCourseActivity$a 同上
AppWizardActivity$a j6()I → getCount / j6(I)CharSequence → getPageTitle / FH(I)Fragment → getItem
com/aide/appwizard/h  KD()V → onDestroyView / j6(LayoutInflater,ViewGroup,Bundle)View → onCreateView
```

## 产物（都在 `~/out/work/`）
```
migrated9.jar          迁移完成（含覆写修复）★ 当前最新
cprewrite_map4.json    36 类 + 508 成员 + 36 声明改名（可复现）
members_full.json      "描述符类内唯一"的成员映射（119 条，235 条歧义已跳过）
refs_final_map.json    引用级映射（含源码确认项）
merged2.jar            删 support + 补 androidx 之后、改写之前的中间件
~/tools/cprewrite4.py  精确重写器（引用 + 声明）
~/tools/hier.py        class 结构解析（super/interfaces/字段/方法表）
```

## 生成 dex（不要在设备上跑）
```bash
java -cp d8.jar com.android.tools.r8.D8 --min-api 21 --release \
     --lib android.jar --output dex/ migrated9.jar
```

## 尚未验证
- 约 400 条"方法体指纹自动匹配"的成员映射未逐条确认；
- 装机冒烟未做（重点是通知的 6 个 setter、向导页 `onDestroyView`、编辑器分页 `getCount`）；
- 设备上 d8 未成功（OOM）。

## 仓库状态说明（重要）

`src/` 已与**迁移产物同步**：2026-10-26 从 4-dex 的迁移后构建重新反编译，
因此 `src/smali*` 里已经是 androidx 代码（support/v4 实现已删除、`APKTOOL_DUMMY_*` 为 0）。
迁移用的 jar / dex 仍在 `~/out/work/`，不入库；映射数据在 `tools/mapping/`。

---

# 第二轮：abcd 里被 R8 重打包的 support 副本 → androidx

## 背景
`abcd/` 除 AIDE 自身混淆代码外，还混进了一份 **R8 重打包的 support-v4 子集**（Google SDK 的依赖被
`-repackageclasses` 塞进了 `abcd/`），类名与成员名都混淆（例：`abcd/r` 的方法是 `DW/FH/j6`，
同代的 `androidj/support/v4/util/MapCollections` 是 `colGetEntry/colPut`）。

识别方法：以 APK 自带的 `androidj/support/**`（1267 类，可读名）为参照，用
`tools/seedmatch.py`（种子传播）粗筛 → `tools/verify_pairs.py`（声明成员/字符串/框架调用点）→
`tools/bytecmp.py`（纯 Python 字节码指令级相似度）→ 字段签名人工核对（**决定性判据**：
R8 只会裁成员，不会凭空加；库类必有特征字段，如 `ArrayMap.mHashes:[I` + `mArray:[Object]`）。

> 坑：`/storage/emulated/0` 大小写不敏感，`abcd/k` 的文件是 `k.1.smali`，`k.smali` 里是 `Labcd/K;`。
> **按文件名取类会读错**，必须按 `.class` 行定位（`tools/migrate_family.py: resolve()`）。

## 已迁移

| 原类 | 新类 | 依据 |
|---|---|---|
| `abcd/k` | `androidx/collection/ArrayMap` | 字段 `gn:Labcd/r`（=mCollections）+ 成员多重集 |
| `abcd/m` | `androidx/collection/ArraySet` | 空数组缓存字段 + 成员 |
| `abcd/x` | `androidx/collection/SimpleArrayMap` | 字段 `mSize:I / mArray:[Object / mHashes:[I` |
| `abcd/y` | `androidx/collection/SparseArrayCompat` | `DELETED:Object / mGarbage:Z / mKeys:[I` |
| `abcd/n` | `androidx/collection/ContainerHelpers` | `EMPTY_INTS/EMPTY_LONGS/EMPTY_OBJECTS` |
| `abcd/s` | `android/util/Pair`（framework） | `first/second:Object` |
| `abcd/z` `abcd/o` `abcd/p` | `androidx/core/util/{TimeUtils,DebugUtils,LogWriter}` | 成员+字节码 |
| `abcd/j` `abcd/l` | `androidx/collection/{ArrayMap$1,ArraySet$1}` | 内部类，随外部类删 |
| `abcd/r`,`r$a..r$e` | `androidx/collection/MapCollections(+ArrayIterator/EntrySet/KeySet/MapIterator/ValuesCollection)` | 成员多重集**完全相等** |
| `abcd/as/graphics/drawable/*`（11 个）+ `abcd/g`,`g$a`,`h`,`h$a` | 删除，调用点改 `androidx/core/graphics/drawable/DrawableCompat` | 作者 mapping 认定 + 状态类字节码相似度 1.00 |
| `abcd/E` | **保留** | `androidx/core/view/animation/LookupTableInterpolator` 不在本 APK，且被 1 个 AIDE 类引用 |
| `abcd/KD` | **保留** | androidx 的 `Factory2Wrapper` 没有 `getDelegateFactory()`，且被 9 个 AIDE 类引用 |
| `abcd/Xy` 族（ModernAsyncTask 8 个类） | **保留** | AIDE 代码（`Xy$c`）读 `Zo:Executor`＝support 的 **public `SERIAL_EXECUTOR`**，androidx 改成 private `sDefaultExecutor` → 迁过去会 `IllegalAccessError` |

改动量：删 **32** 个 smali（15 drawable + 17 util），改 **41** 个引用文件（GMS 20 个 + AIDE 内部 21 个），
其中成员改名 8 处（`abcd/x`：`DW→keyAt`、`Hw→valueAt`、`FH→removeAt`，逐条看过字节码确认），
类型引用 270 + 3 处。

## 校验（改完必跑）
```bash
cd /storage/emulated/0/MyAIDEProEnchanted
for d in src/smali*; do printf "%s %s\n" $d $(find $d -name '*.smali' | wc -l); done   # 23050
grep -c APKTOOL_DUMMY src/res/values/public.xml                                          # 0
grep -rlF -f <(printf 'Labcd/k;\nLabcd/r;\n...') src --include='*.smali'                 # 空
python3 ~/tools/migrate_family.py          # dry-run：应报 0 文件需改
```
成员有效性：改过的文件里指向新目标的 108 处引用全部能在目标类（含父类）里找到；
另有 12 处指向 `android/util/Pair`（framework，APK 里没有属正常）。

---

# 第三轮：abcd/Xy 族（ModernAsyncTask 拷贝）→ androidx

## 结论
| 原类 | 新类 |
|---|---|
| `abcd/Xy` | `androidx/loader/content/ModernAsyncTask` |
| `abcd/Xy$a` `$b` `$d` `$e` | `$AsyncTaskResult` `$InternalHandler` `$Status` `$WorkerRunnable` |
| `abcd/Xy$c`（SerialExecutor）、`abcd/Yy`（它的匿名 Runnable）、`abcd/Ty` `Uy` `Vy`（匿名子类） | 删除（族内私有实现，androidx 里是匿名类，外部拿不到也不需要） |

成员映射（逐个用 `const-string`/字节码体核准，非猜测）：

```
DW(Z)Z   → cancel            Zo()Z    → isCancelled       VH()V → onPreExecute
Hw()Xy$d → getStatus         j6(Executor,[Object])Xy → executeOnExecutor
DW(Object)V → onCancelled(Object)      FH(Object)V → onPostExecute(Object)   # 由 j 的方法体
j6([Object])Object → doInBackground    j6([Void])Object → doInBackground      # 桥 + 真方法
Xy$d 枚举: j6=PENDING  DW=RUNNING  FH=FINISHED                                # 由 <clinit> 的 const-string
```

## 为什么要动三个“外部”类
* `abcd/ez`（`extends Xy`）：`.super`、`<init>`、`getStatus`、`executeOnExecutor`、`Status->PENDING`
* `abcd/Wy`：`Status->RUNNING/FINISHED` + `values()`
* `io/fabric/sdk/android/j`（`extends ez`，Crashlytics 的初始化任务）：3 处调用 + **5 个覆写声明改名**
  （`onCancelled/onPostExecute/onPreExecute/doInBackground`×2 含桥方法及其内部调用）

校验：改完后 j 的 5 个声明与 androidx `ModernAsyncTask` 的同名同描述符方法一一对应；
桥方法体正确转发到 `doInBackground([Ljava/lang/Void;)`；全库对 `Labcd/Xy*`, `Ty/Uy/Vy/Yy` 的引用为 **0**。

## 顺带纠正
* `abcd/KD` **不是** `LayoutInflaterCompat$Factory2Wrapper`（成员签名是 AIDE 自己的 `LD`/`UE` 类型），保留即可。
* `abcd/E` 已按“把类塞进去”的方式迁成 `androidx/core/view/animation/LookupTableInterpolator`（自建，因为 lib 里 @hide 已裁）。

---

# 踩坑：跨包迁移必须同时放宽可见性（IllegalAccessError）

**现象**（首次重构后真机启动即崩）：
```
java.lang.IllegalAccessError: Class androidx.loader.content.ModernAsyncTask
  extended by class abcd.ez is inaccessible
```

**原因**：androidx 里很多类是**包私有**，而 AIDE 的 support 拷贝原先与调用方同包（都被 R8 塞进 `abcd/`），
一改成 `androidx/**` 就变成**跨包访问**：

| 类 | 原修饰符 | 处理 |
|---|---|---|
| `androidx/loader/content/ModernAsyncTask` | `.class abstract`（包私有）+ `<init>` 包私有 | 改为 `public` + `public <init>` |
| `androidx/collection/{ContainerHelpers, MapCollections, MapCollections$*}` | 包私有 | 加 `public` |
| 自建的 `androidx/core/view/animation/LookupTableInterpolator`（从 `abcd/E` 抄来） | 包私有 | 加 `public`（否则 `abcd/D` 跨包继承同样崩） |

**教训**：迁移一个类前必须检查
1. 目标类 `.class` 是否 `public`（父类/被 new/被字段引用的都要）；
2. 目标类**构造器**的修饰符（子类 `invoke-direct <init>` 跨包必须是 public/protected）；
3. 被引用的**成员**是否 public/protected（protected 仅对子类有效）。

放宽可见性是二进制兼容改动，没有副作用；收紧才有风险。校验脚本：
按「引用者包名 ≠ owner 包名」筛出跨包引用，逐个核对 `.class` / `.method` / `.field` 行是否带 `public`/`protected`。


---

# 踩坑二：类名不只是写在 smali 里

`b2dfd791` 迁完 `androidj/support/**` 后，真机启动仍崩：

```
InflateException: Binary XML file line #7 in aidepro.top:layout/drawer_layout:
  Error inflating class androidj.support.v4.widget.DrawerLayout
```

`LayoutInflater` 是**按名字反射**建 View 的，而 `res/layout/*.xml` 里写的是全限定类名：

```xml
<androidj.support.v4.widget.DrawerLayout ...>
<androidj.support.v4.view.ViewPager ...>
```

共 4 个 layout、13 处（`drawer_layout`、`trainer`、`trainer_tv`、`designer`，后三个原本就指向
不存在的 `android.support.v4.*`，属既有缺陷）。修法见 `23eb104f`。

**规则**：迁移任何类名后，必须同时扫
* `res/**/*.xml`（layout 的自定义 View 标签、`<fragment android:name>`）
* `assets/**`（本项目的 `assets/data/migration.xml` 是**数据**，描述用户项目里的旧类名，不要改）
* `AndroidManifest.xml`（`android.support.FILE_PROVIDER_PATHS` / `android.support.VERSION` 是**键名**，必须保留）

**不要改的字符串**（改了就坏协议）：`android.support.customtabs.action.CustomTabsService`（Intent action）、
`android.support.customtabs.extra.SESSION`（Bundle key）、GMS/mobstat 里用于识别**他人应用**的类名字符串。
