.class public Lio/fabric/sdk/android/services/common/u;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method DW(Landroid/content/Context;)Z
    .registers 4

    new-instance v0, Lio/fabric/sdk/android/services/common/f;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/common/f;-><init>()V

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/services/common/f;->DW(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    return v1

    :cond_11
    new-instance v0, Lio/fabric/sdk/android/services/common/f;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/common/f;-><init>()V

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/services/common/f;->FH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method FH(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "google_app_id"

    const-string v1, "string"

    invoke-static {p1, v0, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public Hw(Landroid/content/Context;)Z
    .registers 5

    const-string v0, "io.fabric.auto_initialize"

    const-string v1, "bool"

    invoke-static {p1, v0, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Found Fabric auto-initialization flag for joint Firebase/Fabric customers"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    return p1
.end method

.method j6(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, "google_app_id"

    const-string v1, "string"

    invoke-static {p1, v0, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Generating Crashlytics ApiKey from google_app_id in Strings"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/common/u;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method

.method j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Lio/fabric/sdk/android/services/common/i;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public v5(Landroid/content/Context;)Z
    .registers 5

    const-string v0, "com.crashlytics.useFirebaseAppId"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    return v2

    :cond_b
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/common/u;->FH(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/common/u;->DW(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method
