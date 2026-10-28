# docs — 索引

本仓库有两摊事，文档也按这两摊分开：

- **A 摊：APK 魔改 / 资源迁移**（`src/` 的 apktool 工程，support→androidx、资源 ID 钉死）
- **B 摊：jgit 反混淆**（`process/mappings.txt` + FART，把 `abcd/*` 还原成真实 jgit 类名）

---

## 按场景查

| 我要… | 看 |
|---|---|
| 出包：jgit 改名 → 出 dex → 回填 APK | **`JGIT-PIPELINE.md`**（唯一手册，含全部命令与验收标准） |
| 搞清 dex 的注解/元数据怎么读 | **`JGIT-METADATA.md`** |
| 知道哪个类是哪个 jgit 类、为什么这么判 | **`JGIT-MAPPING-QC.md`**（逐轮复核记录，§13 为最新） |
| 构建又炸了，先看有没有人踩过 | **`BUILD-PITFALLS.md`**（症状 → 根因 → 做法） |
| 改 smali / 资源 / 清单的坑 | `PITFALLS.md`、`MIGRATION-NOTES.md`、`TEST-PLAN.md` |
| 找脚本 | `../tools/jgit/README.md`（jgit 流水线）、`../tools/README.md`（AIDE 侧） |

---

## 文档清单

| 文件 | 一摊 | 内容 |
|---|---|---|
| `JGIT-PIPELINE.md` | B | **出包手册**：三处同步（tsv→tsrg→mappings.txt）、两道闸、FART、D8、回填、验收清单、回滚 |
| `JGIT-METADATA.md` | B | dex/class 元数据速查：头部偏移、`annotations_off` 三级跳、`encoded_value` 类型码；**为什么本 APK 的嵌套注解不能用**（投毒证据） |
| `JGIT-MAPPING-QC.md` | B | 命名映射逐轮复核：判据、假证据陷阱、同名冲突裁决、覆盖率口径、每轮修正 |
| `BUILD-PITFALLS.md` | B | 踩坑清单：FUSE 大小写、FART 重复目标（tsrg 陈旧块 / **head 自身双份**）、dex2jar 三缺陷、访问权限、命名判定、崩溃定位顺序 |
| `PITFALLS.md` | A | 真实踩过的坑：内存/LMK、`pkill` 自伤、`public.xml` 钉 ID、`APKTOOL_DUMMY` 成因、FART 继承传播、TSRG2 格式、dex2jar 有损、指纹歧义、support→androidx 结论 |
| `MIGRATION-NOTES.md` | A | support→androidx 迁移的映射表、产物路径、清单改动与未验证项 |
| `TEST-PLAN.md` | A | 迁移后的回归测试清单（P0/P1/P2 + 静态自检 + 定位捷径） |

---

## 三条不要忘的结论

1. **按 `.class` 描述符定位类，不要按 smali 文件名**（FUSE 大小写不敏感，2745 个文件里 1559 个文件名与内部声明不一致）。
2. **dex 的嵌套注解被投毒**（`name` 只有 12 种取值、与后缀字母一一对应）→ 命名只认**成员形状 1:1 + 源码 + 调用点**。
   另：**映射必须沿继承链闭合**，否则 FART 输出不确定（同一输入两次产出不同），见 `BUILD-PITFALLS.md` §2.5。
3. **覆盖率只比绝对命中数**：分母随类数变化，"新增一个类"会让百分比下降。

---

## 环境备忘

```bash
# 有：java 21 / javac / python3 / unzip / xxd / file / javap / git
# 无：aapt aapt2 apktool zipalign apksigner zip 7z bc openssl dexdump baksmali
# 无 /tmp（/ 只读）→ 临时目录用 $HOME/tmp
# 无 which → 用 command -v
# 设备 7.4G 内存：java -Xmx900m 是安全线（1400m 会被 LMK 杀）
# 回编译/签名在真机上由 MT 管理器内置 apktool 完成
```
