.class public final Lorg/xutils/common/task/TaskControllerImpl;
.super Ljava/lang/Object;
.source "TaskControllerImpl.java"

# interfaces
.implements Lorg/xutils/common/TaskController;


# static fields
.field private static volatile instance:Lorg/xutils/common/TaskController;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static registerInstance()V
    .registers 2

    .line 24
    sget-object v0, Lorg/xutils/common/task/TaskControllerImpl;->instance:Lorg/xutils/common/TaskController;

    if-nez v0, :cond_15

    .line 25
    const-class v0, Lorg/xutils/common/TaskController;

    monitor-enter v0

    .line 26
    :try_start_7
    sget-object v0, Lorg/xutils/common/task/TaskControllerImpl;->instance:Lorg/xutils/common/TaskController;

    if-nez v0, :cond_12

    .line 27
    new-instance v0, Lorg/xutils/common/task/TaskControllerImpl;

    invoke-direct {v0}, Lorg/xutils/common/task/TaskControllerImpl;-><init>()V

    sput-object v0, Lorg/xutils/common/task/TaskControllerImpl;->instance:Lorg/xutils/common/TaskController;

    .line 29
    :cond_12
    const-class v0, Lorg/xutils/common/TaskController;

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_1b

    .line 31
    :cond_15
    sget-object v0, Lorg/xutils/common/task/TaskControllerImpl;->instance:Lorg/xutils/common/TaskController;

    invoke-static {v0}, Lorg/xutils/x$Ext;->setTaskController(Lorg/xutils/common/TaskController;)V

    .line 32
    return-void

    .line 29
    :catchall_1b
    move-exception v0

    :try_start_1c
    const-class v1, Lorg/xutils/common/TaskController;

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_1b

    throw v0
.end method


# virtual methods
.method public autoPost(Ljava/lang/Runnable;)V
    .registers 4

    .line 213
    if-nez p1, :cond_3

    .line 219
    :goto_2
    return-void

    .line 214
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_15

    .line 215
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 217
    :cond_15
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    invoke-virtual {v0, p1}, Lorg/xutils/common/task/TaskProxy$InternalHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public post(Ljava/lang/Runnable;)V
    .registers 3

    .line 226
    if-nez p1, :cond_3

    .line 228
    :goto_2
    return-void

    .line 227
    :cond_3
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    invoke-virtual {v0, p1}, Lorg/xutils/common/task/TaskProxy$InternalHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .registers 6

    .line 235
    if-nez p1, :cond_3

    .line 237
    :goto_2
    return-void

    .line 236
    :cond_3
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/common/task/TaskProxy$InternalHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .registers 3

    .line 256
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    invoke-virtual {v0, p1}, Lorg/xutils/common/task/TaskProxy$InternalHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    return-void
.end method

.method public run(Ljava/lang/Runnable;)V
    .registers 3

    .line 244
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sDefaultExecutor:Lorg/xutils/common/task/PriorityExecutor;

    invoke-virtual {v0}, Lorg/xutils/common/task/PriorityExecutor;->isBusy()Z

    move-result v0

    if-nez v0, :cond_e

    .line 245
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sDefaultExecutor:Lorg/xutils/common/task/PriorityExecutor;

    invoke-virtual {v0, p1}, Lorg/xutils/common/task/PriorityExecutor;->execute(Ljava/lang/Runnable;)V

    .line 249
    :goto_d
    return-void

    .line 247
    :cond_e
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_d
.end method

