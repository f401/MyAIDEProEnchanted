# PITFALLS — 这个工程真实踩过的坑

面向接手本工程的 agent。每条都带**现场证据**与**可复现校验**；先读 §1 的硬约束再动手。
配套文件：`AGENTS.md`（工程结构与硬约束）、`docs/MIGRATION-NOTES.md`（support→androidx 迁移结论）。

---

## 1. 环境类（最容易浪费半天的地方）

| # | 坑 | 症状 | 对策 |
|---|---|---|---|
| 1.1 | **内存极紧**（总 7.4 G，常年只剩 150–600 MB 可用） | 命令**没有任何输出**且 `exitCode -1`；`pgrep` 里 java 还在但产物为空 | 重活放 `nohup ... > log 2>&1 &`；python 单批 ≤ 2000 文件；**d8 不要在设备上跑** |
| 1.2 | **`pkill -f '<pattern>'` 会杀掉自己的 shell**（shell 的 argv 里含该 pattern） | 命令跑到 pkill 那行就断开，日志全无 | 用 `pgrep -x java \| xargs -r kill`（精确进程名） |
| 1.3 | 没有 `/tmp`（只读） | `OSError: Read-only file system` | 临时文件放 `$HOME/tmp` |
| 1.4 | `which` 不存在 | `command not found: which` | 用 `command -v` |
| 1.5 | 缺 apktool/aapt2/zipalign/apksigner/smali/baksmali/dex2jar | 脚本一跑就 command not found | 回编译/签名只能在 **MT 管理器（apktool m）**；不要设计依赖上述工具的流程 |
| 1.6 | **`/storage/emulated/0` 是 FUSE 且大小写不敏感** | `glob("j*.smali")` 匹配到 `JobIntentService*`；`s*` 匹配 `s$a…`（曾误改名 39 个类） | **永远用内容匹配**（读 `.class` 行），不要用文件名通配符 |
| 1.7 | git 报 `dubious ownership` | 所有 git 命令 fatal | `git config --global --add safe.directory <repo>` |

**判定"命令被 LMK 杀"**：无 stdout、无 stderr、`exitCode -1`、日志停在中间。不要以为是语法错。

---

## 2. 资源（res / resources.arsc）

1. **`src/res/values/public.xml` 是 ID 钉子**。删掉或重排一行 → 该 type 内后续 entry index 全部前移 → smali 里硬编码的 `0x7f…` 常量全错 → **静默取到错误资源**（不崩）。本项目 `R$id` 2157 个字段、全库 12 890 处裸资源常量。
2. **`APKTOOL_DUMMY_*` 的成因不是 apktool 丢的**：基线包里 entry 存在但 key 名不可读（被 R8/裁剪剥离）。本项目 1694 条（1674 id + 17 string + 3 array），全是**死资源**（包外 0 引用）→ 只能改名，**不能删**。
3. 改名必须按 type 加前缀（`id_` / `string_` / `array_`）：有 **13 个 suffix 跨 type 重复**，不能全局替换成同一个前缀。
4. **R 字段名不能含 `.` `-`**，apktool 会转成 `_`。所以"R 字段名 ≠ public.xml 名字"的 83 条是**正常的**，别当 bug 修。
5. 校验命令（改任何 res 后必跑）：
   ```bash
   python3 ~/tools/res_id_guard.py --git HEAD      # ID 集合必须逐条不变
   grep -c APKTOOL_DUMMY src/res/values/public.xml # 必须 0
   ```
6. 本项目 **support 库零 R 引用**（0 个 R 类、0 处 `R$`、`0x7f…` 常量只有 `Float.MAX_VALUE`、无 `getIdentifier`）→ 删除它**不需要**做资源回收。

---

## 3. 改名工具（ForgeAutoRenamingTool / TSRG2）

1. **FART 会做继承传播**：给 `Sub.foo()` 的映射，会把沿继承链的 `Super.foo()` 一起改名。规则本身正确，但**错误输入会被放大**：
   > 我把 `NestedScrollView.getBottomFadingEdgeStrength()F` 错映射成 `getVerticalScrollFactorCompat`（类里有 3 个 `()F` 同描述符，方法体指纹分不开），FART 立刻把它传播到 `android.view.View.getBottomFadingEdgeStrength`，**框架覆写被改没**。
2. **两条硬规则**（建议做成前置校验，命中就拒绝执行）：
   - 覆写自 `android.*` / `java.*` 的方法**永不改名**；
   - 名字本来没混淆的成员（目标类里存在同名同描述符）**永不进映射**。
