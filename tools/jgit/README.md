# tools/jgit — jgit 反混淆工具链

把 AIDE Pro 里被混淆成 `abcd/*` 的 jgit（3.7.1 为基，混有 4.x/5.x 与 AIDE 自改）还原成真实类名/成员名。

```
通用能力已抽到 tools/deob/（配置驱动，给下一个工程用）；本目录是**本项目**的专用脚本。

tools/jgit/
├── paths.py / probelib.py / jvmbody.py / dexlib.py   共享底座（路径、成员清单、class/dex 解析）
├── pipeline/  改映射与构建（rebuild_tsrg / emit_tsrg2 / mapfix / tsvfix / validate_mappings /
│              verify_members / inherit_check / pkgclose / widen_access / coverage / jar_manifest …）
├── naming/    定名分析器：类级（keyclass / guessprove / graphfinger / rescore / sigmatch …）
│              + 成员级（bodyfit / lcs / field* / const* / override / closefam / gapfill* …）
├── audit/     体检：access_audit / nestcheck / dupcheck / staticclash / deadmembers / apk_class_diff …
├── inspect/   读码查看：allrem / fw / ctor / fielduse / deleg / autoname / dex* / inner*
│              （q / prof / dump / hdr / elim / iface / shape 已整合到 `tools/deob/` 的 view）
└── stage/     一次性脚本停放处（当前空，历史脚本见 git log）
```

> **工具作用总表在 [docs/TOOLS.md](../../docs/TOOLS.md)；认证流水线在 [docs/VERIFY.md](../../docs/VERIFY.md)；
> 构建在 [docs/BUILD.md](../../docs/BUILD.md)；坑在 [docs/NOTES.md](../../docs/NOTES.md)。**
> 本文件只记录“数据源在哪”。

## 数据源

仓库内的布局见 [process/README.md](../../process/README.md)（真相在 `jobs/<依赖>/`）。
这里只列**不在仓库里**、需要本机准备的东西：

| 路径 | 内容 |
|---|---|
| `~/out/oracle/jgit/` | 官方 jgit jar：3.7.1 / 4.0.0 / 4.2.0 / 4.4.1 / 4.5.0 / 4.5.7 / 4.9.10 / 4.10.0 / 4.11.9 / 5.6.1 / 5.13.3（判据来源） |
| `~/src/jgit/` | jgit 3.7.1 源码（`jgit-src.jar` 解出） |
| `~/src/app_decomp/sources/abcd/*.java` | jadx 反编译的探针源码（辅助读码） |
| `~/icd/orig/classes*.dex` | 原始 5 个 dex（dex 元数据来源） |

探针 smali 在 `src/smali/abcd/`，但**文件名不可信**（大小写不敏感 FS），一律查
`process/truth/smali_index.tsv`。

> 分表顺序由 `process/deob.json` 的 `parts` 决定：`head → jgit → jsch → aide → … → aide_ui`（共 19 个，见 `process/deob.json`）。
> `paths.MAP / TSRG / PARAMS` 是给只读脚本用的**合并视图**（`$HOME/out/work/merged/`，
> 内容哈希做戳）；要写真相用 `tools/deob/mapping.py` 的 ClassMap/MemberMap（按来源写回各 part）。

当前产物：`process/mappings.txt`（TSRG2，55070 行）与 `process/mappings.tiny`（Tiny v2，53018 行，带 30952 条注释）。
