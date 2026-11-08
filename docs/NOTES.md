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
实测坑（2026-11）：`abcd/La`（Project）在 `abcd/La.1.smali`，`abcd/fa` 在 `fa.3.smali`，`abcd/lb` 在 `lb.3.smali`；
而 `abcd/La.smali` 里装的是 `Labcd/LA;`、`ea.smali` 里装的是 `Labcd/EA;`——直接用「类名 + .smali」会读到别的类，
把判据写错。**读之前先 `head -1` 看 `.class` 行，或先查索引。**

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

## 13. assets 里那 4 个包必须是 `zip(classes.dex)`（不是 class-jar）

原包里 `assets/data/functions/{lang/en.jar, lang/zh.jar, runtime/ndk.zip, runtime/packagingservice.zip}`
**四个都是 `zip(classes.dex)`** —— 它们是运行时动态加载的 dex 包，不是编译期 classpath 的 jar。
FART 出来的是 class-jar，`step_repack` 当初直接把 jar 塞进去了，于是运行期加载不到里面的类：

```
java.lang.NoClassDefFoundError: Failed resolution of:
  Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener$Stub;
    at com.aide.ui.build.f.<clinit>
```

同时还有第二个 bug：`ASSET_MAP` 的键写成 `'en.jar'`、查找时又拼 `key + '.jar'` ⇒ 永远匹配不上，
**en/zh 两个包其实一直没被换**（只是碰巧保住了原来的 dex，所以没炸）。

修法（`build_apk.py`）：

| 步 | 做什么 |
|---|---|
| `assetdex`（新增，`dex` 之后） | 把 `out/build/renamed/<key>.jar` 各自 **D8** 成 `out/build/assetdex/<key>/classes.dex`，再打成 `out/build/assetdex/<key>.zip`（zip 里只有 classes.dex） |
| `repack` | 资产条目改用上面那个 zip，并**断言底包条目本来就是 `zip(classes.dex)`**，格式不对就中止 |
| `apkrefs` | 顺带检查 `assets/data/functions/**` 下每个 jar/zip 是不是 `zip(classes.dex)` |

`ASSET_MAP` 的键改成裸名（`en` / `zh` / `ndk` / `packagingservice`），值仍是 APK 里的条目名。

体检复现（当前那份签名包）：

```
✘ assets 格式不对（原包都是 zip(classes.dex)，不能换成 class-jar）：
   assets/data/functions/runtime/ndk.zip              是 class-jar
   assets/data/functions/runtime/packagingservice.zip 是 class-jar
```

## 14. assets 的 4 个 bundle **不要改名**（真机 `NoClassDefFoundError: Labcd/wu;`）

真机：`com.aide.UI.<init>` → `abcd.Kj.<clinit>` → 解析 `Labcd/wu;` 失败。

查下去是两层问题：

1. `process/src/{en,zh,ndk,packagingservice}.jar` 是**陈旧产物**（只有 11/10/19/11 个类），
   里面 `abcd/Kj` 引用的 `abcd/wu` 在**本 APK 的任何 dex 里都不存在**（原包里也没有）。
   拿它们当 FART 输入再 D8 回填，等于把资产包从 241 个类砍到 11 个 ⇒ 运行期找不到类。
2. 这些 bundle 在原包里只引用了**一个**被改名的类：`com/aide/ui/U`（en/zh 各一处；
   ndk/packagingservice 是 0 处）。而那条 `com/aide/ui/U → com/aide/UI` 正是我当初
   "回迁远程老提交 `MappingFix`"时标注过**未经证实**的那条（远程那批 probe 类在当前 APK 里
   根本不存在，只有 `nj` 和 `com/aide/ui/U` 在）。

处置（放弃"把 bundle 也还原"这个不划算的目标）：

| 动作 | 原因 |
|---|---|
| **撤销** `com/aide/ui/U → com/aide/UI`（连同它的成员行 `Hw ()[Labcd/IProject;`） | 它是唯一把 app 命名空间和 bundle 绑在一起的点；撤销后 bundle 侧 **0 处**引用被改名类 |
| `step_fart` **不再改名** 4 个 bundle | 改了也读不懂（它们是语言/运行时数据包），还要为它准备正确的输入 —— 风险大、收益 0 |
| `step_repack` 对这 4 个条目**原样照抄底包的 dex** | 底包（`src/…apk`）里的它们本来就是 `zip(classes.dex)`，跟原包一致 |
| 删掉 `assetdex` 步 | 不再需要把 jar 转 dex |

