.class public final Lcom/google/common/util/concurrent/Monitor;
.super Ljava/lang/Object;
.source "Monitor.java"


# instance fields
.field private activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

.field private final fair:Z

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Monitor;-><init>(Z)V

    .line 347
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 356
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    .line 357
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 358
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/util/concurrent/Monitor;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private await(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1068
    if-eqz p2, :cond_5

    .line 1069
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V

    .line 1071
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1074
    :cond_8
    :try_start_8
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 1075
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_17

    move-result v0

    if-eqz v0, :cond_8

    .line 1077
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1078
    return-void

    .line 1077
    :catchall_17
    move-exception v0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1078
    throw v0
.end method

.method private awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1100
    move v0, v2

    .line 1103
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_f

    .line 1104
    if-nez v0, :cond_e

    .line 1118
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1115
    :cond_e
    :goto_e
    return v1

    .line 1106
    :cond_f
    if-eqz v0, :cond_1a

    .line 1107
    if-eqz p4, :cond_16

    .line 1108
    :try_start_13
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V

    .line 1110
    :cond_16
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    move v0, v1

    .line 1113
    :cond_1a
    iget-object v3, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p2

    .line 1114
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_2d

    move-result v3

    if-eqz v3, :cond_3

    .line 1115
    if-nez v0, :cond_2b

    .line 1118
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    :cond_2b
    move v1, v2

    .line 1115
    goto :goto_e

    .line 1117
    :catchall_2d
    move-exception v1

    if-nez v0, :cond_33

    .line 1118
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1120
    :cond_33
    throw v1
.end method

.method private awaitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    .registers 4

    .line 1083
    if-eqz p2, :cond_5

    .line 1084
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V

    .line 1086
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1089
    :cond_8
    :try_start_8
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 1090
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_17

    move-result v0

    if-eqz v0, :cond_8

    .line 1092
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1093
    return-void

    .line 1092
    :catchall_17
    move-exception v0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1093
    throw v0
.end method

.method private beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 4

    .line 1032
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    .line 1033
    if-nez v0, :cond_e

    .line 1035
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    iput-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1036
    iput-object p1, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1038
    :cond_e
    return-void
.end method

.method private endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 6

    const/4 v1, 0x0

    .line 1043
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    .line 1044
    if-nez v0, :cond_16

    .line 1046
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    move-object v0, v1

    .line 1047
    :goto_c
    if-ne v2, p1, :cond_1c

    .line 1048
    if-nez v0, :cond_17

    .line 1049
    iget-object v0, v2, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1053
    :goto_14
    iput-object v1, v2, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1058
    :cond_16
    return-void

    .line 1051
    :cond_17
    iget-object v3, v2, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    iput-object v3, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_14

    .line 1046
    :cond_1c
    iget-object v3, v2, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    move-object v0, v2

    move-object v2, v3

    goto :goto_c
.end method

.method private static initNanoTime(J)J
    .registers 6

    const-wide/16 v2, 0x0

    .line 932
    cmp-long v0, p0, v2

    if-gtz v0, :cond_8

    move-wide v0, v2

    .line 936
    :cond_7
    :goto_7
    return-wide v0

    .line 935
    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 936
    cmp-long v2, v0, v2

    if-nez v2, :cond_7

    const-wide/16 v0, 0x1

    goto :goto_7
.end method

.method private isSatisfied(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .registers 3

    .line 1014
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_5

    move-result v0

    return v0

    .line 1015
    :catchall_5
    move-exception v0

    .line 1016
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalAllWaiters()V

    .line 1017
    throw v0
.end method

.method private static remainingNanos(JJ)J
    .registers 8

    const-wide/16 v0, 0x0

    .line 952
    cmp-long v2, p2, v0

    if-gtz v2, :cond_7

    :goto_6
    return-wide v0

    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    sub-long v0, p2, v0

    goto :goto_6
.end method

.method private signalAllWaiters()V
    .registers 3

    .line 1024
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    :goto_2
    if-eqz v0, :cond_c

    .line 1025
    iget-object v1, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 1024
    iget-object v0, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_2

    .line 1027
    :cond_c
    return-void
.end method

.method private signalNextWaiter()V
    .registers 3

    .line 981
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    :goto_2
    if-eqz v0, :cond_f

    .line 982
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Monitor;->isSatisfied(Lcom/google/common/util/concurrent/Monitor$Guard;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 983
    iget-object v0, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 987
    :cond_f
    return-void

    .line 981
    :cond_10
    iget-object v0, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_2
.end method

.method private static toSafeNanos(JLjava/util/concurrent/TimeUnit;)J
    .registers 11

    const-wide v2, 0x5ffffffffffffffdL  # 2.6815615859885185E154

    const-wide/16 v0, 0x0

    .line 921
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 922
    cmp-long v6, v4, v0

    if-gtz v6, :cond_10

    :goto_f
    return-wide v0

    :cond_10
    cmp-long v0, v4, v2

    if-lez v0, :cond_16

    move-wide v0, v2

    goto :goto_f

    :cond_16
    move-wide v0, v4

    goto :goto_f
.end method


# virtual methods
.method public enter()V
    .registers 2

    .line 362
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 363
    return-void
.end method

.method public enter(JLjava/util/concurrent/TimeUnit;)Z
    .registers 15

    const/4 v1, 0x1

    .line 372
    invoke-static {p1, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 373
    iget-object v6, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 374
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    if-nez v0, :cond_12

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 382
    :cond_11
    :goto_11
    return v1

    .line 377
    :cond_12
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    .line 379
    :try_start_16
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_32

    move-result-wide v8

    move-wide v2, v4

    .line 382
    :goto_1b
    :try_start_1b
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v2, v3, v7}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_20} :catch_2b
    .catchall {:try_start_1b .. :try_end_20} :catchall_3f

    move-result v1

    .line 389
    if-eqz v0, :cond_11

    .line 390
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_11

    .line 383
    :catch_2b
    move-exception v0

    .line 385
    :try_start_2c
    invoke-static {v8, v9, v4, v5}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_43

    move-result-wide v2

    move v0, v1

    .line 386
    goto :goto_1b

    .line 389
    :catchall_32
    move-exception v1

    move-object v2, v1

    move v3, v0

    :goto_35
    if-eqz v3, :cond_3e

    .line 390
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 392
    :cond_3e
    throw v2

    .line 389
    :catchall_3f
    move-exception v1

    move-object v2, v1

    move v3, v0

    goto :goto_35

    :catchall_43
    move-exception v0

    move-object v2, v0

    move v3, v1

    goto :goto_35
.end method

.method public enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .registers 4

    .line 608
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_18

    .line 611
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 612
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 614
    :try_start_9
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    move-result v1

    .line 618
    if-nez v1, :cond_12

    .line 619
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 616
    :cond_12
    return v1

    .line 618
    :catchall_13
    move-exception v1

    .line 619
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 621
    throw v1

    .line 609
    :cond_18
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 7

    .line 632
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_1f

    .line 635
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->enter(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 636
    const/4 v0, 0x0

    .line 641
    :cond_b
    :goto_b
    return v0

    .line 639
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_18

    move-result v0

    .line 643
    if-nez v0, :cond_b

    .line 644
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_b

    .line 643
    :catchall_18
    move-exception v0

    .line 644
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 646
    throw v0

    .line 633
    :cond_1f
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterIfInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 657
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_18

    .line 660
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 661
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 663
    :try_start_9
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    move-result v1

    .line 667
    if-nez v1, :cond_12

    .line 668
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 665
    :cond_12
    return v1

    .line 667
    :catchall_13
    move-exception v1

    .line 668
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 670
    throw v1

    .line 658
    :cond_18
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterIfInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 682
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_1d

    .line 685
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 686
    invoke-virtual {v1, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 687
    const/4 v0, 0x0

    .line 692
    :cond_d
    :goto_d
    return v0

    .line 690
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_18

    move-result v0

    .line 694
    if-nez v0, :cond_d

    .line 695
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_d

    .line 694
    :catchall_18
    move-exception v0

    .line 695
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 697
    throw v0

    .line 683
    :cond_1d
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterInterruptibly()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 402
    return-void
.end method

.method public enterInterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public enterWhen(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 432
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_1c

    .line 435
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 436
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    .line 437
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 439
    :try_start_d
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_16

    .line 442
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->await(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_17

    .line 450
    :cond_16
    return-void

    .line 446
    :catchall_17
    move-exception v0

    .line 447
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 449
    throw v0

    .line 433
    :cond_1c
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterWhen(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 462
    invoke-static {p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 463
    iget-object v1, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v1, p0, :cond_5e

    .line 466
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 467
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v8

    .line 472
    iget-boolean v4, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    if-nez v4, :cond_3f

    .line 474
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_39

    .line 477
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v4

    if-eqz v4, :cond_3f

    move-wide v4, v6

    .line 487
    :cond_22
    :try_start_22
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v9

    if-nez v9, :cond_32

    cmp-long v6, v4, v6

    if-nez v6, :cond_4a

    .line 492
    :goto_2c
    invoke-direct {p0, p1, v2, v3, v8}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_4f

    move-result v2

    if-eqz v2, :cond_33

    :cond_32
    const/4 v0, 0x1

    .line 496
    :cond_33
    if-nez v0, :cond_38

    .line 506
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 497
    :cond_38
    :goto_38
    return v0

    .line 475
    :cond_39
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 481
    :cond_3f
    invoke-static {v2, v3}, Lcom/google/common/util/concurrent/Monitor;->initNanoTime(J)J

    move-result-wide v4

    .line 482
    invoke-virtual {v1, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    if-nez v9, :cond_22

    goto :goto_38

    .line 494
    :cond_4a
    :try_start_4a
    invoke-static {v4, v5, v2, v3}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4f

    move-result-wide v2

    goto :goto_2c

    .line 499
    :catchall_4f
    move-exception v0

    .line 502
    if-nez v8, :cond_55

    .line 503
    :try_start_52
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_59

    .line 506
    :cond_55
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 509
    throw v0

    .line 506
    :catchall_59
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 507
    throw v0

    .line 464
    :cond_5e
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 4

    .line 514
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_1c

    .line 517
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 518
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    .line 519
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 521
    :try_start_d
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_16

    .line 524
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->awaitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_17

    .line 532
    :cond_16
    return-void

    .line 528
    :catchall_17
    move-exception v0

    .line 529
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 531
    throw v0

    .line 515
    :cond_1c
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 15

    .line 542
    invoke-static {p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 543
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_80

    .line 546
    iget-object v8, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 547
    const-wide/16 v2, 0x0

    .line 548
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    .line 549
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    .line 551
    :try_start_14
    iget-boolean v6, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    if-nez v6, :cond_1e

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v6

    if-nez v6, :cond_2c

    .line 552
    :cond_1e
    invoke-static {v4, v5}, Lcom/google/common/util/concurrent/Monitor;->initNanoTime(J)J
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_86

    move-result-wide v6

    move-wide v2, v4

    .line 555
    :goto_23
    :try_start_23
    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v2, v3, v9}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_28} :catch_78
    .catchall {:try_start_23 .. :try_end_28} :catchall_5d

    move-result v2

    if-eqz v2, :cond_6d

    move-wide v2, v6

    .line 571
    :cond_2c
    :goto_2c
    :try_start_2c
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_69
    .catchall {:try_start_2c .. :try_end_2f} :catchall_58

    move-result v6

    if-eqz v6, :cond_43

    .line 572
    const/4 v1, 0x1

    .line 583
    :goto_33
    if-nez v1, :cond_38

    .line 591
    :try_start_35
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_5d

    .line 595
    :cond_38
    if-eqz v0, :cond_41

    .line 596
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_41
    move v0, v1

    .line 583
    :goto_42
    return v0

    .line 575
    :cond_43
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_53

    .line 576
    :try_start_49
    invoke-static {v4, v5}, Lcom/google/common/util/concurrent/Monitor;->initNanoTime(J)J

    move-result-wide v2

    move-wide v6, v4

    .line 581
    :goto_4e
    invoke-direct {p0, p1, v6, v7, v1}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v1

    goto :goto_33

    .line 579
    :cond_53
    invoke-static {v2, v3, v4, v5}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_56} :catch_69
    .catchall {:try_start_49 .. :try_end_56} :catchall_58

    move-result-wide v6

    goto :goto_4e

    .line 590
    :catchall_58
    move-exception v1

    .line 591
    :try_start_59
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 593
    throw v1
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_5d

    .line 595
    :catchall_5d
    move-exception v1

    move v2, v0

    :goto_5f
    if-eqz v2, :cond_68

    .line 596
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 598
    :cond_68
    throw v1

    .line 584
    :catch_69
    move-exception v0

    .line 585
    const/4 v0, 0x1

    .line 586
    const/4 v1, 0x0

    .line 587
    goto :goto_2c

    .line 558
    :cond_6d
    if-eqz v0, :cond_76

    .line 596
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 558
    :cond_76
    const/4 v0, 0x0

    goto :goto_42

    .line 560
    :catch_78
    move-exception v0

    .line 561
    const/4 v2, 0x1

    const/4 v0, 0x1

    .line 562
    :try_start_7b
    invoke-static {v6, v7, v4, v5}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_89

    move-result-wide v2

    goto :goto_23

    .line 544
    :cond_80
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 595
    :catchall_86
    move-exception v1

    move v2, v0

    goto :goto_5f

    :catchall_89
    move-exception v0

    move-object v1, v0

    goto :goto_5f
.end method

.method public getOccupiedDepth()I
    .registers 2

    .line 854
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    return v0
.end method

.method public getQueueLength()I
    .registers 2

    .line 864
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result v0

    return v0
.end method

.method public getWaitQueueLength(Lcom/google/common/util/concurrent/Monitor$Guard;)I
    .registers 4

    .line 904
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_18

    .line 907
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 909
    :try_start_9
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_11

    .line 911
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 909
    return v0

    .line 911
    :catchall_11
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 912
    throw v0

    .line 905
    :cond_18
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public hasQueuedThread(Ljava/lang/Thread;)Z
    .registers 3

    .line 884
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThread(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public hasQueuedThreads()Z
    .registers 2

    .line 874
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThreads()Z

    move-result v0

    return v0
.end method

.method public hasWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .registers 3

    .line 894
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->getWaitQueueLength(Lcom/google/common/util/concurrent/Monitor$Guard;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isFair()Z
    .registers 2

    .line 830
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    return v0
.end method

.method public isOccupied()Z
    .registers 2

    .line 838
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    return v0
.end method

.method public isOccupiedByCurrentThread()Z
    .registers 2

    .line 846
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public leave()V
    .registers 4

    .line 817
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 820
    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    .line 821
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_10

    .line 824
    :cond_c
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 825
    return-void

    .line 824
    :catchall_10
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 825
    throw v0
.end method

.method public tryEnter()Z
    .registers 2

    .line 423
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    return v0
.end method

.method public tryEnterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .registers 4

    .line 709
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_1d

    .line 712
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 713
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_e

    .line 714
    const/4 v0, 0x0

    .line 719
    :cond_d
    :goto_d
    return v0

    .line 717
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_18

    move-result v0

    .line 721
    if-nez v0, :cond_d

    .line 722
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_d

    .line 721
    :catchall_18
    move-exception v0

    .line 722
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 724
    throw v0

    .line 710
    :cond_1d
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public waitFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v1, 0x1

    .line 734
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_19

    move v0, v1

    :goto_6
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_1b

    .line 737
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_18

    .line 738
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->await(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V

    .line 740
    :cond_18
    return-void

    .line 734
    :cond_19
    const/4 v0, 0x0

    goto :goto_6

    .line 735
    :cond_1b
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public waitFor(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v1, 0x1

    .line 751
    invoke-static {p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 752
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_1a

    move v0, v1

    :goto_a
    iget-object v4, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    and-int/2addr v0, v4

    if-eqz v0, :cond_2d

    .line 755
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 761
    :goto_19
    return v1

    .line 752
    :cond_1a
    const/4 v0, 0x0

    goto :goto_a

    .line 758
    :cond_1c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_27

    .line 761
    invoke-direct {p0, p1, v2, v3, v1}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v1

    goto :goto_19

    .line 759
    :cond_27
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 753
    :cond_2d
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 5

    const/4 v1, 0x1

    .line 769
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_19

    move v0, v1

    :goto_6
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_1b

    .line 772
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_18

    .line 773
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->awaitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V

    .line 775
    :cond_18
    return-void

    .line 769
    :cond_19
    const/4 v0, 0x0

    goto :goto_6

    .line 770
    :cond_1b
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 15

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 785
    invoke-static {p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 786
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_1b

    move v0, v1

    :goto_b
    iget-object v3, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_56

    .line 789
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 802
    :cond_1a
    :goto_1a
    return v1

    :cond_1b
    move v0, v2

    .line 786
    goto :goto_b

    .line 792
    :cond_1d
    invoke-static {v6, v7}, Lcom/google/common/util/concurrent/Monitor;->initNanoTime(J)J

    move-result-wide v8

    .line 794
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    move v0, v1

    move-wide v4, v6

    .line 798
    :goto_27
    :try_start_27
    invoke-direct {p0, p1, v4, v5, v0}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_35
    .catchall {:try_start_27 .. :try_end_2a} :catchall_5c

    move-result v1

    .line 809
    if-eqz v3, :cond_1a

    .line 810
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1a

    .line 799
    :catch_35
    move-exception v0

    .line 801
    :try_start_36
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_4b

    move-result v0

    if-eqz v0, :cond_44

    .line 810
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1a

    .line 805
    :cond_44
    :try_start_44
    invoke-static {v8, v9, v6, v7}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4b

    move-result-wide v4

    move v0, v2

    move v3, v1

    .line 806
    goto :goto_27

    .line 809
    :catchall_4b
    move-exception v0

    :goto_4c
    if-eqz v1, :cond_55

    .line 810
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 812
    :cond_55
    throw v0

    .line 787
    :cond_56
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 809
    :catchall_5c
    move-exception v0

    move v1, v3

    goto :goto_4c
.end method
