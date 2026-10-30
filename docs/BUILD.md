# 编译步骤（mapping → 可安装 APK）

## 0. 前置条件

| 需要 | 说明 |
|---|---|
| JDK | 运行 FART / D8（`java -version` ≥ 8） |
| Python 3 | 全部工具脚本 |
| 已解包工程 | `src/`（apktool 解出的 smali/res/manifest）、`Dex/`（原始 dex） |
| 改名基线 | `process/base/merged_ok.jar`（已入库，指纹见 `process/SHA256SUMS`） |
| 逐 dex jar | `process/src/classes{,2,3,4,5}.jar`、`zh.jar`、`en.jar`、`ndk.jar`、`packagingservice.jar` |
| 签名私钥 | 原作者私钥**不在仓库**；自用请自备 keystore |

```bash
cd process && sha256sum -c SHA256SUMS      # 输入与工具指纹，全部 OK 才继续
```

## 1. 生成 / 更新 mapping

唯一真相是两张表，`process/mappings.txt` 只是派生产物：

```bash
# 类名真相:  process/truth/jgit_map_clean.tsv      (探针 <TAB> 目标 <TAB> 证据)
# 成员真相:  process/truth/jgit_members_clean.tsrg (TSRG 块)
python3 tools/jgit/pipeline/rebuild_tsrg.py      # tsv → tsrg → process/mappings.txt（含头 20 行）
python3 tools/jgit/pipeline/emit_tsrg2.py process/mappings.txt   # 需要单独重排/补 static 标记时
```

> 头 20 行来自 `process/truth/mappings_head.txt`（AIDL / 首轮类改名），
> jgit 块由 tsv+tsrg 生成。**不要手改 `mappings.txt`**。

## 2. 跑认证流水线

见 [VERIFY.md](VERIFY.md)。**8 道门全绿再开始构建**。

## 3. FART 改名（逐 jar）

`process/run.sh` 已给出逐 jar 的调用方式，核心是：

```bash
cd process
for j in classes classes2 classes3 classes4 classes5; do
  java -jar ForgeAutoRenamingTool-1.0.8-all.jar \
    --input  src/$j.jar \
    --output out/${j}_out.jar \
    --map    mappings.txt \
    --lib    src/classes.jar --lib src/classes2.jar --lib src/classes3.jar \
    --lib    src/classes4.jar --lib src/classes5.jar --lib android.jar
done
# zh.jar / en.jar / ndk.jar / packagingservice.jar 同理（各自把其它 jar 作为 --lib）
```

要点：
- **输入必须用原始 jar**（`process/src/*.jar` 或 `base/merged_ok.jar`），**不要**预先做类级 public 化——那会让 FART 在个别类上崩（历史坑见 NOTES.md §6）。
- FART 会重写**所有**引用（`invoke*`、字段访问、类型描述符、签名属性），所以类/成员改名是全局一致的。

## 4. access 放宽（跨包 package-private）

改名会把原本同在 `abcd` 的类拆到不同包，跨包访问包私有成员会在运行期 `IllegalAccessError`，
跨包的 package-private 方法也不再构成 override。用 `widen_access.py` 修：

```bash
# 推荐：在 FART 之后，对每个产物 jar 跑（此时名字已是最终名，不需要 --map）
python3 tools/jgit/pipeline/widen_access.py out/classes_out.jar --out out/classes_pub.jar --apply

# 也可在 FART 之前对 merged_ok.jar 跑（需要 --map 才能算出"最终的包"）
python3 tools/jgit/pipeline/widen_access.py process/base/merged_ok.jar \
        --map process/truth/jgit_map_clean.tsv --out process/base/merged_pub.jar --apply
# 不带 --apply 即 --report：只列出会被放宽的 class/成员
```

工具只放宽、不改指令：成员引用 → 成员与 owner 类放 `public`；同签名虚方法 → 两边放 `protected`。

## 5. D8 出 dex

```bash
cd process
java -Xmx2g -cp d8.jar com.android.tools.r8.D8 --release --min-api 26 --thread-count 2 \
  --lib android.jar --output out/dex \
  out/classes_pub.jar out/classes2_pub.jar out/classes3_pub.jar \
  out/classes4_pub.jar out/classes5_pub.jar
```

- `--min-api 26`：与 AIDE 目标一致；调低会引入 desugar 差异。
- D8 输出若报 `multiple definitions` / `Invalid input code with a call to <clinit>`：见 NOTES.md §4/§5。

## 6. 回填 APK + 签名

```bash
cp "AIDE Pro_2.8.7-freely_orig.apk" out/AIDE-renamed.apk
cd out && mkdir -p x && cd x && unzip -o ../AIDE-renamed.apk >/dev/null
# 用 D8 产物替换对应的 classes*.dex（classes.dex / classes2.dex …，顺序与原始一致）
cp ../dex/classes.dex ../dex/classes2.dex ../dex/classes3.dex ./
cd .. && (cd x && zip -qr ../AIDE-renamed.apk .) && rm -rf x
zipalign -f 4 AIDE-renamed.apk AIDE-aligned.apk
apksigner sign --ks <你的.keystore> --out AIDE-signed.apk AIDE-aligned.apk
apksigner verify --print-certs AIDE-signed.apk
```

> 走 apktool 路线（改 `src/smali` 后 `apktool b src`）也可以，但那要求把同样的改名落到 smali 上；
> 目前流水线以 **jar + FART** 为主，smali 只用于零散手改。

## 7. 冒烟测试（必须）

1. 安装启动，进设置/关于，确认无崩溃。
2. 打开/新建工程（触发 jgit 初始化）。
3. Git 操作三连：`clone`（https）→ 改文件 → `commit`；有远端则 `push`。
4. 日志过滤 `AndroidRuntime|jgit`，确认没有 `NoSuchMethodError / IllegalAccessError / AbstractMethodError`：
   - `NoSuchMethodError` → mapping 里成员名与类不匹配；
   - `IllegalAccessError` → 漏跑 `widen_access`；
   - `AbstractMethodError` → 接口/实现名不一致（见 NOTES.md §3）。
