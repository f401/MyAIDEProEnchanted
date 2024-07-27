.class final Lcom/google/android/gms/internal/ads/GF;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/c$a;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/DF;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/DF;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/GF;->j6:Lcom/google/android/gms/internal/ads/DF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/GF;->j6:Lcom/google/android/gms/internal/ads/DF;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/DF;->FH(Lcom/google/android/gms/internal/ads/DF;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/GF;->j6:Lcom/google/android/gms/internal/ads/DF;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/DF;->Hw(Lcom/google/android/gms/internal/ads/DF;)Lcom/google/android/gms/internal/ads/JF;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/GF;->j6:Lcom/google/android/gms/internal/ads/DF;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/GF;->j6:Lcom/google/android/gms/internal/ads/DF;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/DF;->Hw(Lcom/google/android/gms/internal/ads/DF;)Lcom/google/android/gms/internal/ads/JF;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/JF;->j6()Lcom/google/android/gms/internal/ads/NF;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/DF;->j6(Lcom/google/android/gms/internal/ads/DF;Lcom/google/android/gms/internal/ads/NF;)Lcom/google/android/gms/internal/ads/NF;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/GF;->j6:Lcom/google/android/gms/internal/ads/DF;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/DF;->FH(Lcom/google/android/gms/internal/ads/DF;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Unable to obtain a cache service instance."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/GF;->j6:Lcom/google/android/gms/internal/ads/DF;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/DF;->j6(Lcom/google/android/gms/internal/ads/DF;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onConnectionSuspended(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/GF;->j6:Lcom/google/android/gms/internal/ads/DF;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/DF;->FH(Lcom/google/android/gms/internal/ads/DF;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/GF;->j6:Lcom/google/android/gms/internal/ads/DF;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/DF;->j6(Lcom/google/android/gms/internal/ads/DF;Lcom/google/android/gms/internal/ads/NF;)Lcom/google/android/gms/internal/ads/NF;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/GF;->j6:Lcom/google/android/gms/internal/ads/DF;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/DF;->FH(Lcom/google/android/gms/internal/ads/DF;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
