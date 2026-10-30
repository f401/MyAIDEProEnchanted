# 认证流水线

改完 mapping **必须**按顺序跑完下面 8 道门；全绿才允许构建。任何一道红了，按"失败处置"修，不要绕过。

真相在 `process/truth/`（类映射 tsv / 成员映射 tsrg / 头部 / smali 索引），`process/mappings.txt` 是派生产物。

## 两种等价入口

| | 本项目门禁（带白名单/版本差异分类） | 通用 kit（配置驱动） |
|---|---|---|
| 入口 | `tools/jgit/pipeline/*.py` | `tools/deob/cli.py -p process/deob.json <cmd>` |
| 配置 | 固定在本仓库 | `process/deob.json` |
| 适用 | 本项目的 8 道门（权威） | 新工程 / 交叉验证 |

```bash
cd /storage/emulated/0/MyAIDEProEnchanted
python3 tools/jgit/pipeline/filter_head.py --apply    # 0) 清 mappings_head.txt 的死块/死行
python3 tools/jgit/pipeline/rebuild_tsrg.py           # 1) tsv/tsrg → mappings.txt（块顺序、去重、类目标查重）
python3 tools/jgit/pipeline/emit_tsrg2.py process/mappings.txt   # 1') 补 `\t\tstatic` 标记（TSRG2）
python3 tools/jgit/pipeline/validate_mappings.py      # 2) 有效性（类/成员存在、static、重复目标）
python3 tools/jgit/pipeline/verify_members.py         # 3) 一致性（对着 oracle + 白名单）
python3 tools/jgit/pipeline/inherit_check.py          # 4) 继承链闭合
python3 tools/jgit/pipeline/pkgclose.py               # 5) 包归属（访问图）
python3 tools/jgit/pipeline/coverage.py               # 6) 覆盖率（只度量）
python3 tools/jgit/pipeline/widen_access.py process/base/merged_ok.jar \
        --map process/truth/jgit_map_clean.tsv        # 7) 跨包 access 预演（不带 --apply 只看报告）
# 8) FART 两遍判等 + 冒烟（见 BUILD.md §3/§7）
```

通用 kit 的等价命令：

```bash
D="python3 tools/deob/cli.py -p process/deob.json"
$D emit          # = rebuild_tsrg + emit_tsrg2（输出与本项目产物逐行一致）
$D validate      # = 门 2
$D inherit       # = 门 4
$D pkgs          # = 门 5
$D widen process/base/merged_ok.jar --map process/truth/jgit_map_clean.tsv
$D cover         # ≈ 门 6（口径略严，判定以项目脚本为准）
```

## 当前基线（八道门最近一次全绿）

| 门 | 期望输出 |
|---|---|
| 0 `filter_head` | `保留块 19 / 删块 0 / 删行 0` |
| 1 `rebuild_tsrg` | `输出类块 740 == tsv 类`、`丢弃陈旧块 0`、`去重成员 0`、`头 20 + jgit 6254` |
| 1' `emit_tsrg2` | `6804 行，static 方法标记 961` |
| 2 `validate_mappings` | `类块 751 / 成员行 5522 / 基线类 23635` → **✔ 无无效映射** |
| 3 `verify_members` | `成员映射 5352 / 不一致 0 / 类型不符 0 / R8 重写 4 / 版本差异 222` |
| 4 `inherit_check` | **CONFLICT 0 / MISSING 0** |
| 5 `pkgclose` | `约束边 464 / 需要挪的类 0 / 真冲突 3 组`（真冲突交给门 7） |
| 6 `coverage` | 方法 **3172/3533 = 89.8%**、字段 **1741/1855 = 93.9%**、类 623、完全覆盖 **480**；未入分母：方法 890 / 字段 496 |
| 7 `widen_access --report` | `跨包需放宽：类 24 / 成员 56`（`--apply` 改写 11 个 class） |

## 门 0：`filter_head.py`

| 期望 | 不符时 |
|---|---|
| 删块/删行 为 0（稳定态） | 非 0 说明头部有"已应用/不存在"的条目：`--apply` 后重跑门 1 |

## 门 1：`rebuild_tsrg.py` + `emit_tsrg2.py`

| 期望 | 不符时 |
|---|---|
| `输出类块 == tsv 类`、`丢弃陈旧块 0`、`去重成员 0`、**无 `目标重复` 异常** | 目标重复 = 两个类映射到同一 FQN；改 tsv |
| emit 后 `static 方法标记` 数量与 jar 一致 | 少写=成员不是 static；多写=元数据跟错行（门 2 会抓） |

> `rebuild_tsrg` 只保证块顺序与去重，**不写 static 标记**；TSRG2 的 `\t\tstatic` 由 `emit_tsrg2` 补。

## 门 2：`validate_mappings.py`（无需参数）

