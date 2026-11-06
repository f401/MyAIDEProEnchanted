# 工具链（`tools/jgit/`）

全部 Python 3、无第三方依赖。**默认 dry-run，落盘要加 `--apply`。**

```
tools/
├── deob/               通用反混淆工具链（配置驱动，新工程用这个；见 docs/GENERIC-TOOLS.md）
├── jgit/               本项目专用
│   ├── paths.py            路径解析：PARTS → MAPS/TSRGS/PARAM_FILES，MAP/TSRG/PARAMS 是合并只读视图
│   ├── probelib.py         smali/oracle 成员清单、描述符归一化、多版本 Oracle
│   ├── jvmbody.py          class 解析 + 方法体特征
│   ├── dexlib.py           最小 DEX 解析
│   ├── pipeline/           本项目门禁（14）
│   ├── naming/             定名分析器（34）
│   ├── audit/              体检（12）
│   ├── inspect/            读码/查看（14，读码类已整合到 deob 的 view）
│   └── stage/              一次性脚本停放处（当前空，见 README）
└── aide/               AIDE 侧归档（资源 ID / support→androidx / dex 差异）
```

> **去重结果**
> - `deob/` 提供通用等价实现：`emit / params / validate / inherit / pkgs / widen / cover / manifest / shape / q / prof / dump / hdr / elim / iface`。
> - `jgit/pipeline/` **保留**（本项目门禁，带 `verify_allow.tsv` 白名单、R8 重写与 oracle 版本差异分类）：
>   `rebuild_tsrg paramfill emit_tsrg2 filter_head mapfix tsvfix validate_mappings verify_members inherit_check pkgclose widen_access coverage jar_manifest nop_clinit`
> - **已删除**（通用 kit 全覆盖或本身就是一次性）：`sync_maps`、`shapescan`、`shapefind`、
>   `typefix`、`typeprop`、`typesolve`、`typeuse`、`vprobe`、`add_members`、`apply_types`、
>   `inspect/` 的 `q hdr prof dump elim ifacemap shapeall body matchscore`、
>   `stage/` 的全部历史脚本与 `stage/fixes/`（见 git log）。

## pipeline/ —— 改映射 & 构建（9 道门都在这）

| 工具 | 作用 |
|---|---|
| `rebuild_tsrg.py` | **逐 part 重建 `jobs/<依赖>/members.tsrg`**（类块顺序按该 part 的 tsv；丢陈旧块、去重成员、查类目标重复），最后自动串 `paramfill` + `emit_tsrg2` |
| `paramfill.py` | **参数名**：oracle jar 的 `LocalVariableTable`（+ 抽象方法的 jgit 源码声明）→ 各 part 的 `params.tsv`；`--write` 落盘 |
| `emit_tsrg2.py` | 单独重排/补 static 标记**与参数行**输出 TSRG2（`\t\tstatic` 紧跟**方法**行，参数行再跟在后面） |
| `mapfix.py` | 声明式改**成员**映射（`探针 m/f 名 描述符 旧 新`，`-` 表空/删；同类互换安全） |
| `tsvfix.py` | 声明式改**类**映射 |
| `filter_head.py` | 清理 `mappings_head.txt` 中“已应用/不存在”的块与行 |
| `validate_mappings.py` | **有效性**：类/成员是否存在、static 标记、类/成员目标重复、**目标与基线类撞名**（`collide-existing`，只在对方没被改走时才算）、**类源/成员源重复**（tiny 非法）、**字段行带类型**（TSRG v1 残留）、新名合法、参数行（3 段/序号/两列同名/不重复）。期望 `✔ 无无效映射`（无需参数） |
| `verify_members.py` | **一致性**：对着 oracle 校验名字+描述符（含 `process/verify_allow.tsv` 白名单）。期望 `不一致 0` |
| `inherit_check.py` | **继承闭合**：`CONFLICT 0 / MISSING 0` |
| `pkgclose.py` | **包归属**：并查集 + 不动点求每类该在哪个包；`--apply` 迭代到 0 |
| `widen_access.py` | **跨包 access 放宽**（成员/类/父类/接口 → `public`；覆盖成员引用 + 类级访问 + 继承 + override 四类）；`--report` 只看，写完自检 access 冲突 |
| `fix_try.py` | 把"try 范围不含数组访问"的异常表修回源码语义（`Config$StringReader` 那类靠越界判 EOF 的代码） |
| `coverage.py` | 覆盖率（分母取 3.7.1；命中判定看**所有** oracle 版本；未命中写 `~/out/work/cov_miss.tsv`） |
| `audit/trycheck.py` | 体检：jar 里还有没有"catch IndexOutOfBounds 但 try 不含数组访问"的方法（应为 0） |
| `jar_manifest.py` | jar **内容指纹**（与 zip 布局无关），用于“两次 FART 是否一致” |
| `nop_clinit.py` | 把方法体里显式 `invokestatic <clinit>` 换 NOP（D8 不收） |
| `emit_tiny2.py` | 由 `process/mappings.txt` + 各 part 的 `comments.tsv` 生成 **Tiny v2**（`process/mappings.tiny`；`--comments=none` 给 FART 用）：列序换成 `desc name new`；参数下标默认按 **FART 实测约定**（0 起实参序号、实例与静态同号、long/double 算 1 个），`--param-index=lv` 才按 Tiny v2 书面约定换成 LVT 槽位；static 一律以 `process/base/merged_ok.jar` 为准 |
| `validate_tiny.py` | **Tiny 体检**：头行、类/成员唯一、类/成员在基线 jar 里存在、字段类型与 jar 一致、参数槽位落在合法集合、注释（换行/长度/证据前缀）。`--parts=a,b` 还查**注释覆盖率**；`--selftest` 钉死槽位换算 6 例 |
| `tiny_roundtrip.py` | **迁移硬判据**：`tiny → TSRG2` 与 `process/mappings.txt` 逐行 diff 必须为空（证明 tiny 没丢/没串任何一条映射） |
| `tinyv2.py` | Tiny v2 最小读写器（类/方法/字段/参数 + `c` 注释行），被上面三个共用 |

