# jobs/dropbox —— Dropbox **Android** SDK 1.6.2 + json-simple 1.1（AIDE 的 Dropbox 后端）

## 1) 一句话结论

这一簇 **49 个 `abcd/*` 类 = `com.dropbox.client2.**`（dropbox-android-sdk **1.6.2**）＋
`org.json.simple.**`（json_simple **1.1**）**，一对一全定名，成员 **0 待人工**，
参数名 **122 行**（36 个带参方法里 34 个拿全，剩 2 个见 §7）。

> ⚠️ 早期版本的本 README 把它判成 `com.dropbox.core`（dropbox-core-sdk 1.6/1.7.7/1.8.2）。
> **那是错的**，49 个类名全部指错了库。错因与纠正过程见 §6——这份文档现在的数字都是重做后的。

## 2) 依赖真相

| 项 | 值 |
|---|---|
| 库 | `com.dropbox.client2`（Dropbox **Android** SDK，不是 `com.dropbox.core`） |
| 版本 | **1.6.2**（证据链见 §4） |
| 附带库 | `org.json.simple`（json_simple **1.1**，SDK 的 JSON 依赖） |
| oracle jar | `~/out/oracle/http/dropbox-android-sdk-1.6.2.jar`（78 类）<br>`~/out/oracle/http/json_simple-1.1.jar`（12 类） |
| oracle 源码 | `~/dbxand/dropbox-android-sdk-master/src/main/java`（41 个 .java）<br>`~/out/oracle/http/js-src-1.1`（12 个 .java，json-simple 源码） |
| 下载 | `https://gh-proxy.com/https://codeload.github.com/MariusVolkhart/dropbox-android-sdk/tar.gz/refs/heads/master`（该仓库 `lib/` 里**自带官方编译好的** `dropbox-android-sdk-1.6.2.jar` + `json_simple-1.1.jar` + `android.jar`）<br>json-simple 源码：华为云 `com/googlecode/json-simple/json-simple/1.1/json-simple-1.1-sources.jar` |
| 注册位置 | `process/deob.json` → `oracle_jars`（`dropbox-android-1.6.2`、`json-simple-1.1`）+ `src_root` 两条 |

**为什么不是 Maven 上的 `dropbox-core-sdk`**：那是 `com.dropbox.core` 的新一代 SDK（1.6/1.7/1.8…），
和这份代码的类名、内部类、字段名**全都不一样**。Android SDK（`com.dropbox.client2`）2014 年后
就不在 Maven 中央仓库了，只有这种随 SDK 包发行的 jar。

## 3) 切簇

授权页写的是 `httpmime-4.0.3` / `httpcore-4.2.1`，但顺着"引用 `org/apache/http/**`"切出来的是 Dropbox SDK
（Apache HttpClient 只是它的下游）。宿主（AIDE UI/同步服务）会**反向**引用库类，所以不能用无向连通分量：

```
python3 tools/deob/component.py -p process/deob.json --prefix abcd \
    --seed-string '/files_put/' --seed-string 'parent_rev' \
    --directed \
    --prune-refs com/aide,com/s1243808733,com/blankj,com/appfour,com/google,androidx,org/eclipse/jgit
→ 50 类 / 217 方法 / 116 字段
```

切出来 50 个，其中 **`abcd/yk$h` 不属于这两个库**（常量串 `Subscription WS Client`、
`https://api.appfour.com/aideservices/sub`，字段类型是**未被混淆**的 `org/json/JSONObject`；
它不引用本簇任何类、也不被任何簇内类引用）→ 从 `classes.txt` 剔除，保持 **49 类**。

## 4) 版本锁定：1.6.2（四条独立证据）

1. **版本常量**：`abcd/Hw` 只有一个方法，直接 `return "1.6.2"` ＝ `com/dropbox/client2/SdkVersion.get()`
   （该仓库 master 的 `SdkVersion.java` 就是 `return "1.6.2";`）。
2. **双 token 会话**：`abcd/Ww` 的方法体里有 `'oauth1AccessToken' must be non-null` **和**
   `'oauth2AccessToken' must be non-null`，还有 `Bearer ` 与 `OAuth oauth_version="1.0"`。
   1.5.4（更早的镜像版）的 `AbstractSession` 只有 OAuth1，没有这两条串 → 排除 1.5.x。