`apk_refs` 仍会检查 4 个条目的格式（必须 `zip(classes.dex)`），所以"抄错格式"也会被拦。

> 教训：**资产 bundle 是运行期 dex 包，不是编译期 classpath**。它们的内部 `abcd/*` 名字
> 不影响 app 的可读性，把它们塞进同一张 mapping 只会制造命名空间撞车。

## 15. 输入基准 = `src/` smali 树（assets bundle 也从树里同步）

**约定（最终版）**：

| 东西 | 来源 |
|---|---|
| 类/成员映射（真相） | `jobs/<依赖>/` 三张表 |
| FART 输入（`classes*.jar`） | `process/src/classes{,2,3,4,5}.jar`（dex2jar 产物），FART 只吃合并后的 `merged` |
| **assets 的 4 个 bundle（工具侧）** | `src/assets/data/functions/**` 里的 `classes.dex` → **dex2jar** → `process/src/<key>.jar`（class jar，`sync_assets`） |
| **assets 回填 APK** | 仍是树里那个原始 **`zip(classes.dex)`**（`step_repack` 直接读 `src/assets/...`） |
| 回填底包 | `src/AIDE Pro_2.8.7-freely_ac_src_src (2).apk`（树打出来的包） |

```bash
python3 tools/build/build_apk.py sync_assets
#   src/assets/.../lang/en.jar!classes.dex        → process/src/en.jar        （12 类）
#   src/assets/.../lang/zh.jar!classes.dex        → process/src/zh.jar        （12 类）
#   src/assets/.../runtime/ndk.zip!classes.dex    → process/src/ndk.jar       （10 类）
#   src/assets/.../runtime/packagingservice.zip!classes.dex → process/src/packagingservice.jar（19 类）
```

两边格式不同是**故意的**：工具吃 class jar，APK 要 dex-zip。

四个 bundle 都是 `zip(classes.dex)`（12 / 12 / 10 / 19 类），打包时按字节回填，
不参与改名 —— 它们是**运行期动态加载的 dex 包**，内部 `abcd/*` 名字对可读性没有意义。

之前那套"`process/src/*.jar` 和某个 APK 的 dex 逐对对齐"（`align_src.py`）已删除：
基准不是某个 APK，而是 `src/` 这棵树本身；树木身就是自洽的，不需要再跟别的包比。

> 历史教训（保留记录）：`process/src/{en,zh,ndk,packagingservice}.jar` 曾经是**另一个
> AIDE 构建**的 dex2jar 产物（`packagingservice/{b,e,e$a,f,…}` 这些类名在本包根本不存在），
> 拿它回填会把资产包从 241 个类砍到 11 个 ⇒ 真机 `NoClassDefFoundError: Labcd/wu;`。

## 16. `src/` 是**大小写不敏感**的 FUSE：文件名不可信，一切看 `.class` 行

`/storage/emulated/0/...` 落在 FUSE 上，`abcd/Kj.smali` 和 `abcd/KJ.smali` 是同一个文件，
apktool 写第二份时会覆盖第一份（碰撞的那份会带 `.1`/`.2` 后缀，但**后缀不保证谁是原主**）。
症状与判据：

- `ls smali/abcd | grep '^Kj'` 只有 `Kj$a..$e`，但 dex/jar 里根本没有 `Labcd/Kj;`
  —— 这不是"魔改作者删了类"，而是 `Labcd/KJ;`（大写）覆盖了它，`Kj` 的 smali 丢了。
- 反过来 `gj.smali` 里装的是 `Labcd/GJ;`（jsch 的 ChannelSftp 包装），`Labcd/gj;` 也在覆盖中丢失。

