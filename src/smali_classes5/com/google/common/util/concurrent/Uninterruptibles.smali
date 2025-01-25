.class public final Lcom/google/common/util/concurrent/Uninterruptibles;
.super Ljava/lang/Object;
.source "Uninterruptibles.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 52
    const/4 v0, 0x0

    .line 56
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_19
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    .line 63
    if-eqz v0, :cond_d

    .line 64
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 57
    :cond_d
    return-void

    .line 63
    :catchall_e
    move-exception v1

    if-eqz v0, :cond_18

    .line 64
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 66
    :cond_18
    throw v1

    .line 58
    :catch_19
    move-exception v0

    .line 59
    const/4 v0, 0x1

    .line 60
    goto :goto_1
.end method

.method public static awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;JLjava/util/concurrent/TimeUnit;)Z
    .registers 15

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 77
    .line 79
    :try_start_2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 80
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_26

    move-result-wide v6

    move-wide v2, v4

    .line 85
    :goto_b
    :try_start_b
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_1b
    .catchall {:try_start_b .. :try_end_10} :catchall_26

    move-result v1

    .line 92
    if-eqz v0, :cond_1a

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 85
    :cond_1a
    return v1

    .line 86
    :catch_1b
    move-exception v0

    .line 88
    :try_start_1c
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_33

    move-result-wide v2

    add-long v8, v6, v4

    sub-long v2, v8, v2

    move v0, v1

    .line 89
    goto :goto_b

    .line 92
    :catchall_26
    move-exception v1

    move-object v2, v1

    move v3, v0

    :goto_29
    if-eqz v3, :cond_32

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 95
    :cond_32
    throw v2

    .line 92
    :catchall_33
    move-exception v0

    move-object v2, v0

    move v3, v1

    goto :goto_29
.end method

.method public static awaitUninterruptibly(Ljava/util/concurrent/locks/Condition;JLjava/util/concurrent/TimeUnit;)Z
    .registers 15

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 107
    .line 109
    :try_start_2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 110
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_26

    move-result-wide v6

    move-wide v2, v4

    .line 114
    :goto_b
    :try_start_b
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_1b
    .catchall {:try_start_b .. :try_end_10} :catchall_26

    move-result v1

    .line 121
    if-eqz v0, :cond_1a

    .line 122
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 114
    :cond_1a
    return v1

    .line 115
    :catch_1b
    move-exception v0

    .line 117
    :try_start_1c
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_33

    move-result-wide v2

    add-long v8, v6, v4

    sub-long v2, v8, v2

    move v0, v1

    .line 118
    goto :goto_b

    .line 121
    :catchall_26
    move-exception v1

    move-object v2, v1

    move v3, v0

    :goto_29
    if-eqz v3, :cond_32

    .line 122
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 124
    :cond_32
    throw v2

    .line 121
    :catchall_33
    move-exception v0

    move-object v2, v0

    move v3, v1

    goto :goto_29
.end method

.method public static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    .line 199
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_1a
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    move-result-object v1

    .line 205
    if-eqz v0, :cond_e

    .line 206
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 199
    :cond_e
    return-object v1

    .line 205
    :catchall_f
    move-exception v1

    if-eqz v0, :cond_19

    .line 206
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 208
    :cond_19
    throw v1

    .line 200
    :catch_1a
    move-exception v0

    .line 201
    const/4 v0, 0x1

    .line 202
    goto :goto_1
.end method

.method public static getUninterruptibly(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 234
    .line 236
    :try_start_2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 237
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_26

    move-result-wide v6

    move-wide v2, v4

    .line 242
    :goto_b
    :try_start_b
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, v8}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_1b
    .catchall {:try_start_b .. :try_end_10} :catchall_26

    move-result-object v1

    .line 249
    if-eqz v0, :cond_1a

    .line 250
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 242
    :cond_1a
    return-object v1

    .line 243
    :catch_1b
    move-exception v0

    .line 245
    :try_start_1c
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_33

    move-result-wide v2

    add-long v8, v6, v4

    sub-long v2, v8, v2

    move v0, v1

    .line 246
    goto :goto_b

    .line 249
    :catchall_26
    move-exception v1

    move-object v2, v1

    move v3, v0

    :goto_29
    if-eqz v3, :cond_32

    .line 250
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 252
    :cond_32
    throw v2

    .line 249
    :catchall_33
    move-exception v0

    move-object v2, v0

    move v3, v1

    goto :goto_29
.end method

.method public static joinUninterruptibly(Ljava/lang/Thread;)V
    .registers 3

    .line 130
    const/4 v0, 0x0

    .line 134
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_19
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    .line 141
    if-eqz v0, :cond_d

    .line 142
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 135
    :cond_d
    return-void

    .line 141
    :catchall_e
    move-exception v1

    if-eqz v0, :cond_18

    .line 142
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 144
    :cond_18
    throw v1

    .line 136
    :catch_19
    move-exception v0

    .line 137
    const/4 v0, 0x1

    .line 138
    goto :goto_1
.end method

