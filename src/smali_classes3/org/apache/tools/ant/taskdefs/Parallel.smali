.class public Lorg/apache/tools/ant/taskdefs/Parallel;
.super Lorg/apache/tools/ant/Task;
.source "Parallel.java"

# interfaces
.implements Lorg/apache/tools/ant/TaskContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;,
        Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;
    }
.end annotation


# static fields
.field private static final NUMBER_TRIES:I = 0x64


# instance fields
.field private daemonTasks:Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;

.field private exceptionMessage:Ljava/lang/StringBuffer;

.field private failOnAny:Z

.field private firstException:Ljava/lang/Throwable;

.field private firstExitStatus:Ljava/lang/Integer;

.field private firstLocation:Lorg/apache/tools/ant/Location;

.field private nestedTasks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/Task;",
            ">;"
        }
    .end annotation
.end field

.field private numExceptions:I

.field private numThreads:I

.field private numThreadsPerProcessor:I

.field private final semaphore:Ljava/lang/Object;

.field private volatile stillRunning:Z

.field private timedOut:Z

.field private timeout:J


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->nestedTasks:Ljava/util/Vector;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->semaphore:Ljava/lang/Object;

    .line 78
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numThreads:I

    .line 81
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numThreadsPerProcessor:I

    .line 105
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numExceptions:I

    return-void
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/Parallel;)J
    .registers 3

    .line 49
    iget-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->timeout:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;
    .registers 2

    .line 49
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->semaphore:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lorg/apache/tools/ant/taskdefs/Parallel;Z)Z
    .registers 2

    .line 49
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->stillRunning:Z

    return p1
.end method

.method static synthetic access$402(Lorg/apache/tools/ant/taskdefs/Parallel;Z)Z
    .registers 2

    .line 49
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->timedOut:Z

    return p1
.end method

.method static synthetic access$500(Lorg/apache/tools/ant/taskdefs/Parallel;)Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->failOnAny:Z

    return v0
.end method