3. **FART 只改引用是不够的吗？** FART 两者都改；但**自己写的文本/CP 重写器只改引用**会导致 `AbstractMethodError`（见 §4）。
4. **`--lib` 是必需的解析上下文**：把 input 里已删除的类作为映射宿主时，不加 `--lib 原jar` 会 NPE：
   ```
   NullPointerException: Cannot invoke "ClassProvider$IMethodInfo.getAccess()" because "imtd" is null
   ```
5. 但 `--lib` 会把**已删除的类拉回输出**（日志 `Adding extras`）——本项目出现过 20 个残留，需要事后白名单过滤。
6. **TSRG2 格式细节**：
   - 类行 `oldClass newClass`（无缩进）；成员行以 `\t` 开头；
   - 方法：`\t<name> <desc> <newName>`（**3 段**）；字段：`\t<name> <newName>`（**2 段**）；
   - 类行后跟 `\t\t<static>` 之类修饰行是可选的；
   - **文件中间再写一行 `tsrg2 left right` 会让解析直接失败**；
   - 经典 TSRG2「desc 单独一行缩进」的写法 FART **不认**。
7. **`Duplicate entries detected` 是有价值的冲突检测**，不要绕过：本项目靠它发现 `s → ViewPager` 是错的（jar 里本来就有真的 `ViewPager`）。

---

## 4. 自研 CP 重写器（`~/tools/cprewrite*.py`）的坑

| # | 坑 | 后果 | 修法 |
|---|---|---|---|
| 4.1 | **只改引用、不改声明** | 子类覆写失配：`AbstractMethodError: PagerAdapter.getCount()`；`Fragment.onCreateView` 静默失效（白屏） | **继承传播 + patch `method_info.name_index`**；传播范围严格限定"迁移目标 → 其子类"，绝不跨框架类 |
| 4.2 | 字段键格式与方法键不同 | 字段引用静默漏改（本项目漏了 `CustomTabsIntent.intent`、两个 `gravity`） | 字段：`owner->name:type`；方法：`owner->name(desc)ret` |
| 4.3 | 共享 Utf8 | 不能全局替换 `j6`（AIDE 自己代码里到处是 `j6`） | 必须按 `(owner,name,desc)` 精确匹配；声明改名要把 `name_index` 指向**追加**的新 Utf8，不动旧索引 |
| 4.4 | 没有校验 | 无法证明零副作用 | 必查：**非改动类字节完全一致**（本项目 23 020/23 082）、改动类无残留混淆名、迁移目标 36/36 存在 |

**继承传播的正确实现**（本项目验证过的做法）：
1. 解析全库 class 结构（this/super/interfaces + 字段/方法表，见 `~/tools/hier.py`）；
2. 对每个"迁移目标的成员映射"，找**其后代类**；
3. 若后代声明了同 `(name,desc)` 的方法 → 记为覆写，改名（声明 + 引用一起）；
4. **只沿迁移目标往下走**，不反向爬到框架类。

---

## 5. dex2jar / d8

1. `process/src/*.jar` 是 **dex2jar 产物**，不是原始 class。再喂 d8 属于**有损往返**。
2. `Malformed inner-class attribute` 的定性方法：用 MT MCP 读 dex 的 smali，能看到 `Ldalvik/annotation/InnerClass`（`name="P"` + `EnclosingClass=OEditor`）与 `EnclosingClass` **在 dex 里就存在**，而 binary name 是顶层 `P` → **dex 侧问题，d2j 只是忠实翻译**（JVM 要求 `OEditor$P`）。
3. `Can't Find Class` **不是 d2j 丢的**。用 MCP 查原 dex：`javax/annotation/*`、`org/conscrypt/*`、`ant/launch/*` 这些**本来就不存在**（编译期注解 / 可选依赖）→ 无害。
4. **设备上 d8 跑 23k 类必死**，而且会**把 sshd 一起杀掉**（LMK）→ 在 PC 上跑：
   ```bash
   java -cp d8.jar com.android.tools.r8.D8 --min-api 21 --release \
        --lib android.jar --output dex/ <jar>
   ```

---

## 6. 指纹 / 名字匹配

1. **只按描述符匹配会塌陷**：同描述符多方法 → 一个键对应多个名字（`FragmentManager` 的 `()Z` 有 4 个候选）。必须先做"名字未混淆"判定跳过 identity。
2. 指纹要用**与混淆无关**的信号：Android SDK / Java 的调用名、字符串常量、数值常量、指令数、方法形状。
3. **引用类型集合必须先解析**（把混淆名换成真名再比），否则两边 Jaccard 恒≈0，分数全灭。
4. **官方版本要选对**：本项目是 support **27.1.1**（`ViewPager/PagerAdapter` 只在 27.1.1 有；28.0.0 没有）。同名命中 72 vs 52、结构一致 56/72。
5. **ProGuard"字母顺序"假设不成立**：实测 `v4/app/D` 排第 3 位，却对应字母序第 5 的 `FragmentTransaction`。
6. 成员名混淆是**局部**的：`ViewPager` 84 个方法体只有 2 个被改名；而类名保留下来的类，其**内部类仍被改名**（`ViewPager$a..$i`）。
7. 一个包里可能**有两份同名实现**：本项目同时存在 `android/support/v4/view/ViewPager`（类名保留、内部类混淆）与 `android/support/v4/view/s`（整套混淆，内部类 `$a..$j`）——不要假设"混淆名 = 另一个真名类"。

