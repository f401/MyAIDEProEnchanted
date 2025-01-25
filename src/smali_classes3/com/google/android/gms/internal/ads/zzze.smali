.class public final Lcom/google/android/gms/internal/ads/zzze;
.super Landroid/content/ContentProvider;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static j6(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 3

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->j6(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_10} :catch_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    const-string v0, "Failed to load metadata: Package name not found"

    goto :goto_18

    :catch_15
    move-exception p0

    const-string v0, "Failed to load metadata: Null pointer exception"

    :goto_18
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzze;->j6(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    :try_start_7
    const-string v2, "com.google.android.gms.ads.APPLICATION_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_f} :catch_10

    goto :goto_17

    :catch_10
    move-exception v2

    const-string v2, "The com.google.android.gms.ads.APPLICATION_ID metadata must have a String value"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    move-object v2, v1

    :goto_17
    :try_start_17
    const-string v3, "com.google.android.gms.ads.AD_MANAGER_APP"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_1f
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_1f} :catch_21

    move-object v1, v0

    goto :goto_29

    :catch_21
    move-exception v0

    const-string v0, "The com.google.android.gms.ads.AD_MANAGER_APP metadata must have a boolean value"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    goto :goto_29

    :cond_28
    move-object v2, v1

    :goto_29
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_33

    :cond_31
    if-eqz v2, :cond_71

    :cond_33
    if-eqz v2, :cond_6d

    const-string v0, "^ca-app-pub-[0-9]{16}~[0-9]{10}$"

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, "Publisher provided Google AdMob App ID in manifest: "

    if-eqz v1, :cond_4e

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    :cond_4e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_53
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "measurementEnabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/internal/ads/le;->j6(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6d

    :cond_65
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\n\n******************************************************************************\n* Invalid application ID. Follow instructions here: https://goo.gl/fQ2neu to *\n* find your app ID.                                                          *\n******************************************************************************\n\n"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6d
    :goto_6d
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void

    :cond_71
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\n\n******************************************************************************\n* The Google Mobile Ads SDK was initialized incorrectly. AdMob publishers    *\n* should follow the instructions here: https://goo.gl/fQ2neu to add a valid  *\n* App ID inside the AndroidManifest. Google Ad Manager publishers should     *\n* follow instructions here: https://goo.gl/h17b6x.                           *\n******************************************************************************\n\n"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    const/4 p1, 0x0

    return-object p1
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 p1, 0x0

    return p1
.end method
