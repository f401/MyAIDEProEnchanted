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
    .registers 6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/SF;->FH:Lcom/google/android/gms/internal/ads/QF;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/QF;->DW(Lcom/google/android/gms/internal/ads/QF;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SF;->FH:Lcom/google/android/gms/internal/ads/QF;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/QF;->FH(Lcom/google/android/gms/internal/ads/QF;)Z

    move-result v0

    if-eqz v0, :cond_11

    monitor-exit p1

    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SF;->FH:Lcom/google/android/gms/internal/ads/QF;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/QF;->j6(Lcom/google/android/gms/internal/ads/QF;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/SF;->FH:Lcom/google/android/gms/internal/ads/QF;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/QF;->Hw(Lcom/google/android/gms/internal/ads/QF;)Lcom/google/android/gms/internal/ads/JF;

    move-result-object v0

    if-nez v0, :cond_21

    monitor-exit p1

    return-void

    :cond_21
    new-instance v1, Lcom/google/android/gms/internal/ads/TF;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/SF;->j6:Lcom/google/android/gms/internal/ads/zzty;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/SF;->DW:Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/google/android/gms/internal/ads/TF;-><init>(Lcom/google/android/gms/internal/ads/SF;Lcom/google/android/gms/internal/ads/JF;Lcom/google/android/gms/internal/ads/zzty;Lcom/google/android/gms/internal/ads/Rm;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/SF;->DW:Lcom/google/android/gms/internal/ads/Rm;

    new-instance v2, Lcom/google/android/gms/internal/ads/UF;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/UF;-><init>(Lcom/google/android/gms/internal/ads/Rm;Ljava/util/concurrent/Future;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Mm;->DW:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Rm;->j6(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    monitor-exit p1

    return-void

    :catchall_3c
    move-exception v0

    monitor-exit p1
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public final onConnectionSuspended(I)V
    .registers 2

    return-void
.end method
