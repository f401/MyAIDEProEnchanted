# AIDE Pro 2.8.7（freely）里到底有哪些第三方依赖

统计方法（可重跑）：

```bash
# 1) 真实包名（没被混淆的）→ 直接数类
python3 - <<'EOF'
import zipfile,collections
z=zipfile.ZipFile('process/base/merged_ok.jar')
n=[x[:-6] for x in z.namelist() if x.endswith('.class')]
print(collections.Counter('/'.join(c.split('/')[:2]) for c in n if '/' in c).most_common(40))
EOF
# 2) 被混淆进 abcd/ 的库 → 看它们引用的真实包（tools/deob/cluster.py）
python3 tools/deob/cluster.py --jar process/base/merged_ok.jar --prefix abcd \
    --done jobs/jgit/class_map.tsv jobs/jsch/class_map.tsv jobs/aide/class_map.tsv
```

## 一、结论先说

| 结论 | 证据 |
|---|---|
| **包里没有 ECJ** | 全 dex 搜 `org.eclipse.jdt.internal.compiler`、`Eclipse Compiler for Java`、`ProblemReporter`、ECJ 报错串 `must implement the inherited abstract method` → **0 命中**；`org/eclipse/` 下只有 jgit 的 2 个类 |
| **真正的编译器是 javac（OpenJDK）** | `com/sun/tools/javac` **623 类** + `com/sun/source` 68 类，且**成员名是完好的**（`attribClassBody`/`checkDirectory`/`addVars`…），不需要还原 |
| 需要还原的第三方**已经全部还原完** | jgit 685 / jsch 141 / dx 448 / crashlytics 176 / fabric 64（见 `jobs/`） |
| 剩下的 1983 个 `abcd/*` 类基本是 **AIDE 自有代码** | 1581 类不引用任何真实包（只互相引用），273 类只引用 `com/aide/**`；其余零散 30 个是胶水类 |

> 所以 AIDE 若"外接 ECJ"，那是**运行期拿到**的（下载/用户自备），不在这个 APK 里。

## 二、包里没被混淆的第三方（类名+成员名都完好，无需还原）

| 库 | 包 | 类数 |
|---|---|---|
| Google Play services / Firebase | `com/google/android` | 3024 |
| Guava | `com/google/common` | 1885 |
| **Ant**（AIDE 的构建后端） | `org/apache/tools` | 1654 |
| AndroidX | `androidx/**` | 1042 |
| **javac（OpenJDK）** | `com/sun/tools` + `com/sun/source` | 623 + 68 |
| Commons（io/net/lang…） | `org/apache/commons` | 673 |
| **Groovy** | `org/codehaus/groovy` | 489 |
| 百度统计 | `com/baidu/mobstat` | 380 |
| Glide | `com/bumptech/glide` | 395 |
| Blankj utilcode | `com/blankj/utilcode` | 268 |
| ANTLR 3 + Groovy 遮蔽版 | `org/antlr` + `groovyjarjarantlr` | 220 + 224 |
| OkHttp / Okio | `okhttp3` / `okio` | 215 / 46 |
| Termux（终端集成） | `com/termux` | 197 |
| dom4j / xUtils / ASM | `org/dom4j` / `org/xutils` / `org/objectweb` | 190 / 190 / 166 |
| JSch | `com/jcraft` | 147 |
| google-java-format（代码格式化） | `com/google/googlejavaformat` | 141 |
| megatronking（svg 支持）/ tinypinyin | `com/github/megatronking` / `com/github/promeg` | 116 / 14 |
| ouya-api | `tv/ouya` | 42 |
| Backbone（框架本体） | `com/appfour` | 54 |
| Gson | `com/google/gson` | 180 |

## 三、被混淆、且**已经还原**的第三方

| 库 | 还原规模 | 判据目录 |
|---|---|---|
| Eclipse JGit | 685 类 | `jobs/jgit/` |
| JSch 0.1.51 | 141 类（只有成员被改名） | `jobs/jsch/` |
| dx 1.16 世系 | 448 类 | `jobs/dx/` |
| crashlytics-core/answers/beta + crashlytics 2.9.9 | 176 类 | `jobs/crashlytics/` |
| fabric 1.4.8 | 64 类 | `jobs/fabric/` |
| 死代码 `com.s1243808733.android.{dx,dex}` | 673 类（D8 产物，引用 0 次） | 不还原，见 NOTES |

## 四、被混淆、但**没有可用 oracle** 的第三方胶水（只有 ~30 个类）

Backbone 相关 7 个（实现 `DefineHook`/`DefineAnalytics`/`EventData` 等，框架本体在
`com/appfour/backbone/api/**` 是真名）；另有零散引用 `org/json`(4)、`org/w3c/dom`(3)、
`org/apache/http`(3)、`tv/ouya`(4)、GMS(11)、javax(10)。

> `com.appfour:backbone` 在 Maven Central / 华为云 / jitpack **都取不到**
> （Maven 404、jitpack 401、GitHub repo 404），所以这 7 个只能按作用命名。

## 五、所以"下一个部分"是什么

可还原的第三方已经清零，剩下的 1983 个类都是 AIDE 自有代码 → 只能"按作用命名"，
按业务子系统分批（清单见 [jobs/README.md](../jobs/README.md)）：

