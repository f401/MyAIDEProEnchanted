.class Lorg/xutils/common/task/TaskControllerImpl$2$4;
.super Ljava/lang/Object;
.source "TaskControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/common/task/TaskControllerImpl$2;->onFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lorg/xutils/common/task/TaskControllerImpl$2;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskControllerImpl$2;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$2$4;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 171
    :try_start_0
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2$4;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v0, v0, Lorg/xutils/common/task/TaskControllerImpl$2;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    if-eqz v0, :cond_11

    .line 172
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2$4;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v0, v0, Lorg/xutils/common/task/TaskControllerImpl$2;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    iget-object v1, p0, Lorg/xutils/common/task/TaskControllerImpl$2$4;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v1, v1, Lorg/xutils/common/task/TaskControllerImpl$2;->val$task:Lorg/xutils/common/task/AbsTask;

    invoke-interface {v0, v1}, Lorg/xutils/common/Callback$GroupCallback;->onFinished(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_19

    .line 181
    :cond_11
    :goto_11
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2$4;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v0, v0, Lorg/xutils/common/task/TaskControllerImpl$2;->val$callIfOnAllFinished:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 183
    return-void

    .line 174
    :catchall_19
    move-exception v0

    .line 176
    :try_start_1a
    iget-object v1, p0, Lorg/xutils/common/task/TaskControllerImpl$2$4;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v1, v1, Lorg/xutils/common/task/TaskControllerImpl$2;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    iget-object v2, p0, Lorg/xutils/common/task/TaskControllerImpl$2$4;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v2, v2, Lorg/xutils/common/task/TaskControllerImpl$2;->val$task:Lorg/xutils/common/task/AbsTask;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lorg/xutils/common/Callback$GroupCallback;->onError(Ljava/lang/Object;Ljava/lang/Throwable;Z)V
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_27

    goto :goto_11

    .line 177
    :catchall_27
    move-exception v0

    .line 178
    :try_start_28
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_30

    goto :goto_11

    .line 181
    :catchall_30
    move-exception v0

    iget-object v1, p0, Lorg/xutils/common/task/TaskControllerImpl$2$4;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v1, v1, Lorg/xutils/common/task/TaskControllerImpl$2;->val$callIfOnAllFinished:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 182
    throw v0
.end method