.method public start(Lorg/xutils/common/task/AbsTask;)Lorg/xutils/common/task/AbsTask;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/common/task/AbsTask",
            "<TT;>;)",
            "Lorg/xutils/common/task/AbsTask",
            "<TT;>;"
        }
    .end annotation

    .line 39
    instance-of v0, p1, Lorg/xutils/common/task/TaskProxy;

    if-eqz v0, :cond_a

    .line 41
    check-cast p1, Lorg/xutils/common/task/TaskProxy;

    .line 46
    :goto_6
    :try_start_6
    invoke-virtual {p1}, Lorg/xutils/common/task/TaskProxy;->doBackground()Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_11

    .line 50
    :goto_9
    return-object p1

    .line 43
    :cond_a
    new-instance v0, Lorg/xutils/common/task/TaskProxy;

    invoke-direct {v0, p1}, Lorg/xutils/common/task/TaskProxy;-><init>(Lorg/xutils/common/task/AbsTask;)V

    move-object p1, v0

    goto :goto_6

    .line 47
    :catchall_11
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public startSync(Lorg/xutils/common/task/AbsTask;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/common/task/AbsTask",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    .line 57
    :try_start_1
    invoke-virtual {p1}, Lorg/xutils/common/task/AbsTask;->onWaiting()V

    .line 58
    invoke-virtual {p1}, Lorg/xutils/common/task/AbsTask;->onStarted()V

    .line 59
    invoke-virtual {p1}, Lorg/xutils/common/task/AbsTask;->doBackground()Ljava/lang/Object;

    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Lorg/xutils/common/task/AbsTask;->onSuccess(Ljava/lang/Object;)V
    :try_end_e
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_1 .. :try_end_e} :catch_1d
    .catchall {:try_start_1 .. :try_end_e} :catchall_12

    .line 67
    :goto_e
    invoke-virtual {p1}, Lorg/xutils/common/task/AbsTask;->onFinished()V

    .line 68
    return-object v0

    .line 63
    :catchall_12
    move-exception v0

    .line 64
    const/4 v1, 0x0

    :try_start_14
    invoke-virtual {p1, v0, v1}, Lorg/xutils/common/task/AbsTask;->onError(Ljava/lang/Throwable;Z)V

    .line 65
    throw v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_18

    .line 67
    :catchall_18
    move-exception v0

    invoke-virtual {p1}, Lorg/xutils/common/task/AbsTask;->onFinished()V

    .line 68
    throw v0

    .line 61
    :catch_1d
    move-exception v1

    .line 62
    :try_start_1e
    invoke-virtual {p1, v1}, Lorg/xutils/common/task/AbsTask;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_18

    goto :goto_e
.end method

.method public varargs startTasks(Lorg/xutils/common/Callback$GroupCallback;[Lorg/xutils/common/task/AbsTask;)Lorg/xutils/common/Callback$Cancelable;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/xutils/common/task/AbsTask",
            "<*>;>(",
            "Lorg/xutils/common/Callback$GroupCallback",
            "<TT;>;[TT;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .line 77
    if-eqz p2, :cond_23

    .line 81
    new-instance v5, Lorg/xutils/common/task/TaskControllerImpl$1;

    invoke-direct {v5, p0, p2, p1}, Lorg/xutils/common/task/TaskControllerImpl$1;-><init>(Lorg/xutils/common/task/TaskControllerImpl;[Lorg/xutils/common/task/AbsTask;Lorg/xutils/common/Callback$GroupCallback;)V

    .line 103
    array-length v7, p2

    const/4 v0, 0x0

    move v6, v0

    :goto_a
    if-ge v6, v7, :cond_1d

    aget-object v2, p2, v6

    .line 104
    new-instance v0, Lorg/xutils/common/task/TaskControllerImpl$2;

    move-object v1, p0

    move-object v3, p1

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/xutils/common/task/TaskControllerImpl$2;-><init>(Lorg/xutils/common/task/TaskControllerImpl;Lorg/xutils/common/task/AbsTask;Lorg/xutils/common/Callback$GroupCallback;Lorg/xutils/common/task/AbsTask;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lorg/xutils/common/task/TaskControllerImpl;->start(Lorg/xutils/common/task/AbsTask;)Lorg/xutils/common/task/AbsTask;

    .line 103
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_a

    .line 189
    :cond_1d
    new-instance v0, Lorg/xutils/common/task/TaskControllerImpl$3;

    invoke-direct {v0, p0, p2}, Lorg/xutils/common/task/TaskControllerImpl$3;-><init>(Lorg/xutils/common/task/TaskControllerImpl;[Lorg/xutils/common/task/AbsTask;)V

    return-object v0

    .line 78
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "task must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
