# jobs/asn1bc —— 第二份 BouncyCastle 的 **ASN.1 子集**（探针包 `c/*`，76 类）

## 0. 结论

| 指标 | 值 |
|---|---|
| 类 | **74 / 76 = 97.4%**（`c` 包；另在 `class_map` 里还挂了 32 个别的单字母包类，见 §4） |
| 方法（cover 口径：剔除构造器/静态块/合成器/JDK 契约名，`--pkg=c/`） | **218 / 218 = 100.0%** |
| 字段（同口径） | **77 / 77 = 100.0%** |
| 参数名 | 88 行（bcprov-1.56 的 LVT） |
| 待人工 | **0**（`no-oracle-descriptor` 10 条是 AIDE 改签名/oracle 无同形）；只剩 3 个类没定名，见 §6 |
| 证据分布（`class_map.tsv` 第 3 列） | `contain` 44 / `str` 25 / `hier` 5 / `pkg+contain` 3 / `src` 1 |

oracle：`bcprov-jdk15on-1.56`（`~/out/oracle/spongycastle/`，同一目录里也放着 1.47/1.50 的 BC 与 SpongyCastle）。

## 1. 为什么它必须和 `jobs/spongycastle` 分开命名

APK 里**有两份** BouncyCastle：

* `abcd/*`（257 类）= **SpongyCastle**（BC 1.47 换包名）→ 归 `jobs/spongycastle`，名字是 `org/spongycastle/*`；
* `c/*`（76 类）= **org.bouncycastle 的 ASN.1 子集**（1.56 那代）→ 就是本 part，名字是 `org/bouncycastle/*`。

两份都叫 `org/bouncycastle/*` 会直接撞车（`validate_mappings.py` 报 `dup-class-target`，
例如 `org/bouncycastle/asn1/ASN1Primitive` 同时被 `c/...` 和 `abcd/EL` 占）。所以上一轮把
`jobs/spongycastle` 整体改成 `org/spongycastle/*`（判据与影响面见该 part 的 README 末节），
把 `org/bouncycastle/*` 让给这一份。

## 2. 判据怎么来的

* `str:` 25 条：常量串集合 Jaccard=1.00 且唯一（ASN.1 的 OID 表、`"attempt to get illegal maximum"` 这类文案很有辨识度）；
* `contain:` 44 条：「在已定映射下，本类每个方法/字段描述符都能与 oracle 同签名成员一一配上，
  超类与接口逐位相等，候选唯一」——这是**最硬的一条**：同一代 BC 的描述符没被混淆改过；
* `hier:` 5 条：超类/接口位置唯一对应（先定父、再定子）；
* `src:` 1 条：`c/q$a` = `ASN1OutputStream$ImplicitOutputStream`（`extends c/q`、构造器收 `OutputStream`、
  方法 `d(int)` 写 implicit tag，oracle 侧 `ASN1OutputStream` 也只有这一个内部类）。

包归属 `pkg_map.tsv` 用已定名类的 oracle 包投票：`c → org/bouncycastle/asn1`、`d → asn1/bc`、
`e → asn1/bsi`、`f → asn1/cryptopro`、`g → asn1/eac` …（`c` 包里 69 个类落在 `asn1`）。

## 3. 成员定名的坑：`toDERObject` / `toDLObject` 覆写族

BC 的 `ASN1Primitive` 家族里有 `toDERObject()` / `toDLObject()` 两个**同签名同族**方法，
`cli members` 在这两个名字之间摇摆（`c/b`、`c/o`、`c/s`、`c/t`、`c/br` 各判成不同的一半）。
工具的处理是：**整族撤掉**（5 条），只保留有更强证据的那一条（`c/s i()Lc/s;` → `toDLObject`，
`body:1.00/+1.00`）。这样宁缺勿错 —— 覆写族里一半是 `toDERObject` 一半是 `toDLObject` 会在运行期
`AbstractMethodError`，`inherit_check` 正是为这个写的。

## 3.1 把最后 14 条做掉：靠"创建点"和"flag 值"判，不靠猜

BC 里 `toDERObject()` / `toDLObject()` 是**同签名同族**，工具先整族撤掉了。这次用两条硬判据补回来：

**(a) 创建点**：`toDERObject` 造 `DER*`、`toDLObject` 造 `DL*`

