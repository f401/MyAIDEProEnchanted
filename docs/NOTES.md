# 注意事项 / 坑

> 真相在哪、TSRG2 基础语法、构建步骤分别见 [process/README](../process/README.md)、
> [BUILD](BUILD.md)、[VERIFY](VERIFY.md)。这里只记**工具不会自动拦、踩到会崩**的东西。

## 1. 覆写 / 接口一致性（最致命）

- 同一成员的“祖先 + 所有实现/覆写”必须映射成同一个名字，否则运行期 `AbstractMethodError`
  或分派到父类实现。`inherit_check.py` 的 `CONFLICT` / `MISSING` 都必须为 0。
- **第三方接口要双侧一起改**：jsch 的 `UserInfo` / `UIKeyboardInteractive` 方法名在 dex 里也是混淆的，
  `com/jcraft/jsch/*` 与实现者 `abcd/lI` 必须同时改成真名，FART 会重写 jar 内 180+ 处引用。只改单边必崩。
- 跨包之后 package-private 虚方法不再构成覆写，靠 `widen_access` 放宽（现在是 **public**）。

## 2. 重复目标 / 幽灵成员

- 类级重复：两个探针映射到同一 FQN ⇒ `rebuild_tsrg.py` 直接中止。
- 成员级重复：同类里两个成员映射到「同一新名 + 同一描述符」⇒ D8 报
  `Ignoring an implementation … because it has multiple definitions` 并任选一份丢弃。
  `validate_mappings.py` 抓显式的 `dup-member-target`；**FART 兜底造成的重复**由
  `inherit_check.py` 的 `DUPTARGET` 抓（未映射的 override 被祖先名字兜底后撞车）。
- 幽灵成员（mapping 里有、dex 里没有）⇒ FART 静默忽略但会误导推理，`validate` 的 `no-method/no-field`。
- **`<init>` / `<clinit>` 绝不能改名**：方法体里的 `invokespecial <init>` 仍按旧名找，
  改成一个普通名字后，那段 `this(...)`/`super(...)` 就变成"在普通方法里调用未初始化引用"，
  运行期 `VerifyError: Expected initialization on uninitialized reference`。
  `validate` / `validate_mappings` 都会报 `special-rename`（基线里修掉过一例：
  `RevWalk.<init>(ObjectReader)` 被误映射成 `parseBody`）。

## 3. FART 的坑

- **输入必须是原始 jar**（`process/base/merged_ok.jar` 或 `process/src/*.jar`）。
  `widen_access` 的产物可以喂（实测 12.8s 通过）；会让 FART 崩的是“把所有类都改成 public”的
  `merged_pubcls.jar`，那是另一个东西。
- **不要逐 jar 出包**：逐 jar 的 widen 看不到别 jar 的引用，跨 jar 的 package-private 会漏。
  链路固定为 `fix_try → widen(merged_ok) → FART(merged_pub) → D8 → 多退少补回填`（[BUILD](BUILD.md)）。
- 同一输入同一 mapping 跑两次，产物必须内容一致（`jar_manifest.py` 比对）；不一致说明还有
  `MISSING` / 名字不一致，FART 在沿继承链兜底。
- **改内部类名会自动同步 `InnerClasses.innerName`**（FART 用 ASM 处理），不用手改；但目标名必须保持
  `Outer$Inner` 形状，否则 D8 报 `Malformed inner-class attribute`
  （`abcd/Hz$b → abcd/aide/HttpRequest$HttpConnectionFactory`，不是 `abcd/aide/HttpConnectionFactory`）。
- **跨包访问有四类，`widen_access` 全要管**：成员引用、类级访问（`new`/`checkcast`/`const-class`/
  `instanceof`/`anewarray`）、继承（`extends`/`implements`）、override 家族。漏任何一类都是运行期
  `IllegalAccessError`（措辞分别是 `Method … is inaccessible` / `Illegal class access` /
  `superclass/interface access`）。
- **放宽 access 时不能只 `| ACC_PUBLIC`**：原先是 `protected` 的会变成 `public protected`（0x5），
  dex 校验直接拒绝（`Field may have only one of public/protected/private`）。
  必须 `acc & ~(private|protected) | public`；工具写完后会自检冲突数。

## 4. 大小写不敏感文件系统

`/storage/emulated/0` 是 FUSE（大小写不敏感）：`qF$a.smali` 与 `qF$a.1.smali`、`abcd/ji` 与 `abcd/JI`
会互相覆盖。**类名到文件名的映射必须查 `process/truth/smali_index.tsv`**，不要用 `类名.smali` 直接拼。

## 5. 覆盖率口径

