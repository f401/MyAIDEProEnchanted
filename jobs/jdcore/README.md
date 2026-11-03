# jdcore —— JD-Core v1（`org.jd.core.v1`，Java 反编译器内核）434 类

身份确认见 [docs/IDENTITY.md §1](../../docs/IDENTITY.md)。oracle：`~/out/oracle/jd/jd-core-1.1.3.jar`（470 类）
+ `jd-core-1.1.3-sources.jar` 源码。

## 包对齐（计数法，**候选**，未逐类验证）

探针 434 类 / oracle 470 类。包对齐用"oracle 计数 ≥ 探针计数且差最小"的贪心一一对应，
36 个探针包里有 35 个落在差 ≤3 的范围内（详见 `pkg_map.tsv`）。几个"精确相等"的锚点：

```
org/c/a/a/b/a/a      40 = model/classfile/attribute                40
org/c/a/a/b/a/b      13 = model/classfile/constant                 13
org/c/a/a/c/a/a/c    42 = model/javasyntax/expression              42
org/c/a/a/b/d/d      35 = model/javasyntax/statement               35
org/c/a/a/b/f        17 = model/javasyntax/reference               17
org/c/a/a/c/b/a       4 = service/deserializer/classfile            4
org/c/a/a/b/a         4 = service/converter/.../processor           4
```

## 已定名（1 个，硬判据）

```
org/c/a/a/a → org/jd/core/v1/ClassFileToJavaSourceDecompiler
```

判据：该类恰好 6 个字段，构造器逐个 `new` 出来；源码 `:24-29` 的字段顺序正是
`deserializer → converter → fragmenter → layouter → tokenizer → writer`；
`decompile()` 里 `setHeader("mainInternalTypeName"/"loader"/"printer"/"maxLineNumber"/"configuration")`
与源码 `:34-36`、`LayoutFragmentProcessor` 逐字相同。

**下一步（按这个顺序做最省力）**：

1. 用"入口类 6 个字段的类型 = 6 个 processor"把 `c/b/a/d`、`c/e/a`、`c/f`、`b/d`、`c/e/a/a`、`c/a/a/d` 六个
   service 入口类钉死（字段顺序 + 包对齐双重约束）；
2. `model/classfile/attribute`（40 类）与 `model/classfile/constant`（13 类）都是**名字常量被内联**的族，
   照 ProGuard 那套"创建点 / switch 常量"读 `ConstantParser`/`ClassFileParser`；
3. `model/javasyntax/*`（160 类）是纯数据模型，靠"谁构造它 + 字段类型"逐个读。

## 接入状态（未完成）

`jobs/jdcore/` 目前只是**种子**（1 条类映射 + 包对齐草表），**没有**注册进
`process/deob.json` 的 `parts`。本轮试过注册（`{"dir": "../jobs/jdcore", "probe_prefix": "org/c/a/a"}`
+ `tools/jgit/paths.py` 的 `PART_DIRS` 加一行），`rebuild_tsrg` 不报错但**没有枚举到这个 part**
（输出仍是 `part 11`），原因没查（怀疑只枚举带 `members.tsrg` 的 part）。所以先回滚注册，
等下一轮把 `members.tsrg` 建起来再一起接。

在那之前，本目录的数据**不被门禁覆盖**，引用时请注意。
