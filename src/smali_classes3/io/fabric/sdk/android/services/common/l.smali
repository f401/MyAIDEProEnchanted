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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/common/l;->VH:Z

    if-eqz p1, :cond_66

    const-string v1, "com.google.firebase.crashlytics.prefs"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/services/common/l;->FH:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lio/fabric/sdk/android/services/common/t;->j6(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/s;

    move-result-object v2

    iput-object v2, p0, Lio/fabric/sdk/android/services/common/l;->Zo:Lio/fabric/sdk/android/services/common/s;

    const-string v2, "firebase_crashlytics_collection_enabled"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_24

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_48

    :cond_24
    :try_start_24
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x80

    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_56

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_56

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_48
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_48} :catch_4a

    :goto_48
    const/4 v2, 0x1

    goto :goto_58

    :catch_4a
    move-exception v1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v5, "Unable to get PackageManager. Falling through"

    invoke-interface {v2, v3, v5, v1}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_56
    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_58
    iput-boolean v1, p0, Lio/fabric/sdk/android/services/common/l;->v5:Z

    iput-boolean v2, p0, Lio/fabric/sdk/android/services/common/l;->Hw:Z

    invoke-static {p1}, Lio/fabric/sdk/android/services/common/i;->Ws(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_63

    const/4 v0, 0x1

    :cond_63
    iput-boolean v0, p0, Lio/fabric/sdk/android/services/common/l;->VH:Z

    return-void

    :cond_66
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "null context"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static j6(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/l;
    .registers 3

    sget-object v0, Lio/fabric/sdk/android/services/common/l;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lio/fabric/sdk/android/services/common/l;->j6:Lio/fabric/sdk/android/services/common/l;

    if-nez v1, :cond_e

    new-instance v1, Lio/fabric/sdk/android/services/common/l;

    invoke-direct {v1, p0}, Lio/fabric/sdk/android/services/common/l;-><init>(Landroid/content/Context;)V

    sput-object v1, Lio/fabric/sdk/android/services/common/l;->j6:Lio/fabric/sdk/android/services/common/l;

    :cond_e
    sget-object p0, Lio/fabric/sdk/android/services/common/l;->j6:Lio/fabric/sdk/android/services/common/l;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method


# virtual methods
.method public DW()Z
    .registers 2

    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/l;->v5:Z

    return v0
.end method

.method public j6(Z)V
    .registers 4

    iput-boolean p1, p0, Lio/fabric/sdk/android/services/common/l;->v5:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/common/l;->Hw:Z

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/l;->FH:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firebase_crashlytics_collection_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public j6()Z
    .registers 2

    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/l;->VH:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/l;->Hw:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/l;->v5:Z

    return v0

    :cond_b
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/l;->Zo:Lio/fabric/sdk/android/services/common/s;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lio/fabric/sdk/android/services/common/s;->j6()Z

    move-result v0

    return v0

    :cond_14
    const/4 v0, 0x1

    return v0
.end method
