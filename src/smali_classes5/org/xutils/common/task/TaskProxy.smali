.class Lorg/xutils/common/task/TaskProxy;
.super Lorg/xutils/common/task/AbsTask;
.source "TaskProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/common/task/TaskProxy$ArgsObj;,
        Lorg/xutils/common/task/TaskProxy$InternalHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/xutils/common/task/AbsTask",
        "<TResultType;>;"
    }
.end annotation


# static fields
.field private static final MSG_WHAT_BASE:I = 0x3b9aca00

.field private static final MSG_WHAT_ON_CANCEL:I = 0x3b9aca06

.field private static final MSG_WHAT_ON_ERROR:I = 0x3b9aca04

.field private static final MSG_WHAT_ON_FINISHED:I = 0x3b9aca07

.field private static final MSG_WHAT_ON_START:I = 0x3b9aca02

.field private static final MSG_WHAT_ON_SUCCESS:I = 0x3b9aca03

.field private static final MSG_WHAT_ON_UPDATE:I = 0x3b9aca05

.field private static final MSG_WHAT_ON_WAITING:I = 0x3b9aca01

.field static final sDefaultExecutor:Lorg/xutils/common/task/PriorityExecutor;

.field static final sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;


# instance fields
.field private volatile callOnCanceled:Z

.field private volatile callOnFinished:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private final handler:Landroid/os/Handler;

.field private final task:Lorg/xutils/common/task/AbsTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/task/AbsTask",
            "<TResultType;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lorg/xutils/common/task/TaskProxy$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/xutils/common/task/TaskProxy$InternalHandler;-><init>(Lorg/xutils/common/task/TaskProxy$1;)V

    sput-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    .line 21
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/xutils/common/task/PriorityExecutor;-><init>(Z)V

    sput-object v0, Lorg/xutils/common/task/TaskProxy;->sDefaultExecutor:Lorg/xutils/common/task/PriorityExecutor;

    return-void
.end method