对着 `process/src/*.jar + base/merged_ok.jar` 校验六项：类存在、方法/字段存在、
`\t\tstatic` 位置与 jar 一致、类目标不重复、成员目标（新名+描述符）不重复、新名合法。

| 期望 | 不符时 |
|---|---|
| `✔ 无无效映射`，退出码 0 | `no-method/no-field`=幽灵成员（描述符抄错）→ `mapfix.py` 删该行；`dup-member-target`=两个成员同新名同描述符 → 保留一个、另一个回退或改名；`static-mismatch`=元数据跟错了方法 |

> `class-not-in-base` 只对 **头部**（历史首轮映射，探针已在 src jar 里改名）允许；jgit 侧出现即错。

## 门 3：`verify_members.py`

| 期望 | 说明 |
|---|---|
| `不一致 0`、`字段类型不符 0` | 不一致 = 改后的名字在 oracle 目标类里不存在/描述符不同 |
| `已知R8签名重写 4`、`已知oracle版本差异 222` | 白名单项，见 `process/verify_allow.tsv`（每条都要写理由） |

新出现不一致时：要么改回正确名字，要么在 `verify_allow.tsv` 追加一行 `探针<TAB>新名<TAB>理由`
（理由必须写清"3.7.1 里是什么、AIDE 改成了什么"）。

## 门 4：`inherit_check.py`

| 期望 | 说明 |
|---|---|
| `CONFLICT 0` | 子类与祖先同一**虚方法**被映射成不同名字 ⇒ 运行时分派错，必须同名 |
| `MISSING 0` | 祖先成员未映射但子类已改名 ⇒ FART 沿继承链兜底，结果不确定；补祖先的（必要时补恒等映射） |

> 只比较虚方法（非 static / 非 private / 非 `<init>`）；同名同描述符的 static/private 只是巧合。

## 门 5：`pkgclose.py`

用「访问包私有成员 ⇒ 必须同包」的并查集 + 不动点求每个类该在哪个包。

| 期望 | 说明 |
|---|---|
| `需要挪的类 0` | 有输出就 `--apply`，然后重跑门 1；会链式漂移，**迭代到 0** |
| 真冲突（多包同一分量） | 挪包解决不了 ⇒ 留给门 7 放宽 access；在当前基线里是 3 组，稳定存在 |

## 门 6：`coverage.py`

只做度量，不做判定。分母 = oracle 里在 APK 中有同形对应者的成员（R8 删掉的**不入分母**）。
口径见上表；通用版 `deob cover` 分母略大（77.9%/93.6%），仅作参考。

## 门 7：`widen_access.py`

| 期望 | 说明 |
|---|---|
| 列出的 class/成员都"确实会被跨包访问" | 只统计**本次映射造成**的（原本同包、现在不同包），不误伤原有代码 |

有输出就带 `--apply` 产出 `process/base/merged_pub.jar`（或 FART 后对产物跑），否则运行期 `IllegalAccessError`。
本项目当前：候选 24 类 / 56 成员，`--apply` 改写 11 个 class。

## 门 8：FART 两遍判等 + 冒烟

```bash
J=process/ForgeAutoRenamingTool-1.0.8-all.jar
java -jar $J --input <jar> --output out/v1.jar --map process/mappings.txt --lib ...
java -jar $J --input <jar> --output out/v2.jar --map process/mappings.txt --lib ...
H1=$(python3 tools/jgit/pipeline/jar_manifest.py out/v1.jar --list)
H2=$(python3 tools/jgit/pipeline/jar_manifest.py out/v2.jar --list)
[ "$H1" = "$H2" ] && echo "内容一致 ✔" || python3 tools/jgit/pipeline/jar_manifest.py out/v1.jar --check "$H2"
```

指纹不同 = FART 沿继承链兜底（还有 MISSING 或名字不一致）→ 回门 4。
最后按 BUILD.md §7 做安装冒烟（clone/commit/push）。

## 一页速查

| 症状 | 根因 | 修法 |
|---|---|---|
| `NoSuchMethodError` / `NoSuchFieldError` | mapping 指向不存在的成员 | 门 2 `validate_mappings` |
| `IllegalAccessError` | 跨包访问包私有 | 门 7 `widen_access --apply` |
| `AbstractMethodError` | 接口与实现名不一致 | 双侧同名（`verify_allow.tsv` 记录） |
| 覆写"失效"（调到父类实现） | 跨包 package-private 虚方法 | `widen_access`（放 protected） |
| FART 两遍产物不同 | 祖先成员未映射 / 子类改名 | 门 4 `inherit_check` 补 MISSING |
| D8 `multiple definitions` | 同类内新名+描述符重复 | 门 2 `dup-member-target` |
| D8 `Invalid input code with a call to <clinit>` | dex2jar 产物缺陷（非改名造成） | `tools/jgit/pipeline/nop_clinit.py` 处理后重试 |
