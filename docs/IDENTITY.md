# 第三方库身份确认记录

「这个包到底是哪个库」不能靠猜——每条结论都要有**可复现判据**（原版 jar 对照 / 唯一常量串 /
入口类的字段布局）。本文件记录已确认与仍未定的包。

## 已确认

| 探针包 | 结论 | 版本 | 一句话判据 |
|---|---|---|---|
| `abcd/Hw`…（已在 `jobs/dropbox`） | Dropbox Android SDK（`com.dropbox.client2`）+ json_simple | 1.6.2 / 1.1 | `Hw` 返回 `"1.6.2"`；`Ww` 同时有 `oauth1AccessToken`/`oauth2AccessToken` + `Bearer`；根证书三段与源码 `new byte[]{…}` 逐字节相等 |
| `a`（757 类） | ProGuard | 6.0.3 | `a/ah` 常量串 `ProGuard, version 6.0.3`；包结构 33:33 与 `proguard-base-6.0.3` 一一对应 |
| `org/c/a/a`（434 类） | **JD-Core v1**（`org.jd.core.v1`，Java 反编译器内核） | 1.1.x（结构最接近 1.1.3） | 见下 §1 |
| `org/a/a/a`（117 类） | **ANTLR 4 runtime** | 4.7.2 | 见下 §2 |

## 1) `org/c/a/a` = JD-Core v1

四条独立判据：

1. **入口类的字段布局**：`org/c/a/a/a` 恰好 **6 个字段**，构造器里逐个 `new` 出来：
   `c/b/a/d`、`c/a/a/a`、`c/c/a/a`、`c/d/a`、`c/e/a/a`、`c/f/a`；
   JD-Core 的 `ClassFileToJavaSourceDecompiler` 恰好 **6 个 processor 字段**
   （deserializer / converter / fragmenter / layouter / tokenizer / writer）。
2. **header 常量串**（ProGuard 改不了字符串内容）：该类的方法里 `const-string` 了
   `"mainInternalTypeName"`、`"loader"`，其余类里还有 `"printer"`、`"maxLineNumber"`、
   `"configuration"`——这五个正是 JD-Core v1 的 `Message` header 名
   （`ClassFileToJavaSourceDecompiler.java:34-36`、`LayoutFragmentProcessor` 等）。
3. **6 个 service 子包**：`org/c/a/a/c/{a..f}` 各含一个 `*Processor` 入口类，与上表六个 service 对应。
4. **规模**：probe 434 ≤ `jd-core-1.1.3` 470，且最大包逐个"≤ 且接近"
   （42≤47、40≤42、39≤42、35≤37、25≤29、17=17…）＝Shrinker 裁过。
5. **引用者**：整个 APK 里只有 AIDE 自己的 `com/a`、`com/c` 引用它（反编译/查看源码 UI）。

> 版本未逐版本二分。若要锁死小版本，拿 1.0.6/1.0.7/1.1.0-1.1.3 逐个跑
> `tools/deob/shape.py` / `subgraph.py` 比形状差异即可。

## 2) `org/a/a/a` = ANTLR 4 runtime 4.7.2

1. **原版错误串**（逐字）：
   `"Could not deserialize ATN with version %d (expected %d)."`、
   `"ANTLR Runtime version %s used for parser compilation does not match the current runtime version %s"`、
   `"ANTLR Tool version %s used for code generation does not match the current runtime version %s"`。
2. **版本常量**：整个包里的唯一版本串是 `"4.7.2"`（官方只在 `RuntimeMetaData` 里出现）。
3. **包形**：`org/antlr/v4/runtime` → `org/a/a/a`，子包 `atn`→`a`(66≤92)、`dfa`→`b`(5≤6)、
   `misc`→`c`(14≤27)、`tree`(+pattern/xpath 共 36) **全被裁** → 117 = 220 − 103。
4. **引用者**：`com/a4455jkjh/a/a`、`com/a4455jkjh/b/a`、`com/a4455jkjh/b/d`、`com/a4455jkjh/e/a`
   ——AIDE 的 Java 语法解析前端（ANTLR4 语法驱动）。

## 仍未定

| 探针包 | 现象 | 下一步 |
|---|---|---|
| `c/r/p/q/…`（~114 类） | ASN.1/证书层，跟 `org/spongycastle` 是**两份** BC | 锁版本后另开 part |
| `org/codehaus/*`、`org/eclipse/*`、`org/ahocorasick`、`org/voiddog` | 包名未混淆，但类/成员可能被裁 | 需要时再逐个核对 |
