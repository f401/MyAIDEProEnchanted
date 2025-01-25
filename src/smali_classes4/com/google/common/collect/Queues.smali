.class public final Lcom/google/common/collect/Queues;
.super Ljava/lang/Object;
.source "Queues.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drain(Ljava/util/concurrent/BlockingQueue;Ljava/util/Collection;IJLjava/util/concurrent/TimeUnit;)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue",
            "<TE;>;",
            "Ljava/util/Collection",
            "<-TE;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 278
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    move-object/from16 v0, p5

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    .line 285
    const/4 v4, 0x0

    .line 286
    :cond_10
    :goto_10
    move/from16 v0, p2

    if-ge v4, v0, :cond_30

    .line 289
    sub-int v5, p2, v4

    move-object/from16 v0, p1

    invoke-interface {p0, v0, v5}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v5

    add-int/2addr v4, v5

    .line 290
    move/from16 v0, p2

    if-ge v4, v0, :cond_10

    .line 291
    add-long v10, v6, v8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v10, v11, v5}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    .line 292
    if-nez v5, :cond_31

    .line 299
    :cond_30
    return v4

    .line 295
    :cond_31
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v4, v4, 0x1

    .line 297
    goto :goto_10
.end method

.method public static drainUninterruptibly(Ljava/util/concurrent/BlockingQueue;Ljava/util/Collection;IJLjava/util/concurrent/TimeUnit;)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue",
            "<TE;>;",
            "Ljava/util/Collection",
            "<-TE;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")I"
        }
    .end annotation

    const/4 v6, 0x0

    .line 325
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    move-object/from16 v0, p5

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    move v5, v6

    move v4, v6

    .line 330
    :cond_12
    :goto_12
    move/from16 v0, p2

    if-ge v5, v0, :cond_32

    .line 333
    sub-int v6, p2, v5

    :try_start_18
    move-object/from16 v0, p1

    invoke-interface {p0, v0, v6}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;I)I
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_47

    move-result v6

    add-int/2addr v5, v6

    .line 334
    move/from16 v0, p2

    if-ge v5, v0, :cond_12

    .line 338
    :goto_23
    add-long v6, v8, v10

    :try_start_25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long/2addr v6, v12

    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v6, v7, v12}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_2f} :catch_44
    .catchall {:try_start_25 .. :try_end_2f} :catchall_47

    move-result-object v6

    .line 339
    if-nez v6, :cond_3c

    .line 352
    :cond_32
    if-eqz v4, :cond_3b

    .line 353
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 356
    :cond_3b
    return v5

    .line 347
    :cond_3c
    :try_start_3c
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_47

    .line 348
    add-int/lit8 v5, v5, 0x1

    .line 349
    goto :goto_12

    .line 340
    :catch_44
    move-exception v4

    .line 341
    const/4 v4, 0x1

    .line 342
    goto :goto_23

    .line 352
    :catchall_47
    move-exception v5

    if-eqz v4, :cond_51

    .line 353
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 355
    :cond_51
    throw v5
.end method

.method public static newArrayBlockingQueue(I)Ljava/util/concurrent/ArrayBlockingQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    return-object v0
.end method

.method public static newArrayDeque()Ljava/util/ArrayDeque;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayDeque",
            "<TE;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    return-object v0
.end method

.method public static newArrayDeque(Ljava/lang/Iterable;)Ljava/util/ArrayDeque;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/ArrayDeque",
            "<TE;>;"
        }
    .end annotation

    .line 76
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_e

    .line 77
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 81
    :goto_d
    return-object v0

    .line 79
    :cond_e
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 80
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_d
.end method

.method public static newConcurrentLinkedQueue()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<TE;>;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-object v0
.end method

.method public static newConcurrentLinkedQueue(Ljava/lang/Iterable;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<TE;>;"
        }
    .end annotation

    .line 99
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_e

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    .line 104
    :goto_d
    return-object v0

    .line 102
    :cond_e
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 103
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_d
.end method

.method public static newLinkedBlockingDeque()Ljava/util/concurrent/LinkedBlockingDeque;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<TE;>;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    return-object v0
.end method

.method public static newLinkedBlockingDeque(I)Ljava/util/concurrent/LinkedBlockingDeque;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<TE;>;"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    return-object v0
.end method

.method public static newLinkedBlockingDeque(Ljava/lang/Iterable;)Ljava/util/concurrent/LinkedBlockingDeque;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<TE;>;"
        }
    .end annotation

    .line 139
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_e

    .line 140
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(Ljava/util/Collection;)V

    .line 144
    :goto_d
    return-object v0

    .line 142
    :cond_e
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 143
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_d
.end method

.method public static newLinkedBlockingQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    return-object v0
.end method

.method public static newLinkedBlockingQueue(I)Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    return-object v0
.end method

.method public static newLinkedBlockingQueue(Ljava/lang/Iterable;)Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .line 175
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_e

    .line 176
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(Ljava/util/Collection;)V

    .line 180
    :goto_d
    return-object v0

    .line 178
    :cond_e
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 179
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_d
.end method

.method public static newPriorityBlockingQueue()Ljava/util/concurrent/PriorityBlockingQueue;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">()",
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    return-object v0
.end method

.method public static newPriorityBlockingQueue(Ljava/lang/Iterable;)Ljava/util/concurrent/PriorityBlockingQueue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .line 209
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_e

    .line 210
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(Ljava/util/Collection;)V

    .line 214
    :goto_d
    return-object v0

    .line 212
    :cond_e
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 213
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_d
.end method

.method public static newPriorityQueue()Ljava/util/PriorityQueue;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">()",
            "Ljava/util/PriorityQueue",
            "<TE;>;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    return-object v0
.end method

.method public static newPriorityQueue(Ljava/lang/Iterable;)Ljava/util/PriorityQueue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/PriorityQueue",
            "<TE;>;"
        }
    .end annotation

    .line 239
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_e

    .line 240
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Collection;)V

    .line 244
    :goto_d
    return-object v0

    .line 242
    :cond_e
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    .line 243
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_d
.end method

.method public static newSynchronousQueue()Ljava/util/concurrent/SynchronousQueue;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/SynchronousQueue",
            "<TE;>;"
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    return-object v0
.end method

.method public static synchronizedDeque(Ljava/util/Deque;)Ljava/util/Deque;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque",
            "<TE;>;)",
            "Ljava/util/Deque",
            "<TE;>;"
        }
    .end annotation

    .line 422
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/Synchronized;->deque(Ljava/util/Deque;Ljava/lang/Object;)Ljava/util/Deque;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedQueue(Ljava/util/Queue;)Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue",
            "<TE;>;)",
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation

    .line 389
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/Synchronized;->queue(Ljava/util/Queue;Ljava/lang/Object;)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method
