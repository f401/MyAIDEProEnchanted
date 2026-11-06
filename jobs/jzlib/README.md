# jobs/jzlib —— **JZlib 1.1.1**（AIDE 内置的纯 Java zlib/gzip，14 类）

## 0. 结论

| 指标 | 值 |
|---|---|
| 类 | **14 / 14 = 100%** |
| 方法 | 78 条定名 + 11 条 identity（原名就是对的）+ 22 条 oracle 里没有（R8 产物）；**只有 1 条待人工**（`Tree` 的一个 AIDE 改签名方法） |
| 字段 | **170 / 189 = 89.9%**（余 19 条是"同一描述符几十个候选"的 int 字段，见 §4） |
| 参数名 | **135 行**（jzlib-1.1.1 的 LocalVariableTable 直接给） |
| 门禁 | `validate ✔` · `inherit CONFLICT 0 / DUPTARGET 0 / MISSING 0` · `famcheck 0/0` |

oracle：`~/out/oracle/misc/jzlib-1.1.1.jar`（Maven `com.jcraft:jzlib:1.1.1`，25 个类）。

## 1. 怎么找到这一簇、怎么确认是 jzlib

`abcd/*` 里有 1636 个类还没定名。按**引用连通块**切出来一块 14 类，里面有几条**一眼认人的错误文案**
（jzlib 的 `Inflate`/`InfBlocks`/`InfCodes`/`InfTree` 把 zlib 的判定字符串原样搬过来了）：

```
'need dictionary' / 'stream end'                    → Deflate（z_errmsg 表）
'too many length or distance symbols'               → InfBlocks
'invalid distance code' / 'invalid literal/length code' → InfCodes
'oversubscribed literal/length tree'                → InfTree
'unknown compression method' / 'header crc mismatch' → Inflate
```

再拿 `jzlib-1.1.1.jar` 做形状/描述符比对：14 个类**全部**有唯一对应，且两个内部类
（`Deflate$Config` 1 方法/5 字段、`Inflate$Return` extends Exception 1 方法/2 字段）**完全同形**。
R8 把 jzlib 里没被用到的 `Deflater`/`Inflater`/`JZlib`/各种 Stream 裁掉了，所以只剩 14 个。

## 2. 类映射（全部 14 条，判据见 `class_map.tsv` 第 3 列）

