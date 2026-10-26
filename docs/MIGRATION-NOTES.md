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
