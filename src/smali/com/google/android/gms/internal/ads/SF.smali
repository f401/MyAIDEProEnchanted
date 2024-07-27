.class final Lcom/google/android/gms/internal/ads/SF;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/c$a;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Rm;

.field final FH:Lcom/google/android/gms/internal/ads/QF;

.field private final j6:Lcom/google/android/gms/internal/ads/zzty;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/QF;Lcom/google/android/gms/internal/ads/zzty;Lcom/google/android/gms/internal/ads/Rm;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/SF;->FH:Lcom/google/android/gms/internal/ads/QF;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/SF;->j6:Lcom/google/android/gms/internal/ads/zzty;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/SF;->DW:Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SF;->FH:Lcom/google/android/gms/internal/ads/QF;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/QF;->DW(Lcom/google/android/gms/internal/ads/QF;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SF;->FH:Lcom/google/android/gms/internal/ads/QF;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/QF;->FH(Lcom/google/android/gms/internal/ads/QF;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SF;->FH:Lcom/google/android/gms/internal/ads/QF;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/QF;->j6(Lcom/google/android/gms/internal/ads/QF;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SF;->FH:Lcom/google/android/gms/internal/ads/QF;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/QF;->Hw(Lcom/google/android/gms/internal/ads/QF;)Lcom/google/android/gms/internal/ads/JF;

    move-result-object v0

    if-nez v0, :cond_1

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
    new-instance v2, Lcom/google/android/gms/internal/ads/TF;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/SF;->j6:Lcom/google/android/gms/internal/ads/zzty;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/SF;->DW:Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/google/android/gms/internal/ads/TF;-><init>(Lcom/google/android/gms/internal/ads/SF;Lcom/google/android/gms/internal/ads/JF;Lcom/google/android/gms/internal/ads/zzty;Lcom/google/android/gms/internal/ads/Rm;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/SF;->DW:Lcom/google/android/gms/internal/ads/Rm;

    new-instance v3, Lcom/google/android/gms/internal/ads/UF;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/SF;->DW:Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/ads/UF;-><init>(Lcom/google/android/gms/internal/ads/Rm;Ljava/util/concurrent/Future;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Mm;->DW:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/Rm;->j6(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final onConnectionSuspended(I)V
    .registers 2

    return-void
.end method