---

## 7. support → androidx 迁移

1. **AIDE 自带 930 个 androidx 类**，且是按本 APK 的 `arsc` 编译进去的 → **天然 res 一致、零风险**，应作为迁移主力（覆盖 20/33 目标）。
2. 缺的 5 个包用 Maven 补位（`drawerlayout` `browser/customtabs` `multidex` `swiperefreshlayout` `legacy-*` `interpolator`）= **90 个类，全部零 R 引用**，可直接用（方案 A）。补位后**闭包 0 缺口**。
3. 官方 **aar 带资源**（support-compat 210 条），整体替换会资源冲突；另外 `androidx.browser`/`androidx.core` 内部**保留了 `android/support/...` 包名的 AIDL 与 Parcelable（20 个）**，不能删。
4. **`android/support/v7/**` 在本 APK 根本不存在（0 类）**：`RecyclerView`/`Toolbar`/`SearchView`/`MenuItemImpl` 的引用一直是**悬空**的（原包就坏）。迁移无法修也不需要修；要修得补 `androidx.recyclerview` + `appcompat`（带大量资源）。
5. **悬空引用的度量方法**：迁移前后各算一次"被引用但 jar 内不存在的 `androidx/support/arch` 类型"，要求**新增 = 0**（本项目：原 12 处 → 迁移后 11 处，新增 0，另修复 1 处 `PagerAdapter`）。
6. 清单要改的一行：
   ```xml
   android:name="android.support.v4.content.FileProvider"  →  androidx.core.content.FileProvider
   ```
   但 meta-data 键 **`android.support.FILE_PROVIDER_PATHS` 不要改**（androidx 内部仍用旧字符串，见 `androidx/core/content/FileProvider.smali` 的常量字段）。

---

## 8. 流程

1. **不要整体替换 smali**：历史提交 2.8.4→2.8.7 产生 1w+ 文件不可审阅的 diff。
2. **先小步验证再全量**：单类 → 抽样 → 全量；每步都留可复现校验。
3. 不要在 FUSE 上做 23k 文件的文本替换（慢 + 易 OOM + 通配符危险）。
4. 动手前先 `git status`，记住本仓库**本来就该是 modified 的 15 个文件**：`res/values/{public,ids,strings,arrays}.xml` + `smali*/**/R$*.smali`（资源改名）。
5. 一次只改一件事，改完立刻验证；大范围改动先 `git checkout --` 留退路。

---

## 9. 一页速查校验

```bash
# 资源 ID 一致性（改 res 后必跑）
python3 ~/tools/res_id_guard.py --git HEAD

# 资源改名残留
grep -c APKTOOL_DUMMY src/res/values/public.xml

# 类集合一致性（改 support 子树后）
# 期望: support/arch 文件数 == 唯一类数，重复=0

# 迁移后：非目标类必须字节一致
python3 - <<'PY'
import zipfile
zi=zipfile.ZipFile("merged2.jar"); zo=zipfile.ZipFile("migrated9.jar")
ni=[n for n in zi.namelist() if n.endswith(".class")]
print("字节未变:", sum(1 for n in ni if zi.read(n)==zo.read(n)), "/", len(ni))
PY

# 迁移后：无混淆成员名指向迁移目标 + 悬空引用新增=0
# （脚本见 ~/tools/cprewrite4.py 的校验段 / docs/MIGRATION-NOTES.md）

# 精确重写（引用 + 声明）
python3 ~/tools/cprewrite4.py <in.jar> <out.jar> <map.json>
```

---

## 10. 遗留风险（截至本文档）

- **约 400 条"方法体指纹自动匹配"的成员映射未逐条人工确认**（例：`com/aide/appwizard/h.OW()V → performPrimaryNavigationFragmentChanged` 存疑）。
- 已用源码确认并修正的：`setNumber` / `setAutoCancel` / `setPriority` / `setSmallIcon` / `setDefaults` / `setContentTitle` / `setContentText` / `setWhen` / `setContentIntent` / `onDestroyView` / `getCount` / `onCreateView`。
- 仍是中置信：`NotificationCompat$Builder.FH(CharSequence) → setTicker`。
- 迁移后的 jar **未装机冒烟**；设备上 d8 未成功产出 dex（OOM）。
- `support/v7` 悬空引用未修（原包既有缺陷）。

