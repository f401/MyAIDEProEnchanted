# jobs/aide_iap —— AIDE 的 **Play 内购（IAP）** 层（AIDE 自有代码，无 oracle）

## 0. 这一刀切在哪

`jobs/README.md` 的待办表里有一行"IAP/计费/licensing"。用线索串（`aide_prime_` / `appfour` /
`InAppProduct` / `vending`）在未定名的 `abcd/*` 里扫，命中 **89 类**、24 个外部引用者（活的）。
但 89 类里混进了编辑器/UI 的类（它们只是引用了同一批工具类），真正属于计费层的约十几类。

**本轮只做证据最硬的一层：Google Play 的 AIDL 三件套（3 类）** —— 它们的名字不是猜的，
AIDL 生成的代码形状（`Binder`/`onTransact`/`asInterface`/`$Proxy`）+ 类里的 `com.android.vending.billing.` 串就定了。

| 探针 | 目标 | 判据 |
|---|---|---|
| `abcd/qu` | `com/android/vending/billing/IInAppBillingService` | `interface extends android.os.IInterface`；5 个方法全是 AIDL 签名；方法集与 Play 的 `IInAppBillingService` 逐一对上 |
| `abcd/qu$a` | `.../IInAppBillingService$Stub` | `abstract class extends android.os.Binder implements abcd/qu` + `static asInterface(IBinder)` + `asBinder()` + `onTransact(4 参)` |
| `abcd/qu$a$a` | `.../$Stub$Proxy` | `implements abcd/qu`、持 `IBinder` 字段、构造器收 `IBinder` |

## 1. 方法名靠 **transaction code** 定（这是最硬的一条）

`Stub.onTransact` 的 `case 1..5` 按 AIDL 声明顺序分派，反编译后分支顺序与 interface 方法出现顺序
一一对应，于是：

| txn | 探针方法 | 真名 | 依据 |
|---|---|---|---|
| 1 | `FH(I,String,String)I` | `isBillingSupported` | Play Billing 的 txn 1 |
| 2 | `j6(I,String,String,String)Bundle` | `getBuyIntent` | txn 2 是 (apiVersion, packageName, sku, type) |
| 3 | `j6(I,String,String,String,String)Bundle` | `getBuyIntentToReplaceSkus` | 5 个字符串形参 ⇒ (…, oldSkus, newSku, type) |
| 4 | `j6(I,String,String,Bundle)Bundle` | `getSkuDetails` | txn 4 带 Bundle（skusBundle） |
| 5 | `DW(I,String,String)I` | `consumePurchase` | txn 5 是第二个返回 int 的 |

`$Proxy` 里同样名字但只有 4 个（`isBillingSupported` 的覆写在 R8 里被裁了）。

## 2. 内购骨架（16 类，按作用命名）

AIDL 三件套之外，把这条线的骨架也定住了（每一行的判据都在 `class_map.tsv` 第 3 列）：