.method public static joinUninterruptibly(Ljava/lang/Thread;JLjava/util/concurrent/TimeUnit;)V
    .registers 15

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 154
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :try_start_5
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 158
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_28

    move-result-wide v6

    move-wide v2, v4

    .line 162
    :goto_e
    :try_start_e
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->timedJoin(Ljava/lang/Thread;J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_13} :catch_1d
    .catchall {:try_start_e .. :try_end_13} :catchall_28

    .line 170
    if-eqz v0, :cond_1c

    .line 171
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 163
    :cond_1c
    return-void

    .line 164
    :catch_1d
    move-exception v0

    .line 166
    :try_start_1e
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_35

    move-result-wide v2

    add-long v8, v6, v4

    sub-long v2, v8, v2

    move v0, v1

    .line 167
    goto :goto_e

    .line 170
    :catchall_28
    move-exception v1

    move-object v2, v1

    move v3, v0

    :goto_2b
    if-eqz v3, :cond_34

    .line 171
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 173
    :cond_34
    throw v2

    .line 170
    :catchall_35
    move-exception v0

    move-object v2, v0

    move v3, v1

    goto :goto_2b
.end method

.method public static putUninterruptibly(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue",
            "<TE;>;TE;)V"
        }
    .end annotation

    .line 284
    const/4 v0, 0x0

    .line 288
    :goto_1
    :try_start_1
    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_19
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    .line 295
    if-eqz v0, :cond_d

    .line 296
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 289
    :cond_d
    return-void

    .line 295
    :catchall_e
    move-exception v1

    if-eqz v0, :cond_18

    .line 296
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 298
    :cond_18
    throw v1

    .line 290
    :catch_19
    move-exception v0

    .line 291
    const/4 v0, 0x1

    .line 292
    goto :goto_1
.end method

.method public static sleepUninterruptibly(JLjava/util/concurrent/TimeUnit;)V
    .registers 13

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 306
    .line 308
    :try_start_2
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 309
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_25

    move-result-wide v6

    move-wide v2, v4

    .line 313
    :goto_b
    :try_start_b
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_1a
    .catchall {:try_start_b .. :try_end_10} :catchall_25

    .line 321
    if-eqz v0, :cond_19

    .line 322
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 314
    :cond_19
    return-void

    .line 315
    :catch_1a
    move-exception v0

    .line 317
    :try_start_1b
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_32

    move-result-wide v2

    add-long v8, v6, v4

    sub-long v2, v8, v2

    move v0, v1

    .line 318
    goto :goto_b

    .line 321
    :catchall_25
    move-exception v1

    move-object v2, v1

    move v3, v0

    :goto_28
    if-eqz v3, :cond_31

    .line 322
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 324
    :cond_31
    throw v2

    .line 321
    :catchall_32
    move-exception v0

    move-object v2, v0

    move v3, v1

    goto :goto_28
.end method

.method public static takeUninterruptibly(Ljava/util/concurrent/BlockingQueue;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue",
            "<TE;>;)TE;"
        }
    .end annotation

    .line 258
    const/4 v0, 0x0

    .line 262
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_1a
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    move-result-object v1

    .line 268
    if-eqz v0, :cond_e

    .line 269
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 262
    :cond_e
    return-object v1

    .line 268
    :catchall_f
    move-exception v1

    if-eqz v0, :cond_19

    .line 269
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 271
    :cond_19
    throw v1

    .line 263
    :catch_1a
    move-exception v0

    .line 264
    const/4 v0, 0x1

    .line 265
    goto :goto_1
.end method

.method public static tryAcquireUninterruptibly(Ljava/util/concurrent/Semaphore;IJLjava/util/concurrent/TimeUnit;)Z
    .registers 15

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 350
    .line 352
    :try_start_2
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 353
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_26

    move-result-wide v6

    move-wide v2, v4

    .line 358
    :goto_b
    :try_start_b
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v2, v3, v8}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_1b
    .catchall {:try_start_b .. :try_end_10} :catchall_26

    move-result v1

    .line 365
    if-eqz v0, :cond_1a

    .line 366
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 358
    :cond_1a
    return v1

    .line 359
    :catch_1b
    move-exception v0

    .line 361
    :try_start_1c
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_33

    move-result-wide v2

    add-long v8, v6, v4

    sub-long v2, v8, v2

    move v0, v1

    .line 362
    goto :goto_b

    .line 365
    :catchall_26
    move-exception v1

    move-object v2, v1

    move v3, v0

    :goto_29
    if-eqz v3, :cond_32

    .line 366
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 368
    :cond_32
    throw v2

    .line 365
    :catchall_33
    move-exception v0

    move-object v2, v0

    move v3, v1

    goto :goto_29
.end method

.method public static tryAcquireUninterruptibly(Ljava/util/concurrent/Semaphore;JLjava/util/concurrent/TimeUnit;)Z
    .registers 5

    .line 337
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/common/util/concurrent/Uninterruptibles;->tryAcquireUninterruptibly(Ljava/util/concurrent/Semaphore;IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method
