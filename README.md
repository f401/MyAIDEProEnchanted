# AIDE Pro 个人魔改版

*** 仅供学习交流使用 ***

## 特性

- 与 Termux 共享 UID（`sharedUserId=com.termux2`，刻意与真 Termux 脱钩）
- 自定义终端环境变量
- 更新 D8 版本
- **jgit 反混淆**：把 AIDE 内置的 jgit 从 `abcd/*` 还原成真实类名/成员名（进行中）

## 编译

使用 **apktool m** 进入 `src` 目录回编译；签名需原作者私钥（不在仓库），
详见 `AGENTS.md` §2 与 `docs/TEST-PLAN.md`。

## 贡献 Mapping

`process/mappings.txt` 是 TSRG2 格式的改名表，由
[Minecraft Forge AutoRenamingTool](https://github.com/MinecraftForge/ForgeAutoRenamingTool) 消费。

```bash
cd process
java -jar ForgeAutoRenamingTool-1.0.8-all.jar \
  --input  <输入.jar> \
  --output <输出.jar> \
  --map    mappings.txt
```

当前规模：**662 个类 / 4047 个成员**（方法 2623/3351 = 78.3%，字段 1115/1585 = 70.3%）。

改名的输入基线 `process/base/merged_ok.jar` 已入库，指纹见 `process/SHA256SUMS`；
复现与判等命令见 `process/README.md`（判等用**内容指纹**，不用整包 sha256）。

> ⚠️ 不要直接编辑 `mappings.txt`：唯一真相是 `~/out/work/jgit_map_clean.tsv`，
> 改完跑 `python3 tools/jgit/rebuild_tsrg.py` 重新生成。

## 文档

| 我想… | 看 |
|---|---|
| 出包（改名 → dex → 回填） | `docs/JGIT-PIPELINE.md` |
| 搞清 dex 注解/元数据 | `docs/JGIT-METADATA.md` |
| 某个类为什么这么命名 | `docs/JGIT-MAPPING-QC.md` |
| 构建炸了先查有没有人踩过 | `docs/BUILD-PITFALLS.md` |
| 全部文档索引 | `docs/README.md` |
| 仓库硬性约束（**动手前必读**） | `AGENTS.md` |
