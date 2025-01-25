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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fF;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/util/o;->j6()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    monitor-exit v0

    return-object v2

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fF;->DW:Lcom/google/android/gms/internal/ads/gF;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/gF;->DW()Landroid/content/Context;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_16
    monitor-exit v0

    return-object v2

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public final j6()Landroid/app/Activity;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fF;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/util/o;->j6()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    monitor-exit v0

    return-object v2

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fF;->DW:Lcom/google/android/gms/internal/ads/gF;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/gF;->j6()Landroid/app/Activity;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_16
    monitor-exit v0

    return-object v2

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public final j6(Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fF;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/fF;->FH:Z

    if-nez v1, :cond_3a

    invoke-static {}, Lcom/google/android/gms/common/util/o;->j6()Z

    move-result v1

    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_16

    move-object v1, p1

    :cond_16
    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_1d

    check-cast v1, Landroid/app/Application;

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    if-nez v1, :cond_27

    const-string p1, "Can not cast Context to Application"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fF;->DW:Lcom/google/android/gms/internal/ads/gF;

    if-nez v2, :cond_32

    new-instance v2, Lcom/google/android/gms/internal/ads/gF;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/gF;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/fF;->DW:Lcom/google/android/gms/internal/ads/gF;

    :cond_32
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fF;->DW:Lcom/google/android/gms/internal/ads/gF;

    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/internal/ads/gF;->j6(Landroid/app/Application;Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/fF;->FH:Z

    :cond_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/iF;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fF;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/util/o;->j6()Z

    move-result v1

    if-nez v1, :cond_b

    monitor-exit v0

    return-void

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fF;->DW:Lcom/google/android/gms/internal/ads/gF;

    if-nez v1, :cond_16

    new-instance v1, Lcom/google/android/gms/internal/ads/gF;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/gF;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/fF;->DW:Lcom/google/android/gms/internal/ads/gF;

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fF;->DW:Lcom/google/android/gms/internal/ads/gF;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/gF;->j6(Lcom/google/android/gms/internal/ads/iF;)V

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method
