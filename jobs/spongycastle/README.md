# jobs/spongycastle —— SpongyCastle（BouncyCastle 1.47 再打包）类名还原

## 1) 这一簇是怎么切出来的

`abcd/pP` 的常量串是 `BouncyCastle Security Provider v1.47`，是整簇的锚点。
从它出发在 `abcd/**` 内做**无向连通分量**（只在探针前缀内走边，不顺着"引用宿主"的边爬出去）：

```
python3 tools/deob/component.py --jar process/base/merged_ok.jar --prefix abcd \
    --seed abcd/pP --out jobs/spongycastle/classes.txt --detail ~/tmp/sc.detail.tsv
→ 切出 257 类，方法 1335，字段 1114；对外引用真实包：0（几乎闭合）
```

"闭合"这件事本身就是判据：这 257 个类只互相引用 + 引用 JDK，说明它们确实是同一个库的一块，
不是把 AIDE 自己的代码裹进来。对外只有 3 个入口（都不在这 257 里）：

| 入口 | 引用方式 |
|---|---|
| `com/jcraft/jsch/jce/DH` | `new abcd/pP()` 注册 BC provider（DH 密钥协商） |
| `kellinwood/sigblock/SignatureBlockWriter` | 同上（APK 签名链路） |
| `org/spongycastle/jcajce/provider/**`（14 个真名类） | 也引用 `abcd/pP` |

所以这一簇就是 AIDE 为了给 **jsch 的 DH** 和 **zipsigner 的 PKCS#1 签名**兜底而带进来的 BC 子集。

## 2) oracle 用的是**同版本官方 jar**

SpongyCastle 就是把 BouncyCastle 换个包名重新打包，所以不需要去凑 1.50：

```
~/out/oracle/spongycastle/bcprov-jdk15on-1.47.jar   (1997327 B)
~/out/oracle/spongycastle/bcpkix-jdk15on-1.47.jar   ( 515071 B)
   → 合并成 bc-all-1.47.jar（2160 类，org/bouncycastle/**）
```

镜像 `https://repo.huaweicloud.com/repository/maven`（Maven Central 上 Fabric 系与部分 BC 版本 404）。
另备 `sc-all-1.50.jar`（SpongyCastle 1.50 core+prov+pkix）只作版本差异参照，不参与定名。

## 3) 关键事实：APK 侧被 **ProGuard 收缩**过

探针的成员是 oracle 的**子集**，不是相等：

| 类 | oracle | APK |
|---|---|---|
| `org/bouncycastle/crypto/util/Pack` | 13 方法 | 6 方法（只剩 bigEndian 那组）|
| `org/bouncycastle/util/Arrays` | 15 方法 | 5 方法 |
| `org/bouncycastle/asn1/ASN1OctetString` | 13 方法 | 10 方法（缺 `encode`/`parser`/`getInstance(Tagged,boolean)`）|

所以所有匹配都要用**包含**（探针 ⊆ oracle），不能用相等；`classmatch` 的候选桶也改成了
非对称窗口（允许 oracle 更大），否则 `Pack` 那种 13→6 的类根本框不到。

## 4) 判据分级（`class_map.tsv` 第三列写的就是用了哪一条）

| 前缀 | 判据 | 例 |
|---|---|---|
| `tag:` | `encode()` 里写出的 ASN.1 tag 常量（`const/16 v0, 0xc` 后 `invoke (I[B)V`）| `AM`=DERUTF8String(0x0c)、`CM`=DERVisibleString(0x1a)、`sM`=DERPrintableString(0x13) |
| `str:` | 常量串集合 Jaccard 唯一 | `PP`=BigIntegers("'min' may not be greater than 'max'")、`NN`=X509ObjectIdentifiers(0.94) |
| `impl:` | 实现者集合唯一（接口专用）| `BL`=ASN1OctetStringParser｛ASN1OctetString,BER/DEROctetStringParser｝|
| `shape:` | 成员描述符/字段类型/超类的**包含**关系在 2160 类里唯一 | `MN`=X509NameEntryConverter（全 jar 唯一单方法）|
| 引用者 | 引用者 + 被引成员描述符 | `EP`=RuntimeOperatorException（`JcaContentSignerBuilder$1` 用 (String,Throwable) 构造）|

字符串证据必须是 Jaccard（`|A∩B|/|A∪B|`）。旧的 `|A∩B|/min(|A|,|B|)` 会让"很小的子集"也拿 1.0，
OID 常量表就是这么被换错的（`NN` 一度落到 `ISISMTTObjectIdentifiers`，j=0.00）。

## 5) 当前结果

- **253 / 257 已定名**（类块已进 `process/mappings.txt`，全库类块 1844）
- 门禁：`validate ✔ 无无效映射`、`inherit 0/0/0`、`famcheck 冲突 0 / 祖先未映射 0`、
  `innercheck ②0 ③0`（①1 条是 jgit 的老遗留）
- 目标全都在 oracle 里存在、与包内已有类名 0 撞名、与其它 part 目标 0 撞名
- `refmatch --oneway` 残留 41 条（探针引用了候选没有的类型），逐条都指向某个还需要修的枢纽类

### 还没定的 4 个（`VM` / `eP` / `kP` / `sP`）

都是"形状同族 + 引用者证据被上游错映射污染"的情况，宁缺勿错，先留着（它们仍是 `abcd/*`）：

| 探针 | 形状 | 卡在哪 |
|---|---|---|
| `VM` | `ASN1Object` 子类，2 字段，`<init>(x)` + `toASN1Primitive()` | 唯一引用者 `SignerInfoGeneratorBuilder` 与字段类型都还指向未定名类 |
| `eP` | 2 个 static `([…])[B` 方法 + 串 `DER` | 参数类型落在未定名类上，形状在 BC 里不唯一 |
| `kP` | `extends AlgorithmProvider`，只有 `<init>()`，无串、**无人引用** | 28 个 `*$Mappings` 同形；没有任何可分辨证据 |
| `sP` | 16×static String + String[] + 1 个对象字段 | 只被一个（可能错映射的）类读 |

## 6) 下一步

1. 用 `refmatch --oneway` 的 41 条残留继续收错映射（每修一个"枢纽类"，一次能清掉十几条：
   55 → 48 → 41 就是这么降下来的）；
2. 再进成员名（1335 方法 / 1114 字段）——有同版本 oracle，方法按 (名字+描述符+所属类) 对齐即可；
3. 参数名走 oracle 的 LocalVariableTable（`jobs/*/params.tsv` 的老路）。
