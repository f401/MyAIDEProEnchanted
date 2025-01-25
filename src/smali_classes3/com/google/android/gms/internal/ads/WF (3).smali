.class final Lcom/google/android/gms/internal/ads/WF;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/c$b;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/QF;

.field private final j6:Lcom/google/android/gms/internal/ads/Rm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/QF;Lcom/google/android/gms/internal/ads/Rm;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/WF;->DW:Lcom/google/android/gms/internal/ads/QF;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/WF;->j6:Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/WF;->DW:Lcom/google/android/gms/internal/ads/QF;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/QF;->DW(Lcom/google/android/gms/internal/ads/QF;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WF;->j6:Lcom/google/android/gms/internal/ads/Rm;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Connection failed."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Rm;->j6(Ljava/lang/Throwable;)V

    monitor-exit p1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v0
.end method