---

## 11. 换库后的运行时崩溃（support → androidx 特有）

### 11.1 `UnsupportedOperationException: Required method destroyItem was not overridden`

**现象**：点文件浏览器条目 → toast 显示
`ReflectUtils$ReflectException: InvocationTargetException`（内层被 catch 掩盖）。

**定位方法（两种，任选）**：
1. 在 APK 上用 MT MCP 改 `dex_method:...Utils;->toast(Throwable;Z)`，把完整栈写到 `/storage/emulated/0/aide_err.txt`；
2. **直接给 jar 打补丁**（推荐，一次成型、之后每次构建都带）：用仓库自带的 ASM（`zeroaicy/org/objectweb/asm`）
   写一个 `PatchToast`，把 `toast(Throwable,Z)` 的字节码重写为
   `s = b ? getStackTrace(t) : t.getMessage(); try{ FileWriter("/storage/emulated/0/aide_err.txt").write(s) }catch(Throwable ignored){}; return toastError(s);`
   → 产出 `migrated14.jar`（与无补丁版只差 `Utils.class` 一个类）。发布前记得换回无补丁版。

**真因**：androidx 把 `PagerAdapter.destroyItem(ViewGroup,int,Object)` 的默认实现改成**抛异常**
（转发到废弃的 `destroyItem(View,…)`，后者 `throw new UnsupportedOperationException`）。
而 support 旧版里 `destroyItem` 与 `setPrimaryItem` 是两组**同描述符**的方法：

```smali
DW(VG,I,Object) → DW(View,I,Object)  [空实现]        ← setPrimaryItem
j6(VG,I,Object) → j6(View,I,Object)  [抛 UOE]        ← destroyItem
```

AIDE 的子类在 `setPrimaryItem` 覆写里会 `invoke-super`（安全），而 `destroyItem` 覆写里**不调** super。
一旦把 `setPrimaryItem` 错映射成 `destroyItem`，子类的 super 调用就打到了抛异常的默认实现上 → 崩。

### 11.2 两条通用规则（务必做成映射的前置过滤）

1. **identity 过滤**：若目标类里已存在 `(name, normdesc)` 同名同描述符成员 → **不要进映射**。
   漏掉这条会把框架覆写改没（本项目：`NestedScrollView.getBottomFadingEdgeStrength()` 被错改成
   `getVerticalScrollFactorCompat`，导致它不再覆写 `android.view.View` 的同名方法）。
2. **同描述符重载族必须用"方法体结构"区分**，不能只看描述符：
   判别信号 = `delegate`（转发给另一个重载）/ `empty`（空实现）/ `throw`（抛 UOE）/ 字段写入 / SDK 调用序列。
   `PagerAdapter` 就是靠这个区分开的。

### 11.3 指纹匹配的适用边界（实测）

- 对"写一个字段 + `return this`"这类短方法（Builder 的 setter、DrawerLayout 的 `(I)V`）：
  指纹会**全部并列 9.0**，无法区分 → 必须用**调用点实参**判断
  （例：`setPriority` 的调用点出现 `const/4 v1, -0x2` = `PRIORITY_MIN`；
  `setAutoCancel` 的方法体里 `const/16 v0, 0x10` = `FLAG_AUTO_CANCEL`）。
- 对"结构不同"的方法（delegate/empty/throw），指纹非常可靠。

### 11.4 引用的 owner ≠ 方法的声明类（最容易漏的一类）

`javac` 会把方法引用的 owner 记成**静态接收者类型**，而方法可能声明在父类：

```java
// MainActivity 里
pager.j6(IIII);          // pager 的静态类型是 AIDEEditorPager
// 实际声明在 AIDEEditorPager 的父类 ViewPager 里
```

改名的后果：
```
NoSuchMethodError: No virtual method j6(IIII)V in class Lcom/aide/ui/AIDEEditorPager;
```

**规则**：重写成员引用时，必须**沿继承链向上解析声明类**再查映射表；
不能只看 `ref.owner`，也不要在循环开头写 `if owner not in classes: continue`
（那样会把这类引用整体跳过）。

**校验方法**（本次实现，见 `check_refs.py`）：
对每个引用，用**迁移前**的继承关系找到真正的声明类；若该声明类有映射且引用仍用旧名 → 记为漏改。
本项目最终：**0 处 / 23 082 类**。

### 11.5 诊断落盘补丁（本项目已做进 jar）

`PatchToast`（用仓库自带 ASM）把 `Utils.toast(Throwable,Z)` 重写为：
`先写 /storage/emulated/0/aide_err.txt，再弹 toast`。
产物：`migrated16.jar`（带补丁）／`migrated15.jar`（发布用，同迁移无补丁）。
