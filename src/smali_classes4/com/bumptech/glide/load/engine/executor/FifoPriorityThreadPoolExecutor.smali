.class public Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory;,
        Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;,
        Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PriorityExecutor"


# instance fields
.field private final ordering:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final uncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    sget-object v0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;->LOG:Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;-><init>(ILcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;)V
    .registers 19

    new-instance v9, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;->ordering:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;->uncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;

    return-void
.end method

.method public constructor <init>(ILcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;)V
    .registers 12

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory;

    invoke-direct {v7}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$DefaultThreadFactory;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;)V

    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 5

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    if-nez p2, :cond_1a

    instance-of v0, p1, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1a

    check-cast p1, Ljava/util/concurrent/Future;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1a

    :try_start_17
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_1b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_17 .. :try_end_1a} :catch_22

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;->uncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;->handle(Ljava/lang/Throwable;)V

    goto :goto_1a

    :catch_22
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;->uncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;->handle(Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;->ordering:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;I)V

    return-object v0
.end method
