.class public Lcom/google/android/gms/internal/ads/Rm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Hm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/Hm<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private DW:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private FH:Ljava/lang/Throwable;

.field private Hw:Z

.field private final Zo:Lcom/google/android/gms/internal/ads/Im;

.field private final j6:Ljava/lang/Object;

.field private v5:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Rm;->j6:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/Im;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Im;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Rm;->Zo:Lcom/google/android/gms/internal/ads/Im;

    return-void
.end method

.method private final j6()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Rm;->FH:Ljava/lang/Throwable;

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Rm;->Hw:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final DW(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Rm;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Rm;->v5:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Rm;->j6()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object p1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Provided SettableFuture with multiple values."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v2, "SettableFuture.set"

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/pk;->DW(Ljava/lang/Throwable;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_21
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Rm;->Hw:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Rm;->DW:Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Rm;->j6:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Rm;->Zo:Lcom/google/android/gms/internal/ads/Im;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Im;->j6()V

    monitor-exit v0

    return-void

    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public cancel(Z)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Rm;->j6:Ljava/lang/Object;

    monitor-enter p1

    :try_start_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Rm;->j6()Z

    move-result v1

    if-eqz v1, :cond_f

    monitor-exit p1

    return v0

    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Rm;->v5:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Rm;->Hw:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Rm;->j6:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Rm;->Zo:Lcom/google/android/gms/internal/ads/Im;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Im;->j6()V

    monitor-exit p1

    return v0

    :catchall_20
    move-exception v0

    monitor-exit p1
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Rm;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Rm;->j6()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2d

    if-nez v1, :cond_11

    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Rm;->j6:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_2d

    goto :goto_11

    :catch_f
    move-exception v1

    :try_start_10
    throw v1

    :cond_11
    :goto_11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Rm;->FH:Ljava/lang/Throwable;

    if-nez v1, :cond_25

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Rm;->v5:Z

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Rm;->DW:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :cond_1d
    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "SettableFuture was cancelled."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Rm;->FH:Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Rm;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Rm;->j6()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_43

    if-nez v1, :cond_1b

    :try_start_9
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-eqz p3, :cond_1b

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/Rm;->j6:Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_18} :catch_19
    .catchall {:try_start_9 .. :try_end_18} :catchall_43

    goto :goto_1b

    :catch_19
    move-exception p1

    :try_start_1a
    throw p1

    :cond_1b
    :goto_1b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Rm;->FH:Ljava/lang/Throwable;

    if-nez p1, :cond_3b

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/Rm;->Hw:Z

    if-eqz p1, :cond_33

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/Rm;->v5:Z

    if-nez p1, :cond_2b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Rm;->DW:Ljava/lang/Object;

    monitor-exit v0

    return-object p1

    :cond_2b
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string p2, "SettableFuture was cancelled."

    invoke-direct {p1, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "SettableFuture timed out."

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Rm;->FH:Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_43
    move-exception p1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_1a .. :try_end_45} :catchall_43

    throw p1
.end method

.method public isCancelled()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Rm;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Rm;->v5:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isDone()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Rm;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Rm;->j6()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public final j6(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Rm;->Zo:Lcom/google/android/gms/internal/ads/Im;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Im;->j6(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final j6(Ljava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Rm;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Rm;->v5:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Rm;->j6()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object p1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Provided SettableFuture with multiple values."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v2, "SettableFuture.setException"

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/pk;->DW(Ljava/lang/Throwable;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Rm;->FH:Ljava/lang/Throwable;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Rm;->j6:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Rm;->Zo:Lcom/google/android/gms/internal/ads/Im;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Im;->j6()V

    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method
