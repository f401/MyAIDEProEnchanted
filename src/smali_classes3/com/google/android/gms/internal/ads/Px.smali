.class final Lcom/google/android/gms/internal/ads/Px;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/ox;

.field private final j6:Lcom/google/android/gms/internal/ads/lE;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ox;Lcom/google/android/gms/internal/ads/lE;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Px;->DW:Lcom/google/android/gms/internal/ads/ox;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Px;->j6:Lcom/google/android/gms/internal/ads/lE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Px;->DW:Lcom/google/android/gms/internal/ads/ox;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ox;->j6(Lcom/google/android/gms/internal/ads/ox;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Px;->j6:Lcom/google/android/gms/internal/ads/lE;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
