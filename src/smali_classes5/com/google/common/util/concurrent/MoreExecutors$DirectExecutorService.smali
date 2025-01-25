.class final Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;
.super Lcom/google/common/util/concurrent/AbstractListeningExecutorService;
.source "MoreExecutors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/MoreExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectExecutorService"
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private runningTasks:I

.field private shutdown:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 240
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;-><init>()V

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    .line 251
    iput v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    .line 254
    iput-boolean v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/MoreExecutors$1;)V
    .registers 2

    .line 240
    invoke-direct {p0}, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;-><init>()V

    return-void
.end method

.method private endTask()V
    .registers 3

    .line 332
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 333
    :try_start_3
    iget v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    .line 334
    if-nez v0, :cond_10

    .line 335
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 337
    :cond_10
    monitor-exit v1

    .line 338
    return-void

    .line 337
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private startTask()V
    .registers 4

    .line 322
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 323
    :try_start_3
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    if-nez v0, :cond_f

    .line 326
    iget v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    .line 327
    monitor-exit v1

    .line 328
    return-void

    .line 324
    :cond_f
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v2, "Executor already shutdown"

    invoke-direct {v0, v2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 300
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 301
    iget-object v2, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 303
    :goto_7
    :try_start_7
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    if-eqz v3, :cond_12

    iget v3, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    if-nez v3, :cond_12

    .line 304
    monitor-exit v2

    const/4 v0, 0x1

    .line 306
    :goto_11
    return v0

    .line 305
    :cond_12
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_1b

    .line 306
    monitor-exit v2

    const/4 v0, 0x0

    goto :goto_11

    .line 308
    :cond_1b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 309
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    invoke-virtual {v3, v6, v0, v1}, Ljava/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 310
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v4, v6, v4

    sub-long/2addr v0, v4

    goto :goto_7

    .line 313
    :catchall_2e
    move-exception v0

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 259
    invoke-direct {p0}, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->startTask()V

    .line 261
    :try_start_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 263
    invoke-direct {p0}, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->endTask()V

    .line 264
    return-void

    .line 263
    :catchall_a
    move-exception v0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->endTask()V

    .line 264
    throw v0
.end method

.method public isShutdown()Z
    .registers 3

    .line 269
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 270
    :try_start_3
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    monitor-exit v1

    return v0

    .line 271
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isTerminated()Z
    .registers 3

    .line 293
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 294
    :try_start_3
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 295
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public shutdown()V
    .registers 3

    .line 276
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    .line 278
    iget v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    if-nez v0, :cond_f

    .line 279
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 281
    :cond_f
    monitor-exit v1

    .line 282
    return-void

    .line 281
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public shutdownNow()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown()V

    .line 288
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
