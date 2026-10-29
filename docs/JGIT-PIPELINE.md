# jgit 改名 → 出 dex → 回填 APK（出包手册）

> 目标：让 **改名后的 jgit** 真正跑在设备上（不是"看起来改好了"）。
> 本文只写**已验证/可复现**的步骤，每一步都带验收命令。踩坑清单见 `docs/BUILD-PITFALLS.md`。

---

## 0. 当前状态（2025 本轮结束时）

| 指标 | 数值 |
|---|---|
| 类映射 | **662** 个（`~/out/work/jgit_map_clean.tsv`） |
| 成员映射 | **4047** 条（方法 2753 + 字段 1289） |
| 方法覆盖率 | **78.3%**（2623/3351，分母已剔除 R8 删掉的） |
| 字段覆盖率 | **70.3%**（1115/1585） |
| 完全覆盖类 | **374** |
| `verify_members.py` | 不一致 **0**，无法校验 0，已知 R8 重写白名单 3 |
| `inherit_check.py` | CONFLICT **0** / MISSING **7**（其中 6 条是非混淆的 jsch 接口，可忽略） |
| `mappings.txt` | 头 **162** 行 + jgit **4702** 行 = 4864 行，**无重复目标、无重复左值** |
| FART 产物 | `~/out/fart/r_v26.jar`（21773 类 / 659 个 `org/eclipse/jgit/*`），**两次独立运行内容一致** |

---

## 1. 三处同步：tsv 是唯一真相

```
~/out/work/jgit_map_clean.tsv        类映射（唯一真相，人工/脚本都改这里）
~/out/work/jgit_members_clean.tsrg   成员映射（由 tsv 派生，不要手改）
process/mappings.txt                 TSRG2 最终产物（= head + tsrg）
```

```bash
python3 tools/jgit/rebuild_tsrg.py
```

它做四件事：
1. 以 tsv 的**行的顺序和集合**决定输出哪些类块；
2. 成员行从旧 tsrg **按旧类名**取（tsv 里没有的块 = **陈旧块，整块丢弃**）；
3. 块内成员按 `(name, 描述符)` 去重；
4. 目标类名重复 → **直接报错退出**（不写文件）。

> 只改 tsv 不改 tsrg 会得到"tsv 里没有、但 mappings 里还在"的幽灵映射；
> 只改 tsrg 不改 tsv 会在下次重建时被覆盖。**永远只改 tsv，然后跑这个脚本。**

---

## 2. 两道闸（不过就别往下走）

```bash
cd /storage/emulated/0/MyAIDEProEnchanted

# ① 成员名在 oracle 里存在且形状一致
python3 tools/jgit/verify_members.py
#   期望：成员映射 NNNN 无法校验(未知类) 0 不一致 0 已知R8签名重写 3

# ② 类目标不重复（FART 对重复目标会整体中止）
awk '!/^\t/ && NF>=2 {print $2}' process/mappings.txt | sort | uniq -d
awk '!/^\t/ && NF>=2 {print $1}' process/mappings.txt | sort | uniq -d
#   两条都必须空

# ③ 映射沿继承链闭合（不闭合 ⇒ FART 输出不确定 + 运行时分派错）
python3 tools/jgit/inherit_check.py
#   CONFLICT 必须逐条裁决（子类与祖先判成不同名，必有一错）
#   MISSING  是祖先还没命名，会自动靠兜底解析；数量越大越容易跑出不同结果
```

---

## 3. 改名（FART）

```bash
cd /storage/emulated/0/MyAIDEProEnchanted/process
sha256sum -c SHA256SUMS          # 输入/工具指纹（base/merged_ok.jar 必须 OK）
time java -Xmx900m -jar ForgeAutoRenamingTool-1.0.8-all.jar \
  --input  base/merged_ok.jar \
  --output ~/out/fart/r_v26.jar \
  --map    mappings.txt
```

**判等用内容指纹，不要用整包 sha256**（FART 的 zip 元数据不稳定，差几个字节但内容相同）：

```bash
python3 ../tools/jgit/jar_manifest.py ~/out/fart/r_v26.jar \
  --check bf4a66ff5728aaa375d3ed71176dd885780672df8d5018425c596edbe416b727
# PASS = 与作者产出逐类内容一致
# 想确认"确定性"就跑两次，两次 manifest 必须相同（这是发现 mapping 家族冲突的最快手段）
```

- 输入**必须是 `merged_ok.jar`**：
  - `merged.jar` 有 dex2jar 缺陷（§3.1/§3.2）→ D8 会失败；
  - `merged_fix3.jar` 只修了 `<clinit>`，接口字段没修；
  - `merged_pubcls.jar`（做过类级 public 化）会让 FART 在 `a/a/i` 上崩。
- 单 jar 输入即可（已有 `--lib` 分 jar 的老流程见 `process/run.sh`，产物等价）。
- 验收：
  ```bash
  unzip -l ~/out/fart/r_v26.jar | tail -2      # ≈21774 条目
  unzip -l ~/out/fart/r_v26.jar | grep -c 'org/eclipse/jgit/'   # ≈659
  for c in 'org/eclipse/jgit/lib/ConfigLine.class' \
           'org/eclipse/jgit/lib/ConfigSnapshot.class' \
           'org/eclipse/jgit/transport/TransportHttp$4.class' \
           'org/eclipse/jgit/transport/GitProtocolConstants$MultiAck.class' \
           'abcd/vJ.class'; do
    printf '%-70s %s\n' "$c" "$(unzip -l ~/out/fart/r_v26.jar | grep -c "$c")"
  done   # 前 4 个 =1，最后 1 个 =0（旧名已消失）
  ```

