# jobs/asn1bc —— 第二份 BouncyCastle 的 **ASN.1 子集**（探针包 `c/*`，76 类）

## 0. 结论

| 指标 | 值 |
|---|---|
| 类 | **76 / 76 = 100%**（`c` 包全部；含 1 个内部类块 `c/q$a`） |
| 方法（cover 口径：剔除构造器/静态块/合成器/JDK 契约名，`--pkg=c/`） | **112 / 121 = 92.6%** |
| 字段（同口径） | **49 / 49 = 100.0%** |
| 待人工 | 14 条（`ambiguous` 9 + `no-oracle-descriptor` 5），见 `out/members_c.tsv` |
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

## 4. 遗留

1. 14 条待人工：其中 9 条 `ambiguous` 全是上面那个覆写族（必须靠"谁调用了谁"来定性），
   5 条 `no-oracle-descriptor` 是 `AIDE 改过签名` 的方法（oracle 侧同名但描述符不同）；
2. `innercheck` ① 还剩 2 条本 part 的外层不一致：`c/x/b$a`（`x/b` 缺类映射）、
   `c/x/a$a`（映射成 `util/Arrays$Iterator` 但外层是 `ByteUtils`）——需要先确认 `c/x/a`/`c/x/b` 到底是谁；
3. `params.tsv` 本 part 还没生成（当前 0 行）：`c/*` 的方法参数名可以从 `bcprov-jdk15on-1.56` 的 LVT 取一部分。

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
