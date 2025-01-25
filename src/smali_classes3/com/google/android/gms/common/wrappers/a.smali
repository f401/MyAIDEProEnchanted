.class public Lcom/google/android/gms/common/wrappers/a;
.super Ljava/lang/Object;


# static fields
.field private static DW:Ljava/lang/Boolean;

.field private static j6:Landroid/content/Context;


# direct methods
.method public static j6(Landroid/content/Context;)Z
    .registers 4

    const-class v0, Lcom/google/android/gms/common/wrappers/a;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/wrappers/a;->j6:Landroid/content/Context;

    if-eqz v1, :cond_19

    sget-object v2, Lcom/google/android/gms/common/wrappers/a;->DW:Ljava/lang/Boolean;

    if-eqz v2, :cond_19

    if-ne v1, v0, :cond_19

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_52

    :goto_15
    const-class v0, Lcom/google/android/gms/common/wrappers/a;

    monitor-exit v0

    return p0

    :cond_19
    const/4 v1, 0x0

    :try_start_1a
    sput-object v1, Lcom/google/android/gms/common/wrappers/a;->DW:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/gms/common/util/o;->EQ()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_2e
    sput-object p0, Lcom/google/android/gms/common/wrappers/a;->DW:Ljava/lang/Boolean;
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_52

    goto :goto_49

    :cond_31
    :try_start_31
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "com.google.android.instantapps.supervisor.InstantAppsRuntime"

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/wrappers/a;->DW:Ljava/lang/Boolean;
    :try_end_41
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_41} :catch_42
    .catchall {:try_start_31 .. :try_end_41} :catchall_52

    goto :goto_49

    :catch_42
    move-exception p0

    const/4 p0, 0x0

    :try_start_44
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2e

    :goto_49
    sput-object v0, Lcom/google/android/gms/common/wrappers/a;->j6:Landroid/content/Context;

    sget-object p0, Lcom/google/android/gms/common/wrappers/a;->DW:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_52

    goto :goto_15

    :catchall_52
    move-exception p0

    const-class v0, Lcom/google/android/gms/common/wrappers/a;

    monitor-exit v0

    goto :goto_58

    :goto_57
    throw p0

    :goto_58
    goto :goto_57
.end method
