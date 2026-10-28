# process — jgit 改名（TSRG2 + ForgeAutoRenamingTool）

```
process/
├── mappings.txt                     # TSRG2 改名表（产物，别手改）
├── ForgeAutoRenamingTool-1.0.8-all.jar
├── d8.jar                           # D8 8.2.2-dev
├── android.jar
├── src/classes*.jar                 # 原始 dex2jar 产物（5 个）
└── output/                          # 历史产物
```

## mappings.txt 格式

```
tsrg2 left right                                  ← 表头（必须第一行）
<混淆名> <真名>                                    ← 类行，顶格
	<旧成员名> <描述符> <新成员名>                     ← 方法行，1 个 TAB
		<参数序号> <新参数名>                          ← 参数名（可选），2 个 TAB
	<旧字段名> <新字段名>                              ← 字段行，1 个 TAB
```

两条纪律：

1. **左值唯一、右值唯一**。右值重复 → FART `Duplicate entries detected` 并**整体中止**（输出 jar 是半成品）。
2. 只改引用不改声明会 `AbstractMethodError`；跨包访问 package-private 成员会 `IllegalAccessError`
   （用"嵌套命名"解决，不要放宽访问标志）。

## 两种改名流程

**A. 合并单 jar（推荐）**

```bash
java -Xmx900m -jar ForgeAutoRenamingTool-1.0.8-all.jar \
  --input  ~/out/fart/merged_ok.jar \
  --output ~/out/fart/r_vN.jar \
  --map    mappings.txt
```

`merged_ok.jar` = dex2jar 合并产物，已修两处会让 D8 失败的缺陷（显式 `<clinit>` 调用、接口字段标志）。
详见 `../docs/BUILD-PITFALLS.md` §3。

**B. 逐 jar + `--lib`（`run.sh`，历史流程）**

```bash
bash run.sh    # 每个 classes.jar 单独改名，其它 jar 走 --lib
```

两种产物等价；`run.sh` 里的 d8 步骤被注释掉了，出 dex 用
`../docs/JGIT-PIPELINE.md` §4 的命令。

## 当前规模

| 指标 | 值 |
|---|---|
| 类映射 | 589 |
| 成员映射 | 3713（方法 2544 + 字段 1169） |
| 方法覆盖 | 2406/3132 = 76.8% |
| 字段覆盖 | 1008/1440 = 70.0% |

数据源与重建方法见 `../docs/JGIT-PIPELINE.md`；
脚本见 `../tools/jgit/README.md`。