**规则**：任何按文件名做的分析都先读第一行 `.class L...;` 核对；`tools/deob/enumfields.py`
就是这么找文件的（`find_smali()` 按内容匹配）。**构建不受影响**：FART 是在 dex 上改名，
不重新汇编 `src/`，所以丢 smali 只影响"读码证据"，不会让产物缺类。

## 17. 同一份 dx 有两个副本：`com/a**` 与 `abcd/*`，只能给一份真名

`abcd/nt$a`、`abcd/wp`、`abcd/mq` 的枚举常量集与 dx 1.16 的 `Optimizer$OptionalStep` /
`ItemType` / `IndexType` **完全相同**（`tools/deob/enumsearch.py` 用常量名反查得到）。
但 `jobs/dx` 已经把 `com/a/b/...` 那批映射到这些真名，再撞就是 `rebuild_tsrg` 中止，
所以 `abcd` 这一份**保持混淆名**（记在 `jobs/dx/README.md` 的"双副本"小节）。
同理 `abcd/Ht$a` = dx `LivenessAnalyzer$NextFunction`，`abcd/nt` = dx `Optimizer`。

## 18. `pkgclose` 的「需要挪的类」会随改名增长，不是回归

把 AIDE 自有类搬进 `abcd/aide/**` / `com/aide/**` 之后，它们的**包私有协作者**还留在
`abcd`，于是 `pkgclose` 会列出一条"建议一起挪"。这不是新 bug：

- 判定性的门是 `真冲突`（同一分量里多个固定包，挪包也解决不了），目前 18 组，全是
  上游库本来就这样（proguard/spongycastle/jsch 的子包互访）；
- 跨包访问由构建链 `widen_access --apply` 放宽成 public 兜底；
- 「需要挪」清单是**下一轮该命名的协作者名单**，不是必须清零的门。

## 19. 包里那套 `com/sun/tools/javac` 是**真类**，不是被混淆的引擎

`com/sun/tools/javac/**`（300+ 类，含 `parser/Scanner`、`tree/JCTree`、`jvm/ClassWriter`…）
在 APK 里名称完好，引用者是 `com/google/googlejavaformat/**`（google-java-format 依赖 JDK 编译器树），
和 AIDE 自己的 `abcd/**` 引擎**没有调用关系**。

所以：**不要**拿 javac 的类名去套 `abcd/Sa|Ya|Yb|_b` 这一族（曾据此怀疑 `Sa`=Scanner，
实测 `Sa.j6([CII)` 是 `System.arraycopy` 填缓冲、`toString` 里 new 了 `Ta` 再调
`j6(StringBuffer,String,Ta,I)` ⇒ 更像"源文本/区间"模型而不是词法器）。AIDE 引擎这一族没有 oracle，
只能按方法形状+调用点定作用名，判不出来就留原名（NAMING §3.4）。

## 20. assets 的 4 个 bundle 现在也过 FART（`assetdex` 步）

§14 说的"bundle 不要改名"是当时的**权宜**：不改名 ⇒ 主 dex 里被 bundle 引用的类/成员
就不能改名，`assetcheck` 会报红（曾累积 39 条，涉及 `abcd/Ea|la|na|pa|GA|Ek|Hd|Nk|Wi|Zk|ck`、
`com/aide/ui/build/android/I`、`ApplicationUtils.j6`）。现在改成**两边一起改**：

```
zip(classes.dex) --dex2jar--> x.jar --FART(map=out/build/mappings.tiny, --lib merged_pub.jar)--> x-ren.jar --D8--> classes.dex
```

- 必须把 `out/build/merged_pub.jar` 当 `--lib` 传给 FART，否则 bundle 里引用的
  `com/aide/common/AIDELog` / `abcd/GA` 之类会 "Can't Find Class" 直接 rc=1（packagingservice 踩过）。
- 映射表必须是**新生成的** `--comments=none` 版；拿旧的 `out/build/mappings.tiny` 测会出现
  "`abcd/Ea` 还在、`FileManager` 没有"的假象（表里根本没这条）。
- D8 那一步没在本机跑过（打包验证归用户），失败时 `--allow-fail` 回落原 bundle。

## 21. `com/aide/engine/X` 与 `com/aide/engine/service/X` **同短名不同物**

