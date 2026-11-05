# jobs/asn1bc —— 第二份 BouncyCastle 的 **ASN.1 子集**（探针包 `c/*`，76 类）

## 0. 结论

| 指标 | 值 |
|---|---|
| 类 | **46 / 76 = 60.5%**（`c` 包共 76 个类；另在 `class_map` 里还挂了 32 个别的单字母包类，见 §4） |
| 方法（cover 口径：剔除构造器/静态块/合成器/JDK 契约名，`--pkg=c/`） | **122 / 122 = 100.0%**（分母只含已定名的 46 个类） |
| 字段（同口径） | **50 / 50 = 100.0%**（同上） |
| 待人工 | 已定名的 46 个类里 **0**（§3.1）；**30 个类还没定名**，见 §4 |
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
