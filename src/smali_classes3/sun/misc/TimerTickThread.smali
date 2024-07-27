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
    :try_start_0
    sget-object v0, Lsun/misc/TimerTickThread;->pool:Lsun/misc/TimerTickThread;

    .line 585
    if-nez v0, :cond_0

    .line 587
    new-instance v0, Lsun/misc/TimerTickThread;

    invoke-direct {v0}, Lsun/misc/TimerTickThread;-><init>()V

    .line 588
    iput-object p0, v0, Lsun/misc/TimerTickThread;->timer:Lsun/misc/Timer;

    .line 589
    iput-wide p1, v0, Lsun/misc/TimerTickThread;->lastSleepUntil:J

    .line 590
    invoke-virtual {v0}, Lsun/misc/TimerTickThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 599
    :goto_0
    const-class v1, Lsun/misc/TimerTickThread;

    monitor-exit v1

    return-object v0

    .line 592
    :cond_0
    :try_start_1
    sget-object v1, Lsun/misc/TimerTickThread;->pool:Lsun/misc/TimerTickThread;

    iget-object v1, v1, Lsun/misc/TimerTickThread;->next:Lsun/misc/TimerTickThread;

    sput-object v1, Lsun/misc/TimerTickThread;->pool:Lsun/misc/TimerTickThread;

    .line 593
    iput-object p0, v0, Lsun/misc/TimerTickThread;->timer:Lsun/misc/Timer;

    .line 594
    iput-wide p1, v0, Lsun/misc/TimerTickThread;->lastSleepUntil:J

    .line 595
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 596
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 597
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 582
    :catchall_1
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
    :try_start_0
    sget v0, Lsun/misc/TimerTickThread;->curPoolSize:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 613
    monitor-exit v1

    const/4 v0, 0x0

    .line 632
    :goto_0
    return v0

    .line 615
    :cond_0
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 620
    :goto_1
    iget-object v0, p0, Lsun/misc/TimerTickThread;->timer:Lsun/misc/Timer;

    if-nez v0, :cond_1

    .line 621
    monitor-enter p0

    .line 623
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 627
    :goto_2
    :try_start_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 629
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    monitor-enter v1

    .line 630
    :try_start_3
    sget v0, Lsun/misc/TimerTickThread;->curPoolSize:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lsun/misc/TimerTickThread;->curPoolSize:I

    .line 631
    monitor-exit v1

    .line 632
    const/4 v0, 0x1

    goto :goto_0

    .line 631
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 619
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 624
    :catch_0
    move-exception v0

    goto :goto_2
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
    :try_start_0
    iget-object v2, p0, Lsun/misc/TimerTickThread;->timer:Lsun/misc/Timer;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 640
    :try_start_1
    iget-wide v4, p0, Lsun/misc/TimerTickThread;->lastSleepUntil:J

    iget-object v0, p0, Lsun/misc/TimerTickThread;->timer:Lsun/misc/Timer;

    iget-wide v6, v0, Lsun/misc/Timer;->sleepUntil:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 641
    iget-object v0, p0, Lsun/misc/TimerTickThread;->timer:Lsun/misc/Timer;

    invoke-static {v0}, Lsun/misc/TimerThread;->requeue(Lsun/misc/Timer;)V

    .line 643
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 644
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 645
    invoke-direct {p0}, Lsun/misc/TimerTickThread;->returnToPool()Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    return-void

    .line 643
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 644
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