`com/aide/engine/` 与 `com/aide/engine/service/` 下都有 `m/o/p/q/r/s/t/u/v/w`，但完全是两类东西：

| 短名 | `com/aide/engine/X` | `com/aide/engine/service/X` |
|---|---|---|
| `m` | **枚举** HighlightingKind（PLAIN/KEYWORD/…） | **AIDL 接口** IBuildListener（DESCRIPTOR 里有真名） |
| `u` | 表达式节点 FieldAccess（`toString` 拼 `.length`） | AIDL 接口 IOpenFileInterface |
| `w` | 表达式节点 Literal（`toString` 拼 `null`） | AIDL 接口 IUsageSearcherListener |

按 `.split('/')[-1]` 做统计会**把两类混在一起**（我就据此把 `u`/`w` 误当成回调接口，
被 `validate_mappings` 的 `dup-class-source` 当场拦住）。**规则：拼目标名时必须用全限定名。**

另外：`javap -p -c -cp process/base/merged_ok.jar <fqcn>` 在本机可用，读 `ldc` 常量
（比如枚举常量名、AIDL DESCRIPTOR）比自写解码器快得多——它是这套"类文件是 dex2jar 产物"
场景下最好用的只读工具。

## 21. AIDE+ 2.3.5：设备上现成的「同源未混淆」oracle

`/storage/emulated/0/Download/AIDE-Plus-2.3.5.0-alpha03-2026-10-22-io.github.zeroaicy.aide.apk`
这个构建（本机就有）和我们的 AIDE Pro 2.8.7 是同一套代码的两个版本，但它 **没混淆**：

- `com/aide/codemodel/**` 共 **205 类全部是真名**，包括 `api/callback/` 的 12 个回调、
  `api/collections/` 的 `MapOfIntInt/MapOfInt/ListOfInt/ArrayOf/SetOfInt…`、
  `api/abstraction/` 的 `Language/CodeAnalyzer/Syntax/CodeRenderer/CodeModel/TypeSystem…`；
- `com/aide/engine/**` 也留了大半：`Engine$DaemonTask$<Xxx>Callback`、`ICodeModelsFactory`、
  `SourceEntity`/`SyntaxError`/`Modification`/`FindResult`/`StyleSpan`/`SyntaxStyleType`。

**取用方式**（一次性，产物留在 `~/out/oracle/aide-plus/`）：

```bash
mkdir -p ~/tmp/aideplus && cd ~/tmp/aideplus
unzip -o -q "/storage/emulated/0/Download/AIDE-Plus-2.3.5.0-alpha03-*.apk" 'classes*.dex'
CP=$(ls /storage/emulated/0/MyAIDEProEnchanted/process/dex2jar/*.jar | tr '\n' ':')
java -Xmx1200m -cp "$CP" com.googlecode.dex2jar.tools.Dex2jarCmd --force \
     -o ~/out/oracle/aide-plus/aide-plus-2.3.5-engine.jar classes10.dex
```

引擎相关的类都在 **classes10.dex**（121 个 `com/aide/engine` 类）。

**比对方式**：`tools/deob/xshape.py`（按「方法数 + 类型映射后的参数形状集合」打分，
映射表 `tools/deob/xshape_map.tsv` 可增量补）：

```bash
python3 tools/deob/xshape.py --oracle ~/out/oracle/aide-plus/aide-plus-2.3.5-engine.jar \
    --ours abcd/gb abcd/Za --cand com.aide.codemodel.api.callback.OpenFileCallback \
    com.aide.codemodel.api.Variable
# abcd/gb  n=5 -> OpenFileCallback(1.00/5)
# abcd/Za  n=9 -> Variable(0.89/8)
```

注意：**方法数相同**是先决条件；版本差会让个别类多/少一两个方法（例如 `db` 10 : `HighlighterCallback` 11），
这时看形状集合的命中数（`db` 命中 32）而不是要求 1.00。

已据此改名的：12 个桥接口 → `com/aide/codemodel/api/callback/*`；核心类型
`La→Model / Da→FileEntry / Aa→Entity / Za→Variable / na→Language / ga→CodeAnalyzer / Wa→SyntaxTreeStyles`。
