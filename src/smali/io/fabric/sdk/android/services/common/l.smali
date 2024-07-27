.class public Lio/fabric/sdk/android/services/common/l;
.super Ljava/lang/Object;


# static fields
.field private static DW:Ljava/lang/Object;

.field private static j6:Lio/fabric/sdk/android/services/common/l;


# instance fields
.field private final FH:Landroid/content/SharedPreferences;

.field private volatile Hw:Z

.field private VH:Z

.field private final Zo:Lio/fabric/sdk/android/services/common/s;

.field private volatile v5:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/fabric/sdk/android/services/common/l;->DW:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lio/fabric/sdk/android/services/common/l;->VH:Z

    if-eqz p1, :cond_2

    const-string v0, "com.google.firebase.crashlytics.prefs"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/l;->FH:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lio/fabric/sdk/android/services/common/t;->j6(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/s;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/l;->Zo:Lio/fabric/sdk/android/services/common/s;

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/l;->FH:Landroid/content/SharedPreferences;

    const-string v2, "firebase_crashlytics_collection_enabled"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/l;->FH:Landroid/content/SharedPreferences;

    const-string v2, "firebase_crashlytics_collection_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    move v2, v1

    :goto_1
    iput-boolean v0, p0, Lio/fabric/sdk/android/services/common/l;->v5:Z

    iput-boolean v2, p0, Lio/fabric/sdk/android/services/common/l;->Hw:Z

    invoke-static {p1}, Lio/fabric/sdk/android/services/common/i;->Ws(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_2
    iput-boolean v1, p0, Lio/fabric/sdk/android/services/common/l;->VH:Z

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "firebase_crashlytics_collection_enabled"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "firebase_crashlytics_collection_enabled"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    const-string v4, "Fabric"

    const-string v5, "Unable to get PackageManager. Falling through"

    invoke-interface {v2, v4, v5, v0}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move v0, v1

    move v2, v3

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v1, v3

    goto :goto_2
.end method

.method public static j6(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/l;
    .registers 3

    sget-object v1, Lio/fabric/sdk/android/services/common/l;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/fabric/sdk/android/services/common/l;->j6:Lio/fabric/sdk/android/services/common/l;

    if-nez v0, :cond_0

    new-instance v0, Lio/fabric/sdk/android/services/common/l;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/common/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/fabric/sdk/android/services/common/l;->j6:Lio/fabric/sdk/android/services/common/l;

    :cond_0
    sget-object v0, Lio/fabric/sdk/android/services/common/l;->j6:Lio/fabric/sdk/android/services/common/l;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public DW()Z
    .registers 2

    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/l;->v5:Z

    return v0
.end method

.method public j6(Z)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits",
            "ApplySharedPref"
        }
    .end annotation

    iput-boolean p1, p0, Lio/fabric/sdk/android/services/common/l;->v5:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/common/l;->Hw:Z

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/l;->FH:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firebase_crashlytics_collection_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public j6()Z
    .registers 2

    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/l;->VH:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/l;->Hw:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/l;->v5:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/l;->Zo:Lio/fabric/sdk/android/services/common/s;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/fabric/sdk/android/services/common/s;->j6()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
