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
            "Ljava/util/Map",
            "<",
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
    .registers 12

    const/4 v8, 0x0

    if-nez p0, :cond_0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "purchaseState"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    const-string v0, "productId"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "packageName"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "purchaseTime"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "orderId"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "purchaseToken"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Labcd/Jv$a;

    const-string v9, "developerPayload"

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Labcd/Jv$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v8

    goto :goto_0
.end method

.method private static j6(Ljava/lang/String;)Lcom/appfour/backbone/api/objects/InAppProduct;
    .registers 8

    sget-object v0, Labcd/Jv;->j6:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Labcd/Jv$c;

    if-eqz v2, :cond_0

    new-instance v0, Lcom/appfour/backbone/api/objects/InAppProduct;

    new-instance v1, Lcom/appfour/backbone/api/objects/Market;

    const-string v3, "com.android.vending"

    invoke-direct {v1, v3}, Lcom/appfour/backbone/api/objects/Market;-><init>(Ljava/lang/String;)V

    const-string v3, "subs"

    iget-object v4, v2, Labcd/Jv$c;->j6:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-wide v4, v2, Labcd/Jv$c;->Zo:J

    iget-object v6, v2, Labcd/Jv$c;->VH:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/appfour/backbone/api/objects/InAppProduct;-><init>(Lcom/appfour/backbone/api/objects/Market;Ljava/lang/String;ZJLjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/appfour/backbone/api/objects/InAppProduct;

    new-instance v1, Lcom/appfour/backbone/api/objects/Market;

    const-string v2, "com.android.vending"

    invoke-direct {v1, v2}, Lcom/appfour/backbone/api/objects/Market;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lcom/appfour/backbone/api/objects/InAppProduct;-><init>(Lcom/appfour/backbone/api/objects/Market;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static j6(Landroid/app/Activity;Landroid/content/IntentSender;I)V
    .registers 4

    if-eqz p1, :cond_0

    sget-object v0, Labcd/Jv;->DW:Landroid/content/IntentSender;

    invoke-virtual {p1, v0}, Landroid/content/IntentSender;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Labcd/Jv;->FH:Ljava/lang/String;

    invoke-static {v0}, Labcd/Jv;->j6(Ljava/lang/String;)Lcom/appfour/backbone/api/objects/InAppProduct;

    move-result-object v0

    invoke-static {p0, v0}, Labcd/kv;->j6(Landroid/app/Activity;Lcom/appfour/backbone/api/objects/InAppProduct;)V

    :cond_0
    return-void
.end method

.method private static j6(Landroid/os/Bundle;)V
    .registers 12

    :try_start_0
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Labcd/Jv$b;->j6(I)Labcd/Jv$b;

    move-result-object v0

    sget-object v1, Labcd/Jv$b;->j6:Labcd/Jv$b;

    if-ne v0, v1, :cond_0

    const-string v0, "DETAILS_LIST"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "type"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "productId"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "title"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "description"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "price"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "price_amount_micros"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v0, "price_currency_code"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Labcd/Jv;->j6:Ljava/util/Map;

    new-instance v0, Labcd/Jv$c;

    invoke-direct/range {v0 .. v8}, Labcd/Jv$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v10, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method

.method public static j6(Landroid/os/Bundle;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    invoke-static {p0}, Labcd/Jv;->j6(Landroid/os/Bundle;)V

    return-void
.end method

.method public static j6(Landroid/os/Bundle;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Labcd/Jv$b;->j6(I)Labcd/Jv$b;

    move-result-object v0

    sget-object v1, Labcd/Jv$b;->j6:Labcd/Jv$b;

    if-ne v0, v1, :cond_0

    const-string v0, "BUY_INTENT"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    sput-object v0, Labcd/Jv;->DW:Landroid/content/IntentSender;

    sput-object p4, Labcd/Jv;->FH:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static j6(Ljava/lang/Object;IILandroid/content/Intent;)V
    .registers 7

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RESPONSE_CODE"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Labcd/Jv$b;->j6(I)Labcd/Jv$b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "PlayInAppBilling"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Labcd/Jv$b;->j6:Labcd/Jv$b;

    if-ne v0, v1, :cond_0

    const-string v0, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Labcd/Jv;->j6()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Labcd/Jv;->DW(Ljava/lang/String;)Labcd/Jv$a;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    iget-object v0, v0, Labcd/Jv$a;->FH:Ljava/lang/String;

    invoke-static {v0}, Labcd/Jv;->j6(Ljava/lang/String;)Lcom/appfour/backbone/api/objects/InAppProduct;

    move-result-object v0

    invoke-static {p0, v0}, Labcd/kv;->DW(Landroid/app/Activity;Lcom/appfour/backbone/api/objects/InAppProduct;)V

    :cond_0
    return-void
.end method

.method public static j6(Ljava/lang/Object;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 8

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1, p2}, Labcd/Jv;->j6(Landroid/app/Activity;Landroid/content/IntentSender;I)V

    :cond_0
    return-void
.end method

.method private static j6()Z
    .registers 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v0, "X509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    const-string v2, "SHA1withRSA"

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    const-string v0, "xxx"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/Signature;->update([B)V

    const-string v0, "xxx"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "Verify check error"

    invoke-static {v2, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method
