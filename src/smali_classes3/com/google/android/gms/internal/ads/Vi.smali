.class public final Lcom/google/android/gms/internal/ads/Vi;
.super Landroid/content/ContextWrapper;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method public static j6(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/Vi;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/google/android/gms/internal/ads/Vi;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_12

    return-object p0

    :cond_12
    return-object v0
.end method


# virtual methods
.method public final getApplicationContext()Landroid/content/Context;
    .registers 2

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public final getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getPackageResourcePath()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6(Landroid/app/Activity;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final startActivity(Landroid/content/Intent;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method
