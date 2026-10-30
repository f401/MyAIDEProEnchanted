# 工具链（`tools/jgit/`）

全部 Python 3、无第三方依赖。**默认 dry-run，落盘要加 `--apply`。**

```
tools/
├── deob/               通用反混淆工具链（配置驱动，新工程用这个；见 docs/GENERIC-TOOLS.md）
├── jgit/               本项目专用
│   ├── paths.py            路径解析（jobs/jgit/truth 优先，回退 $HOME）
│   ├── probelib.py         smali/oracle 成员清单、描述符归一化、多版本 Oracle
│   ├── jvmbody.py          class 解析 + 方法体特征
│   ├── dexlib.py           最小 DEX 解析
│   ├── pipeline/           本项目门禁（13）
│   ├── naming/             定名分析器（34）
│   ├── audit/              体检（12）
│   ├── inspect/            读码/查看（14，读码类已整合到 deob 的 view）
│   └── stage/              一次性脚本停放处（当前空，见 README）
└── aide/               AIDE 侧归档（资源 ID / support→androidx / dex 差异）
```

> **去重结果**
> - `deob/` 提供通用等价实现：`emit / validate / inherit / pkgs / widen / cover / manifest / shape / q / prof / dump / hdr / elim / iface`。
> - `jgit/pipeline/` **保留**（本项目门禁，带 `verify_allow.tsv` 白名单、R8 重写与 oracle 版本差异分类）：
>   `rebuild_tsrg emit_tsrg2 filter_head mapfix tsvfix validate_mappings verify_members inherit_check pkgclose widen_access coverage jar_manifest nop_clinit`
> - **已删除**（通用 kit 全覆盖或本身就是一次性）：`sync_maps`、`shapescan`、`shapefind`、
>   `typefix`、`typeprop`、`typesolve`、`typeuse`、`vprobe`、`add_members`、`apply_types`、
>   `inspect/` 的 `q hdr prof dump elim ifacemap shapeall body matchscore`、
>   `stage/` 的全部历史脚本与 `stage/fixes/`（见 git log）。

## pipeline/ —— 改映射 & 构建（8 道门都在这）

| 工具 | 作用 |
|---|---|
| `rebuild_tsrg.py` | **tsv/tsrg → `jobs/jgit/mappings.txt`**（类块顺序按 tsv；丢陈旧块、去重成员、查类目标重复） |
| `emit_tsrg2.py` | 单独重排/补 static 标记输出 TSRG2（`\t\tstatic` 必须紧跟**方法**行） |
| `sync_maps.py` | 只重建 jgit 块、保留头部 |
| `mapfix.py` | 声明式改**成员**映射（`探针 m/f 名 描述符 旧 新`，`-` 表空/删；同类互换安全） |
| `tsvfix.py` | 声明式改**类**映射 |
| `filter_head.py` | 清理 `mappings_head.txt` 中“已应用/不存在”的块与行 |
| `validate_mappings.py` | **有效性**：类/成员是否存在、static 标记、类/成员目标重复、新名合法。期望 `✔ 无无效映射`（无需参数） |
| `verify_members.py` | **一致性**：对着 oracle 校验名字+描述符（含 `jobs/jgit/verify_allow.tsv` 白名单）。期望 `不一致 0` |
| `inherit_check.py` | **继承闭合**：`CONFLICT 0 / MISSING 0` |
| `pkgclose.py` | **包归属**：并查集 + 不动点求每类该在哪个包；`--apply` 迭代到 0 |
| `widen_access.py` | **跨包 access 放宽**（成员/类 → public，同签名虚方法 → protected）；`--report` 只看，`--map` 用于 FART 前 |
| `coverage.py` | 覆盖率（分母=有同形对应者的 oracle 成员） |
| `jar_manifest.py` | jar **内容指纹**（与 zip 布局无关），用于“两次 FART 是否一致” |
| `nop_clinit.py` | 把方法体里显式 `invokestatic <clinit>` 换 NOP（D8 不收） |

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
