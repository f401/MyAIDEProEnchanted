.class public Lcom/crashlytics/android/CrashlyticsInitProvider;
.super Landroid/content/ContentProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/CrashlyticsInitProvider$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private j6(Landroid/content/Context;)[Lio/fabric/sdk/android/Kit;
    .registers 8

    const-string v0, "Fabric"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_2a

    const-string v3, "firebase_crashlytics_ndk_enabled"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_1c} :catch_20

    if-eqz p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :catch_20
    move-exception p1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v3

    const-string v4, "Unable to get PackageManager while determining if Crashlytics NDK should be initialized"

    invoke-interface {v3, v0, v4, p1}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    new-instance v3, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v3}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    if-eqz p1, :cond_52

    :try_start_32
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string v4, "Crashlytics is initializing NDK crash reporter."

    invoke-interface {p1, v0, v4}, Lio/fabric/sdk/android/m;->v5(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/crashlytics/android/ndk/CrashlyticsNdk;

    invoke-direct {p1}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;-><init>()V
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_48

    const/4 v0, 0x2

    new-array v0, v0, [Lio/fabric/sdk/android/Kit;

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    return-object v0

    :catchall_48
    move-exception p1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v4

    const-string v5, "Crashlytics failed to initialize NDK crash reporting. Attempting to intialize SDK..."

    invoke-interface {v4, v0, v5, p1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_52
    new-array p1, v1, [Lio/fabric/sdk/android/Kit;

    aput-object v3, p1, v2

    return-object p1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method j6(Landroid/content/Context;Lio/fabric/sdk/android/services/common/u;Lcom/crashlytics/android/CrashlyticsInitProvider$a;)Z
    .registers 5

    invoke-virtual {p2, p1}, Lio/fabric/sdk/android/services/common/u;->v5(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p3, p1}, Lcom/crashlytics/android/CrashlyticsInitProvider$a;->j6(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_b
    invoke-virtual {p2, p1}, Lio/fabric/sdk/android/services/common/u;->Hw(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public onCreate()Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lio/fabric/sdk/android/services/common/u;

    invoke-direct {v1}, Lio/fabric/sdk/android/services/common/u;-><init>()V

    new-instance v2, Lcom/crashlytics/android/a;

    invoke-direct {v2}, Lcom/crashlytics/android/a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/crashlytics/android/CrashlyticsInitProvider;->j6(Landroid/content/Context;Lio/fabric/sdk/android/services/common/u;Lcom/crashlytics/android/CrashlyticsInitProvider$a;)Z

    move-result v1

    const-string v2, "CrashlyticsInitProvider"

    if-eqz v1, :cond_37

    :try_start_16
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/crashlytics/android/CrashlyticsInitProvider;->j6(Landroid/content/Context;)[Lio/fabric/sdk/android/Kit;

    move-result-object v1

    invoke-static {v0, v1}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsInitProvider initialization successful"

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/m;->v5(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_2a} :catch_2b

    goto :goto_40

    :catch_2b
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsInitProvider initialization unsuccessful"

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/m;->v5(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_37
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsInitProvider skipping initialization"

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/m;->v5(Ljava/lang/String;Ljava/lang/String;)V

    :goto_40
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 p1, 0x0

    return p1
.end method
