# 工具作用（`tools/jgit/`）

全部 Python 3、无第三方依赖。绝大多数工具默认 **dry-run**，要落盘必须加 `--apply`。

## A. 流水线核心（改 mapping 必用）

| 工具 | 作用 | 备注 |
|---|---|---|
| `rebuild_tsrg.py` | **tsv → tsrg → `process/mappings.txt`** | 类块顺序由 tsv 决定；会丢陈旧块、去重成员、查类目标重复 |
| `emit_tsrg2.py` | 单独重排/补 static 标记输出 TSRG2 | `\t\tstatic` 必须紧跟**方法**行 |
| `mapfix.py` | 声明式改成员映射 | 行格式 `探针 m/f 名 描述符 旧值 新值`，`-` 表示空/删；同类互换安全（内存里改完再写回） |
| `tsvfix.py` | 声明式改类映射 | 同上，作用于 tsv |
| `validate_mappings.py` | **校验映射有效性**（类/成员是否存在、static 标记、类/成员目标重复、新名合法） | 期望 `✔ 无无效映射` |
| `filter_head.py` | 清理 `mappings_head.txt` 里“已应用/不存在”的块与行 | 头部的 probe 在所有 src jar 里都没有 ⇒ 整块删 |
| `verify_members.py` | 成员一致性（对着 oracle，含白名单） | 期望 `不一致 0` |
| `inherit_check.py` | 映射是否沿继承链闭合 | 期望 `CONFLICT 0 / MISSING 0` |
| `pkgclose.py` | **并查集 + 不动点**算每个类该在哪个包（访问包私有 ⇒ 同包） | `--apply` 迭代到 0 |
| `widen_access.py` | **跨包 access 放宽**（public/protected），FART 前/后都能跑 | `--report` 只看；`--map` 用于 FART 前 |
| `coverage.py` | 覆盖率（分母 = 有同形对应者的 oracle 成员） | 纯度量 |
| `jar_manifest.py` | jar 的**内容指纹**（与 zip 布局无关） | 用于“两次 FART 产物是否一样” |
| `nop_clinit.py` | 把方法体里显式调用 `<clinit>` 换成 NOP | D8 不接受显式调用 `<clinit>` 时用 |

## B. 类级定名

| 工具 | 作用 |
|---|---|
| `shapescan.py` | 全库扫描：给所有未映射 `abcd` 类找唯一形状匹配（`--loose` 折叠类型） |
| `shapefind.py` | 单个类的形状唯一匹配（成员多重集 + super） |
| `classqc.py` | 已映射类的身份体检（目标类是不是判错了） |
| `rescore.py` | 类级重打分（TF-IDF 覆盖率 + 硬约束），复核整套类映射 |
| `keyclass.py` | 用“类级 JGitText 键集合”识别未映射的 jgit 类（键名未被混淆） |
| `guessprove.py` | 用已映射关系当证明器给未映射类找身份 |
| `graphfinger.py` | 用“引用的 jgit 类型邻域”给未映射类找候选 |
| `sigmatch.py` | 泛型 Signature 属性指纹定名 |
| `ctorfind.py` | 用构造器描述符（归一化）在全 oracle 里查同签名类 |
| `enclosing_groups.py` / `nestmatch.py` / `anonmap.py` | 内部类/匿名类的兄弟聚类与配对（`<Owner>$N`） |
| `hier_audit.py` | 层级一致性：探针 super/ifaces 的映射目标必须 == oracle 的 super/ifaces |
| `excess.py` / `nopair.py` | 探针成员多重集超出 oracle / 找不到同形对应 ⇒ 定位类级误判 |
| `apk_class_diff.py` | jar 与 apk/dex 目录的类差异 |
| `classcmp.py` / `cls2txt.py` | 单类三方对照（oracle / 探针 / 产物）与文本转储 |

## C. 成员级定名

| 工具 | 证据类型 |
|---|---|
| `autofill.py` | 类内“描述符唯一”的 1:1 机械匹配 |
| `gapfill.py` | 同 desc+static 且在目标类里唯一 |
| `gapfill2.py` | 方法体证据（字符串常量 + 引用成员对） |
| `bodyfit.py` | 探针 smali 与 oracle 字节码的**指令级指纹**对齐 |
| `lcs.py` | 指令序列 difflib 相似度（破重载歧义） |
| `javadiff.py` | jadx 反编译产物 vs jgit 源码的“标识符无关”结构对齐 |
| `callsite.py` | 调用点对齐（被谁调用、调用者已知名） |
| `fielddiff.py` / `fieldfill.py` / `fieldctx.py` / `fieldprint.py` | 字段：访问者集合 / 读写点指纹 / 上下文序列 |
| `confield.py` / `constctx.py` / `initfill.py` | 常量字段：ConstantValue / 值+使用点 / 初始化配对 |
| `override.py` | 覆写传播：祖先已映射 ⇒ 子类同形直接同名 |
| `closefam.py` | 成员家族在映射上闭合 |
| `jgittext.py` | 类级 JGitText 消息键指纹 |
| `dupcheck.py` / `dupfix.py` | 重复成员体检与归因（D8 `multiple definitions` 的根因） |
| `staticclash.py` | 找“同名同描述符既有 static 又有 virtual”的家族 |
| `deadmembers.py` | 全 App 无调用的成员（可删候选） |
| `add_members.py` / `apply_types.py` | 按 (kind,类,描述符) 精确写入映射 / 批量加类映射 |

## D. 基础设施与清单

| 工具 | 作用 |
|---|---|
| `probelib.py` | 探针(smali)/oracle(class) 成员清单、描述符归一化、`Oracle` 多版本加载 |
| `jvmbody.py` | class 文件解析 + 方法体特征（ldc 字符串 / 成员引用） |
| `dexlib.py` / `dexinner.py` / `dex_inner_all.py` / `dex_meta_inventory.py` | 最小 DEX 解析、嵌套/注解元数据盘点（无 baksmali 时用） |
| `nestcheck.py` | 用 dex 的 InnerClasses 关系硬校验（等价 D8 的 `Malformed inner-class`） |
| `inner_dump.py` / `inner_cmp.py` | 读 class 的 InnerClasses/EnclosingMethod、父子对照 |
| `gaplist.py` / `gapinv.py` | 缺口清单（按 coverage 口径 / 带候选版本） |
| `review.py` | 高价值类抽查：成员映射全貌 + 未映射项 |
| `access_audit.py` | 预演 `IllegalAccessError`（跨包访问 package-private），`pkgclose` 的单点版 |
| `sync_maps.py` | 从 tsrg 重建 `mappings.txt` 的 jgit 块（头部不变） |
