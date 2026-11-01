# jobs/zipsigner —— kellinwood zipsigner / zipio / logging（APK 签名链路）

## 1) 这一簇怎么切

`abcd/GA` 的常量串是 `^META-INF/(.*)[.](SF|RSA|DSA)$` + `auto-testkey`（ZipSigner 的自动测试密钥），
从它出发在 `abcd/**` 内做无向连通分量：

```
python3 tools/deob/component.py --jar process/base/merged_ok.jar --prefix abcd \
    --seed abcd/GA --out jobs/zipsigner/classes.txt
→ 切出 23 类 / 146 方法 / 93 字段（外加真名包里的 `kellinwood/sigblock/a`，合计 24 类）
```

簇内 23 类正好是三块：`kellinwood.zipio`（ZipInput/ZipOutput/ZioEntry/…）、
`kellinwood.security.zipsigner`（ZipSigner/KeySet/ZipSignature/Base64/…）、
`kellinwood.logging`（Logger/LogManager/NullLoggerFactory/…）。
`kellinwood/sigblock/*` 在包里本来就是真名，只有 `sigblock/a` 一个例外（已定名，见 §4 末）。

## 2) oracle 是自己编的（Maven 上没有）

`zipsigner` / `zipio` 不在 Maven（`search.maven.org` 0 命中）。唯一来源是 GitHub
`kellinwood/zip-signer`：仓库里 `zipsigner-lib` / `zipio-lib` / `kellinwood-logging-lib`
三个模块的源码，用本机 javac 编成对照 jar：

```
上游：https://codeload.github.com/kellinwood/zip-signer/tar.gz/refs/heads/master
编译：javac -nowarn -d ~/tmp/zscls @<(find kellinwood-logging-lib/src/main/java \
        zipio-lib/src/main/java zipsigner-lib/src/main/java -name '*.java')
      → 32 个 class → ~/out/oracle/zipsigner/zs-all.jar（label `zs-1.11`）
```

**注意版本漂移**：APK 里是 `zipsigner-lib-1.11` / `zipio-lib-1.6`，仓库是 master（更新）。
所以形状只能当"近似 oracle"用，最后一行一行的判据见下。

## 3) 结果

- **24 / 24 类**、（方法/字段/参数）**0 待人工**
- 方法 108 行改名（其余是"名字本来就没被混淆"的 identity）、字段 94/94、参数 94 行
- 逐成员复核（扣掉 `<init>` 与 synthetic）后**漏 0 条**
- 门禁：`validate ✔`、`inherit 0/0/0`、`famcheck 冲突 0 / 祖先未映射 0`、`innercheck ②0 ③0`

## 4) 判据（`class_map.tsv` 第三列 / `functional.tsv`）

| 类 | 结论 | 判据 |
|---|---|---|
| `GA` | `ZipSigner` | 串 `auto-testkey`/`META-INF.*(SF\|RSA\|DSA)` |
| `GA$a` | `ZipSigner$AutoKeyObservable` | shape 1.000 |
| `IA` / `NA` / `JA` / `KA` | `ZioEntry` / `ZipOutput` / `ZioEntryInputStream` / `ZioEntryOutputStream` | 字段类型 + 串（`Version made by: 0x%04x` 等）|
| `MA` | `ZipListingHelper` | 串 `" Length   Method    Size  Ratio …CRC-32    Name"` 唯一 |
| `uA` / `tA` / `vA` / `wA` / `sA` | `LogManager` / `Logger` / `NullLoggerFactory$1` / `NullLoggerFactory` / `LoggerFactory` | 静态 Map + static getLogger(String)Logger；NullLoggerFactory 构造匿名子类 |
| `AA` | `HexEncoder` | 被 `HexDumpEncoder` new 出来并调 `encode([B,II,OutputStream)` |
| `yA` | `Base64` | 串 `android.util.Base64` / `org.bouncycastle.util.encoders.Base64Encoder` |

几个"同形组"是怎么拆的：

- **`IA` 的两个 `S` 字段**（9 个同描述符候选）：用 **`doRead` 里的字段读取顺序**对齐——
  `…compressedSize, size, [diskNumberStart], [internalAttributes], externalAttributes…`，
  两侧十几个已定名锚点逐项一致 → `XL`=diskNumberStart、`aM`=internalAttributes。
  （"同一方法体内的指令顺序"是可靠的，**成员声明顺序不可靠**——见 spongycastle 的教训。）
- **`tA`/`vA` 的 4 个 `(String)V` 日志方法**：靠**调用点的常量串**回到源码确认级别——
  `"Signature Decrypted: \n"` 在源码里是 `log.debug` → `DW`=debug；
  `"signapk: Password for private key may be bad."` 是 `log.error` → `j6`=error；
  剩下 `FH`=warn（四个级别里已定三个）。
- **`yA.j6`/`yA.FH`**：`<clinit>` 里 `Class.forName("android.util.Base64").getMethod("encode")`
  → `aEncodeMethod`；`...Base64Encoder").getMethod("encode")` → `bEncodeMethod`。
  （membermatch 原本把 `FH` 判成 `aEncodeMethod`，与 `j6` 撞名，被这里纠正。）

## 5) 两个特例（都已处理）

- `kellinwood/sigblock/a`（真名包里的混淆名，1 个类）**已定名**：
  它 `implements abcd/vP`（=`operator/ContentSigner`）且只有 `byte[]` + 三个 getter，
  上游 sigblock 里没有对应类 → 按作用命名 `kellinwood/sigblock/SignatureContentSigner`，
  成员 `getAlgorithmIdentifier`/`getSignature`/`getOutputStream`/`signature`。
- `GA` 的 `j6([B[B X509Certificate OutputStream)V`：**AIDE 改过签名**（1.11 源码里没有这个 4 参方法），
  按作用命名为 `signZipData`，记在 `functional.tsv`。

## 6) 复现

```
python3 tools/deob/component.py --jar process/base/merged_ok.jar --prefix abcd --seed abcd/GA \
    --out jobs/zipsigner/classes.txt
python3 tools/deob/classmatch.py -p process/deob.json --prefix abcd \
    --only jobs/zipsigner/classes.txt --oracle zs-1.11 --oracle-pkg kellinwood --ints
python3 tools/deob/refmatch.py -p process/deob.json --prefix abcd --oracle zs-1.11 \
    --oracle-pkg kellinwood --map jobs/zipsigner/class_map.tsv --oneway
python3 tools/deob/cli.py -p process/deob.json members --pkg=abcd --part=zipsigner --apply
python3 tools/jgit/pipeline/paramfill.py --write     # 源码在 src_root 里，走"源码补全"分支
```