3. **内部类集合**：`Ww` 的 5 个内部类逐一对应 1.6.2 的
   `DBClientConnManager / DBConnectionReuseStrategy / DBKeepAliveStrategy /
   GzipDecompressingEntity / IdleConnectionCloserThread`，外加 4 个匿名类 `$1..$4`
   （`ConnPerRoute` / `DefaultHttpClient` / `HttpRequestInterceptor` / `HttpResponseInterceptor`）。
4. **证书字节级一致**（最硬的一条）：`abcd/Iw`（`SecureSSLSocketFactory`）的
   `GetRootKeyStoreBytes1/2/3()` 三段根证书，与 1.6.2 源码里 `new byte[]{...}` 的十进制字面量
   **逐字节相等**：

   ```
   src  chunk1 len=6687 head=000000010000001421225bad   == probe DW (6687 B, 全等)
   src  chunk2 len=3589 head=391c87bab8bd7b227ff6feac   == probe FH (3589 B, 全等)
   src  chunk3 len=8156 head=0353ad9123631f169ccdb9b2   == probe Hw (8156 B, 全等)
   probe j6() = DW+FH+Hw（<clinit> 里逐段 invoke-static 拼 → sRootKeyStoreBytes）
   ```

   这条同时证明"整簇就是 1.6.2"，也把 `GetRootKeyStoreBytes/1/2/3` 四个同形方法是
   **按内容**而不是按猜测分开的（BKS 头魔数在第一段，所以 `DW`=`...Bytes1` 还能额外自证）。

## 5) 类级判据（49 条怎么定的）

工具：`classmatch --hard 1 --ints` 出候选 → `strmatch` 出常量串 Jaccard → `jvmbody` 形状/超类/内部类
→ 人工裁决。**每条都写进 `class_map.tsv` 的第三列**，这里只列"判据类型 + 代表"：

| 判据类型 | 例子 |
|---|---|
| 唯一常量串 | `Iw` = `SecureSSLSocketFactory`（`Minimal TLS version 1 support required!` / `Only strict hostname verification (default) is supported!` / `BKS`，j=0.94）<br>`Gw` = `RESTUtility`（`Params must have an even number of elements.`，j=0.89） |
| 超类 + 内部类结构 | `Ww` = `AbstractSession`（11 字段收缩成 4，5 个内部类全中，j=0.95）<br>`Ww$b/$c` = `DBConnectionReuseStrategy/DBKeepAliveStrategy`（j=1.00） |
| 枚举锚点 | `Zw$a` = `Session$AccessType`（`DROPBOX/dropbox`、`APP_FOLDER/sandbox`、`AUTO/auto`）<br>常量归属靠 `<clinit>`：`const-string "DROPBOX"` 后紧跟 `sput-object → j6` |
| 泛型签名 + 匿名类注解 | `Rw` = `jsonextract/JsonExtractor`（`public abstract` + `Signature <T:...>`）<br>`Ew` = `DropboxAPI$Entry$1`（`InnerClass` 注解 `EnclosingClass=Labcd/Dw$e`、`name=null`） |
| 返回类型细分 | `Dw$b` = `BasicUploadRequest`：`public final` + `upload()` 返回 `Entry`；<br>`ChunkedUploadRequest` 的 `upload()` 返回 `ChunkedUploadResponse`、ctor 是 `protected` → 不符 |
| 依赖关系 | `iL` = `ContainerFactory`（2 方法接口，被 `JSONParser(jL)` 引用）、`eL` = `JSONAware`（被 `dL/fL/hL` 引用） |
| JFlex/骨架串 | `lL` = `parser/Yylex`（`Error: pushback value was too large` / `Unkown internal scanner error`）<br>`kL` = `ParseException`（`at position `）、`mL` = `Yytoken` |

成员级：`members --pkg=abcd --part=dropbox --apply` 用描述符 + 引用者 + 方法体指纹对齐，
字段名/方法名/静态标记全部来自 oracle。举例：

