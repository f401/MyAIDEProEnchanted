.class final synthetic Lcom/google/android/gms/internal/ads/wm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Hm;

.field private final j6:Lcom/google/android/gms/internal/ads/sm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/sm;Lcom/google/android/gms/internal/ads/Hm;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wm;->j6:Lcom/google/android/gms/internal/ads/sm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wm;->DW:Lcom/google/android/gms/internal/ads/Hm;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wm;->j6:Lcom/google/android/gms/internal/ads/sm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wm;->DW:Lcom/google/android/gms/internal/ads/Hm;

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/sm;->j6(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/sm;->j6(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
