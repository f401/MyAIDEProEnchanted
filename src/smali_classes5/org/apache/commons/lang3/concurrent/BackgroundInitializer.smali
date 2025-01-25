.class public abstract Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;
.super Ljava/lang/Object;
.source "BackgroundInitializer.java"

# interfaces
.implements Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private executor:Ljava/util/concurrent/ExecutorService;

.field private externalExecutor:Ljava/util/concurrent/ExecutorService;

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 102
    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->setExternalExecutor(Ljava/util/concurrent/ExecutorService;)V

    .line 116
    return-void
.end method

.method private createExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 300
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->getTaskCount()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private createTask(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Callable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation

    .line 290
    new-instance v0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;-><init>(Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/lang3/concurrent/ConcurrentException;
        }
    .end annotation

    .line 211
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_7} :catch_17
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 214
    :goto_8
    return-object v0

    .line 215
    :catch_9
    move-exception v0

    .line 217
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 218
    new-instance v1, Lorg/apache/commons/lang3/concurrent/ConcurrentException;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/concurrent/ConcurrentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 212
    :catch_17
    move-exception v0

    .line 213
    invoke-static {v0}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;->handleCause(Ljava/util/concurrent/ExecutionException;)V

    .line 214
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected final getActiveExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    monitor-enter p0

    .line 248
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->executor:Ljava/util/concurrent/ExecutorService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getExternalExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    monitor-enter p0

    .line 124
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->externalExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFuture()Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 231
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->future:Ljava/util/concurrent/Future;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-eqz v0, :cond_7

    .line 235
    monitor-exit p0

    return-object v0

    .line 232
    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "start() must be called first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_f

    .line 230
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getTaskCount()I
    .registers 2

    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract initialize()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public isStarted()Z
    .registers 2

    monitor-enter p0

    .line 135
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->future:Ljava/util/concurrent/Future;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setExternalExecutor(Ljava/util/concurrent/ExecutorService;)V
    .registers 4

    monitor-enter p0

    .line 154
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_b

    .line 159
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->externalExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    .line 160
    monitor-exit p0

    return-void

    .line 155
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set ExecutorService after start()!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_13

    .line 153
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()Z
    .registers 3

    monitor-enter p0

    .line 174
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_26

    .line 179
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->getExternalExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->executor:Ljava/util/concurrent/ExecutorService;

    .line 180
    if-nez v0, :cond_24

    .line 181
    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->createExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->executor:Ljava/util/concurrent/ExecutorService;

    .line 186
    :goto_15
    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->createTask(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->future:Ljava/util/concurrent/Future;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_29

    .line 188
    monitor-exit p0

    const/4 v0, 0x1

    .line 191
    :goto_23
    return v0

    .line 183
    :cond_24
    const/4 v0, 0x0

    goto :goto_15

    .line 191
    :cond_26
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_23

    .line 173
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method
