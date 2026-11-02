# jobs/proguard —— ProGuard **6.0.3**（AIDE 的混淆器，757 类，**进行中**）

## 1) 版本锁定：6.0.3

`a/ah` 的常量串里直接写着：

```
ProGuard, version 6.0.3
```

（同一个类里还有 `Setting target versions...`，是 ProGuard 的 `ConfigurationParser` 一族。）
所以 oracle 直接用 Maven 的 `net.sf.proguard:proguard-base:6.0.3`（华为云镜像有）：

```
~/out/oracle/proguard/proguard-base-6.0.3.jar          804 类
~/out/oracle/proguard/proguard-base-6.0.3-sources.jar  712 个 .java（参数名用）
```

APK 里是 757 类（AIDE 自己又用 ProGuard 裁过一遍，用不到的都删了），比例合理。

## 2) 这个 part 的探针范围是新前缀 `a`

之前所有 part 的探针前缀只有 `abcd` 和 `com/a`，所以**单字母包 `a` 从来没进过任何统计**。
本轮把它接进来：

- `process/deob.json`：新增 part `../jobs/proguard`（`probe_prefix: "a"`）+ oracle `proguard-6.0.3` + 源码根；
- **`process/truth/smali_index.tsv` 重建**（新增工具 `tools/deob/mkindex.py`）：
  以前索引只存**裸文件名**（`A.smali`），`a/` 和 `abcd/` 两个空间同名短类会串味；
  现在存**相对路径**（`a/am.smali`、`abcd/am.smali`），共 **21773 条**，覆盖四个 smali 根。

## 3) 做法：候选 → 成员级验证（这一步很关键）

**第一遍：出候选（98 个）**

1. 常量串 Jaccard：`≥0.8` 且领先第二名 `≥0.10` → 71 个（ProGuard 的串很有辨识度，
   例如 `a/k → ConfigurationParser` 有 152 个串、j=1.00）；
2. 否则看"包住关系唯一"：探针的 (方法描述符集, 字段描述符集, interface/abstract/enum 标志)
   被 oracle 类包含，且这样的 oracle 类**只有一个** → 27 个。

**第二遍：用成员级信号筛掉错的（98 → 45）**

对 98 个候选跑 `members --pkg=a --part=proguard`，然后按类统计**成员命中率**：

```
命中率 = 该类已定名的成员 / 该类非合成成员
```

结果 98 个类里只有 **45 个** 命中率 ≥60%（多数 ≥80%），其余 53 个让 954 条成员落进
`no-oracle-descriptor` —— 说明**类映射本身是错的**（ProGuard 里大量单方法 visitor 接口
形状完全一样，光看形状必错）。所以：**只保留被成员级证据支持的 45 个**，
另外 53 个退回候选（它们仍然是下一轮的线索，但不算结论）。

这条经验值得记住：`classmatch` 的贪心赋值能给到 662/757，但**没有领先阈值**，
形状相同的一族会被随机配平；`members` 的命中率是最好的"事后验伪"信号。

## 4) 现状（本轮只交类级）

```
类映射   45 / 757（全部经成员级验证：成员命中率 ≥60%）
成员行   0     ← 下一步
参数行   0
```

**为什么这轮不交成员行**：ProGuard 的类层级里，子类成员先定名会让
`inherit_check` 的 MISSING 从 0 跳到 9（`a/i/n` 7 个、`a/f/t` 2 个祖先成员没定名），
门禁不允许。正确顺序是**祖先优先**：先把 `proguard/classfile/**` 的接口/父类排完，
再自上而下补成员。（本轮试跑过：45 个类能定 367/546 方法、94/100 字段，
再现一遍即可，数据在 `out/members_a.tsv`。）

门禁：`validate ✔`（类块 1985）、`inherit 0/0/0`、`innercheck ②③ 0`（① 仍是 jgit 老账）。

## 5) 下一轮的计划（712 类）

1. **用这 45 个当 `--seed` 跑 `classmatch` 迭代**（`--seed` 会先归一化类型再匹配，
   已确认的类能把 `super/ifaces` 翻成探针空间，子孙类的候选面立刻收窄）；
2. **按 ProGuard 自己的包结构分块做**：`classfile`（315 类，含 attribute/visitor/editor）、
   `optimize`（约 180）、`io`/`obfuscate`/`evaluation`/`util`；
   每个子包先做"接口和抽象类"（形状最有辨识度），再往下；
3. **~100 个单方法 visitor 接口**形状完全一致，只能靠：① 父接口已定名后的
   `implements` 关系；② 调用点（`usematch --profile`：谁调用它的 `visitXxx`）；
4. 成员级等类级到 90% 以上再统一做，避免反复触发 MISSING。

## 6) 复现命令

```
# 候选（串 + 包住关系）
python3 ~/tmp/pgmap2.py            # 一次性脚本，逻辑见 §3

# 成员级验证（看每个类的命中率）
python3 tools/deob/cli.py -p process/deob.json members --pkg=a --part=proguard --apply
awk -F'\t' 'NR>1 && $5!=""' jobs/proguard/out/members_a.tsv | cut -f1 | sort | uniq -c | head

# 门禁
python3 tools/jgit/pipeline/rebuild_tsrg.py && python3 tools/jgit/pipeline/validate_mappings.py
python3 tools/jgit/pipeline/inherit_check.py && python3 tools/deob/innercheck.py
```