### 实测记录：Tiny v2 的 `p` 下标到底怎么读（2025-11 FART 1.0.8）

`$HOME/tmp/tinyfill` 里用 `javac -g` 造了两个类跑对照（实例方法 `(String,long,int)` LVT 槽
1/2/4、静态方法 `(long,String,int)` 槽 0/2/3），tiny 里写 `p 0/1/2`：

| 写法 | 结果 |
|---|---|
| `p 0` → `P0` | 第 1 个实参（实例方法的槽 1）被改名 ⇒ **0 基实参序号** |
| `p 1` → `P1` | 第 2 个实参被改名（实例方法槽 2 是 long，也没按宽度跳） |
| 静态方法 | 与实例**同号**，`p 0` 就是第一个参数 |

结论：FART（内置 srgutils）按实参序号读，与 Tiny v2 书面约定（LVT 槽位）差 1，且在
long/double 之后差得更多。本项目打包链路只有 FART ⇒ **默认按 FART**；`--param-index=lv`
保留书面约定（loom / tiny-remapper 那侧用），两个方向都有 round-trip 门禁。

## 注释表 `jobs/<part>/comments.tsv`

TSRG2 / ProGuard 都没有“成员级注释”的位置，所以注释单独落盘、只喂给 Tiny v2：

```
kind	owner	name	desc	text
c	abcd/Hz	-	-	src: 命中 fabric-1.4.8 HttpRequest（字段/方法逐个对上）
m	abcd/Hz	QX	()Ljava/net/HttpURLConnection;	src: 与 fabric HttpRequest#createConnection 同形
f	abcd/yk	EQ	-	recv: 持有 IInAppBillingService 字段
```

- `kind` = `c`(类) / `m`(方法) / `f`(字段)；类行与字段行的 `name`/`desc` 只是占位（写 `-`）
- `owner` / `desc` 用**探针空间**（和 `members.tsrg` 一致，不要写改名后的名字）
- `text` 里不许有 tab/换行，≤200 字符，且**必须带证据前缀**（`src:`/`role:`/`recv:`/`who:`/`kind:`/`shape:`/`str:`…）——`role:` 的必须写“为什么叫这个名”
- 每条映射至多一条注释；`emit_tiny2.py` 会报“注释无对应映射”（改过名/删过的残留）
- 覆盖率：`validate_tiny.py --parts=aide,engine,aide_bb,aide_iap` → 当前 189 类 / 64 成员 = **100%**

## naming/ —— 定名

**类级**