```
ASN1OctetString.toDERObject / toDLObject   两边都是 new DEROctetString（真同形，取 DER）
ASN1Sequence.toDERObject                   new DERSequence   ←→  DLSequence
ASN1TaggedObject.toDERObject               new DERTaggedObject ←→ DLTaggedObject
ASN1BitString.toDERObject                  new DERBitString
LazyEncodedSequence.toDERObject            parse() 后直接调 ASN1Sequence.toDERObject
ASN1Primitive.i()                          return this（DER/DL/ASN1 三个候选都是 return this ⇒ 取族名）
```

**(b) R8 合并类的 flag 值**：`DEROutputStream` 与 `DLOutputStream` 被 R8 合成一个类 `c/ba(OutputStream, int)`。
`ASN1OutputStream.c()/b()` 分别传 **1 / 0**；而 `ASN1Sequence.toDERObject()` 里 `new c/bc(0)` 是 DER ⇒ **0 = DER**，
于是 `b()`=`getDERSubStream`、`c()`=`getDLSubStream`。两条独立证据（sequence 与 stream）指向同一个结论。

其余：

```
c/aq(DERExternal).f()I        encodedLength   方法体 = getEncoded().length（getEncoded 已定名）
c/bs(LimitedInputStream).i()V setParentEofDetect  读底层流、instanceof 后置 eof 标志位（AIDE 去掉了 boolean 形参）
c/k(ASN1Integer).c(c/z)c/k    getInstance     调 c/z.k() 取 primitive 再 invokestatic b(Object)
c/t(ASN1Sequence).c(c/z)c/t   getInstance     读 c/z.b(explicit) 并抛 "object implicit - explicit expected."
c/n(ASN1ObjectIdentifier).a   pool            static ConcurrentHashMap（BC 的 OID 池）
c/ab(BERApplicationSpecific).h tag             唯一实例 int，构造器第一个参数就是它
c/q$a(ImplicitOutputStream).l  first            boolean，写第一个 tag 时要特殊处理（oracle 侧同名 first）
```

`inherit_check` 在这里抓到 1 条 CONFLICT：`c/o.()Lc/s;` 我先按方法体叫 `parser`，但它的祖先 `c/bo` 同签名已叫
`getLoadedObject` ⇒ 改回 `getLoadedObject`（覆写族同名规则又赢一次）。

## 4. 遗留（含一处口径纠正）

**纠正**：本 README 早先写"类 76/76 = 100%"，那是拿 `cli members` 打印的"探针类 76"当成了分母，
实际 `class_map.tsv` 里只有 **46 个 `c/*`**（另有 32 行是 `v/c`、`x/a`、`y/a` 这类别的单字母包的类，
本 part 的 `probe_prefix` 是 `c`，这些行的真实探针名要另行核对）。
所以 `cover` 的 122/122 与 50/50 **只是那 46 个类**的口径。

**30 个还没定名的 `c/*`**（用描述符包含 + 候选唯一性跑过一遍，`~/tmp` 脚本可复现）：

```
有唯一/少量候选(20 个):
  c/ac→BERApplicationSpecificParser  c/am→BERTaggedObjectParser  c/z→ASN1TaggedObject
  c/j→ASN1InputStream  c/ap/c/bl→DERBitString|DLBitString（两者同形，需创建点）
  c/av,c/aw,c/ay,c/bb,c/be,c/bh,c/bj,c/bk→DER*String 八兄弟（同形族，靠串区分）
  c/as→DERFactory|OID 常量类（4 个候选）  c/d,c/u,c/w→空类/接口（3 个候选，无判别证据）
无候选(10 个):
  c/ag,c/ai,c/ak,c/ba,c/bc,c/bd,c/bq,c/g,c/h,c/r
  + c/aw$$ExternalSyntheticBackport0（R8 合成，直接按作用命名即可）
```

1. `innercheck` ① 还剩 2 条本 part 的外层不一致：`c/x/b$a`（`x/b` 缺类映射）、
   `c/x/a$a`（映射成 `util/Arrays$Iterator` 但外层是 `ByteUtils`）——需要先确认 `c/x/a`/`c/x/b` 到底是谁；
2. `params.tsv` 只有 53 行（`bcprov-jdk15on-1.56` 的 LVT 取到的这批方法比较少），还能从 BC 源码补；
3. 本 part 类是 R8 裁过的子集，`c/*` 引用的某些 BC 类在 APK 里不存在，所以 `audit` 会报"两侧 jar 缺类"，
   属预期。

