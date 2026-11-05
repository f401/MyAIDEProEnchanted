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

## 2. 状态与遗留

```
类   3 / 3（本 part 的全部）
成员 9 行（interface 5 + Stub 1(asInterface) + Proxy 4）
门禁 validate ✔ · inherit CONFLICT 0 / DUPTARGET 0 / MISSING 0 · famcheck 0/0
```

下一刀（同一条线上，证据也强）：
`abcd/yk`（55 方法/27 字段，含 `aide_prime_monthly_0500` 等 SKU 目录）、
`abcd/yk$h`（'Subscription WS Client' + `https://api.appfour.com/aideservices/subscriptions/v1/registerPurchase`）、
`abcd/Jv`（Purchase 模型的 JSON 字段 `purchaseState/productId/packageName/purchaseTime`）、
`abcd/rk`（`RESPONSE_CODE`/`BUY_INTENT`）、`abcd/pk`（'Requesting in-app purchases' 分发器）、
`abcd/Lv`（PlayInstallReferrer）、`abcd/ok`（'Internal error in in-app billing (JSON parse).' 错误处理）。