- 分母只取 3.7.1（R8 是否删掉以它为参照）：当前未入分母 方法 890 / 字段 496，所以不可能 100%。
- **命中判定要看所有 oracle 版本**：AIDE 的 jgit 是 3.7.1 为基的混合版，222 条“版本差异”其实是真名，
  只查 3.7.1 会把它们误判成未覆盖（旧口径 89.8% → 现在 99.1%）。

## 6. dex / 反编译产物的缺陷（两个都已由工具处理）

| 现象 | 原因 | 工具 |
|---|---|---|
| `D8: Invalid input code with a call to <clinit>` | dex2jar 把显式 `invokestatic <clinit>` 留在方法体里 | `nop_clinit.py` |
| `ArrayIndexOutOfBoundsException: length=N; index=N`（`Config$StringReader.read`） | **AIDE 的 dex 本身** try 范围不含 `aget`（`try_item` = `start 0 / count 8`），偏离 jgit 源码 `try { return buf[pos++]; } catch` | `fix_try.py`（11 条基线，必须在 widen 之前） |

## 7. 构建 / 签名

- 原作者签名私钥**不在仓库**；自备 keystore，覆盖安装要先卸载。
- 顺序 `zipalign` → `apksigner`（先签名再 zipalign 会破坏签名）；本机没有这两个工具。
- D8 输出的 dex **个数会变**（按 64K 方法数自动分），回填要"多退少补"，不能 `cp` 固定几个。

## 8. AIDE 对 jgit 的魔改（读代码时的先验）

不要按 3.7.1 源码硬套：

- `ObjectChecker` 改成 boolean 字段；`ReceivePack`/`ReflogWriter`/`RebaseState` 合并进宿主类。
- 自造 `cached-packs` 索引（`ObjectDirectory.cachedPacksFile/scanCachedPacks`，对应 5.x 的 `LocalCachedPack`）。
- 多处用 `String` 代替 `AnyObjectId` 的重载（`getLooseObjectSize(curs,String,id)` 等）。
- `doFetch/doPush` 去掉 `OutputStream` 参数；`CommitCommand`/`RebaseCommand` 的私有方法少参。
- `DeltaWindow` 重写成“环形下标窗口”（`next/prev/advanceCur`），`search` 带 `ProgressMonitor` + 区间。
- 部分类整段是 AIDE 自写（HTTP 客户端一族、JSON 解析器、时间提供者），jgit 里根本不存在。

## 9. oracle 版本要挑对（jsch 是 **0.1.51**，不是 0.1.55）

一开始拿 0.1.55 当 oracle，剩下 53 条对不上，其中 26 条"oracle 里没有这个成员"。
换版本后那 26 条**全部消失**，`mgraph` 也从 1.1% 掉到 0.0%。判定用三条可复现的判据：

| 判据 | 做法 | 本例的读数 |
|---|---|---|
| ① 描述符多重集 Jaccard | probe 的 `(kind, desc, static)` 多重集 vs 每个候选 jar 同名类 | `DHGEX256`：0.1.50/0.1.51 = **74%**，0.1.53+ = **5%** |
| ② 结构指纹（层次 + 字段数） | 直接比 `super` 和字段清单 | probe `DHGEX256.super = KeyExchange`、15 字段 ⇒ 0.1.50/0.1.51；0.1.53+ 是 `extends DHGEX`、零字段 |
| ③ 只在相邻版本间才变的东西 | 挑"版本间有差"的类做判别 | `HostKey`：0.1.50/0.1.51 有 11 字段（无 ECDSA 常量），0.1.53+ 13 字段（`names` + ECDSA）；`Channel$MyPipedInputStream` 0.36 vs 0.82、`Channel$PassiveOutputStream` 0.17 vs 1.00 ⇒ 0.1.51 |

前后对比（同一套工具、同一份探针）：

| | oracle = 0.1.55 | oracle = 0.1.51 |
|---|---|---|
| "oracle 里没这个成员" | 26 | **1** |
| 方法覆盖 | 99.0% | **99.2%** |
| 字段覆盖 | 96.1% | **96.8%** |
| `mgraph` 未对上引用 | 1.1%（26 条） | **0.0%**（0 条） |

两条教训：

1. **`mgraph` 的"未对上"如果整类成片出现**（`DHGEX256` 一次 22 条、`HostKey` 3 条），
   先怀疑 oracle 版本，别急着写"AIDE 魔改"——之前那 26 条里我错标了很大一部分。
2. **`oracle_jars` 的顺序就是优先级**：`membermatch.find()` 取第一个**含有该类**的 jar。
   所以真版本（`jsch-0.1.51`）要排在兜底版本（`jsch-0.1.55`）前面；0.1.55 只用来兜
   0.1.51 里没有的类（例如 ECDSA/ECDH 那批，AIDE 侧本来就被裁掉了）。