```
abcd/Dw      SDK_VERSION / session / accountInfo / metadata / putFile / delete /
             createFolder / getFileStream / putFileRequest / getFileFromMapAsLong …
abcd/Iw      sRootKeyStoreBytes / sAllowedCipherSuites / mSSLSocketFactory / loadKeyStore /
             setSSLParameters / GetRootKeyStoreBytes{,1,2,3}
abcd/Ww      appKeyPair / oauth1AccessToken / accessType / client / sign / unlink /
             getAPIServer / getContentServer / getHttpClient / setRequestTimeout / buildOAuth1Header
abcd/Pw      server / location / reason / body / error / parsedResponse
```

## 6) 两次错，怎么错的、怎么改的

**错 1：拿 `dropbox-core-sdk` 当 oracle（1.6 / 1.7.7 / 1.8.2 三版都试过）。**
三个版本各只能收敛 12~13/50，且互相冲突 → 当时判成"AIDE 用的是 appfour 改过的老 fork，
形状漂移太大"。真实原因简单得多：**那是另一个库**（`com.dropbox.core` vs `com.dropbox.client2`），
描述符当然对不上。表现为 `members` 永远留 69 条 `no-oracle-descriptor` 消不掉——
那不是"改过的 fork"，是"oracle 选错了"。

**错 2：`jobs/aide` 早就把这 25 个类当成了 AIDE 自有 HTTP/JSON 工具。**
早先 `aide` part 把 `Ww/Zw/Dw/Gw/Sw/Tw/Uw/Vw/iL/jL` 及其内部类命名为
`abcd/aide/HttpConnectionBase`、`abcd/aide/HttpTransport`、`abcd/aide/HttpHelper`、
`abcd/aide/CollectionFactory`、`abcd/aide/JsonParser`… 证据列写的是"已确认 AIDE 自有（不属任何依赖）"。
真相是：它们是 Dropbox Android SDK 的 `AbstractSession/Session/DropboxAPI/RESTUtility/…`
和 json-simple 的 `ContainerFactory/JSONParser`，AIDE 只是**用了**它们。
纠正：从 `jobs/aide/{class_map.tsv,members.tsrg,params_manual.tsv}` 删掉这 25 类
（25 行 / 25 块 / 2 行），归本 part 用真名。改完 `validate` 从 8 处无效映射 → **✔ 0**。

教训（给下一个库）：

* **"多版本都收敛不了"先怀疑 oracle 选错了库，不要先怀疑"魔改 fork"**；
  判断办法：拿一个**唯一常量串**在候选 jar 里做 `strmatch`，j 值低于 0.5 就是别的库。
* 一个探针类**只能被一个 part 命名**。`rebuild_tsrg` 是按 part 顺序后写覆盖，表面上不报错，
  `validate` 才会以 `dup-member-target` / 参数重复的形式露出来。

## 7) 现状与门禁

```
类映射   49 / 49（全部真名，无"按作用命名"）
成员行   222（方法 113 + 字段 109），待人工 0
参数行   122（62 个带参方法里 60 个拿全）
```

门禁（全绿）：

| 检查 | 结果 |
|---|---|
| `tools/jgit/pipeline/validate_mappings.py` | ✔ 无无效映射（类块 1897 / 成员行 14629 / 参数行 8201） |
| `tools/jgit/pipeline/inherit_check.py` | CONFLICT 0 / DUPTARGET 0 / MISSING 0 |
| `tools/deob/famcheck.py --jar …dropbox-android-sdk-1.6.2.jar --parts jobs/dropbox/class_map.tsv` | 覆写族冲突 0 / 祖先未映射 0 |
| `tools/deob/innercheck.py` | ②内部/顶层错配 0、③同目标 0（①1 条是 jgit 老账 `abcd/tB$a`） |
| `tools/deob/cli.py … cover --pkg=abcd` | 方法 99.3% / 字段 97.9%（全库） |

参数名没拿全的 10 个方法，逐个交代：

