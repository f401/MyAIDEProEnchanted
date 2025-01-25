.class Lsun/misc/TimerThread;
.super Ljava/lang/Thread;
.source "Timer.java"


# static fields
.field public static debug:Z

.field static notified:Z

.field static timerQueue:Lsun/misc/Timer;

.field static timerThread:Lsun/misc/TimerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 351
    sput-boolean v0, Lsun/misc/TimerThread;->debug:Z

    .line 363
    sput-boolean v0, Lsun/misc/TimerThread;->notified:Z

    .line 416
    const/4 v0, 0x0

    sput-object v0, Lsun/misc/TimerThread;->timerQueue:Lsun/misc/Timer;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 366
    const-string v0, "TimerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 367
    sput-object p0, Lsun/misc/TimerThread;->timerThread:Lsun/misc/TimerThread;

    .line 368
    invoke-virtual {p0}, Lsun/misc/TimerThread;->start()V

    .line 369
    return-void
.end method

.method protected static dequeue(Lsun/misc/Timer;)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 466
    .line 467
    sget-object v3, Lsun/misc/TimerThread;->timerQueue:Lsun/misc/Timer;

    move-object v1, v2

    .line 469
    :goto_5
    if-eqz v3, :cond_e

    if-eq v3, p0, :cond_e

    .line 471
    iget-object v4, v3, Lsun/misc/Timer;->next:Lsun/misc/Timer;

    move-object v1, v3

    move-object v3, v4

    goto :goto_5

    .line 473
    :cond_e
    if-nez v3, :cond_3e

    .line 474
    sget-boolean v0, Lsun/misc/TimerThread;->debug:Z

    if-eqz v0, :cond_3c

    .line 475
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": dequeue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lsun/misc/Timer;->interval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ": no-op"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 478
    :cond_3c
    const/4 v0, 0x0

    .line 500
    :cond_3d
    :goto_3d
    return v0

    .line 479
    :cond_3e
    if-nez v1, :cond_a7

    .line 480
    iget-object v1, p0, Lsun/misc/Timer;->next:Lsun/misc/Timer;

    sput-object v1, Lsun/misc/TimerThread;->timerQueue:Lsun/misc/Timer;

    .line 481
    sput-boolean v0, Lsun/misc/TimerThread;->notified:Z

    .line 482
    sget-object v1, Lsun/misc/TimerThread;->timerThread:Lsun/misc/TimerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 486
    :goto_4b
    iput-object v2, p0, Lsun/misc/Timer;->next:Lsun/misc/Timer;

    .line 487
    sget-boolean v1, Lsun/misc/TimerThread;->debug:Z

    if-eqz v1, :cond_3d

    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 490
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": dequeue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lsun/misc/Timer;->interval:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 492
    sget-object v1, Lsun/misc/TimerThread;->timerQueue:Lsun/misc/Timer;

    .line 493
    :goto_7f
    if-eqz v1, :cond_ac

    .line 494
    iget-wide v4, v1, Lsun/misc/Timer;->sleepUntil:J

    .line 495
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v1, Lsun/misc/Timer;->interval:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v2

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 496
    iget-object v1, v1, Lsun/misc/Timer;->next:Lsun/misc/Timer;

    goto :goto_7f

    .line 484
    :cond_a7
    iget-object v3, p0, Lsun/misc/Timer;->next:Lsun/misc/Timer;

    iput-object v3, v1, Lsun/misc/Timer;->next:Lsun/misc/Timer;

    goto :goto_4b

    .line 498
    :cond_ac
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    goto :goto_3d
.end method

.method protected static enqueue(Lsun/misc/Timer;)V
    .registers 11

    .line 427
    sget-object v0, Lsun/misc/TimerThread;->timerQueue:Lsun/misc/Timer;

    .line 430
    if-eqz v0, :cond_c

    iget-wide v2, p0, Lsun/misc/Timer;->sleepUntil:J

    iget-wide v4, v0, Lsun/misc/Timer;->sleepUntil:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_75

    .line 432
    :cond_c
    sget-object v0, Lsun/misc/TimerThread;->timerQueue:Lsun/misc/Timer;

    iput-object v0, p0, Lsun/misc/Timer;->next:Lsun/misc/Timer;

    .line 433
    sput-object p0, Lsun/misc/TimerThread;->timerQueue:Lsun/misc/Timer;

    .line 434
    const/4 v0, 0x1

    sput-boolean v0, Lsun/misc/TimerThread;->notified:Z

    .line 435
    sget-object v0, Lsun/misc/TimerThread;->timerThread:Lsun/misc/TimerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 445
    :goto_1a
    sget-boolean v0, Lsun/misc/TimerThread;->debug:Z

    if-eqz v0, :cond_8b

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 448
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": enqueue "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lsun/misc/Timer;->interval:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 450
    sget-object v0, Lsun/misc/TimerThread;->timerQueue:Lsun/misc/Timer;

    .line 451
    :goto_4c
    if-eqz v0, :cond_86

    .line 452
    iget-wide v4, v0, Lsun/misc/Timer;->sleepUntil:J

    .line 453
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v0, Lsun/misc/Timer;->interval:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v2

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 454
    iget-object v0, v0, Lsun/misc/Timer;->next:Lsun/misc/Timer;

    goto :goto_4c

    :cond_74
    move-object v0, v1

    .line 439
    :cond_75
    iget-object v1, v0, Lsun/misc/Timer;->next:Lsun/misc/Timer;

    .line 440
    if-eqz v1, :cond_81

    iget-wide v2, p0, Lsun/misc/Timer;->sleepUntil:J

    iget-wide v4, v1, Lsun/misc/Timer;->sleepUntil:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_74

    .line 442
    :cond_81
    iput-object v1, p0, Lsun/misc/Timer;->next:Lsun/misc/Timer;

    .line 443
    iput-object p0, v0, Lsun/misc/Timer;->next:Lsun/misc/Timer;

    goto :goto_1a

    .line 456
    :cond_86
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 458
    :cond_8b
    return-void