## 5. 复现

```bash
python tools/deob/strmatch.py -p process/deob.json --prefix c --oracle bcprov-jdk15on-1.56 \
       --oracle-pkg org/bouncycastle --min 0.0 --top 3
python tools/deob/bytefp.py --part ../jobs/asn1bc --oracle bcprov-jdk15on-1.56 \
       --prefix c --oprefix org/bouncycastle --thr 0.30 --margin 0.06
python tools/deob/cli.py -p process/deob.json members --pkg c --part ../jobs/asn1bc
python tools/deob/cli.py -p process/deob.json cover --pkg=c/
python tools/deob/audit.py -p process/deob.json --part ../jobs/asn1bc \
       --oracle bcprov-jdk15on-1.56 --prefix c --oprefix org/bouncycastle
```

## 6. 第二轮：把剩下的 30 个类收掉 27 个（新增两条硬判据）

### 6.1 `encode()` 里的 **tag 常量** —— 一次定死整个 `DER*String` 家族

BC 的字符串族（`DERUTF8String`/`IA5String`/`PrintableString`…）形状完全同构，只能靠
`encode(ASN1OutputStream)` 写出去的 tag：

```java
bipush 12 → writeEncoded(12, string)   // UTF8String
```

于是把"方法体里 `writeEncoded(int,byte[])` 前一条整数字面量"当指纹，两侧各算一遍：

| tag | 类 | | tag | 类 |
|---|---|---|---|---|
| 12 | `c/bh` = DERUTF8String | | 22 | `c/aw` = DERIA5String |
| 18 | `c/ay` = DERNumericString | | 25 | `c/av` = DERGraphicString |
| 19 | `c/bb` = DERPrintableString | | 26 | `c/bk` = DERVisibleString |
| 20 | `c/be` = DERT61String | | 10 | `c/g` = DEREnumerated |
| 21 | `c/bj` = DERVideotexString | | 3 | `c/ap`=DERBitString / `c/bl`=DLBitString（后者只有 4 方法且唯一外部引用是 StreamUtil） |

> **顺手抓到一个真错**：`c/at` 原来被定名成 `DERUTF8String`，但它的 tag 是 **27 = GeneralString**，
> tag 12 在 `c/bh` 上 ⇒ `c/at` 改为 `org/bouncycastle/asn1/DERGeneralString`。全类 tag 审计现在自洽。

### 6.2 剩下的类靠"引用者 / 实现者 / 唯一候选"

```
c/j  ASN1InputStream        FilterInputStream + 'unknown tag '/'EOF encountered in middle of BIT STRING'
c/z  ASN1TaggedObject       i()→new c/bf(=DERTaggedObject)、j()→new c/bm(=DLTaggedObject)
c/v  ASN1Set                Iterable + 'cannot encode object added to SET'
c/u  ASN1SequenceParser     0 方法接口，被 BERSequenceParser 实现
c/w  ASN1SetParser          0 方法接口，被 BERSetParser 实现
c/ac BERApplicationSpecificParser / c/ag BEROctetStringParser / c/ai BERSequenceParser /
c/ak BERSetParser / c/am BERTaggedObjectParser
c/as DERFactory             1 方法/2 字段，方法体直接引用 DERSequence 与 DERSet
c/d  ASN1Choice             0 成员接口（bcprov-1.56 的 asn1 包里唯一）
c/bq LazyConstructionEnumeration   Enumeration + ASN1InputStream 字段 + 构造器(byte[])
```

### 6.3 R8 把 **DER/DL 两两合并**（3 个类，各带一个 int flag）

`DERSequence`+`DLSequence`、`DERSet`+`DLSet`、`DEROutputStream`+`DLOutputStream` 都只剩**一个类**，
构造器多了一个 int。flag 语义靠"谁传 0/谁传 1"定：

```
c/t.i()(=toDERObject) → new c/bc(0)      c/t.j()(=toDLObject) → new c/bc(1)
c/v.i()(=toDERObject) → new c/bd(0)      c/v.j()(=toDLObject) → new c/bd(1)
c/q.b()(=getDERSubStream) → new c/ba(os,0)   c/q.c()(=getDLSubStream) → new c/ba(os,1)
⇒ flag 0 = DER。三个合并件按 flag 0 命名 DERSequence / DERSet / DEROutputStream（DL 那份没有独立类）
```