* 8 个是 **dex2jar 合成器** `$d2j$hex$…$decode_{B,I,J,S}`（`Iw` 4 个、`lL` 4 个）。
  oracle 里根本不存在，也不在覆盖率分母里（`cover` 的默认口径剔合成器），
  方法名沿用 spongycastle 的先例（`decodeHexBytes/Ints/Longs/Shorts`），形参不命名。
* 2 个在 `Ww`：`buildOAuth1Header(AppKeyPair, AccessTokenPair)` 和
  `setAccessTokenPair(AccessTokenPair)`——形参类型 `Labcd/Yw;`/`Labcd/Xw;` **不在本 part 内**，
  描述符翻译不到 oracle，jar 的 LVT 和源码补全都对不上。这两个写进
  `jobs/dropbox/params_manual.tsv`，证据列直接引 1.6.2 源码行号。

## 8) 注意事项

* **文件系统大小写不敏感**（FUSE）：`abcd/kL` 的真实文件是 `kL.1.smali`，直接读
  `smali/abcd/kL.smali` 会读到**另一个类** `abcd/KL`（本目录踩过一次，白看了一屏）。
  一切路径走 `process/truth/smali_index.tsv`。
* **不要在 FUSE 里 `grep -r smali*` 全库**（3193 个文件，几十秒起步且会超时）。
  要引用者信息时，用 `usematch.py`/`refmatch.py`，或只扫本 part 的 49 个文件。
* json-simple 1.1 的接口方法名**本来就拼错**：`ContainerFactory.creatArrayContainer`
  （少一个 `e`，1.1 的已知 bug，1.1.1 才修）。`iL.j6` 映射成这个名字是**忠实于 oracle**，
  不是我们的手误——改打包时如果编译不过，请改成 `create...` 并在这里记账。
* `abcd/yk$h` 已从 `classes.txt` 剔除（appfour 自有）。给内部类贴外层名会破坏
  `InnerClasses` 属性，`innercheck` ② 会直接报错——`yk$h` 的外层 `yk` 不在本 part。

## 9) 复现命令

```
# 1) 切簇（见 §3）
# 2) 类级候选
python3 tools/deob/classmatch.py -p process/deob.json --prefix abcd \
    --oracle dropbox-android-1.6.2,json-simple-1.1 \
    --oracle-pkg com/dropbox,org/json/simple \
    --only jobs/dropbox/classes.txt --hard 1 --ints --report jobs/dropbox/out/cm
# 3) 常量串判据
python3 tools/deob/strmatch.py -p process/deob.json --prefix abcd \
    --oracle dropbox-android-1.6.2 --oracle-pkg com/dropbox \
    --only jobs/dropbox/classes.txt --min 0.2 --top 2
# 4) 成员（写 members.tsrg）
python3 tools/deob/cli.py -p process/deob.json members --pkg=abcd --part=dropbox --apply
# 5) 汇总 + 参数 + 门禁
python3 tools/jgit/pipeline/rebuild_tsrg.py
python3 tools/jgit/pipeline/validate_mappings.py
python3 tools/jgit/pipeline/inherit_check.py
python3 tools/deob/famcheck.py --jar ~/out/oracle/http/dropbox-android-sdk-1.6.2.jar \
    --parts jobs/dropbox/class_map.tsv --prefix abcd
python3 tools/deob/innercheck.py
python3 tools/deob/cli.py -p process/deob.json cover --pkg=abcd
```

## 10) 下一步

本 part 已收口。全库剩下的活（不在本目录）：

1. **Cordova/PhoneGap ~905 类**：同样要 `component.py --directed --prune-refs` 才能和
   AIDE 自己的 class-file 工具链（`rd` 229 方法、`Ba` 113 方法）切开。
2. **jgit 遗留 1 条**：`abcd/tB$a → org/eclipse/jgit/api/RebaseCommand$2$1`（14 个 oracle 版本都没这个类）。
3. **fabric `Onboarding` 的 6 个 String 字段**：6 路排列无法用现有判据区分。
4. **`abcd` 剩余 1633 个短名类未定名**（覆盖率分母不含它们）。
5. 打包装机验证（本机没有 `apksigner`/`zipalign`，建议先 `adb uninstall aidepro.top`）。