.end method

.method protected static requeue(Lsun/misc/Timer;)V
    .registers 5

    .line 511
    iget-boolean v0, p0, Lsun/misc/Timer;->stopped:Z

    if-nez v0, :cond_1d

    .line 512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 513
    iget-boolean v2, p0, Lsun/misc/Timer;->regular:Z

    if-eqz v2, :cond_17

    .line 514
    iget-wide v0, p0, Lsun/misc/Timer;->sleepUntil:J

    iget-wide v2, p0, Lsun/misc/Timer;->interval:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lsun/misc/Timer;->sleepUntil:J

    .line 518
    :goto_13
    invoke-static {p0}, Lsun/misc/TimerThread;->enqueue(Lsun/misc/Timer;)V

    .line 519
    :cond_16
    :goto_16
    return-void

    .line 516
    :cond_17
    iget-wide v2, p0, Lsun/misc/Timer;->interval:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lsun/misc/Timer;->sleepUntil:J

    goto :goto_13

    .line 519
    :cond_1d
    sget-boolean v0, Lsun/misc/TimerThread;->debug:Z

    if-eqz v0, :cond_16

    .line 520
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": requeue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lsun/misc/Timer;->interval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ": no-op"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_16
.end method


# virtual methods
.method public run()V
    .registers 8

    monitor-enter p0

    .line 375
    :cond_1
    :goto_1
    :try_start_1
    sget-object v0, Lsun/misc/TimerThread;->timerQueue:Lsun/misc/Timer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_7c

    if-nez v0, :cond_b

    .line 377
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_7c

    goto :goto_1

    .line 378
    :catch_9
    move-exception v0

    goto :goto_1

    .line 382
    :cond_b
    const/4 v0, 0x0

    :try_start_c
    sput-boolean v0, Lsun/misc/TimerThread;->notified:Z

    .line 383
    sget-object v0, Lsun/misc/TimerThread;->timerQueue:Lsun/misc/Timer;

    iget-wide v0, v0, Lsun/misc/Timer;->sleepUntil:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_7c

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 384
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_20

    .line 386
    :try_start_1d
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_7f
    .catchall {:try_start_1d .. :try_end_20} :catchall_7c

    .line 392
    :cond_20
    :goto_20
    :try_start_20
    sget-boolean v0, Lsun/misc/TimerThread;->notified:Z

    if-nez v0, :cond_1

    .line 393
    sget-object v0, Lsun/misc/TimerThread;->timerQueue:Lsun/misc/Timer;

    .line 394
    sget-object v1, Lsun/misc/TimerThread;->timerQueue:Lsun/misc/Timer;

    iget-object v1, v1, Lsun/misc/Timer;->next:Lsun/misc/Timer;

    sput-object v1, Lsun/misc/TimerThread;->timerQueue:Lsun/misc/Timer;

    .line 395
    iget-wide v2, v0, Lsun/misc/Timer;->sleepUntil:J

    invoke-static {v0, v2, v3}, Lsun/misc/TimerTickThread;->call(Lsun/misc/Timer;J)Lsun/misc/TimerTickThread;

    move-result-object v1

    .line 397
    sget-boolean v2, Lsun/misc/TimerThread;->debug:Z

    if-eqz v2, :cond_1

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lsun/misc/Timer;->sleepUntil:J

    sub-long/2addr v2, v4

    .line 399
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tick("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lsun/misc/TimerTickThread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v0, Lsun/misc/Timer;->interval:J

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    const-wide/16 v0, 0xfa

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 402
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "*** BIG DELAY ***"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_20 .. :try_end_7b} :catchall_7c

    goto :goto_1

    .line 374
    :catchall_7c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 387
    :catch_7f
    move-exception v0

    goto :goto_20
.end method
