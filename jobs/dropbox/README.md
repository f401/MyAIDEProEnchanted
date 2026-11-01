# jobs/dropbox —— Dropbox Java SDK（AIDE 的云同步后端）——**进行中**

## 1) 这一簇其实是 Dropbox SDK，不是「httpcore/httpmime」

授权页写的是 `httpmime-4.0.3` / `httpcore-4.2.1`，但顺着"谁引用 `org/apache/http/**`"去切，
切出来的 50 个类**绝大多数是 Dropbox SDK 自己**（它内部用 Apache HttpClient）：

```
abcd/Dw      DropboxAPI  串 '/files_put/'、'parent_rev'、'overwrite'、'sandbox'
abcd/Pw      DropboxServerException 串 'server'、'location'、'dropbox.com'
abcd/Gw      DropboxParseUtil       串 'EEE, dd MMM yyyy kk:mm:ss ZZZZZ'
abcd/Iw      加密套件表 (TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 …) = SSLConfig
abcd/Zw      APP_FOLDER / sandbox / DROPBOX
abcd/yk$h    appfour 自己的 'Subscription WS Client' + api.appfour.com（不是 Dropbox）
```

所以这一簇的 oracle 应该是 `com.dropbox.core:dropbox-core-sdk`，Apache 只是它的下游依赖。

## 2) 切法：这次不能用"无向连通分量"

宿主（AIDE 的 UI/同步服务）反向引用库里的类，无向走一步就炸成 **1715 类**。
`component.py` 为此加了两个开关：

```
--directed     只沿"引用出去"的边走
--prune-refs   类只要引用了这些宿主包（com/aide、com/s1243808733、com/appfour…）就剔掉
→ 50 类 / 217 方法 / 116 字段
```

## 3) oracle 与当前进度

```
~/out/oracle/http/dropbox-core-sdk-{1.6,1.7.7,1.8.2}.jar   (112/161/182 类)
~/out/oracle/http/httpclient-4.2.1.jar / httpcore-4.2.1.jar
```

`classmatch --ints` 三个版本各只收敛 12~13/50，且**两版之间只有 5 条一致**：

```
一致: Nw=DbxWebAuth$BadStateException, Pw$a=HttpRequestor$Header, Qw=DbxTask,
      Ww$b=DbxDeltaC$Entry$Reader, Ww$c=DbxAccountInfo$1
冲突: 5 条（Dw/Ew/Kw/Uw/Vw… 两版给出不同答案）
```

结论：**AIDE 带的这份是 appfour 改过的老 fork**（或比 1.6 更早），形状漂移很大，
不能靠单一版本收敛。下一步要么找到那份 fork 的源码，要么按"多版本交集 + 引用者 + 常量串"
逐个裁决（和 jgit 的多版本回归一个套路）。

## 4) 待办

1. 先把 5 条一致的和冲突的逐个用 `ql probe`/`ql cand` 复核；
2. 剩下 38 个（含 5 个 appfour 自有类）按作用命名收口；
3. 之后再做成员名/参数名（Dropbox SDK 的 sources jar 在 Maven 上也有）。