| 工具 | 证据 |
|---|---|
| `classqc.py` | 已映射类的身份体检（目标类是不是判错了） |
| `rescore.py` | 类级重打分（TF-IDF + 硬约束）复核整套映射 |
| `keyclass.py` | 类级 JGitText 键集合（键名未混淆） |
| `guessprove.py` / `graphfinger.py` | 用已映射关系 / 引用类型邻域找身份 |
| `sigmatch.py` | 泛型 Signature 属性指纹 |
| `ctorfind.py` | 构造器描述符全库比对 |
| `enclosing_groups.py` / `nestmatch.py` / `anonmap.py` | 内部类/匿名类兄弟聚类与 `Outer$N` 编号 |
| `hier_audit.py` | super/ifaces 层级一致性 |
| `excess.py` / `nopair.py` | 成员多重集超出 / 找不到同形 ⇒ 定位类级误判 |
| `classcmp.py` / `cls2txt.py` | 单类三方对照与文本转储 |
| `review.py` | 高价值类抽查（成员全貌 + 未映射项） |
| `gaplist.py` / `gapinv.py` | 缺口清单（coverage 口径 / 带候选版本） |

**成员级**

| 工具 | 证据 |
|---|---|
| `autofill.py` | 类内描述符唯一的 1:1 机械匹配 |
| `gapfill.py` / `gapfill2.py` | 唯一签名 / 方法体证据（字符串常量 + 引用成员） |
| `bodyfit.py` | smali 与 oracle 字节码的**指令级指纹** |
| `lcs.py` | 指令序列 difflib 相似度（破重载） |
| `javadiff.py` | jadx 产物 vs 源码的“标识符无关”结构对齐 |
| `callsite.py` | 调用点对齐 |
| `fielddiff.py` / `fieldfill.py` / `fieldctx.py` / `fieldprint.py` / `fieldread.py` | 字段：访问者集合 / 读写点指纹 / 上下文序列 |
| `confield.py` / `constctx.py` / `initfill.py` | 常量：ConstantValue / 值+使用点 / 初始化配对 |
| `override.py` / `closefam.py` | 覆写传播 / 家族闭合 |
| `jgittext.py` | JGitText 消息键指纹 |
| `conflict_fix.py` | 裁决“两成员落到同一名字+描述符” |
| `findclasses.py` | 找“几乎确定是 jgit 但还没映射”的类 |

## audit/ —— 体检

| 工具 | 作用 |
|---|---|
| `access_audit.py` | 预演 `IllegalAccessError`（跨包访问 package-private），`pkgclose` 的单点版 |
| `nestcheck.py` | dex InnerClasses 硬校验（等价 D8 的 `Malformed inner-class`） |
| `dupcheck.py` / `dupfix.py` | 重复成员体检 / 归因（D8 `multiple definitions` 根因） |
| `staticclash.py` | 同签名既有 static 又有 virtual 的家族 |
| `deadmembers.py` | 全 App 无调用的成员（可删候选） |
| `apk_class_diff.py` | jar 与 apk/dex 的类集差异（出包前必须为空） |
| `classqc.py` / `hier_audit.py`（见 naming）/ `validate_cls.py` / `excess.py` / `nopair.py` | 类级体检 |

## inspect/ —— 读码与查看（人工定名时最常用）

| 工具 | 用法 |
|---|---|
| （已迁至 `deob q`） | 类名映射 + 每个成员的目标名 / `?`（**第一站**） |
| `dump.py <类> [方法正则...]` | 打印方法体 |
| `prof.py <类...>` | 每方法一行：invoke 概要 + 读写的自有字段 |
| `hdr.py <类...>` | 头部：类标志、super、ifaces、字段类型 |
| `body.py <类...>` | 方法体首几行压缩视图 |
| `fw.py <类...>` | 字段读写者分析 |
| `ctor.py <类...>` | 构造器里的赋值顺序 |
| `fielduse.py <类...>` | 字段使用点 |
| `elim.py <类...>` | 按描述符做“排除法”给出 oracle 候选名 |
| `ifacemap.py <类...>` | 从真实父类/接口按描述符反推方法名 |
| `shapeall.py <类...>` | 多版本（3.7.1/4.x/5.x）形状唯一匹配 |
| `matchscore.py <类...>` | 形状重叠打分（找最像的类） |
| `deleg.py` / `autoname.py` / `allrem.py` | 委托命名建议 / 机械命名建议 / 未映射清单 |
| `check_refs.py` / `check_abstract.py` | 引用与抽象方法一致性抽查 |
| `inner_dump.py` / `inner_cmp.py` / `dexinner.py` / `dex_inner_all.py` / `dex_meta_inventory.py` | dex/class 的嵌套与元数据盘点 |

## stage/ —— 特定阶段/一次性

| 工具 | 说明 |
|---|---|
| `apply_batch1.py` | 早期第一批类级纠正的批量脚本（历史，可作“批量改法”范例） |
| `clsfix.py` / `clsfix2.py` / `clsfix3.py` / `genident.py` | 本轮的类改名/恒等映射生成脚本（一次性，留作模板） |
