# 冒烟测试（jgit 改名后）

目标：证明"改名后的 APK 能装、能起、jgit 真实功能能跑"，并为失败提供可定位的三类线索。

## 0. 前置

| 项 | 说明 |
|---|---|
| 输入 APK | 自动选与 `process/src/classes*.jar` 数量一致的包（当前是 `AIDE Pro_2.8.7-freely_orig_src.apk.orig`，5 dex ↔ 5 jar，类集**完全一致**） |
| 构建产物 | `out/build/apk/<原包名>`（dex 已替换）；有 SDK 时再 zipalign + apksigner |
| 签名 | 仓库不含原作者私钥。二选一：①用自己的 keystore 签（需**卸载**原 AIDE Pro，会丢应用数据）；②拿原私钥签（可覆盖安装） |
| 设备 | 已连 adb（`adb devices`），或手机本地安装 |

```bash
# 构建（设备上也能跑：java 21 + d8.jar 已入库）
python3 tools/build/build_apk.py all            # FART → widen → D8 → 回填 → 校验
python3 tools/build/build_apk.py plan           # 只看配对/类集一致性
```

## 1. 安装

```bash
adb install -r out/build/apk/<包名>              # 同签名可覆盖
adb install -r -d out/build/apk/<包名>           # 允许降级
# 不同签名（自签）：先卸载
adb uninstall com.aide.ui.pro   # 包名以 AndroidManifest 为准
adb install out/build/apk/<包名>
```

## 2. 启动冒烟（3 分钟）

| # | 动作 | 期望 |
|---|---|---|
| 1 | 冷启动 AIDE Pro | 无崩溃，进入主界面 |
| 2 | 打开/新建一个工程 | 工程树正常，无 `NoClassDefFoundError` |
| 3 | 打开任意 Java 文件、编辑、保存 | 编辑器/文件系统正常 |
| 4 | 设置 → 关于 | 版本信息正常（说明资源与 dex 都完整） |

## 3. jgit 功能冒烟（核心）

按顺序做，**每步都看日志**（见 §4）：

| # | 动作 | 覆盖的 jgit 面 |
|---|---|---|
| 1 | Git → Clone（HTTPS，小仓库） | `TransportHttp`、`PackParser`、`ObjectDirectory`、`cached-packs` |
| 2 | 修改文件 → Status / Diff | `IndexDiff`、`DiffFormatter`、`RawTextComparator` |
| 3 | Commit（含中文提交信息） | `CommitCommand`、`PersonIdent` 编码、`ChangeIdUtil` |
| 4 | Log / 查看历史 | `RevWalk`、`RevCommit.parseHeaders/parseBody`、`FollowFilter` |
| 5 | Push（需远端凭据） | `PushCommand`、`BaseReceivePack`、`RemoteRefUpdate` |
| 6 | Fetch / Pull | `FetchProcess`、`TrackingRefUpdate`、`deleteStaleTrackingRefs` |
| 7 | Branch 切换 / Merge（产生冲突更好） | `DirCacheCheckout`、`ResolveMerger`、`MergeResult` |
| 8 | Clone 一个 **SSH** 仓库（若可用） | `JSch` 桥：`CredentialsProviderUserInfo` → `UserInfo/UIKeyboardInteractive` |
| 9 | 大文件（>1MB）提交/克隆 | `cached-packs`、`DeltaWindow`、`WindowCache`、`LargePackedWholeObject` |
| 10 | 交互式 rebase（pick） | `RebaseCommand`、`RebaseTodoLine$Action`、`RebaseTodoLine$Action.parse` |

任一步失败 → 立刻抓 §4 日志，按 §5 归因。

## 4. 日志

```bash
# 建议先清缓冲，再操作
adb logcat -c
adb logcat -v time | grep -Ei 'AndroidRuntime|jgit|NoSuchMethod|NoSuchField|IllegalAccess|AbstractMethod|VerifyError|ClassNotFound'
```

三类关键异常与映射问题的对应：

| 日志 | 根因 | 修法 |
|---|---|---|
| `NoSuchMethodError` / `NoSuchFieldError` | 映射里的名字在运行时类里不存在（改名漏了/拼错） | `deob validate`（门 2）→ 修 tsv/tsrg |
| `IllegalAccessError` | 跨包访问 package-private（改名把类拆到不同包） | 门 7 `widen_access --apply` 后重新构建 |
| `AbstractMethodError` | 接口与实现的名字不一致（覆写断裂） | 门 4 `inherit_check`（CONFLICT/MISSING） |
| `NoClassDefFoundError`（jgit 类） | dex/jar 类集不一致（回填漏类） | `build_apk.py verify`（并集比对） |
| `VerifyError: Rejecting class …` | 字节码/栈校验失败（dex2jar 缺陷、`<clinit>` 调用） | `pipeline/nop_clinit.py` 处理后重建 |

## 5. 判定与回滚

**PASS**：§2 全过 + §3 至少 1–6 全过（7–10 视条件）。
**FAIL**：记下第一个失败的步骤 + 日志首行异常，按 §4 表归因；改完 mapping 重跑
`pipeline/validate → verify → inherit → pkgclose` 再 `build_apk.py all`。

回滚：`adb uninstall <包名> && adb install <原始 APK>`。

## 6. 与自动化的衔接

`build_apk.py all` 里已有两道自动校验（不用装到手机就能发现问题）：

| 步骤 | 校验内容 | 失败含义 |
|---|---|---|
| `dex` | D8 能完整吃下 FART 产物 | mapping 里有 dex 非法结构（如重复成员、`<clinit>` 调用） |
| `verify` | **新 dex 并集 == 改名后 jar 并集**（逐类） | 回填丢类/多类 → 必然 `NoClassDefFoundError` |

真正的 jgit 行为只能在设备上过 §3；这一步就是"冒烟"。

## 7. 产物速查

```
out/build/renamed/      FART 产物（每 jar 一份）
out/build/renamed_pub/  widen 后
out/build/dex/          D8 产物（classes.dex, classes2.dex …，可多）
out/build/apk/          回填后的 APK（未签名，除非有 apksigner）
out/build/build.log     全流程日志
```
