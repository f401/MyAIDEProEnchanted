.class public Labcd/Jv;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Jv$a;,
        Labcd/Jv$b;,
        Labcd/Jv$c;
    }
.end annotation


# static fields
.field private static DW:Landroid/content/IntentSender;

.field private static FH:Ljava/lang/String;

.field private static j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/Jv$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/Jv;->j6:Ljava/util/Map;

    return-void
.end method

.method private static DW(Ljava/lang/String;)Labcd/Jv$a;
    .registers 11

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "purchaseState"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    const-string p0, "productId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p0, "packageName"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p0, "purchaseTime"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string p0, "orderId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p0, "purchaseToken"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance p0, Labcd/Jv$a;

    const-string v2, "developerPayload"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Labcd/Jv$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_38} :catch_39

    return-object p0

    :catch_39
    move-exception p0

    return-object v0
.end method

.method private static j6(Ljava/lang/String;)Lcom/appfour/backbone/api/objects/InAppProduct;
    .registers 11

    sget-object v0, Labcd/Jv;->j6:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Jv$c;

    const-string v1, "com.android.vending"

    if-eqz v0, :cond_25

    new-instance v9, Lcom/appfour/backbone/api/objects/InAppProduct;

    new-instance v3, Lcom/appfour/backbone/api/objects/Market;

    invoke-direct {v3, v1}, Lcom/appfour/backbone/api/objects/Market;-><init>(Ljava/lang/String;)V

    const-string v1, "subs"

    iget-object v2, v0, Labcd/Jv$c;->j6:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-wide v6, v0, Labcd/Jv$c;->Zo:J

    iget-object v8, v0, Labcd/Jv$c;->VH:Ljava/lang/String;

    move-object v2, v9

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/appfour/backbone/api/objects/InAppProduct;-><init>(Lcom/appfour/backbone/api/objects/Market;Ljava/lang/String;ZJLjava/lang/String;)V

    return-object v9

    :cond_25
    new-instance v0, Lcom/appfour/backbone/api/objects/InAppProduct;

    new-instance v2, Lcom/appfour/backbone/api/objects/Market;

    invoke-direct {v2, v1}, Lcom/appfour/backbone/api/objects/Market;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, p0}, Lcom/appfour/backbone/api/objects/InAppProduct;-><init>(Lcom/appfour/backbone/api/objects/Market;Ljava/lang/String;)V

    return-object v0
.end method

.method private static j6(Landroid/app/Activity;Landroid/content/IntentSender;I)V
    .registers 3

    if-eqz p1, :cond_13

    sget-object p2, Labcd/Jv;->DW:Landroid/content/IntentSender;

    invoke-virtual {p1, p2}, Landroid/content/IntentSender;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p1, Labcd/Jv;->FH:Ljava/lang/String;

    invoke-static {p1}, Labcd/Jv;->j6(Ljava/lang/String;)Lcom/appfour/backbone/api/objects/InAppProduct;

    move-result-object p1

    invoke-static {p0, p1}, Labcd/kv;->j6(Landroid/app/Activity;Lcom/appfour/backbone/api/objects/InAppProduct;)V

    :cond_13
    return-void
.end method

.method private static j6(Landroid/os/Bundle;)V
    .registers 13

    :try_start_0
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Labcd/Jv$b;->j6(I)Labcd/Jv$b;

    move-result-object v0

    sget-object v1, Labcd/Jv$b;->j6:Labcd/Jv$b;

    if-ne v0, v1, :cond_63

    const-string v0, "DETAILS_LIST"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_63

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "productId"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "description"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "price"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "price_amount_micros"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v2, "price_currency_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v1, Labcd/Jv;->j6:Ljava/util/Map;

    new-instance v11, Labcd/Jv$c;

    move-object v2, v11

    move-object v4, v0

    invoke-direct/range {v2 .. v10}, Labcd/Jv$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v1, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_61} :catch_62

    goto :goto_1a

    :catch_62
    move-exception p0

    :cond_63
    return-void
.end method

.method public static j6(Landroid/os/Bundle;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    invoke-static {p0}, Labcd/Jv;->j6(Landroid/os/Bundle;)V

    return-void
.end method

.method public static j6(Landroid/os/Bundle;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string p1, "RESPONSE_CODE"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Labcd/Jv$b;->j6(I)Labcd/Jv$b;

    move-result-object p1

    sget-object p2, Labcd/Jv$b;->j6:Labcd/Jv$b;

    if-ne p1, p2, :cond_1e

    const-string p1, "BUY_INTENT"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0

    sput-object p0, Labcd/Jv;->DW:Landroid/content/IntentSender;

    sput-object p4, Labcd/Jv;->FH:Ljava/lang/String;

    :cond_1e
    return-void
.end method

.method public static j6(Ljava/lang/Object;IILandroid/content/Intent;)V
    .registers 7

    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_5f

    if-eqz p3, :cond_5f

    const-string p1, "RESPONSE_CODE"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5f

    const-string p2, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    const/4 v1, 0x0

    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Labcd/Jv$b;->j6(I)Labcd/Jv$b;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "PlayInAppBilling"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Labcd/Jv$b;->j6:Labcd/Jv$b;

    if-ne p1, v1, :cond_5f

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Labcd/Jv;->j6()Z

    move-result p2

    if-nez p2, :cond_5f

    invoke-static {p1}, Labcd/Jv;->DW(Ljava/lang/String;)Labcd/Jv$a;

    move-result-object p1

    if-eqz p1, :cond_5f

    check-cast p0, Landroid/app/Activity;

    iget-object p1, p1, Labcd/Jv$a;->FH:Ljava/lang/String;

    invoke-static {p1}, Labcd/Jv;->j6(Ljava/lang/String;)Lcom/appfour/backbone/api/objects/InAppProduct;

    move-result-object p1

    invoke-static {p0, p1}, Labcd/kv;->DW(Landroid/app/Activity;Lcom/appfour/backbone/api/objects/InAppProduct;)V

    :cond_5f
    return-void
.end method

.method public static j6(Ljava/lang/Object;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 7

    instance-of p3, p0, Landroid/app/Activity;

    if-eqz p3, :cond_9

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1, p2}, Labcd/Jv;->j6(Landroid/app/Activity;Landroid/content/IntentSender;I)V

    :cond_9
    return-void
.end method

.method private static j6()Z
    .registers 5

    const-string v0, "xxx"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, "X509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    const-string v3, "SHA1withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/Signature;->update([B)V

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/Signature;->verify([B)Z

    move-result v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4f

    return v0

    :catchall_4f
    move-exception v0

    const-string v2, "Verify check error"

    invoke-static {v2, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method