---

## 4. 出 dex（D8）

```bash
cd /storage/emulated/0/MyAIDEProEnchanted/process
rm -rf ~/out/dex13 && mkdir -p ~/out/dex13
time java -Xmx900m -cp d8.jar com.android.tools.r8.D8 \
  --release --min-api 26 --thread-count 2 \
  --lib android.jar \
  --output ~/out/dex13 \
  ~/out/fart/r_v26.jar
```

要点（每条都踩过）：

| 参数/行为 | 说明 |
|---|---|
| `-Xmx900m` | 7.4G 内存的设备上 `-Xmx1400m` 会被 LMK 杀掉；900m 是安全线 |
| `--min-api 26` | 低于 21 时 D8 的行为不同；**`--main-dex-list` 在 min-api ≥ 21 时被 D8 明确拒绝**，别加 |
| `--lib android.jar` | 不传会因 `java.*`/`android.*` 缺失报错 |
| `--thread-count 2` | 8 核但内存吃紧，线程多了反而被 OOM |
| 输出 | 目录里出现 `classes.dex`（必要时 `classes2.dex …`），序列**必须从 1 开始连续** |
| 典型报错 | `Invalid input code with a call to <clinit>` ⇒ 用错输入 jar（要用 `merged_ok.jar`） |

---

## 5. 出包核对

```bash
# jar 的类集 vs dex 的类集，差集必须为 0
python3 tools/jgit/apk_class_diff.py ~/out/fart/r_v26.jar ~/out/dex13
# 回填后对着新 APK 再来一次（这才是"装上去会不会缺类"的最终答案）
python3 tools/jgit/apk_class_diff.py ~/out/fart/r_v26.jar ~/out/repack/new.apk
```

脚本第二个参数支持 **APK/ZIP 或 D8 输出目录**，内部解析 dex 的 type 表（不要用子串搜索——
早期实现是 `b'Lxxx;' in 45MB字节`，21773 个类要跑几分钟，现在是秒级）。

> 拿 `r_v26.jar` 和**原始** APK 比会出现 **1822** 条"缺失"，这是**正常的**：
> `androidj/**` 1267 + `android/**` 512 + `abcd/as/**` 43 是 support→androidx 迁移时**主动删掉**的类
> （见 `AGENTS.md` §6），`merged_ok.jar` 里本来就没有。**只和新包比。**

再看三个 dex 级硬约束（`docs/BUILD-PITFALLS.md` §3.2 / §4）：

1. 接口字段必须是 `public static final`；
2. 不能出现 `0x13`（public+private）这种非法标志组合；
3. 不能有 `Methodref -> <clinit>`。

D8 本身会做前两项校验，**D8 过了就基本安全**；第 3 项已由 `nop_clinit.py` 在输入侧修掉。

---

## 6. 回填 APK

> ⚠️ **签名不是可选项**：仓库只有公钥证书，私钥（`f401`/"Termux Shared Key"）不在仓库。
> 换密钥签名的包**无法覆盖安装**（`sharedUserId=com.termux2` 会冲突），只能自用。
> 见 `AGENTS.md` §2 约束 3。

两种路线：

**A. 直接换 dex（推荐，改动最小）**

```bash
cd /storage/emulated/0/MyAIDEProEnchanted
cp "AIDE Pro_2.8.7-freely_orig_src.apk.orig" ~/out/repack/base.apk
cd ~/out/repack
unzip -o -q base.apk -d unpack
rm -f unpack/classes*.dex                     # 旧 5 个 dex 全部删掉（r_v12 已含它们所有类）
cp ~/out/dex13/classes*.dex unpack/
# 重新打包 + zipalign + 签名：CLI 侧没有 apktool/zipalign/apksigner
#   → 在 MT 管理器里"压缩成 APK"后 zipalign/签名，或用 PC 侧工具链
```

**B. 走 apktool（`src/` 工程）**

`src/` 是 apktool 反编译工程，`apktool b src -o out.apk` 会**重新从 smali 生成 dex**——
那就绕过了本文的 jar→dex 流程，只能用于"改 smali"的场合。**两条路线不要混用。**

---

## 7. 验收清单（装之前最后一遍）

- [ ] `verify_members.py` 不一致 0
- [ ] `mappings.txt` 无重复目标 / 无重复左值
- [ ] FART 输出条目数 ≈ 22761，`abcd/` 里已无被改名类
- [ ] D8 无 error；`classes*.dex` 序号连续
- [ ] `apk_class_diff.py` 差集 0
- [ ] APK 内 `classes*.dex` 与产物一致（`unzip -l | grep classes`）
- [ ] 装上前先备份：`adb shell pm path aidepro.top` + 导出数据

---

## 8. 回滚

| 层级 | 做法 |
|---|---|
| 单个类映射判错 | 从 `jgit_map_clean.tsv` 删行，把结论记进 `jgit_unverified.tsv`，重跑 `rebuild_tsrg.py` |
| 整套映射 | `git -C /storage/emulated/0/MyAIDEProEnchanted checkout process/mappings.txt`（tsv 在 `$HOME`，需自己备份） |
| 产物 | `r_v11.jar` / `merged_ok.jar` 都还在 `~/out/fart/`，可直接回到上一版 |
