# AIDE Pro 个人魔改版（反混淆 + 重新打包）

*** 仅供学习交流使用；请自行准备合法授权的签名私钥 ***

把 AIDE Pro 2.8.7（freely 魔改版）里被混淆的第三方库和 AIDE 自有类还原成**可读命名**，
并产出**可安装可运行**的 APK。命名规则、判据、门禁、构建流程都在 [`docs/`](docs/README.md)。

## 现状（2026-11）

| 指标 | 值 |
|---|---|
| part | **20** 个（`head` + 19 个库/子系统，顺序见 `process/deob.json`） |
| 类映射 | **4364** 类（每类都有可复现判据，写在 `class_map.tsv` 第 3 列） |
| 成员映射 | **28941** 行（方法 + 字段，覆写链全部对齐） |
| 参数名 | **22167** 行（oracle 的 LocalVariableTable / 上游源码声明 / 人工证据） |
| 注释 | **33305** 条（类 + 方法 + 字段，覆盖率 100%，进 Tiny v2 供人读） |
| 产物 | `process/mappings.txt`（TSRG2，57584 行）· `process/mappings.tiny`（Tiny v2，55473 行） |
| 门禁 | validate ✔ · inherit 0/0/0 · innercheck 0/0/0 · famcheck 0/0 · verify 不一致 0 · round-trip 一致 |

已还原的库（括号内为类数）：proguard(757) / jgit(685) / dx(448) / jdcore(434) / spongycastle(257) /
antlr 4.9.2(220) / crashlytics(176) / jsch(141) / antlr 4.7.2(117) / asn1bc(107) / aide_bb(85) / aide_ui(82) /
aide_engine(71) / aide(70) / fabric(69) / dropbox(49) / zipsigner(24) / aide_iap(19) / jzlib(14) / head(1)。

## 快速开始

```bash
# 1) 改真相（唯一真相是 jobs/<part>/ 下的四张表，不要手改产物）
python3 tools/jgit/pipeline/rebuild_tsrg.py        # tsv + tsrg → process/mappings.txt
# 2) 门禁（全绿才提交；详见 docs/VERIFY.md）
python3 tools/jgit/pipeline/validate_mappings.py   # ✔ 无无效映射
python3 tools/jgit/pipeline/inherit_check.py       # CONFLICT 0 / MISSING 0
python3 tools/jgit/pipeline/verify_members.py      # 不一致 0
python3 tools/deob/innercheck.py                   # ①②③ 全 0
python3 tools/jgit/pipeline/emit_tiny2.py          # → process/mappings.tiny（带注释）
python3 tools/jgit/pipeline/validate_tiny.py       # ✔ tiny 体检通过
python3 tools/jgit/pipeline/tiny_roundtrip.py      # ✔ 与 mappings.txt 逐行等价
# 3) 打包（默认喂 FART 的是 Tiny v2；--map-format=tsrg 可回退）
python3 tools/build/build_apk.py all
```

## 目录

```
src/          apktool 反编译产物（smali / res / AndroidManifest.xml）
process/      已落地的改名工程：deob.json、truth/、base/、src/、mappings.txt/.tiny（见 process/README.md）
jobs/         一个依赖一个目录的**真相**（class_map.tsv / members.tsrg / params.tsv / comments.tsv）
tools/        deob/（通用 kit）、jgit/（本项目专用）、build/（打包）、aide/（历史归档）
docs/         全部文档（索引见 docs/README.md）
out/          构建中间产物（gitignore）
```

## 文档

- 新人先读 [`docs/README.md`](docs/README.md)（索引）→ [`AGENTS.md`](AGENTS.md)（铁律）
- 判据与命名：[`docs/NAMING.md`](docs/NAMING.md) · 认证：[`docs/VERIFY.md`](docs/VERIFY.md) · 构建：[`docs/BUILD.md`](docs/BUILD.md)
- 依赖清单与身份确认：[`docs/DEPENDENCIES.md`](docs/DEPENDENCIES.md) · 坑：[`docs/NOTES.md`](docs/NOTES.md)
- 剩余待还原清单：[`jobs/README.md`](jobs/README.md)
