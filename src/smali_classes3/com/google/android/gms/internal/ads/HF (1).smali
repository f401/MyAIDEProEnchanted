.class final Lcom/google/android/gms/internal/ads/HF;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/c$b;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/DF;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/DF;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/HF;->j6:Lcom/google/android/gms/internal/ads/DF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/HF;->j6:Lcom/google/android/gms/internal/ads/DF;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/DF;->FH(Lcom/google/android/gms/internal/ads/DF;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/HF;->j6:Lcom/google/android/gms/internal/ads/DF;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/DF;->j6(Lcom/google/android/gms/internal/ads/DF;Lcom/google/android/gms/internal/ads/NF;)Lcom/google/android/gms/internal/ads/NF;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/HF;->j6:Lcom/google/android/gms/internal/ads/DF;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/DF;->Hw(Lcom/google/android/gms/internal/ads/DF;)Lcom/google/android/gms/internal/ads/JF;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/HF;->j6:Lcom/google/android/gms/internal/ads/DF;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/DF;->j6(Lcom/google/android/gms/internal/ads/DF;Lcom/google/android/gms/internal/ads/JF;)Lcom/google/android/gms/internal/ads/JF;

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/HF;->j6:Lcom/google/android/gms/internal/ads/DF;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/DF;->FH(Lcom/google/android/gms/internal/ads/DF;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_25
    move-exception v0

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v0
.end method
