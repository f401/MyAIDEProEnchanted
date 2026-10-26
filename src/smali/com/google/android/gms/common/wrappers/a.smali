.class public Lcom/google/android/gms/common/wrappers/a;
.super Ljava/lang/Object;


# static fields
.field private static DW:Ljava/lang/Boolean;

.field private static j6:Landroid/content/Context;


# direct methods
.method public static j6(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lcom/google/android/gms/common/wrappers/a;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/common/wrappers/a;->j6:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/google/android/gms/common/wrappers/a;->DW:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    if-ne v0, v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    const-class v1, Lcom/google/android/gms/common/wrappers/a;

    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput-object v0, Lcom/google/android/gms/common/wrappers/a;->DW:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/gms/common/util/o;->EQ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/google/android/gms/common/wrappers/a;->DW:Ljava/lang/Boolean;

    :goto_2
    sput-object v1, Lcom/google/android/gms/common/wrappers/a;->j6:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/common/wrappers/a;->DW:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "com.google.android.instantapps.supervisor.InstantAppsRuntime"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/wrappers/a;->DW:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/android/gms/common/wrappers/a;

    monitor-exit v1

    throw v0
.end method
