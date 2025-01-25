.class final synthetic Lcom/google/android/gms/internal/ads/Cm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Hm;

.field private final j6:Lcom/google/android/gms/internal/ads/Rm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/Hm;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Cm;->j6:Lcom/google/android/gms/internal/ads/Rm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Cm;->DW:Lcom/google/android/gms/internal/ads/Hm;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cm;->j6:Lcom/google/android/gms/internal/ads/Rm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cm;->DW:Lcom/google/android/gms/internal/ads/Hm;

    :try_start_4
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Rm;->DW(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_b} :catch_1d
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_b} :catch_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Rm;->j6(Ljava/lang/Throwable;)V

    return-void

    :catch_11
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :goto_19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Rm;->j6(Ljava/lang/Throwable;)V

    return-void

    :catch_1d
    move-exception v1

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_19
.end method