.method constructor <init>(Lorg/xutils/common/task/AbsTask;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/common/task/AbsTask",
            "<TResultType;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0, p1}, Lorg/xutils/common/task/AbsTask;-><init>(Lorg/xutils/common/Callback$Cancelable;)V

    .line 26
    iput-boolean v0, p0, Lorg/xutils/common/task/TaskProxy;->callOnCanceled:Z

    .line 27
    iput-boolean v0, p0, Lorg/xutils/common/task/TaskProxy;->callOnFinished:Z

    .line 31
    iput-object p1, p0, Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;

    .line 32
    invoke-virtual {p1, p0}, Lorg/xutils/common/task/AbsTask;->setTaskProxy(Lorg/xutils/common/task/TaskProxy;)V

    .line 33
    invoke-virtual {p0, v2}, Lorg/xutils/common/task/TaskProxy;->setTaskProxy(Lorg/xutils/common/task/TaskProxy;)V

    .line 36
    invoke-virtual {p1}, Lorg/xutils/common/task/AbsTask;->customLooper()Landroid/os/Looper;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_29

    .line 38
    new-instance v1, Lorg/xutils/common/task/TaskProxy$InternalHandler;

    invoke-direct {v1, v0, v2}, Lorg/xutils/common/task/TaskProxy$InternalHandler;-><init>(Landroid/os/Looper;Lorg/xutils/common/task/TaskProxy$1;)V

    iput-object v1, p0, Lorg/xutils/common/task/TaskProxy;->handler:Landroid/os/Handler;

    .line 44
    :goto_1e
    invoke-virtual {p1}, Lorg/xutils/common/task/AbsTask;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 45
    if-nez v0, :cond_26

    .line 46
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sDefaultExecutor:Lorg/xutils/common/task/PriorityExecutor;

    .line 48
    :cond_26
    iput-object v0, p0, Lorg/xutils/common/task/TaskProxy;->executor:Ljava/util/concurrent/Executor;

    .line 49
    return-void

    .line 40
    :cond_29
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    iput-object v0, p0, Lorg/xutils/common/task/TaskProxy;->handler:Landroid/os/Handler;

    goto :goto_1e
.end method

.method static synthetic access$200(Lorg/xutils/common/task/TaskProxy;)Z
    .registers 2

    .line 18
    iget-boolean v0, p0, Lorg/xutils/common/task/TaskProxy;->callOnCanceled:Z

    return v0
.end method

.method static synthetic access$202(Lorg/xutils/common/task/TaskProxy;Z)Z
    .registers 2

    .line 18
    iput-boolean p1, p0, Lorg/xutils/common/task/TaskProxy;->callOnCanceled:Z

    return p1
.end method

.method static synthetic access$300(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;
    .registers 2

    .line 18
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;

    return-object v0
.end method

.method static synthetic access$400(Lorg/xutils/common/task/TaskProxy;)Z
    .registers 2

    .line 18
    iget-boolean v0, p0, Lorg/xutils/common/task/TaskProxy;->callOnFinished:Z

    return v0
.end method

.method static synthetic access$402(Lorg/xutils/common/task/TaskProxy;Z)Z
    .registers 2

    .line 18
    iput-boolean p1, p0, Lorg/xutils/common/task/TaskProxy;->callOnFinished:Z

    return p1
.end method


# virtual methods
.method protected final doBackground()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lorg/xutils/common/task/TaskProxy;->onWaiting()V

    .line 54
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;

    .line 55
    new-instance v1, Lorg/xutils/common/task/PriorityRunnable;

    invoke-virtual {v0}, Lorg/xutils/common/task/AbsTask;->getPriority()Lorg/xutils/common/task/Priority;

    move-result-object v0

    new-instance v2, Lorg/xutils/common/task/TaskProxy$1;

    invoke-direct {v2, p0}, Lorg/xutils/common/task/TaskProxy$1;-><init>(Lorg/xutils/common/task/TaskProxy;)V

    invoke-direct {v1, v0, v2}, Lorg/xutils/common/task/PriorityRunnable;-><init>(Lorg/xutils/common/task/Priority;Ljava/lang/Runnable;)V

    .line 92
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 150
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getPriority()Lorg/xutils/common/task/Priority;
    .registers 2

    .line 145
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;

    invoke-virtual {v0}, Lorg/xutils/common/task/AbsTask;->getPriority()Lorg/xutils/common/task/Priority;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .registers 7

    .line 128
    sget-object v0, Lorg/xutils/common/task/AbsTask$State;->CANCELLED:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lorg/xutils/common/task/TaskProxy;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 129
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy;->handler:Landroid/os/Handler;

    const v1, 0x3b9aca06

    new-instance v2, Lorg/xutils/common/task/TaskProxy$ArgsObj;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lorg/xutils/common/task/TaskProxy$ArgsObj;-><init>(Lorg/xutils/common/task/TaskProxy;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 130
    return-void
.end method

.method protected onError(Ljava/lang/Throwable;Z)V
    .registers 8

    .line 116
    sget-object v0, Lorg/xutils/common/task/AbsTask$State;->ERROR:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lorg/xutils/common/task/TaskProxy;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 117
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy;->handler:Landroid/os/Handler;

    const v1, 0x3b9aca04

    new-instance v2, Lorg/xutils/common/task/TaskProxy$ArgsObj;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lorg/xutils/common/task/TaskProxy$ArgsObj;-><init>(Lorg/xutils/common/task/TaskProxy;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 118
    return-void
.end method

.method protected onFinished()V
    .registers 3

    .line 134
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy;->handler:Landroid/os/Handler;

    const v1, 0x3b9aca07

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    return-void
.end method

.method protected onStarted()V
    .registers 3

    .line 104
    sget-object v0, Lorg/xutils/common/task/AbsTask$State;->STARTED:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lorg/xutils/common/task/TaskProxy;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 105
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy;->handler:Landroid/os/Handler;

    const v1, 0x3b9aca02

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 106
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .line 110
    sget-object v0, Lorg/xutils/common/task/AbsTask$State;->SUCCESS:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lorg/xutils/common/task/TaskProxy;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 111
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy;->handler:Landroid/os/Handler;

    const v1, 0x3b9aca03

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 112
    return-void
.end method

.method protected varargs onUpdate(I[Ljava/lang/Object;)V
    .registers 6

    .line 123
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy;->handler:Landroid/os/Handler;

    const v1, 0x3b9aca05

    new-instance v2, Lorg/xutils/common/task/TaskProxy$ArgsObj;

    invoke-direct {v2, p0, p2}, Lorg/xutils/common/task/TaskProxy$ArgsObj;-><init>(Lorg/xutils/common/task/TaskProxy;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p1, p1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 124
    return-void
.end method

.method protected onWaiting()V
    .registers 3

    .line 98
    sget-object v0, Lorg/xutils/common/task/AbsTask$State;->WAITING:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lorg/xutils/common/task/TaskProxy;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 99
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy;->handler:Landroid/os/Handler;

    const v1, 0x3b9aca01

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 100
    return-void
.end method

.method final setState(Lorg/xutils/common/task/AbsTask$State;)V
    .registers 3

    .line 139
    invoke-super {p0, p1}, Lorg/xutils/common/task/AbsTask;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 140
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;

    invoke-virtual {v0, p1}, Lorg/xutils/common/task/AbsTask;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 141
    return-void
.end method