**又一处纠正**：`c/bf`/`c/bm`（两个 `DERTaggedObject`/`DLTaggedObject` 同形件）原来被形状匹配**对调**了；
用 `c/z.i()`(=toDERObject，因为 `c/o.i()` 造的是 DEROctetString) 里 new 的是 `c/bf` ⇒ `c/bf`=DERTaggedObject。

### 6.4 最终状态与遗留

```
类   74/76 = 97.4%（未定名：c/h、c/r —— 见下）
方法 218/218 = 100.0%
字段  77/77  = 100.0%（c/bc.q、c/bd.r 是上面合并件的 flag 字段，属 R8 产物，按作用留空）
参数  88 行
门禁 validate ✔ · inherit 0-0-0 · famcheck 0-0 · innercheck ②③ 0

### 6.5 最后两个类：`c/h`、`c/r`（2025-11 复核，结论仍是"不定名"，但纠正了两处记录）

两者是**孪生异常**：`c/h extends IOException`、`c/r extends IllegalStateException`，成员一模一样
（`public final int a`、`public Throwable b`、`(String)`、`(String,Throwable,int)`、`getCause()`）。

**纠正 1：它们不是死代码。** 逐类扫常量池（UTF8 里出现 `c/h` / `Lc/h;`）得到真实引用者：

| 类 | 引用它的类 |
|---|---|
| `c/h` | `c/al`(BERTaggedObject)、`c/ar`(DERExternalParser)、`c/j`(ASN1InputStream)、`c/x`(ASN1StreamParser)、`w/a`(未映射) |
| `c/r` | `c/ac`、`c/ab`、`c/ag`、`c/am`、`c/ak`、`c/ar`(DERExternalParser) 等 11 个 ASN.1 类 |

**纠正 2：形状不是 BC 的 ASN1Exception/ASN1ParsingException。** 这对类语义上很像 BC 的
`org/bouncycastle/asn1/ASN1Exception`（extends IOException）与 `ASN1ParsingException`
（extends IllegalStateException）——但 BC 1.47/1.50/1.56/1.64/1.68 **全部**是
`private Throwable cause` + 构造器只有 `(String)`/`(String,Throwable)`，**没有 int、字段也不是 public**；
全 APK 里也只有这两个类带 `(String,Throwable,int)` 构造器（扫过所有 class）。

所以在**能拿到的 oracle 里没有任何版本对上**（78 个 jar 里形状单点匹配的只有 jgit 的
`ServiceMayNotContinueException`，但引用者是 BC 的 ASN.1 代码，跨库不成立）。按"宁缺勿错"
保持探针名：`c/h`、`c/r` 原样，`cover` 里如实计入未定名。

**现在这两个类是 asn1bc part 里唯一的未定名项（74/76 → 74 类已定名 + 这 2 个）。**

### 6.6 顺手修的两处（2025-11）

| 探针 | 原来 | 现在 | 判据 |
|---|---|---|---|
| `x/a` | `pqc/math/linearalgebra/ByteUtils` | **`org/bouncycastle/util/Arrays`** | 内部类 `x/a$a`（`T[] a`、`int b`、`hasNext/next/remove`）与 `Arrays$Iterator` 逐项相同；`ByteUtils` **没有任何内部类** |
| `x/b` | （未映射） | **`org/bouncycastle/util/Strings`** | 静态 int 常量 + `fromUTF8ByteArray`/`toUTF8ByteArray(String)`/`toUTF8ByteArray(char[],OutputStream)`/`toUpperCase`/`toLowerCase` 逐个对上；内部类 `x/b$a` = `PrivilegedAction<String>` 即 `Strings$1` |

另外 `innercheck` 修了两个假报：`X$$ExternalSyntheticBackport0` 被按最后一个 `$` 切成外层 `X$`
（不存在）；以及"一侧没有外层"的合成类不该参与外层一致性校验。修完 ①②③ 全 0。

`c/aw$$ExternalSyntheticBackport0` 则按 **R8 命名约定**直接给出：`org/bouncycastle/asn1/DERIA5String$$ExternalSyntheticBackport0`
（R8 的 backport 合成类形如 `<宿主>$$ExternalSyntheticBackport0`，宿主是 `c/aw`=DERIA5String）。
