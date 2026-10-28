# tools — 逆向/改名工具集

本目录是 `MyAIDEProEnchanted` 做 **资源改名** 与 **support→androidx 迁移** 时实际用到的脚本。
全部是"单文件、无第三方依赖（除 JDK）"的 python3 / Java 程序，可直接复用。

> 📁 **jgit 反混淆的脚本不在这里**：全部在 **`tools/jgit/`**（49 个），
> 索引与用法见 `tools/jgit/README.md`；本目录只放 AIDE 侧（资源 ID、support→androidx 迁移）的工具。

> ⚠️ 脚本里存在**硬编码路径**（`/storage/emulated/0/MyAIDEProEnchanted`、`$HOME/tools`、`$HOME/out/work`）。
> 换机器/换目录前先 `grep -n "home/out\|MyAIDEProEnchanted" tools/*.py` 改掉。

---

## 1. 资源层（APKTOOL_DUMMY / 资源 ID）

| 脚本 | 作用 | 用法 |
|---|---|---|
| `res_id_guard.py` | **资源 ID 一致性守卫**：对比 git 版本或两个 APK 的 id 集合 | `python3 tools/res_id_guard.py --git HEAD` / `--apk old.apk new.apk`（退出码 0=一致） |
| `arsc_names.py` | 解析 APK 的 `resources.arsc` → `id<TAB>type<TAB>name` | `python3 tools/arsc_names.py some.apk out.tsv` |
| `rename_dummy.py` | 把 `APKTOOL_DUMMY_*` 批量改成 `<type>_<hex>`，**ID 一位不动** | `python3 tools/rename_dummy.py --apply` |
| `audit_dummy.py` | 审计 dummy 的真实引用面（决定"能不能删"） | `python3 tools/audit_dummy.py` |

**硬规则**：`res/values/public.xml` 是 ID 钉子，删/重排一行会让同 type 后续 entry index 前移。
改动后必须跑 `res_id_guard.py`，要求 **id 集合逐条不变**。

---

## 2. class / dex 层（迁移与改名)

| 脚本 | 作用 | 说明 |
|---|---|---|
| `hier.py` | 解析 class 结构：this/super/interfaces + 字段/方法表（含 `name_index` 偏移与 access flags） | 其它脚本的底座 |
| `cp_scan.py` | 常量池解析，取"被引用的类名集合" | 用于悬空引用审计 |
| `match_lib.py` / `match_support.py` | **行为指纹匹配**：类级/成员级候选打分（SDK 调用、字符串、常量、方法形状） | 生成映射候选，不能盲信（见 §4） |
| `cprewrite2.py` | **精确 CP 重写核心**：改类名 / 成员引用 / 描述符；字段键 `owner->name:type`、方法键 `owner->name(desc)ret`；支持 `descs` 覆盖描述符 | 只动"引用" |
| `cprewrite4.py` | cprewrite2 + **声明改名**（patch `method_info.name_index`），用于覆写传播 | 修 `AbstractMethodError` 的关键 |
| `cprewrite5.py` | cprewrite4 + **继承链解析**（引用的 owner 可能是子类，方法声明在父类） | **最终版，优先用这个** |

用法：
```bash
python3 tools/cprewrite5.py <输入.jar> <输出.jar> <map.json> [迁移前的.jar]
# map.json: {"classes":{old:new}, "members":{...}, "decls":{...}, "descs":{...}}
```

---

## 3. 校验（改完必跑）

| 脚本 | 检查什么 | 通过标准 |
|---|---|---|
| `check_refs.py` | 继承成员漏改（owner 是子类、声明在父类） | **0 处** |
| `check_members.py` | 成员引用是否真实存在（含继承） | 0（framework 未知项会跳过） |
| `check_abstract.py` | 抽象方法实现完备性（`AbstractMethodError`） | **0** |
| `fullscan.py` | 综合扫描：悬空类型 / 悬空成员 / 继承漏改 / 旧库残留 | 只剩 `support/v7`（原包既无实现） |

配套用法：改动前后的类数、字节一致数、迁移目标存在数，见 `docs/MIGRATION-NOTES.md`。

---

## 4. 指纹匹配的边界（血泪教训）

- 对"写字段 + `return this`"的短方法（Builder setter、`DrawerLayout.openDrawer/closeDrawer`）：指纹会**全部并列 9.0** → 必须看**调用点实参**判断。
- 对"委托 / 空实现 / 抛异常"结构不同的方法：指纹很可靠（`PagerAdapter` 的 `setPrimaryItem` vs `destroyItem` 就是这样分出来的）。
- **同描述符重载族**（`()V`、`(I)V`、`(IIII)V`）是重灾区，逐条核对。

---

## 5. 诊断

| 文件 | 作用 |
|---|---|
| `PatchToast.java` | 用仓库自带的 ASM（APK 内 `zeroaicy/org/objectweb/asm`，37 个类）把 `Utils.toast(Throwable,Z)` 重写成"先把栈写 `/storage/emulated/0/aide_err.txt` 再弹 toast"。编译：`javac -cp <asm目录> -d . PatchToast.java` |

---

## 6. 映射数据（`mapping/`）

| 文件 | 内容 |
|---|---|
| `migrate_map.json` | 37 条类映射（support/arch → androidx，含混淆类实名） |
| `cprewrite_map9.json` | **最终映射**：25 类 + 276 成员 + 39 条声明改名 + 1 条描述符覆盖 |
| `refs_final_map.json` | 引用级成员映射（含源码确认项：setNumber/setAutoCancel/setPriority/…） |
| `members_full.json` | "描述符类内唯一"的成员映射（119 条，235 条歧义被跳过） |

迁移产物（`migrated*.jar`、`merged*.jar`、dex）体积大，**不入库**，见 `docs/MIGRATION-NOTES.md`。
