# 还原一个新依赖：可复用路径

> 目标：拿到一个**新的**被混淆的库/APK，能在几十分钟内跑通"定名 → 体检 → 改名 → 出包"，
> 且**完全不碰**仓库里已完成的工程（`process/`）。

## 0. 隔离约定（先看这条）

| 目录 | 归属 | 谁可以写 |
|---|---|---|
| `process/` | **已完成的 jgit 工程** | 只在维护它时写；任何"新依赖"任务**只读** |
| `jobs/<名字>/` | 新依赖工程（自包含） | 只有本工程的配置/真相/产物 |
| `tools/deob/` | 通用工具 | 只读 |

一个任务 = 一个 `jobs/<名字>/`，里面 `deob.json` + `truth/` + `oracle/` + `base/` + `out/`，
与其他任务零共享。`deob status` 会逐条打印"写入目标是否在工程目录内"，越界会标 ⚠。

## 1. 准备输入

```bash
mkdir -p jobs/<名字>/{oracle,base}
# 探针侧：APK → 反编译成 smali（apktool d），或已经有的 smali 目录
# oracle 侧：官方 jar/多个版本（>=1 个；多版本更好，形状匹配更准）
# 基线：dex2jar 出的 jar（FART 的 --input），并确认改名后能被 D8 吃下
```

## 2. 建独立工程

```bash
python3 tools/deob/cli.py init --name mylib --prefix zz --probe-dir probe
# 生成 jobs/mylib/{deob.json, truth/class_map.tsv, truth/members.tsrg, README.md}
python3 tools/deob/cli.py -p jobs/mylib/deob.json status     # 看路径 + 隔离检查
```

编辑 `jobs/mylib/deob.json`：把 `probe_dir` / `base_jars` / `input_jars` / `oracle_jars` 指到位。
（探针包前缀 `probe_prefix` 决定 `zz/X` 这类类名怎么拼。）

## 3. 类级定名（先定类，再定成员）

```bash
D="python3 tools/deob/cli.py -p jobs/mylib/deob.json"
$D shape zz/Foo          # 跨 oracle 版本形状唯一匹配（★ 只是候选！）
$D q zz/Foo              # 成员一览（哪些还没名字）
$D hdr zz/Foo            # super / ifaces / 字段类型
```

判据优先级与禁止事项见 **[NAMING.md](NAMING.md)** —— 形状命中必须再用 body 复核；
确认不是 jgit/官方库的类，按约定归入探针包的 `aide/` 子包并起可读名。

写进真相（**只有这一处**）：

```
jobs/mylib/truth/class_map.tsv   →   Foo<TAB>com/example/Foo<TAB>body:...
jobs/mylib/truth/members.tsrg    →   probe/X com/example/X
                                    \t<旧名> <描述符> <新名>
```

## 4. 成员级定名

```bash
$D prof zz/Foo            # 每方法：调用了谁 / 读写哪个自有字段
$D dump zz/Foo '^j6'      # 打印方法体（正则过滤）
$D elim zz/Foo            # 按描述符排除法给候选
$D iface zz/Foo           # 从真实父类/接口反推方法名
# 需要更强的证据时，用 tools/jgit/naming/ 里的分析器当模板（bodyfit / lcs / field* / javadiff）
```

**不写恒等映射**：判不出作用就保留混淆名；祖先/子类对齐必须同名（见 NAMING.md §3/§5）。

## 5. 体检（四层，前两层是硬门）

```bash
$D emit        && python3 -c "pass"    # 生成 out/mappings.txt（含 \t\tstatic）
$D validate                            # 期望 ✔ 无无效映射
$D inherit                             # 期望 CONFLICT 0 / MISSING 0
$D pkgs                                # 看需挪包；需要就 --apply 后重跑 emit
$D widen base/merged.jar --apply       # 跨包 access 放宽（挪不了包的）
$D cover                               # 指标（分母=R8 未删的）
```

## 6. 改名与出包

与 [BUILD.md](BUILD.md) 相同，只是把路径换成 `jobs/<名字>/`：

```bash
java -jar process/ForgeAutoRenamingTool-1.0.8-all.jar \
  --input jobs/mylib/base/merged.jar --output jobs/mylib/out/renamed.jar \
  --map jobs/mylib/out/mappings.txt --lib <依赖 jar> --lib process/android.jar
# → widen（若 FART 前没做）→ D8 → 回填 dex → zipalign → apksigner → 冒烟
```

## 7. 自检：这套路径还能用吗

```bash
python3 tools/deob/selftest.py -p jobs/jgit/deob.json
# PASS emit / validate / inherit / pkgs / cover / shape / q / index-fallback / isolation
```

`isolation` 一项会验证**源工程的三张表哈希未变**——即"跑一遍通用链路不会污染已完成的工程"。

## 8. 一页清单

1. `jobs/<名字>/` + `init` 建工程（隔离）
2. 放 oracle / base / smali
3. 类级：`shape`+`q`+`hdr` → 写 `class_map.tsv`（带证据）
4. 成员级：`prof`+`dump`+`elim`+`iface` → 写 `members.tsrg`（不写恒等）
5. `emit → validate → inherit → pkgs → (widen)` 全绿
6. FART → D8 → 出包 → 冒烟（`NoSuchMethod/IllegalAccess/AbstractMethod` 三类异常对照
   [VERIFY.md](VERIFY.md) 末尾速查表）
