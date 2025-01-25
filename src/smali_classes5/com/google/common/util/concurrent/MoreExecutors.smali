.class public final Lcom/google/common/util/concurrent/MoreExecutors;
.super Ljava/lang/Object;
.source "MoreExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/MoreExecutors$Application;,
        Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;,
        Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;,
        Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;,
        Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator$ListenableScheduledTask;,
        Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator$NeverSuccessfulListenableFutureTask;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 1

    .line 64
    invoke-static {p0}, Lcom/google/common/util/concurrent/MoreExecutors;->useDaemonThreadFactory(Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method public static addDelayedShutdownHook(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .registers 5

    .line 165
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$Application;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->addDelayedShutdownHook(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    .line 166
    return-void
.end method

.method public static directExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 392
    sget-object v0, Lcom/google/common/util/concurrent/DirectExecutor;->INSTANCE:Lcom/google/common/util/concurrent/DirectExecutor;

    return-object v0
.end method

.method public static getExitingExecutorService(Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 104
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$Application;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->getExitingExecutorService(Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getExitingExecutorService(Ljava/util/concurrent/ThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ExecutorService;
    .registers 5

    .line 85
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$Application;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->getExitingExecutorService(Ljava/util/concurrent/ThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getExitingScheduledExecutorService(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    .line 146
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$Application;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->getExitingScheduledExecutorService(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getExitingScheduledExecutorService(Ljava/util/concurrent/ScheduledThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 5

    .line 125
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$Application;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;-><init>()V

    .line 126
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->getExitingScheduledExecutorService(Ljava/util/concurrent/ScheduledThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 125
    return-object v0
.end method

.method static invokeAnyImpl(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/Collection;ZJLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListeningExecutorService;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;ZJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 650
    invoke-static/range {p0 .. p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    invoke-static/range {p5 .. p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v7

    .line 653
    if-lez v7, :cond_83

    const/4 v4, 0x1

    :goto_d
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 654
    invoke-static {v7}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v16

    .line 655
    invoke-static {}, Lcom/google/common/collect/Queues;->newLinkedBlockingQueue()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v17

    .line 656
    move-object/from16 v0, p5

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    .line 667
    if-eqz p2, :cond_9c

    :try_start_22
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 669
    :goto_26
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 671
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Callable;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v4, v1}, Lcom/google/common/util/concurrent/MoreExecutors;->submitAndAddQueueListener(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_22 .. :try_end_3d} :catchall_85

    .line 672
    const/4 v6, 0x0

    const/4 v5, 0x1

    add-int/lit8 v4, v7, -0x1

    move v7, v4

    move v12, v5

    .line 676
    :goto_43
    :try_start_43
    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    .line 677
    if-nez v4, :cond_e6

    .line 678
    if-lez v7, :cond_9f

    .line 679
    add-int/lit8 v7, v7, -0x1

    .line 680
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Callable;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v5, v1}, Lcom/google/common/util/concurrent/MoreExecutors;->submitAndAddQueueListener(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catchall {:try_start_43 .. :try_end_62} :catchall_aa

    .line 681
    add-int/lit8 v12, v12, 0x1

    move v5, v12

    move-object v13, v4

    .line 696
    :goto_66
    if-eqz v13, :cond_e2

    .line 697
    add-int/lit8 v4, v5, -0x1

    .line 699
    :try_start_6a
    invoke-interface {v13}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_6d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6a .. :try_end_6d} :catch_df
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_6d} :catch_d5
    .catchall {:try_start_6a .. :try_end_6d} :catchall_aa

    move-result-object v5

    .line 713
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_72
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    .line 714
    const/4 v7, 0x1

    invoke-interface {v4, v7}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_72

    .line 653
    :cond_83
    const/4 v4, 0x0

    goto :goto_d

    .line 713
    :catchall_85
    move-exception v4

    move-object v5, v4

    :goto_87
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    .line 714
    const/4 v7, 0x1

    invoke-interface {v4, v7}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_8b

    .line 668
    :cond_9c
    const-wide/16 v8, 0x0

    goto :goto_26

    .line 682
    :cond_9f
    if-nez v12, :cond_ad

    .line 683
    if-nez v6, :cond_a9

    .line 709
    :try_start_a3
    new-instance v6, Ljava/util/concurrent/ExecutionException;

    const/4 v4, 0x0

    invoke-direct {v6, v4}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 711
    :cond_a9
    throw v6

    .line 713
    :catchall_aa
    move-exception v4

    move-object v5, v4

    goto :goto_87

    .line 684
    :cond_ad
    if-eqz p2, :cond_cc

    .line 685
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v17

    invoke-interface {v0, v10, v11, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    .line 686
    if-eqz v4, :cond_c6

    .line 689
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 690
    sub-long v8, v14, v8

    sub-long/2addr v10, v8

    move-wide v8, v14

    move v5, v12

    move-object v13, v4

    .line 691
    goto :goto_66

    .line 687
    :cond_c6
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v4

    .line 693
    :cond_cc
    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    move v5, v12

    move-object v13, v4

    goto :goto_66

    .line 702
    :catch_d5
    move-exception v6

    .line 703
    new-instance v5, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v5, v6}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
    :try_end_db
    .catchall {:try_start_a3 .. :try_end_db} :catchall_aa

    move-object v6, v5

    :goto_dc
    move v12, v4

    .line 706
    goto/16 :goto_43

    .line 700
    :catch_df
    move-exception v5

    move-object v6, v5

    .line 701
    goto :goto_dc

    :cond_e2
    move v4, v5

    .line 696
    goto :goto_dc

    .line 716
    :cond_e4
    throw v5

    .line 699
    :cond_e5
    return-object v5

    :cond_e6
    move v5, v12

    move-object v13, v4

    goto/16 :goto_66
.end method

.method private static isAppEngine()Z
    .registers 4

    const/4 v0, 0x0

    .line 767
    const-string v1, "com.google.appengine.runtime.environment"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    .line 787
    :cond_9
    :goto_9
    return v0

    .line 772
    :cond_a
    :try_start_a
    const-string v1, "com.google.apphosting.api.ApiProxy"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 773
    const-string v2, "getCurrentEnvironment"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 774
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_20} :catch_25
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_20} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_20} :catch_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_20} :catch_2b

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    .line 776
    :catch_25
    move-exception v1

    goto :goto_9

    .line 779
    :catch_27
    move-exception v1

    goto :goto_9

    .line 782
    :catch_29
    move-exception v1

    goto :goto_9

    .line 785
    :catch_2b
    move-exception v1

    goto :goto_9
.end method

.method public static listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;
    .registers 2

    .line 459
    instance-of v0, p0, Lcom/google/common/util/concurrent/ListeningExecutorService;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/common/util/concurrent/ListeningExecutorService;

    :goto_6
    return-object p0

    :cond_7
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_14

    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    move-object p0, v0

    goto :goto_6

    :cond_14
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;-><init>(Ljava/util/concurrent/ExecutorService;)V

    move-object p0, v0

    goto :goto_6
.end method

.method public static listeningDecorator(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;
    .registers 2

    .line 485
    instance-of v0, p0, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    :goto_6
    return-object p0

    :cond_7
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    move-object p0, v0

    goto :goto_6
.end method

.method public static newDirectExecutorService()Lcom/google/common/util/concurrent/ListeningExecutorService;
    .registers 2

    .line 368
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;-><init>(Lcom/google/common/util/concurrent/MoreExecutors$1;)V

    return-object v0
.end method

.method public static newSequentialExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .registers 2

    .line 439
    new-instance v0, Lcom/google/common/util/concurrent/SequentialExecutor;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/SequentialExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method static newThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    .line 797
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->platformThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 801
    :try_start_e
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_11} :catch_12

    .line 805
    :goto_11
    return-object v0

    .line 802
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method public static platformThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .registers 3

    .line 750
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->isAppEngine()Z

    move-result v0

    if-nez v0, :cond_b

    .line 751
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 754
    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    const-string v0, "com.google.appengine.api.ThreadManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 756
    const-string v1, "currentRequestThreadFactory"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 757
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadFactory;
    :try_end_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_24} :catch_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_24} :catch_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_24} :catch_3a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_24} :catch_25

    goto :goto_a

    .line 760
    :catch_25
    move-exception v0

    .line 761
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 758
    :catch_2f
    move-exception v0

    .line 759
    :goto_30
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t invoke ThreadManager.currentRequestThreadFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 758
    :catch_38
    move-exception v0

    goto :goto_30

    :catch_3a
    move-exception v0

    goto :goto_30
.end method

.method static rejectionPropagatingExecutor(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/util/concurrent/Executor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/common/util/concurrent/AbstractFuture",
            "<*>;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .line 965
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-ne p0, v0, :cond_d

    .line 971
    :goto_c
    return-object p0

    :cond_d
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$5;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/MoreExecutors$5;-><init>(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AbstractFuture;)V

    move-object p0, v0

    goto :goto_c
.end method

.method static renamingDecorator(Ljava/util/concurrent/Executor;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Executor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .line 825
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->isAppEngine()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 831
    :goto_c
    return-object p0

    :cond_d
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/MoreExecutors$2;-><init>(Ljava/util/concurrent/Executor;Lcom/google/common/base/Supplier;)V

    move-object p0, v0

    goto :goto_c
.end method

.method static renamingDecorator(Ljava/util/concurrent/ExecutorService;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/ExecutorService;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/ExecutorService;"
        }
    .end annotation

    .line 854
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->isAppEngine()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 860
    :goto_c
    return-object p0

    :cond_d
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$3;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/MoreExecutors$3;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/google/common/base/Supplier;)V

    move-object p0, v0

    goto :goto_c
.end method

.method static renamingDecorator(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/ScheduledExecutorService;"
        }
    .end annotation

    .line 888
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->isAppEngine()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 894
    :goto_c
    return-object p0

    :cond_d
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$4;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/MoreExecutors$4;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Supplier;)V

    move-object p0, v0

    goto :goto_c
.end method

.method public static shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)Z
    .registers 9

    .line 937
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    .line 939
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 942
    :try_start_a
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 944
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 946
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_1a} :catch_1f

    .line 954
    :cond_1a
    :goto_1a
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0

    .line 948
    :catch_1f
    move-exception v0

    .line 950
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 952
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_1a
.end method

.method private static submitAndAddQueueListener(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListeningExecutorService;",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation

    .line 727
    invoke-interface {p0, p1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 728
    new-instance v1, Lcom/google/common/util/concurrent/MoreExecutors$1;

    invoke-direct {v1, p2, v0}, Lcom/google/common/util/concurrent/MoreExecutors$1;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 735
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 728
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 736
    return-object v0
.end method

.method private static useDaemonThreadFactory(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 3

    .line 231
    new-instance v0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    .line 233
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setDaemon(Z)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    .line 234
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 231
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    .line 236
    return-void
.end method
