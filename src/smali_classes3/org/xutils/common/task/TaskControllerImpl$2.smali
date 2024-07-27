.class Lorg/xutils/common/task/TaskControllerImpl$2;
.super Lorg/xutils/common/task/TaskProxy;
.source "TaskControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/common/task/TaskControllerImpl;->startTasks(Lorg/xutils/common/Callback$GroupCallback;[Lorg/xutils/common/task/AbsTask;)Lorg/xutils/common/Callback$Cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/xutils/common/task/TaskControllerImpl;

.field final val$callIfOnAllFinished:Ljava/lang/Runnable;

.field final val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

.field final val$task:Lorg/xutils/common/task/AbsTask;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskControllerImpl;Lorg/xutils/common/task/AbsTask;Lorg/xutils/common/Callback$GroupCallback;Lorg/xutils/common/task/AbsTask;Ljava/lang/Runnable;)V
    .registers 6

    .line 104
    iput-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->this$0:Lorg/xutils/common/task/TaskControllerImpl;

    iput-object p3, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    iput-object p4, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->val$task:Lorg/xutils/common/task/AbsTask;

    iput-object p5, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->val$callIfOnAllFinished:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Lorg/xutils/common/task/TaskProxy;-><init>(Lorg/xutils/common/task/AbsTask;)V

    return-void
.end method


# virtual methods
.method protected onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .registers 4

    .line 128
    invoke-super {p0, p1}, Lorg/xutils/common/task/TaskProxy;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    .line 129
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->this$0:Lorg/xutils/common/task/TaskControllerImpl;

    new-instance v1, Lorg/xutils/common/task/TaskControllerImpl$2$2;

    invoke-direct {v1, p0, p1}, Lorg/xutils/common/task/TaskControllerImpl$2$2;-><init>(Lorg/xutils/common/task/TaskControllerImpl$2;Lorg/xutils/common/Callback$CancelledException;)V

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/TaskControllerImpl;->post(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method protected onError(Ljava/lang/Throwable;Z)V
    .registers 5

    .line 149
    invoke-super {p0, p1, p2}, Lorg/xutils/common/task/TaskProxy;->onError(Ljava/lang/Throwable;Z)V

    .line 150
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->this$0:Lorg/xutils/common/task/TaskControllerImpl;

    new-instance v1, Lorg/xutils/common/task/TaskControllerImpl$2$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/xutils/common/task/TaskControllerImpl$2$3;-><init>(Lorg/xutils/common/task/TaskControllerImpl$2;Ljava/lang/Throwable;Z)V

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/TaskControllerImpl;->post(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

.method protected onFinished()V
    .registers 3

    .line 166
    invoke-super {p0}, Lorg/xutils/common/task/TaskProxy;->onFinished()V

    .line 167
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->this$0:Lorg/xutils/common/task/TaskControllerImpl;

    new-instance v1, Lorg/xutils/common/task/TaskControllerImpl$2$4;

    invoke-direct {v1, p0}, Lorg/xutils/common/task/TaskControllerImpl$2$4;-><init>(Lorg/xutils/common/task/TaskControllerImpl$2;)V

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/TaskControllerImpl;->post(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .registers 4

    .line 107
    invoke-super {p0, p1}, Lorg/xutils/common/task/TaskProxy;->onSuccess(Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->this$0:Lorg/xutils/common/task/TaskControllerImpl;

    new-instance v1, Lorg/xutils/common/task/TaskControllerImpl$2$1;

    invoke-direct {v1, p0}, Lorg/xutils/common/task/TaskControllerImpl$2$1;-><init>(Lorg/xutils/common/task/TaskControllerImpl$2;)V

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/TaskControllerImpl;->post(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method
