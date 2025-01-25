.class final Lcom/google/android/gms/internal/ads/Gg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Fg;

.field private final j6:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Fg;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Gg;->DW:Lcom/google/android/gms/internal/ads/Fg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Gg;->j6:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gg;->DW:Lcom/google/android/gms/internal/ads/Fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vg;->VH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Gg;->DW:Lcom/google/android/gms/internal/ads/Fg;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Fg;->j6(Lcom/google/android/gms/internal/ads/Fg;)Lcom/google/android/gms/internal/ads/Mo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Gg;->DW:Lcom/google/android/gms/internal/ads/Fg;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Fg;->J0:Lcom/google/android/gms/internal/ads/we;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Gg;->j6:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/ads/internal/s;->j6(Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/we;Ljava/util/concurrent/CountDownLatch;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Fg;->j6(Lcom/google/android/gms/internal/ads/Fg;Z)Z

    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v1
.end method
