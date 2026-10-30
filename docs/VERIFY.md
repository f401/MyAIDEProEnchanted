# 认证流水线

改完 mapping **必须**按顺序跑完下面 8 道门；全绿才允许构建。任何一道红了，按“失败处置”修，不要绕过。

```bash
cd /storage/emulated/0/MyAIDEProEnchanted

python3 tools/jgit/filter_head.py --apply     # 0) 清理 mappings_head.txt 的死块/死行
python3 tools/jgit/rebuild_tsrg.py           # 1) tsv → tsrg → mappings.txt
python3 tools/jgit/validate_mappings.py      # 2) 映射有效性（对着真实 jar）
python3 tools/jgit/verify_members.py         # 3) 成员一致性（对着 oracle）
python3 tools/jgit/inherit_check.py          # 4) 继承链闭合
python3 tools/jgit/pkgclose.py               # 5) 包归属（访问图）
python3 tools/jgit/coverage.py               # 6) 覆盖率口径
python3 tools/jgit/widen_access.py process/base/merged_ok.jar \
        --map ~/out/work/jgit_map_clean.tsv  # 7) 跨包 access 预演（不带 --apply 只看报告）
# 8) FART 两遍判等 + 冒烟（见 BUILD.md §3/§7）
```

## 门 1：`rebuild_tsrg.py`

| 期望 | 不符时 |
|---|---|
| `输出类块 == tsv 类`、`丢弃陈旧块 0`、`去重成员 0`、**没有 `目标重复` 异常** | 目标重复 = 两个类映射到同一 FQN；改 tsv |

## 门 2：`validate_mappings.py`

对着 `process/src/*.jar + base/merged_ok.jar` 校验六项：类存在、方法/字段存在、
`\t\tstatic` 元数据位置与 jar 一致、类目标不重复、成员目标（新名+描述符）不重复、新名合法。

| 期望 | 不符时 |
|---|---|
| `✔ 无无效映射`，退出码 0 | `no-method/no-field`=幽灵成员（描述符抄错）→ `mapfix.py` 删该行；`dup-member-target`=两个成员同新名同描述符 → 保留一个、另一个回退或改名；`static-mismatch`=元数据跟错了方法 |

> 基线类数会随 jar 增加而变；`类不存在` 只对 **头部**（历史首轮映射）允许，jgit 侧出现即错。

## 门 3：`verify_members.py`

| 期望 | 说明 |
|---|---|
| `不一致 0`、`字段类型不符 0` | 不一致 = 改后的名字在 oracle 目标类里不存在/描述符不同 |
| `已知R8签名重写 4`、`已知oracle版本差异 222` | 白名单项，见 `process/verify_allow.tsv`（每条都要写理由） |

新出现不一致时：要么改回正确名字，要么在 `verify_allow.tsv` 追加一行 `探针<TAB>新名<TAB>理由`
（理由必须写清“3.7.1 里是什么、AIDE 改成了什么”）。

## 门 4：`inherit_check.py`

| 期望 | 说明 |
|---|---|
| `CONFLICT 0` | 子类与祖先同一成员被映射成**不同名字** ⇒ 运行时分派错，必须同名 |
| `MISSING 0` | 祖先成员未映射但子类已改名 ⇒ FART 会沿继承链兜底，结果不确定；补祖先的（恒等映射也算） |

## 门 5：`pkgclose.py`

用「访问包私有成员 ⇒ 必须同包」的并查集求每个类该在哪个包。

| 期望 | 说明 |
|---|---|
| `需要挪的类 0` | 有输出就 `--apply`，然后重跑门 1；会链式漂移，**迭代到 0** |
| 真冲突（多包同一分量） | 挪包解决不了 ⇒ 交给 `widen_access` 放宽 access；在报告里记录 |

## 门 6：`coverage.py`

只做度量，不做判定。分母 = oracle 里在 APK 中有同形对应者的成员（R8 删掉的**不入分母**）。

当前：方法 **3172/3533 = 89.8%**、字段 **1741/1855 = 93.9%**、完全覆盖类 **480**、
未入分母：方法 890 / 字段 496。

## 门 7：`widen_access.py --report`

| 期望 | 说明 |
|---|---|
| 列出的 class/成员都“确实会被跨包访问” | 只统计**本次映射造成**的（原本同包、现在不同包），不会误伤原有代码 |

有输出就带 `--apply` 产出 `merged_pub.jar`（或 FART 后对产物跑），否则运行期会 `IllegalAccessError`。

## 门 8：FART 两遍判等 + 冒烟

```bash
# 同一输入 + 同一 mapping 跑两次，内容指纹必须相同（--list 打印指纹，--check 比对）
java -jar process/ForgeAutoRenamingTool-1.0.8-all.jar --input <jar> --output out/v1.jar --map process/mappings.txt --lib ...
java -jar process/ForgeAutoRenamingTool-1.0.8-all.jar --input <jar> --output out/v2.jar --map process/mappings.txt --lib ...
H1=$(python3 tools/jgit/jar_manifest.py out/v1.jar --list)
H2=$(python3 tools/jgit/jar_manifest.py out/v2.jar --list)
[ "$H1" = "$H2" ] && echo "内容一致 ✔" || python3 tools/jgit/jar_manifest.py out/v1.jar --check "$H2" 
```

指纹不同 = FART 沿继承链兜底（说明还有 MISSING 或名字不一致）→ 回到门 4。
最后按 BUILD.md §7 做安装冒烟（clone/commit/push）。

## 一页速查

| 症状 | 根因 | 修法 |
|---|---|---|
| `NoSuchMethodError` / `NoSuchFieldError` | mapping 指向不存在的成员 | `validate_mappings` |
| `IllegalAccessError` | 跨包访问包私有 | `widen_access --apply` |
| `AbstractMethodError` | 接口与实现名不一致 | 双侧同名（`verify_allow.tsv` 记录） |
| 覆写“失效”（调用父类实现） | 跨包 package-private 虚方法 | `widen_access`（放 protected） |
| FART 两遍产物不同 | 祖先成员未映射 / 子类改名 | `inherit_check` 补 MISSING |
| D8 `multiple definitions` | 同一类里新名+描述符重复 | `validate_mappings` 的 `dup-member-target` |
| D8 `Invalid input code with a call to <clinit>` | dex2jar 产物缺陷（非改名造成） | `tools/jgit/nop_clinit.py` 处理后重试 |
