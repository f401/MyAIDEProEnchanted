# process — jgit 改名（TSRG2 + ForgeAutoRenamingTool）

```
process/
├── truth/                           # ★ 唯一真相（已入库）
│   ├── jgit_map_clean.tsv           #   类映射（探针 → 目标 + 证据）
│   ├── jgit_members_clean.tsrg      #   成员映射（TSRG 块）
│   ├── mappings_head.txt            #   TSRG2 头部（AIDE 侧改名 20 行）
│   └── smali_index.tsv              #   类 → smali 真实文件名（大小写不敏感 FS 必须用）
├── mappings.txt                     # TSRG2 改名表（由 truth/ 派生，别手改）
├── verify_allow.tsv                 # 已知差异白名单（每行都要写理由）
├── SHA256SUMS                       # 输入/工具指纹（sha256sum -c 可用）
├── base/merged_ok.jar               # ★ 改名输入基线
├── base/merged_pub.jar              # widen_access 产物（跨包 package-private 已放宽）
├── src/classes{,2,3,4,5}.jar        # 5 个 dex 的 dex2jar 产物
├── src/{en,zh,ndk,packagingservice}.jar
├── ForgeAutoRenamingTool-1.0.8-all.jar
├── d8.jar / android.jar             # D8 与 API stub
├── run.sh                           # 逐 jar + --lib 的历史流程
└── output/                          # 历史产物（.gitignore）
```

## 1. mappings.txt 格式（TSRG2）

```
tsrg2 left right                                  ← 表头（必须第一行）
<混淆名> <真名>                                    ← 类行，顶格
	<旧成员名> <描述符> <新成员名>                     ← 方法行，1 个 TAB
		<参数序号> <新参数名>                          ← 参数名（可选），2 个 TAB
	<旧字段名> <新字段名>                              ← 字段行，1 个 TAB
		\tstatic                                    ← 静态**方法**的标记：单独一行、2 个 TAB
```

三条纪律：

1. **不要手改**：唯一真相是 `process/truth/jgit_map_clean.tsv`（类）与
   `process/truth/jgit_members_clean.tsrg`（成员），改完跑 `tools/jgit/pipeline/rebuild_tsrg.py`。
2. **不许有重复目标**：类级重复会被 `rebuild_tsrg.py` 直接中止；成员级重复（同类内新名+描述符相同）
   会让 D8 报 `multiple definitions` 并任选一份丢弃。两道都靠 `validate_mappings.py` 兜。
3. **static 标记只对方法有效**，跟在字段行后会报 `Invalid TSRG v2 line`。

## 2. 复现 / 判等

```bash
cd process
sha256sum -c SHA256SUMS                       # ① 输入与工具完整性

java -Xmx900m -jar ForgeAutoRenamingTool-1.0.8-all.jar \
  --input  base/merged_ok.jar \
  --output ~/out/fart/r.jar \
  --map    mappings.txt                       # ② 改名

python3 ../tools/jgit/pipeline/jar_manifest.py ~/out/fart/r.jar --list   # ③ 内容指纹
```

**判等用「内容 manifest」不要用整包 sha256**：FART 写 zip 的元数据不稳定，同一输入两次产出会差几个字节
（内容相同）。`jar_manifest.py` 对「按类名排序的内容哈希」再取哈希，与 zip 布局无关；
拿两次产物比 `--list` 的结果是否相等即可（详见 `../docs/VERIFY.md` 门 8）。

> ⚠️ 改名前先看 `../docs/NOTES.md`：重复目标、override 家族同名、跨包 access 这三类问题
> 都会让产物“能构建但跑不起来”。

## 3. 当前产物

| 文件 | 说明 |
|---|---|
| `mappings.txt` | 6804 行：头 20 + jgit 6254；类块 751 / 成员行 5522 / static 标记 961 |
| `base/merged_pub.jar` | 由 `widen_access.py` 生成（当前改写 11 个 class） |
