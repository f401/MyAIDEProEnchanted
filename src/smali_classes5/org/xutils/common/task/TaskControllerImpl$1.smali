.class Lorg/xutils/common/task/TaskControllerImpl$1;
.super Ljava/lang/Object;
.source "TaskControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/common/task/TaskControllerImpl;->startTasks(Lorg/xutils/common/Callback$GroupCallback;[Lorg/xutils/common/task/AbsTask;)Lorg/xutils/common/Callback$Cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final this$0:Lorg/xutils/common/task/TaskControllerImpl;

.field private final total:I

.field final val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

.field final val$tasks:[Lorg/xutils/common/task/AbsTask;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskControllerImpl;[Lorg/xutils/common/task/AbsTask;Lorg/xutils/common/Callback$GroupCallback;)V
    .registers 6

    .line 81
    iput-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->this$0:Lorg/xutils/common/task/TaskControllerImpl;

    iput-object p2, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->val$tasks:[Lorg/xutils/common/task/AbsTask;

    iput-object p3, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    array-length v0, p2

    iput v0, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->total:I

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 87
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->total:I

    if-ne v0, v1, :cond_11

    .line 88
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    if-eqz v0, :cond_11

    .line 90
    :try_start_e
    invoke-interface {v0}, Lorg/xutils/common/Callback$GroupCallback;->onAllFinished()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    .line 100
    :cond_11
    :goto_11
    return-void

    .line 91
    :catchall_12
    move-exception v0

    .line 93
    :try_start_13
    iget-object v1, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lorg/xutils/common/Callback$GroupCallback;->onError(Ljava/lang/Object;Ljava/lang/Throwable;Z)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_11

    .line 94
    :catchall_1b
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method
