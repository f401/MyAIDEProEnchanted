.class Lsun/misc/TimerTickThread;
.super Ljava/lang/Thread;
.source "Timer.java"


# static fields
.field static final MAX_POOL_SIZE:I = 0x3

.field static curPoolSize:I

.field static pool:Lsun/misc/TimerTickThread;


# instance fields
.field lastSleepUntil:J

.field next:Lsun/misc/TimerTickThread;

.field timer:Lsun/misc/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 549
    const/4 v0, 0x0

    sput v0, Lsun/misc/TimerTickThread;->curPoolSize:I

    .line 554
    const/4 v0, 0x0

    sput-object v0, Lsun/misc/TimerTickThread;->pool:Lsun/misc/TimerTickThread;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 540
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/TimerTickThread;->next:Lsun/misc/TimerTickThread;

    return-void
.end method

.method protected static call(Lsun/misc/Timer;J)Lsun/misc/TimerTickThread;
    .registers 6

    const-class v0, Lsun/misc/TimerTickThread;

    monitor-enter v0

    .line 583
    :try_start_3
    sget-object v0, Lsun/misc/TimerTickThread;->pool:Lsun/misc/TimerTickThread;

    .line 585
    if-nez v0, :cond_17

    .line 587
    new-instance v0, Lsun/misc/TimerTickThread;

    invoke-direct {v0}, Lsun/misc/TimerTickThread;-><init>()V

    .line 588
    iput-object p0, v0, Lsun/misc/TimerTickThread;->timer:Lsun/misc/Timer;

    .line 589
    iput-wide p1, v0, Lsun/misc/TimerTickThread;->lastSleepUntil:J

    .line 590
    invoke-virtual {v0}, Lsun/misc/TimerTickThread;->start()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_2a

    .line 599
    :goto_13
    const-class v1, Lsun/misc/TimerTickThread;

    monitor-exit v1

    return-object v0

    .line 592
    :cond_17
    :try_start_17
    sget-object v1, Lsun/misc/TimerTickThread;->pool:Lsun/misc/TimerTickThread;

    iget-object v1, v1, Lsun/misc/TimerTickThread;->next:Lsun/misc/TimerTickThread;

    sput-object v1, Lsun/misc/TimerTickThread;->pool:Lsun/misc/TimerTickThread;

    .line 593
    iput-object p0, v0, Lsun/misc/TimerTickThread;->timer:Lsun/misc/Timer;

    .line 594
    iput-wide p1, v0, Lsun/misc/TimerTickThread;->lastSleepUntil:J

    .line 595
    monitor-enter v0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_2a

    .line 596
    :try_start_22
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 597
    monitor-exit v0

    goto :goto_13

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_27

    :try_start_29
    throw v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 582
    :catchall_2a
    move-exception v0

    const-class v1, Lsun/misc/TimerTickThread;

    monitor-exit v1

    throw v0
.end method

.method private returnToPool()Z
    .registers 4

    .line 611
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    monitor-enter v1

    .line 612
    :try_start_5
    sget v0, Lsun/misc/TimerTickThread;->curPoolSize:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_d

    .line 613
    monitor-exit v1

    const/4 v0, 0x0

    .line 632
    :goto_c
    return v0

    .line 615
    :cond_d
    sget-object v0, Lsun/misc/TimerTickThread;->pool:Lsun/misc/TimerTickThread;

    iput-object v0, p0, Lsun/misc/TimerTickThread;->next:Lsun/misc/TimerTickThread;

    .line 616
    sput-object p0, Lsun/misc/TimerTickThread;->pool:Lsun/misc/TimerTickThread;

    .line 617
    sget v0, Lsun/misc/TimerTickThread;->curPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lsun/misc/TimerTickThread;->curPoolSize:I

    .line 618
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/TimerTickThread;->timer:Lsun/misc/Timer;

    .line 619
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_3b

    .line 620
    :goto_1d
    iget-object v0, p0, Lsun/misc/TimerTickThread;->timer:Lsun/misc/Timer;

    if-nez v0, :cond_2a

    .line 621
    monitor-enter p0

    .line 623
    :try_start_22
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_3e
    .catchall {:try_start_22 .. :try_end_25} :catchall_27

    .line 627
    :goto_25
    :try_start_25
    monitor-exit p0

    goto :goto_1d

    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v0

    .line 629
    :cond_2a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    monitor-enter v1

    .line 630
    :try_start_2f
    sget v0, Lsun/misc/TimerTickThread;->curPoolSize:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lsun/misc/TimerTickThread;->curPoolSize:I

    .line 631
    monitor-exit v1

    .line 632
    const/4 v0, 0x1

    goto :goto_c

    .line 631
    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_38

    throw v0

    .line 619
    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0

    .line 624
    :catch_3e
    move-exception v0

    goto :goto_25
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 637
    :cond_0
    iget-object v0, p0, Lsun/misc/TimerTickThread;->timer:Lsun/misc/Timer;

    iget-object v0, v0, Lsun/misc/Timer;->owner:Lsun/misc/Timeable;

    iget-object v1, p0, Lsun/misc/TimerTickThread;->timer:Lsun/misc/Timer;

    invoke-interface {v0, v1}, Lsun/misc/Timeable;->tick(Lsun/misc/Timer;)V

    .line 638
    sget-object v1, Lsun/misc/TimerThread;->timerThread:Lsun/misc/TimerThread;

    monitor-enter v1

    .line 639
    :try_start_c
    iget-object v2, p0, Lsun/misc/TimerTickThread;->timer:Lsun/misc/Timer;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_2a

    .line 640
    :try_start_f
    iget-wide v4, p0, Lsun/misc/TimerTickThread;->lastSleepUntil:J

    iget-object v0, p0, Lsun/misc/TimerTickThread;->timer:Lsun/misc/Timer;

    iget-wide v6, v0, Lsun/misc/Timer;->sleepUntil:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_1e

    .line 641
    iget-object v0, p0, Lsun/misc/TimerTickThread;->timer:Lsun/misc/Timer;

    invoke-static {v0}, Lsun/misc/TimerThread;->requeue(Lsun/misc/Timer;)V

    .line 643
    :cond_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_27

    .line 644
    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_2a

    .line 645
    invoke-direct {p0}, Lsun/misc/TimerTickThread;->returnToPool()Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    return-void

    .line 643
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw v0

    .line 644
    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2a

    throw v0
.end method