| 探针 | 目标 | 关键判据 |
|---|---|---|
| `abcd/yk` | `com/aide/billing/InAppBilling` | 持 `IInAppBillingService` + Handler + ThreadPoolExecutor + ArrayDeque；方法里有转发 `getSkuDetails`、解析 `Intent→PurchaseResult`；类里有 `aide_prime_*` 等 SKU 串 |
| `abcd/yk$a` | `…$Listener` | 抽象回调，两个方法 `(String)V`/`(Map)V` |
| `abcd/yk$b` / `abcd/yk$c` | `…$BillingException` / `…$BillingError` | 都是 `extends Exception`，构造器分别是 `(String)` / `(ok)` |
| `abcd/yk$d` | `…$PurchaseResult` | 字段 = 状态枚举 + `cm$c`(签名校验) + `ok`(错误)，4 个构造器组合 |
| `abcd/yk$e` | `…$PurchaseStatus` | 枚举 `OK_PURCHASED`/`OK_ALREADY_OWNED`/`ERROR` |
| `abcd/yk$f` | `…$ResponseCode` | 枚举 `RESULT_OK`/`RESULT_USER_CANCELED`/…（Play 的响应码全集）+ `(I)` 静态查表 |
| `abcd/yk$g` | `…$Purchase` | 6×String + 1×long 的纯数据对象 |
| `abcd/yk$h` | `…$SubscriptionWebServiceClient` | 串 `Subscription WS Client` + `https://api.appfour.com/aideservices/subscriptions/v1/registerPurchase` + `isGenuine` |
| `abcd/rk` | `com/aide/billing/BuyIntentTask` | `Runnable`，`run()` 调 `getBuyIntentToReplaceSkus`；串 `BUY_INTENT` / `resp code for intent getting: ` |
| `abcd/pk` | `com/aide/billing/PurchaseRequestTask` | `Runnable`；串 `Requesting in-app purchases` / `Requesting subscription purchases` |
| `abcd/ok` | `com/aide/billing/BillingErrorTask` | `Runnable`；串 `Internal error in in-app billing (JSON parse).` / `Error communicating with Play Store service.` |
| `abcd/Jv` | `com/aide/billing/InAppPurchaseBackend` | 方法签名全是接线：`j6(String)Lcom/appfour/backbone/api/objects/InAppProduct;`（把 `DETAILS_LIST` JSON 变商品）、`j6(Activity,IntentSender,I)V`（拉起购买）、`j6(Bundle,Object,I,String,String,Bundle)V`（onActivityResult 分支） |
| `abcd/Lv` | `com/aide/billing/InstallReferrerReporter` | 串 `com.android.vending` + `PlayInstallReferrer` + `Class not found`（反射调用） |
| `abcd/Kv` | `com/aide/billing/InstallReferrerCallback` | 实现 `com/android/installreferrer/api/d`（库接口），字段是库的 `api/b` |
| `abcd/cm` | `com/aide/licensing/LicenseVerifier` | 串 `Empty data.` / `Empty signature.` / `Signature does not match data.` + `AIDEkeys` + 三个授权项包名 `com.aide.web` / `com.aide.trainer.java` / `com.aide.phonegap` |

命名空间说明：`com/aide/billing/*` 在 APK 里**不存在**（现有的是 `com/aide/{ui,engine,common,uidesigner,appwizard,licensing}`），
所以不会与未混淆类撞名；`abcd/cm` 归到 `com/aide/licensing/`（同目录下已有 19 个未混淆的 licensing 类，
但 `LicenseVerifier` 这个名字没被占）。

成员命名（20 行）只挑了证据硬的：`InAppBilling` 的 `inAppBillingService/handler/executor/pendingRequests`、
`parsePurchaseResult/getSkuDetails/launchBuyIntent`、`Listener.onError/onProducts`、
`InAppPurchaseBackend.getInAppProduct/launchBuyIntent/getProductList`、`LicenseVerifier.verifyLicense/…`。
`Kv` 的两个覆写方法**故意没命名**——它们的真名被库接口
`com/android/installreferrer/api/d` 钉死，而那个接口不在任何 part 里；命名会立刻触发
`inherit_check` 的 MISSING（实测过，2 条），宁可不写。

## 3. 状态与遗留

```
类   19（AIDL 三件套 + 内购骨架 16）
成员 29 行（AIDL 10 + 骨架 20 - 1）
门禁 validate ✔ · inherit CONFLICT 0 / DUPTARGET 0 / MISSING 0 · famcheck 0/0
```

下一刀（同一条线上，证据也强）：
`abcd/yk`（55 方法/27 字段，含 `aide_prime_monthly_0500` 等 SKU 目录）、
`abcd/yk$h`（'Subscription WS Client' + `https://api.appfour.com/aideservices/subscriptions/v1/registerPurchase`）、
`abcd/Jv`（Purchase 模型的 JSON 字段 `purchaseState/productId/packageName/purchaseTime`）、
`abcd/rk`（`RESPONSE_CODE`/`BUY_INTENT`）、`abcd/pk`（'Requesting in-app purchases' 分发器）、
`abcd/Lv`（PlayInstallReferrer）、`abcd/ok`（'Internal error in in-app billing (JSON parse).' 错误处理）。
