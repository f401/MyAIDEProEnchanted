.class public Lio/fabric/sdk/android/services/common/f;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected DW(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string v0, "Fabric"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v3, 0x80

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_5c

    const-string v2, "io.fabric.ApiKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_43

    :try_start_1b
    const-string v3, "@string/twitter_consumer_secret"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v3

    const-string v4, "Ignoring bad default value for Fabric ApiKey set by FirebaseUI-Auth"

    invoke-interface {v3, v0, v4}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2c} :catch_40

    goto :goto_2e

    :cond_2d
    move-object v1, v2

    :goto_2e
    if-nez v1, :cond_5c

    :try_start_30
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    const-string v3, "Falling back to Crashlytics key lookup from Manifest"

    invoke-interface {v2, v0, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.crashlytics.ApiKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3f} :catch_43

    goto :goto_5c

    :catch_40
    move-exception p1

    move-object v1, v2

    goto :goto_44

    :catch_43
    move-exception p1

    :goto_44
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught non-fatal exception while retrieving apiKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    :goto_5c
    return-object v1
.end method

.method protected FH(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, "io.fabric.ApiKey"

    const-string v1, "string"

    invoke-static {p1, v0, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v2, "Fabric"

    const-string v3, "Falling back to Crashlytics key lookup from Strings"

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.crashlytics.ApiKey"

    invoke-static {p1, v0, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1b
    if-eqz v0, :cond_26

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    return-object p1
.end method

.method public Hw(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/common/f;->DW(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/common/f;->FH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/common/f;->j6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/common/f;->v5(Landroid/content/Context;)V

    :cond_21
    return-object v0
.end method

.method protected j6()Ljava/lang/String;
    .registers 2

    const-string v0, "Fabric could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"io.fabric.ApiKey\" android:value=\"YOUR_API_KEY\"/>"

    return-object v0
.end method

.method protected j6(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    new-instance v0, Lio/fabric/sdk/android/services/common/u;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/common/u;-><init>()V

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/services/common/u;->j6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected v5(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p1}, Lio/fabric/sdk/android/services/common/i;->tp(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1a

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string v0, "Fabric"

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/f;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/fabric/sdk/android/m;->DW(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/f;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
