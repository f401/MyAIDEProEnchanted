.class public final Lcom/google/android/gms/internal/ads/vm;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method public static j6(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/Em;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/android/gms/internal/ads/Em<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/Em;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Em;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/ads/Gm<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/Gm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Gm;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/Hm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Rm;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Ljava/util/concurrent/Future;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zm;-><init>(Lcom/google/android/gms/internal/ads/Rm;)V

    invoke-interface {p4, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/Rm;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/Am;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Am;-><init>(Ljava/util/concurrent/Future;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/Mm;->DW:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/Rm;->j6(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/qm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "TA;>;",
            "Lcom/google/android/gms/internal/ads/qm<",
            "-TA;+TB;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "TB;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Rm;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/ym;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/android/gms/internal/ads/ym;-><init>(Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/qm;Lcom/google/android/gms/internal/ads/Hm;)V

    invoke-interface {p0, v1, p2}, Lcom/google/android/gms/internal/ads/Hm;->j6(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/rm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "TA;>;",
            "Lcom/google/android/gms/internal/ads/rm<",
            "TA;TB;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "TB;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Rm;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/xm;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/android/gms/internal/ads/xm;-><init>(Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/rm;Lcom/google/android/gms/internal/ads/Hm;)V

    invoke-interface {p0, v1, p2}, Lcom/google/android/gms/internal/ads/Hm;->j6(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/Hm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/qm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/android/gms/internal/ads/qm<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "TV;>;"
        }
    .end annotation

    new-instance v6, Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/Rm;-><init>()V

    invoke-static {v6, p0}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Ljava/util/concurrent/Future;)V

    new-instance v7, Lcom/google/android/gms/internal/ads/Bm;

    move-object v0, v7

    move-object v1, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Bm;-><init>(Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/Hm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/qm;Ljava/util/concurrent/Executor;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/Mm;->DW:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v7, p1}, Lcom/google/android/gms/internal/ads/Hm;->j6(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v6
.end method

.method public static j6(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const-string v0, "Futures.resolveFuture"

    const/4 v1, 0x1

    :try_start_3
    sget-object v2, Lcom/google/android/gms/internal/ads/p;->pl:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_19} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception v2

    invoke-interface {p0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const-string p0, "Error waiting for future."

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_23
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object p0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/ads/pk;->DW(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object p1

    :catch_2b
    move-exception v2

    invoke-interface {p0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const-string p0, "InterruptedException caught while resolving future."

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_23
.end method

.method public static j6(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Futures.resolveFuture"

    const/4 v1, 0x1

    :try_start_3
    invoke-interface {p0, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_7} :catch_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_8

    return-object p0

    :catch_8
    move-exception p2

    invoke-interface {p0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const-string p0, "Error waiting for future."

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/pk;->DW(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object p1

    :catch_19
    move-exception p2

    invoke-interface {p0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const-string p0, "InterruptedException caught while resolving future."

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_11
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/Rm;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "+TV;>;",
            "Lcom/google/android/gms/internal/ads/Rm<",
            "TV;>;)V"
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Ljava/util/concurrent/Future;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Cm;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/ads/Cm;-><init>(Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/Hm;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/Mm;->DW:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/Hm;->j6(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/sm;Ljava/util/concurrent/Executor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "TV;>;",
            "Lcom/google/android/gms/internal/ads/sm<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/wm;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/ads/wm;-><init>(Lcom/google/android/gms/internal/ads/sm;Lcom/google/android/gms/internal/ads/Hm;)V

    invoke-interface {p0, v0, p2}, Lcom/google/android/gms/internal/ads/Hm;->j6(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/Hm;Ljava/util/concurrent/Future;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "TA;>;",
            "Ljava/util/concurrent/Future<",
            "TB;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/Dm;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/Dm;-><init>(Lcom/google/android/gms/internal/ads/Hm;Ljava/util/concurrent/Future;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/Mm;->DW:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/Hm;->j6(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static final synthetic j6(Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/Hm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/qm;Ljava/util/concurrent/Executor;)V
    .registers 6

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Rm;->DW(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_7} :catch_13
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    goto :goto_18

    :catch_a
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_18

    :catch_13
    move-exception p1

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :goto_18
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2a

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/qm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/Rm;)V

    return-void

    :cond_2a
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Rm;->j6(Ljava/lang/Throwable;)V

    return-void
.end method

.method static final synthetic j6(Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/qm;Lcom/google/android/gms/internal/ads/Hm;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Rm;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/qm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/Rm;)V
    :try_end_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_12} :catch_2d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_12} :catch_24
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_12} :catch_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Rm;->j6(Ljava/lang/Throwable;)V

    return-void

    :catch_18
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Rm;->j6(Ljava/lang/Throwable;)V

    return-void

    :catch_24
    move-exception p1

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Rm;->j6(Ljava/lang/Throwable;)V

    return-void

    :catch_2d
    move-exception p1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Rm;->cancel(Z)Z

    return-void
.end method