**引擎接入层（28 类 / 652 方法）** → 编译/诊断（18/624）→ 运行调试 probe（21/447）
→ Trainer(9/347) → IAP(20/317) → SCM(18/227) → UI(117/1372) → 无特征串核心(~1700)。

---

## 六、按 AIDE 授权页逐条核对（2026-11 实测）

授权页（`src/assets/license.html` 只有 GPL 正文；条目来自 AIDE 官网/应用内"关于"页）→ 包内实况：

| 授权页条目 | 包内实况 | 类数 | oracle |
|---|---|---|---|
| `aidl` / `aapt` / `android.jar` / `annotations.jar` / `framework.aidl` | `assets/`：`android.jar.jet`(5282 类)、`annotations.jar`、`framework.aidl`、`adrt/*.class` | — | 无需还原（是 AOSP 二进制/数据） |
| `dx tool` | `com/a/**`（已还原 448 类）+ `assets/runtime/d8.apk` | 448 ✓ | 已完成 |
| **kellinwood-logging-android-1.3 / -lib-1.0 / zipsigner-lib-1.11 / zipio-lib-1.6** | **混淆在 abcd**：以 `abcd/GA`(ZipSigner：`auto-testkey`、`^META-INF/(.*)[.](SF\|RSA\|DSA)$`) 为核的连通簇 **23 类 / 146 方法**；只有 `kellinwood/sigblock/*` 2 个类是真名 | 23 → **已做 23/23** | ✅ Maven 无 → 用 GitHub `kellinwood/zip-signer` 的源码 javac 自编 oracle（`zs-all.jar`，32 类），见 [jobs/zipsigner/README.md](../jobs/zipsigner/README.md) |
| `json_simple-1.1` | **包内没有**（`json_simple`/`JSONValue` 0 命中）；实际用的是 `org/json2/**`（真名，含 `HTTP`/`CookieList`/`CDL`） | 27 | 已真名，无需还原 |
| `httpmime-4.0.3` / `httpcore-4.2.1` | `org/apache/http` 没有真名类，19 个 abcd 类引用它；顺着切出来的是 **Dropbox SDK**（`/files_put/`、`parent_rev`、`dropbox.com`），Apache 只是它的下游依赖 | 50 | ✅ dropbox-core-sdk 1.6/1.7.7/1.8.2 + httpclient/core 4.2.1 已下；但 APK 是改过的老 fork，形状漂移大 → 见 [jobs/dropbox/README.md](../jobs/dropbox/README.md) |
| `android-support-v4.jar` | `android/support/**` 21 类（真名）；主体已被 AndroidX（1042 类）取代 | 21 | 真名 |
| **Zip4j 1.3.1（改）** | **包内没有**（`net/lingala`/`zip4j` 0 命中） | 0 | Maven 有 ✓（但未使用） |
| **PhoneGap / Apache Cordova** | 以 `abcd/rj`（串 `/.cordova`、`com.aide.phonegap`、`.html`）为核的连通簇 **905 类 / 8957 方法**，与 AIDE 自己的 class-file 工具链缠在一起（`rd` 229 方法含 `Synthetic`/`RuntimeVisibleAnnotations`、`Ba` 113 方法含 `Corrupted file`）→ 需先切分 | ~905 | 老 3.x 无 Maven（只有 14/15） |
| `tetris-blast-sd` / `Libgdx` | **包内没有**（`badlogic`/`gdx` 0 命中） | 0 | — |
| `org.eclipse.jgit-1.3.0` | 实际是**魔改混合版**（对 3.7.1/4.x/5.x 多版本回归） | 685 ✓ | 已完成 |
| `jsch-0.1.46` | 实际 **0.1.51** | 141 ✓ | 已完成 |
| **spongycastle（部分）** | `org/spongycastle/**` 14 类真名 + 以 `abcd/pP`（串 `BouncyCastle Security Provider v1.47`）为核的连通簇 **257 类 / 1335 方法** | 257 | `com.madgag.spongycastle:core`：**1.50.0.0 起才有**，1.47 无 Maven |
| JKS keystore（Casey Marshall） | AIDE 把 `sun.*` 重打包成 `sun1/**`：121 类（真名） | 121 | JDK 内，无需还原 |
| HTML DTDs | `src/assets/dtds/` ✓ | — | — |
| NDK 示例模板 | `src/assets/templates/*.zip` ✓ | — | — |
| Alternative Git Logo | `src/assets/` 图形 | — | — |

### 由此多出来的三个"可还原"部分

| 部分 | 类 | 方法 | oracle 状态 | 建议 |
|---|---|---|---|---|
| **SpongyCastle（crypto）** | 257 | 1335 | **已解决**：SpongyCastle 就是 BouncyCastle 换包名，直接下官方 `bcprov-jdk15on-1.47` + `bcpkix-jdk15on-1.47`（华为云镜像有）当**同版本** oracle | ✅ 已做 253/257，见 [jobs/spongycastle/README.md](../jobs/spongycastle/README.md) |
| zipsigner + zipio + kellinwood | 23 | 146 | Maven 无，只有 GitHub 源码 | 小但关键（APK 签名链路），可从源码 javac 出对照 jar |
| Cordova/PhoneGap | ~905 | 8957 | 老 3.x 无 Maven | 体量最大，但要先把它和 AIDE 自己的 class-file 工具链切开 |
| httpcore/httpmime | ~26 引用方 | — | Maven ✓ | 可并入任一轮一起做 |
