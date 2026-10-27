# 回归测试清单（support → androidx 迁移后）

按**迁移影响面**倒推，每个测试点都能对应到具体类或链路。P0 不过等于没修。

## P0 — 冒烟必过

| # | 测试点 | 操作 | 期望 | 对应改动 | 失败看哪 |
|---|---|---|---|---|---|
| 1 | 冷启动 | 强停后重开 | 直接进主界面，无闪退 | Fabric/GMS 初始化（`ModernAsyncTask` 族）、`ArrayMap/SimpleArrayMap` | `/sdcard/aide_err.txt`、`logcat -b crash` |
| 2 | Termux 界面 | 打开终端 | `drawer_layout` 能 inflate | `androidj→androidx` + `res/layout` 修复 | `InflateException: Error inflating class ...` |
| 3 | 侧滑抽屉 | Termux / AIDE 主界面左右滑 | 跟随手势、回弹、遮罩渐变 | `DrawerLayout`+`DrawerListener`、`VPDrawerLayout` | 抽屉不动 / 手势被 ViewPager 抢 |
| 4 | 汉堡按钮动画 | 开关抽屉看左上角 | 箭头↔汉堡平滑旋转、颜色正确 | `androidx.legacy.app.ActionBarDrawerToggle` + `DrawerArrowDrawable` + `DrawableCompat.wrap/setTintList/setTintMode` | 图标不动 / 变色丢失 |
| 5 | 文件浏览器 | 进出目录、长按 | 列表与点击正常 | `FileBrowserListener`(DrawerLayout)、`ArrayMap` | `/sdcard/aide_err.txt` 里的 `AbstractMethodError` |
| 6 | 编辑器分页 | 开 2+ 文件左右滑 | 切页正常 | `PagerAdapter` 家族 | `UnsupportedOperationException: destroyItem` |

## P1 — 主要功能

| # | 测试点 | 操作 | 对应改动 |
|---|---|---|---|
| 7 | 下拉刷新 | 文件浏览器顶部下拉 | `SwipeRefreshLayout` + `CustomSwipeRefreshLayout`（覆写 `onDraw`/`onFinishInflate`） |
| 8 | 编辑器头部路径 | 打开文件看编辑区顶部 | `EditorHeaderDirectoryName` → `ViewCompat` |
| 9 | 状态栏沉浸 | 进出主界面 | `StatusBarUtil` → `DrawerLayout.setFitsSystemWindows/getChildAt/getChildCount` |
| 10 | 分屏视图 | 打开左右分屏 | `CustomSplitView` → `DrawerLayout` |
| 11 | Termux 多会话 | 新建/切换/关闭会话 | `TermuxActivity(+$2/$3/$6/$10)` → `ViewPager`/`PagerAdapter`/`SimpleOnPageChangeListener` |
| 12 | Termux 输入输出 | `ls`/`pwd`/粘贴/软键盘 | 同上 + `TermuxViewClient` |
| 13 | 图片加载（Glide） | 打开带图界面 + 旋转屏幕 | `SupportRequestManagerFragment extends androidx.fragment.app.Fragment`、`RequestManagerRetriever` |
| 14 | 教程/设计器布局 | 进教程或 UI 设计器 | `res/layout/{trainer,trainer_tv,designer}.xml` |

## P2 — SDK 链路（看 logcat）

| # | 测试点 | 期望 |
|---|---|---|
| 15 | Crashlytics 初始化 | `grep -i "fabric\|crashlytics"` 无 `IllegalAccessError`/`NoSuchMethodError` |
| 16 | Firebase / GMS | `grep -i "firebase\|AppMeasurement"` 无异常，`iid` 能取 token |
| 17 | 百度统计 | 切页面无 `ClassCastException`（mobstat 用 `SimpleArrayMap`） |
| 18 | 广告（若有） | 加载广告不崩（`ads/internal/*` 19 处 `SimpleArrayMap`） |
| 19 | 崩溃上报 | 制造一次崩溃后重启，上报能发出 |

## 装机前的静态自检

```bash
cd /storage/emulated/0/MyAIDEProEnchanted
find src -name '*.smali' | wc -l                       # 21773
grep -c APKTOOL_DUMMY src/res/values/public.xml         # 0
grep -rn "androidj\.support\|android\.support\.v4\|android\.support\.v7" src \
     --include='*.smali' --include='*.xml' \
  | grep -v 'android.support.FILE_PROVIDER_PATHS\|android.support.VERSION'   # 应为空
```

## 定位捷径

1. AIDE 内部异常会落盘 `/sdcard/aide_err.txt`（`Utils.toast(Throwable)` 带 PatchToast 补丁）。
2. `adb logcat -b crash`，grep `ClassNotFound|IllegalAccess|NoSuchMethod|InflateException`。
3. `InflateException ... class xxx` → 又是「类名写在 XML 里」，扫 `res/**`、`assets/**`。
4. `IllegalAccessError ... is inaccessible` → 包私有类跨包，给它（和构造器）加 `public`。
