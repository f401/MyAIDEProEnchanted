.class public final Lcom/google/android/gms/internal/ads/fF;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Lcom/google/android/gms/internal/ads/gF;

.field private FH:Z

.field private final j6:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fF;->j6:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fF;->DW:Lcom/google/android/gms/internal/ads/gF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/fF;->FH:Z

    return-void
.end method


# virtual methods
.method public final DW()Landroid/content/Context;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fF;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/util/o;->j6()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fF;->DW:Lcom/google/android/gms/internal/ads/gF;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fF;->DW:Lcom/google/android/gms/internal/ads/gF;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/gF;->DW()Landroid/content/Context;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final j6()Landroid/app/Activity;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fF;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/util/o;->j6()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fF;->DW:Lcom/google/android/gms/internal/ads/gF;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fF;->DW:Lcom/google/android/gms/internal/ads/gF;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/gF;->j6()Landroid/app/Activity;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final j6(Landroid/content/Context;)V
    .registers 6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fF;->j6:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fF;->FH:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/common/util/o;->j6()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p1

    :cond_1
    instance-of v3, v0, Landroid/app/Application;

    if-eqz v3, :cond_5

    check-cast v0, Landroid/app/Application;

    :goto_1
    if-nez v0, :cond_2

    const-string v0, "Can not cast Context to Application"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fF;->DW:Lcom/google/android/gms/internal/ads/gF;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/ads/gF;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/gF;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/fF;->DW:Lcom/google/android/gms/internal/ads/gF;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fF;->DW:Lcom/google/android/gms/internal/ads/gF;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/gF;->j6(Landroid/app/Application;Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/fF;->FH:Z

    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/iF;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fF;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/util/o;->j6()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fF;->DW:Lcom/google/android/gms/internal/ads/gF;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/gF;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/gF;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fF;->DW:Lcom/google/android/gms/internal/ads/gF;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fF;->DW:Lcom/google/android/gms/internal/ads/gF;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/gF;->j6(Lcom/google/android/gms/internal/ads/iF;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
