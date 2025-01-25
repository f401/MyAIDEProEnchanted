.class public final Lio/fabric/sdk/android/services/common/r;
.super Ljava/lang/Object;


# direct methods
.method public static DW(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    invoke-static {p0}, Lio/fabric/sdk/android/services/common/r;->FH(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/common/r;->j6(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static final FH(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .registers 5

    new-instance v0, Lio/fabric/sdk/android/services/common/p;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-direct {v0, p0, v1}, Lio/fabric/sdk/android/services/common/p;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-object v0
.end method

.method public static j6(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    invoke-static {p0}, Lio/fabric/sdk/android/services/common/r;->FH(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/common/r;->j6(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method private static final j6(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .registers 5

    const-wide/16 v0, 0x2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0, v1, v2}, Lio/fabric/sdk/android/services/common/r;->j6(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static final j6(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .registers 13

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v7, Lio/fabric/sdk/android/services/common/q;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/fabric/sdk/android/services/common/q;-><init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Crashlytics Shutdown Hook for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v7, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-void
.end method
