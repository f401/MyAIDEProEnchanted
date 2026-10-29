# process — jgit 改名（TSRG2 + ForgeAutoRenamingTool）

```
process/
├── mappings.txt                     # TSRG2 改名表（由 tsv 派生，别手改）
├── SHA256SUMS                       # 输入/工具/期望产物的指纹（sha256sum -c 可用）
├── base/merged_ok.jar               # ★ 改名输入基线（FART 的 --input）
├── src/classes{,2,3,4,5}.jar        # 原始 5 个别 dex 的 dex2jar 产物
├── ForgeAutoRenamingTool-1.0.8-all.jar
├── d8.jar                           # D8 8.2.2-dev
├── android.jar                      # API stub（D8 --lib）
├── src/{en,zh,ndk,packagingservice}.jar
├── run.sh                           # 逐 jar + --lib 的历史流程
└── output/                          # 历史产物（.gitignore）
```

## 1. 复现（本仓库自带全部输入，无需 $HOME 里的中间产物）

```bash
cd process
sha256sum -c SHA256SUMS                 # ① 输入完整性（10/10 OK）

java -Xmx900m -jar ForgeAutoRenamingTool-1.0.8-all.jar \
  --input  base/merged_ok.jar \
  --output ~/out/fart/r_v26.jar \
  --map    mappings.txt                 # ② 改名

python3 ../tools/jgit/jar_manifest.py ~/out/fart/r_v26.jar \
  --check bf4a66ff5728aaa375d3ed71176dd885780672df8d5018425c596edbe416b727
# ③ 内容判等：PASS 表示与作者产出**逐类内容一致**
```

**判等用「内容 manifest」不要用整包 sha256**：FART 写 zip 的元数据不稳定，
同一输入两次产出会差几个字节（内容相同）。`jar_manifest.py` 对「按类名排序的 内容哈希」再取
哈希，与 zip 布局无关。

> ⚠️ 改名前先看 `../docs/BUILD-PITFALLS.md` §2：mappings 里只要有一个**重复目标**，
> FART 会 `Duplicate entries detected` 并整体中止，输出 jar 是半成品。

## 2. mappings.txt 格式

```
tsrg2 left right                                  ← 表头（必须第一行）
<混淆名> <真名>                                    ← 类行，顶格
	<旧成员名> <描述符> <新成员名>                     ← 方法行，1 个 TAB
		<参数序号> <新参数名>                          ← 参数名（可选），2 个 TAB
	<旧字段名> <新字段名>                              ← 字段行，1 个 TAB
```

三条纪律：

1. **左值唯一、右值唯一**。右值重复 → FART 整体中止；左值重复（同 name+desc 两个新名）→ FART 输出不确定。
2. **映射必须沿继承链闭合**：子类把 `Zo ()Z` 判成 isSymbolic，父接口就不能判成 isPeeled，
   也不能不判——否则 FART 重写 `invokeinterface` 时要靠兜底查找，**每次跑结果都不一样**。
   检查：`python3 ../tools/jgit/inherit_check.py`。
3. 只改引用不改声明会 `AbstractMethodError`；跨包访问 package-private 成员会 `IllegalAccessError`
   （用"嵌套命名"解决，不要放宽访问标志）。

## 3. 两种改名流程

**A. 单 jar（推荐，本仓库的复现路径）** —— 见 §1。

**B. 逐 jar + `--lib`（`run.sh`，历史流程）**

```bash
bash run.sh    # 每个 classes.jar 单独改名，其它 jar 走 --lib
```

两种产物等价；`run.sh` 里 d8 步骤被注释掉了，出 dex 用 `../docs/JGIT-PIPELINE.md` §4 的命令。

## 4. 当前规模

| 指标 | 值 |
|---|---|
| 类映射 | 662 |
| 成员映射 | 4047（方法 2758 + 字段 1289） |
| 方法覆盖 | 2623/3351 = 78.3% |
| 字段覆盖 | 1115/1585 = 70.3% |
| 完全覆盖类 | 374 |

数据源与重建方法见 `../docs/JGIT-PIPELINE.md`；脚本见 `../tools/jgit/README.md`。
