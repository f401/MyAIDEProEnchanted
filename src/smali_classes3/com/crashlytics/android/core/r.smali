.class Lcom/crashlytics/android/core/r;
.super Ljava/lang/Object;


# instance fields
.field private final j6:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/core/r;->j6:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method DW(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "CrashlyticsCore"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1c

    iget-object v2, p0, Lcom/crashlytics/android/core/r;->j6:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4

    invoke-interface {p1, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1c
    iget-object v2, p0, Lcom/crashlytics/android/core/r;->j6:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_26
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_26} :catch_32
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_26} :catch_27

    return-object p1

    :catch_27
    move-exception p1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    const-string v3, "Failed to execute task."

    invoke-interface {v2, v0, v3, p1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :catch_32
    move-exception p1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string v2, "Executor is shut down because we\'re handling a fatal crash."

    invoke-interface {p1, v0, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method j6(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/r;->j6:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/crashlytics/android/core/p;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/core/p;-><init>(Lcom/crashlytics/android/core/r;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_b
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    move-exception p1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string v0, "CrashlyticsCore"

    const-string v1, "Executor is shut down because we\'re handling a fatal crash."

    invoke-interface {p1, v0, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method j6(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/r;->j6:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/crashlytics/android/core/q;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/core/q;-><init>(Lcom/crashlytics/android/core/r;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_b
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    move-exception p1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string v0, "CrashlyticsCore"

    const-string v1, "Executor is shut down because we\'re handling a fatal crash."

    invoke-interface {p1, v0, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