.method private killAll([Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;)V
    .registers 9

    const/4 v1, 0x0

    .line 410
    move v0, v1

    .line 413
    :cond_0
    array-length v4, p1

    move v3, v1

    move v2, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, p1, v3

    .line 414
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 415
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->interrupt()V

    .line 416
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 417
    const/4 v2, 0x1

    .line 413
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 420
    :cond_2
    if-eqz v2, :cond_3

    .line 421
    add-int/lit8 v0, v0, 0x1

    .line 422
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 424
    :cond_3
    if-eqz v2, :cond_4

    const/16 v2, 0x64

    if-lt v0, v2, :cond_0

    .line 425
    :cond_4
    return-void
.end method

.method static synthetic lambda$spinThreads$1(I)[Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;
    .registers 2

    .line 262
    new-array v0, p0, [Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;

    return-object v0
.end method

.method private processExceptions([Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;)V
    .registers 7

    .line 223
    if-nez p1, :cond_1

    .line 249
    :cond_0
    return-void

    .line 226
    :cond_1
    array-length v3, p1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 227
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->getException()Ljava/lang/Throwable;

    move-result-object v1

    .line 228
    if-eqz v1, :cond_5

    .line 229
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numExceptions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numExceptions:I

    .line 230
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstException:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 231
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstException:Ljava/lang/Throwable;

    .line 233
    :cond_2
    instance-of v0, v1, Lorg/apache/tools/ant/BuildException;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstLocation:Lorg/apache/tools/ant/Location;

    sget-object v4, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    if-ne v0, v4, :cond_3

    move-object v0, v1

    .line 235
    check-cast v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstLocation:Lorg/apache/tools/ant/Location;

    .line 237
    :cond_3
    instance-of v0, v1, Lorg/apache/tools/ant/ExitStatusException;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstExitStatus:Ljava/lang/Integer;

    if-nez v0, :cond_4

    move-object v0, v1

    .line 239
    check-cast v0, Lorg/apache/tools/ant/ExitStatusException;

    .line 240
    invoke-virtual {v0}, Lorg/apache/tools/ant/ExitStatusException;->getStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstExitStatus:Ljava/lang/Integer;

    .line 243
    invoke-virtual {v0}, Lorg/apache/tools/ant/ExitStatusException;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstLocation:Lorg/apache/tools/ant/Location;

    .line 245
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->exceptionMessage:Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->exceptionMessage:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private spinThreads()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->stillRunning:Z

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->timedOut:Z

    .line 259
    const/4 v5, 0x0

    .line 261
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->nestedTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Parallel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/Parallel$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/Parallel;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Parallel$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Parallel$$ExternalSyntheticLambda1;

    .line 262
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;

    .line 264
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->nestedTasks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    .line 265
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numThreads:I

    if-ge v3, v1, :cond_12

    move v2, v3

    .line 267
    :goto_0
    new-array v7, v2, [Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;

    .line 268
    new-instance v8, Ljava/lang/ThreadGroup;

    const-string v1, "parallel"

    invoke-direct {v8, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->daemonTasks:Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;->access$000(Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->daemonTasks:Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;->access$000(Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;

    move-object v4, v1

    .line 275
    :goto_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->semaphore:Ljava/lang/Object;

    monitor-enter v1

    .line 281
    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 283
    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->semaphore:Ljava/lang/Object;

    monitor-enter v9

    .line 285
    if-eqz v4, :cond_1

    .line 286
    const/4 v1, 0x0

    move v6, v1

    :goto_2
    :try_start_1
    array-length v1, v4

    if-ge v6, v1, :cond_1

    .line 287
    new-instance v10, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->daemonTasks:Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;->access$000(Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/Task;

    invoke-direct {v10, p0, v1}, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;-><init>(Lorg/apache/tools/ant/taskdefs/Parallel;Lorg/apache/tools/ant/Task;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    aput-object v10, v4, v6

    .line 288
    :try_start_2
    new-instance v1, Ljava/lang/Thread;

    aget-object v10, v4, v6

    invoke-direct {v1, v8, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    .line 289
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 290
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    .line 275
    :cond_0
    const/4 v1, 0x0

    move-object v4, v1

    goto :goto_1

    .line 296
    :cond_1
    const/4 v1, 0x0

    .line 297
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_2

    .line 298
    aget-object v10, v0, v1

    aput-object v10, v7, v6

    .line 299
    :try_start_3
    new-instance v10, Ljava/lang/Thread;

    aget-object v11, v7, v6

    invoke-direct {v10, v8, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    .line 300
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 297
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 303
    :cond_2
    iget-wide v10, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->timeout:J

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-eqz v6, :cond_3

    .line 305
    new-instance v6, Lorg/apache/tools/ant/taskdefs/Parallel$1;

    invoke-direct {v6, p0}, Lorg/apache/tools/ant/taskdefs/Parallel$1;-><init>(Lorg/apache/tools/ant/taskdefs/Parallel;)V

    .line 326
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    move v6, v1

    .line 331
    :goto_4
    if-ge v6, v3, :cond_8

    :try_start_4
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->stillRunning:Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_8

    .line 332
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_6

    .line 333
    aget-object v10, v7, v1

    if-eqz v10, :cond_4

    :try_start_5
    aget-object v10, v7, v1

    invoke-virtual {v10}, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->isFinished()Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v10

    if-eqz v10, :cond_5

    .line 334
    :cond_4
    aget-object v10, v0, v6

    aput-object v10, v7, v1

    .line 335
    :try_start_6
    new-instance v10, Ljava/lang/Thread;

    aget-object v1, v7, v1

    invoke-direct {v10, v8, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    .line 336
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 339
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_4

    .line 332
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 345
    :cond_6
    :try_start_7
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->semaphore:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 361
    :catch_0
    move-exception v1

    .line 362
    :goto_6
    const/4 v1, 0x1

    .line 365
    :goto_7
    :try_start_8
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->timedOut:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->failOnAny:Z

    if-nez v2, :cond_7

    .line 367
    invoke-direct {p0, v7}, Lorg/apache/tools/ant/taskdefs/Parallel;->killAll([Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;)V

    .line 369
    :cond_7
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 371
    if-nez v1, :cond_10

    .line 374
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->timedOut:Z

    if-nez v1, :cond_f

    .line 379
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->exceptionMessage:Ljava/lang/StringBuffer;

    .line 380
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numExceptions:I

    .line 381
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstException:Ljava/lang/Throwable;

    .line 382
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstExitStatus:Ljava/lang/Integer;

    .line 383
    sget-object v1, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstLocation:Lorg/apache/tools/ant/Location;

    .line 384
    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/Parallel;->processExceptions([Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;)V

    .line 385
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Parallel;->processExceptions([Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;)V

    .line 387
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numExceptions:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 388
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstException:Ljava/lang/Throwable;

    instance-of v1, v0, Lorg/apache/tools/ant/BuildException;

    if-eqz v1, :cond_c

    .line 389
    check-cast v0, Lorg/apache/tools/ant/BuildException;

    throw v0

    .line 349
    :cond_8
    :goto_8
    :try_start_9
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->stillRunning:Z
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v1, :cond_b

    .line 350
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v2, :cond_a

    .line 351
    aget-object v3, v7, v1

    if-eqz v3, :cond_9

    :try_start_a
    aget-object v3, v7, v1

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->isFinished()Z

    move-result v3

    if-nez v3, :cond_9

    .line 355
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->semaphore:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_8

    .line 369
    :catchall_0
    move-exception v0

    :try_start_b
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0

    .line 350
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 359
    :cond_a
    const/4 v1, 0x0

    :try_start_c
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->stillRunning:Z
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_8

    :cond_b
    move v1, v5

    .line 363
    goto :goto_7

    .line 391
    :cond_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstException:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 393
    :cond_d
    const/4 v1, 0x1

    if-le v0, v1, :cond_11

    .line 394
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstExitStatus:Ljava/lang/Integer;

    if-nez v0, :cond_e

    .line 395
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->exceptionMessage:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstLocation:Lorg/apache/tools/ant/Location;

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 398
    :cond_e
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->exceptionMessage:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstExitStatus:Ljava/lang/Integer;

    .line 399
    new-instance v2, Lorg/apache/tools/ant/ExitStatusException;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstLocation:Lorg/apache/tools/ant/Location;

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/tools/ant/ExitStatusException;-><init>(Ljava/lang/String;ILorg/apache/tools/ant/Location;)V

    throw v2

    .line 375
    :cond_f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Parallel execution timed out"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_10
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Parallel execution interrupted."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :catchall_1
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v0

    .line 401
    :cond_11
    return-void

    .line 361
    :catch_1
    move-exception v1

    goto/16 :goto_6

    :cond_12
    move v2, v1

    goto/16 :goto_0
.end method

.method private updateThreadCounts()V
    .registers 3

    .line 216
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numThreadsPerProcessor:I

    if-eqz v0, :cond_0

    .line 217
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numThreadsPerProcessor:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numThreads:I

    .line 220
    :cond_0
    return-void
.end method


# virtual methods
.method public addDaemons(Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;)V
    .registers 4

    .line 121
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->daemonTasks:Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;

    if-nez v0, :cond_0

    .line 124
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->daemonTasks:Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;

    .line 125
    return-void

    .line 122
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one daemon group is supported"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTask(Lorg/apache/tools/ant/Task;)V
    .registers 3

    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->nestedTasks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method public execute()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Parallel;->updateThreadCounts()V

    .line 206
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numThreads:I

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->nestedTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numThreads:I

    .line 209
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Parallel;->spinThreads()V

    .line 210
    return-void
.end method

.method public synthetic lambda$spinThreads$0$Parallel(Lorg/apache/tools/ant/Task;)Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;
    .registers 3

    .line 261
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;

    invoke-direct {v0, p0, p1}, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;-><init>(Lorg/apache/tools/ant/taskdefs/Parallel;Lorg/apache/tools/ant/Task;)V

    return-object v0
.end method

.method public setFailOnAny(Z)V
    .registers 2

    .line 145
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->failOnAny:Z

    .line 146
    return-void
.end method

.method public setPollInterval(I)V
    .registers 2

    .line 134
    return-void
.end method

.method public setThreadCount(I)V
    .registers 2

    .line 182
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numThreads:I

    .line 183
    return-void
.end method

.method public setThreadsPerProcessor(I)V
    .registers 2

    .line 167
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numThreadsPerProcessor:I

    .line 168
    return-void
.end method

.method public setTimeout(J)V
    .registers 4

    .line 195
    iput-wide p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->timeout:J

    .line 196
    return-void
.end method
