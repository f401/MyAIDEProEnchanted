# tools/jgit — jgit 反混淆工具链

把 AIDE Pro 里被混淆成 `abcd/*` 的 jgit（3.7.1 为基，混有 4.x/5.x 与 AIDE 自改）还原成真实类名/成员名。

```
通用能力已抽到 tools/deob/（配置驱动，给下一个工程用）；本目录是**本项目**的专用脚本。

tools/jgit/
├── paths.py / probelib.py / jvmbody.py / dexlib.py   共享底座（路径、成员清单、class/dex 解析）
├── pipeline/  改映射与构建（rebuild_tsrg / emit_tsrg2 / mapfix / tsvfix / validate_mappings /
│              verify_members / inherit_check / pkgclose / widen_access / coverage / jar_manifest …）
├── naming/    定名：类级（shapescan / shapefind / keyclass / guessprove …）+ 成员级（bodyfit / lcs / field* …）
├── audit/     体检：access_audit / nestcheck / dupcheck / staticclash / deadmembers / apk_class_diff …
├── inspect/   读码查看：q / dump / prof / hdr / body / fw / elim / ifacemap / shapeall …（人工定名第一站）
└── stage/     一次性/特定阶段脚本（apply_batch1 / clsfix* / genident）
```

> **工具作用总表在 [docs/TOOLS.md](../../docs/TOOLS.md)；认证流水线在 [docs/VERIFY.md](../../docs/VERIFY.md)；
> 构建在 [docs/BUILD.md](../../docs/BUILD.md)；坑在 [docs/NOTES.md](../../docs/NOTES.md)。**
> 本文件只记录“数据源在哪”。

## 数据源（大多在 `$HOME`，不在仓库里）

| 路径 | 内容 |
|---|---|
| `process/truth/jgit_map_clean.tsv` | **类映射唯一真相**（740 行），`探针<TAB>目标<TAB>证据` |
| `process/truth/jgit_members_clean.tsrg` | 成员映射（5514 行），类行 `abcd/X 目标`，成员行 TAB 缩进 |
| `process/truth/mappings_head.txt` | AIDE 侧改名块（TSRG2 头 20 行，**不含 jgit**） |
| `~/out/oracle/jgit/` | 官方 jgit jar：3.7.1 / 4.0.0 / 4.2.0 / 4.4.1 / 4.5.0 / 4.5.7 / 4.9.10 / 4.10.0 / 4.11.9 / 5.6.1 / 5.13.3（判据来源） |
| `~/src/jgit/` | jgit 3.7.1 源码（`jgit-src.jar` 解出） |
| `~/src/app_decomp/sources/abcd/*.java` | jadx 反编译的探针源码（辅助读码） |
| `process/base/merged_ok.jar` | **改名输入基线**（已入库，sha256 见 `process/SHA256SUMS`） |
| `process/base/merged_pub.jar` | `widen_access.py` 产物（跨包 package-private 已放宽） |
| `process/src/classes{,2,3,4,5}.jar` + `{en,zh,ndk,packagingservice}.jar` | 逐 dex 的 dex2jar 产物（FART 的 `--input`） |
| `~/icd/orig/classes*.dex` | 原始 5 个 dex（dex 元数据来源） |
| `src/smali/abcd/` | 探针 smali（文件名不可信，**必须查 `process/truth/smali_index.tsv`**） |

当前产物：`process/mappings.txt`（TSRG2，6804 行 = 头 20 + jgit 6254）。
