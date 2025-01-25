.class public final Lcom/google/android/gms/internal/ads/ED;
.super Ljava/lang/Object;


# instance fields
.field private j6:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final DW()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ED;->j6:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_8

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_8
    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ED;->j6:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final FH()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ED;->j6:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ED;->j6:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6()V
    .registers 2

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ED;->j6:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    goto :goto_1

    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e
.end method