剩下的 23 条是真对称（不是版本）：`ChannelSftp.put/get/symlink/hardlink/rename` 一族、
`Proxy*.proxy_host/user/passwd`、`Session` 的 `compute_keys` 那 6 个 `byte[]`（AIDE 把签名改成
`(KeyExchange)`，赋值顺序没法对照）、`ChannelX11.cookie/table`、
`jcraft/Compression.compress/uncompress`（AIDE 还把手 jzlib 换成了自带的 `abcd/Oy`，字段类型都变了）。

## 10. jsch 最后 27 条：按 jgit 的办法读码定名（判据逐条留档）

工具判不出的 27 条，按 jgit 对 `Aide*` 变体的老办法处理：**读代码，按作用定名**，
把判据写在这里（`members.tsrg` 里没有证据列，证据只能落文档 + commit）。

| 位置 | 定名 | 判据（可复现） |
|---|---|---|
| `Session.EQ()V` | `sendKeepAliveMsg` | body 有 `i|80` + `keepalivemsg` + `Session.write`；同族 `noMoreSessionChannels` 只差那个字段名 |
| `Session` 的 6 个 `byte[]` | `IVc2s`/`IVs2c`/`Ec2s`/`Es2c`/`MACc2s`/`MACs2c`/`s2cmac_result2` | `updateKeys` 里 **首个写入序** + **二次写入来源**（`digest` / `arraycopy` / `expandKey` / `getBlockSize`）与 oracle 8 条来源签名完全同构；`s2cmac_result2` 又被 `read()` 读（与 oracle 同） |
| `Channel.j6([BII)V` / `DW([BII)V` | `write` / `write_ext` | 只调 `IO.put` 的是 `write`，调 `IO.put_ext` 的是 `write_ext` |
| `Channel$1.j6()V` | `init` | 同类 `flush`/`close`/`write` 都是恒等，`()V` 只剩 `init` |
| `ChannelAgentForwarding`/`ChannelX11.j6([BII)V` | `write` | 同 `Channel`：`Buffer.shift/arraycopy/putByte` + `getInt` 的写包体 |
| `ChannelSftp.j6(String,String)V` | `rename` | 整数常量集 `{2,4,8,101}` 与 oracle `rename` **完全一致**（`symlink` 多 3/47、`hardlink` 多 47） |
| `ChannelSftp.u7(String)V` | `rmdir` | 调 `sendRMDIR`（`rm` 调 `sendREMOVE`、`mkdir` 调 `sendMKDIR`） |
| `ChannelSftp.v5(String)SftpATTRS` | `lstat` | body 调 `_lstat`；其余 `_stat`/`stat` 分别对 `we`/`tp` |
| `DHGEX`/`DHGEX256` 的 `aM`/`j3` | `g`/`e` | `aM` 传给 `DH.setG([B)`、`j3` 传给 `DH.setF([B)`（`setF` 存的是服务端 DH 公钥 = 源码里的字段 `e`） |
| `ChannelX11` 的 `er`/`rN` | `cookie`/`port` | `write()` 读 `er` 两次（oracle `write` 读 `cookie` 两次）；`run()` 读 `rN`（oracle `run` 读 `port`） |
| `ProxyHTTP/SOCKS4/SOCKS5` 的 `j6`/`Zo`/`VH` | `proxy_host`/`user`/`passwd` | `connect()` 里 String 字段读序与 oracle 逐个位置对齐（`proxy_host, proxy_host, user, passwd, …`） |
| `jcraft/Compression.DW/j6` | `uncompress`/`compress` | **字符串常量**：`"uncompress: inflate returnd "` / `"compress: deflate returnd "` |
| `jcraft/Compression.FH(Labcd/Oy;)` | `stream` | AIDE 把 jzlib 的 `ZStream` 换成自带的 `abcd/Oy`；oracle 同字段就叫 `stream`（类型变了，`mgraph` 会因此报 3 条"未对上"，属已知差异） |

顺带纠正了 4 处**引擎在换 oracle 后判错**的（都是 `mgraph` 逮到的）：

- `Channel.FH(I)V` 与 `Zo(I)V`：一个写 `exitstatus`、一个写 `lwsize_max`，被对调了 ⇒ `setExitStatus` / `setLocalWindowSizeMax`；
- `jce/DH`（连同抽象父类 `DH`）的 `DW([B)V`/`j6([B)V`：一个调 `setF(BigInteger)`、一个调 `setP(BigInteger)`，被对调了；
- `Proxy*` 的 `VH`/`Zo`：原来 `VH=proxy_host` 站错了位置（`connect` 的读序对不上）；
- `Session.EQ [B`：原来指向 `IVc2s`，按赋值来源应是 `Ec2s`。