| 探针 | oracle | 主判据 |
|---|---|---|
| `abcd/Dy` | `Adler32` | 只有两个 `static long`（s1/s2），无 int[]；实现 `Fy`(=Checksum) |
| `abcd/Ey` | `CRC32` | `static int[] crc_table` + `static int v` + `<clinit>` 建表 |
| `abcd/Fy` | `Checksum` | jzlib 里唯一的"4 方法、0 字段"接口 |
| `abcd/Gy` | `Deflate` | 41 方法/61 字段 + `implements Cloneable`（只有 Deflate/GZIPHeader 这么干） |
| `abcd/Gy$a` | `Deflate$Config` | 1 方法/5 字段完全同形 |
| `abcd/Hy` | `GZIPHeader` | **12 个实例字段的类型逐个相等**（Z,Z,J,I,[B,[B,[B,Z,J,I,I,J）+ Cloneable |
| `abcd/Iy` | `InfBlocks` | 常量串 + 6/27 形状 |
| `abcd/Jy` | `InfCodes` | 常量串 + 6/17 |
| `abcd/Ky` | `InfTree` | 常量串 + 7 方法（oracle 也是 7） |
| `abcd/Ly` | `Inflate` | 常量串 + 10/15 |
| `abcd/Ly$a` | `Inflate$Return` | extends Exception、1 方法/2 字段 |
| `abcd/My` | `StaticTree` | 2 方法（oracle 也是 2）+ 10 个 static 表 |
| `abcd/Ny` | `Tree` | 7 方法（oracle 也是 7）+ 11 字段 |
| `abcd/Oy` | `ZStream` | 13 个字段的类型里有 Gy(=Deflate)/Ly(=Inflate)/Fy(=Checksum)，方法全是 `inflateInit*/inflate*/deflate*` |

> `Oy` 这条特别值得记：它的**字段类型**是 `Labcd/Gy;`/`Labcd/Ly;`/`Labcd/Fy;`，
> 也就是说——**先定名 Deflate/Inflate/Checksum，ZStream 就被反推出来了**。这是"引用者消除歧义"的典型用法。

## 3. 成员怎么定的

`cli members` 的处理顺序：① 描述符桶唯一 → 直接定；② 重载/多候选 → 方法体 token + 调用顺序票 + 调用点指纹；
③ 字段先用**构造器里赋值顺序**对齐（jzlib 的 `Deflate.<init>` 把状态字段按源码顺序赋一遍，dx 不打乱语句顺序）。

结果：字段预跑 74 条、两遍扫描 45 方法 + 134 字段、排除法补 2 条，最后 **169 字段 / 78 方法**。
另外 11 条方法**本来就对**（`reset`/`getValue`/`update` 这些名字被 `Checksum` 接口钉死，混淆器没改名）。

## 4. 遗留

1. **19 个 int 字段**没定：它们的描述符全是 `I`，而 oracle 同类里有 40 个（Deflate）/10 个（InfBlocks）/
   9 个（InfCodes）/7 个（Inflate）/6 个（Tree 的 `[S`）/5 个（ZStream）同描述符字段，
   构造器顺序票也用过了（剩下这些不是在构造器里赋值的，例如 `Deflate.window`/`pending_buf` 在 `deflateInit` 里 new）。
   宁缺勿错：留原形，并在 `out/members_abcd.tsv` 里逐条列了候选集合，后续可以用"使用点语义"（谁读它、参与哪个公式）继续收。
2. `abcd/Ny j6([SI[S[S)V`（`Tree.gen_bitlen` 一族）在 oracle 1.1.1 里没有同描述符方法（AIDE 改过签名），未定名。
3. `Zd`… 无。jzlib 的 `params.tsv` 已从 oracle LVT 取到 135 行。

## 4.1 为此新加的两个通用工具（`tools/deob/`）

同描述符字段（Deflate 40 个 int、InfBlocks 10 个）靠桶分不开，所以补了两个"顺序/用法指纹"工具：

| 工具 | 判据 | 在 jzlib 上的战绩 |
|---|---|---|
| `fieldorder.py` | **方法里 putfield 的顺序**（同一份源码、dx 不打乱语句顺序）→ 逐位对齐投票，取唯一最高票 | 16 个方法对参与投票，命中 `we→last_flush` 等 |
| `fieldfp.py` | **指纹** = {(已定名方法真名, get/put, 该方法里出现的整数字面量)}，两侧要求逐项相等（Jaccard=1.00）且领先第二名 | `we→last_flush`(1.00 vs 0.60)；`I→bl_count`(1.00) 因为与同类已有的 `Mz→bl_count` **撞名**被工具自动剔除（说明这两个 `[S` 字段用法完全相同，是真正的孪生，不能猜） |

两者都带"与同类已用名冲突则剔除"的护栏；用法：

```bash
python tools/deob/fieldfp.py jzlib --oracle-jar=$HOME/out/oracle/misc/jzlib-1.1.1.jar [--apply]
python tools/deob/fieldorder.py jzlib --oracle-jar=$HOME/out/oracle/misc/jzlib-1.1.1.jar [--apply]
```

## 5. 复现

```bash
# 1) 切连通块（引用图，只在未定名的 abcd 类里走）
python3 ~/tmp/clusters.py                       # 输出 ~/tmp/cl_jzlib.txt（14 类）
# 2) 类：常量串 + 描述符形状 + 外层一致性（结果见 class_map.tsv）
# 3) 成员（注意 --part 必须用 "名字"，不是路径；cli 的 opt() 只认 --x=y 形式）
python tools/deob/cli.py -p process/deob.json members --pkg=abcd --part=jzlib --apply
python tools/deob/cli.py -p process/deob.json params --apply
python tools/deob/famcheck.py --jar process/base/merged_ok.jar --parts jobs/jzlib/class_map.tsv --prefix abcd
python tools/jgit/pipeline/rebuild_tsrg.py && python tools/jgit/pipeline/validate_mappings.py
python tools/jgit/pipeline/inherit_check.py
```

## 附：剩余 19 个 int/宽字段为什么还空着（2025-11）

按「字段被哪些**真名方法**访问」做指纹（与 oracle 的字段访问集合求 Jaccard），只得到 2 个
唯一命中，其余全部打平——jzlib 的 `proc`/`inflate` 这类方法一次摸十几个字段，方法级粒度
区分不开：

| 类 | 未定名 | 方法级指纹结果 |
|---|---|---|
| Deflate | `I:[S` `aj:[B` `cb` `lp` `rN` `sh` | `I`→`bl_count`/`aj`→`pending_buf` 与同类已用名撞车（`Mz`、`v5` 已占），其余 `cb/sh`/`rN` 分别在 `prev_length|nice_match|max_chain_length`、`hash_shift|hash_mask` 上打平 |
| InfBlocks | `XL` `Zo` `j3` `v5` | 全部在 `proc` 里访问，`table/left/last` 与 `bitk/bitb` 三三打平 |
| InfCodes | `VH` `Zo` `gn` `u7` | 全部只在 `proc` 里，`tree_index/need/lit` 打平 |
| Inflate | `EQ` `FH` `Zo` | 只在 `inflate` 里，`method/flags` 打平 |
| ZStream | `DW` `Zo` | 两个字段在本类方法里没有任何字段引用（只被外部类读写）→ 方法内指纹不可用，得看**引用者** |

下一步（还没做）：把指纹从「方法集合」换成「方法内字段访问的**序列**」（`fieldorder.py` 的
putfield 顺序思路），并给 ZStream 的两个索引字段做**引用者**分析（`next_in_index` 只在
`Inflate#inflate` 里递增、`next_out_index` 只在输出拷贝处递增）。