结论：**jsch 741 个方法 / 537 个字段全部有名字**（678+63 / 536+1，其余是恒等与合成）。
`mgraph` 剩 4 条未对上，全部有解释（1 条 AIDE 改过的 `ChannelExec.getErrStream` 方法体、
3 条 `Compression.stream` 的类型被换成 `abcd/Oy`）。

## 11. 契约方法绝不许改名（一次真实崩溃的复盘）

**症状**（真机）：

```
java.lang.NoSuchMethodError: No interface method getLongname()Ljava/lang/String;
  in class Ljava/lang/CharSequence; or its super classes
    at io.fabric.sdk.android.n.onPreExecute(...)
```

**根因**：jsch 侧把 `ChannelSftp$LsEntry.toString()Ljava/lang/String;` 改名成了 `getLongname`
（探针里的 `toString` 与 oracle **同名同描述符**，本来就该按恒等、不写映射；oracle 的
`getLongname()` 在 AIDE 里被裁掉了，所以那里根本没有"另一个方法"可配）。
FART 按 (名, 描述符) 认覆写，`toString` 在 `Object` 上声明、又被 `CharSequence`/`Enum`/… 重声明，
于是这个改名被**沿继承链传播到 JDK 类型**上：

```
+ java/lang/Object.getLongname()Ljava/lang/String;        ×404
+ java/lang/CharSequence.getLongname()Ljava/lang/String;  ×116
+ java/io/StringWriter.getLongname()…                     ×52
+ org/json/JSONObject.getLongname()…                      ×58   …
（合计 780 条 JDK/Android 引用被改坏）
```

**三条硬结论**：

1. **`toString`/`equals`/`hashCode`/`clone`/`finalize` 一律不许改名**（它们在 `Object` 上声明，
   每个类都继承，FART 必然会往外传播）。
2. `length`/`charAt`/`compareTo`/`iterator` 这类"接口契约"**只有在本类真的实现了那个接口时才危险**
   （`AbbreviatedObjectId.length()I` 就是安全的：它继承 `Object`，`Object` 没有 `length`）。
   规则落在 `jvm.CONTRACT_SIGS` + `jvm.CONTRACT_IFACE`，`membermatch.contract_ok()` 两头把关。
3. **探针名在 oracle 里同名同描述符存在 ⇒ 一律恒等**，不参与分配（`match_class` 里已按此过滤）。

**门禁**（两道，都是新增）：

| 门 | 判据 | 期望 |
|---|---|---|
| `validate` 的 `contract-rename` | 契约签名（带 iface 判断）不许改名 | 0 条 |
| `jdk_refs.py`（构建链第 5 步 `jdkrefs`） | **改名前后，指向 `java/` `javax/` `android/`… 的引用（owner+名+描述符）必须一模一样** | `✔ JDK/Android 引用与改名前一模一样` |

`jdk_refs` 是这条不变量最直接的检查：拿 `process/base/merged_pub.jar` 当基线，比 `out/build/renamed/merged.jar`；
任何差异都说明有 JDK 引用被改坏 —— 这类 bug 编译、安装都不报，只在运行到那一行时炸。

## 12. 产物里不许残留旧类名（`NoClassDefFoundError: Lcom/aide/ui/U;`）

**症状**（真机）：`com.aide.UI.DW` 正在跑，调到 `abcd.gj.j6` 时报
`NoClassDefFoundError: Failed resolution of: Lcom/aide/ui/U;`。

判据很干脆：**class_map 里每个被改名的探针类，产物（dex + 嵌套 jar）里就不该再出现 `L旧名;`**。
新增体检 [tools/jgit/audit/apk_refs.py](../tools/jgit/audit/apk_refs.py)，构建链放在 repack 之后、
sign 之前（`build_apk.py` 的 `apkrefs` 步）——不合格就别签，先查 dex/assets 有没有换全。

实测四份产物（同一份 mapping，740 个被改名的类）：

| 产物 | 结果 |
|---|---|
| `out/build/apk/…_sign.apk`（21:45） | ✔ 无残留，含 `Lcom/aide/UI;` |
| `out/build/apk/…src_src (2).apk`（21:43，未签） | ✔ 无残留 |
| `out/build/apk/…orig_src.apk.orig`（21:24） | ✔ 无残留 |
| 仓库根 `AIDE Pro_2.8.7-freely_ac_src.apk`（10-26，改造前的包） | ✘ 740 个旧名（它本来就没改名） |

结论：**新产物是干净的**，报错的是手机上那个旧安装包 —— 覆盖安装前先 `adb uninstall aidepro.top`，
再装 `out/build/apk/*_sign.apk`。要确认手机上装的是哪份：

```bash
adb shell pm path aidepro.top        # 拿到 base.apk 路径
adb pull <路径> /tmp/installed.apk
python3 tools/jgit/audit/apk_refs.py /tmp/installed.apk    # 期望 ✔
```
