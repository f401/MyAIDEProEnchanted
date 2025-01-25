.class Lorg/xutils/common/task/TaskControllerImpl$2$2;
.super Ljava/lang/Object;
.source "TaskControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/common/task/TaskControllerImpl$2;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

.field final val$cex:Lorg/xutils/common/Callback$CancelledException;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskControllerImpl$2;Lorg/xutils/common/Callback$CancelledException;)V
    .registers 3

    .line 129
    iput-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$2$2;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iput-object p2, p0, Lorg/xutils/common/task/TaskControllerImpl$2$2;->val$cex:Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 132
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2$2;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v0, v0, Lorg/xutils/common/task/TaskControllerImpl$2;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    if-eqz v0, :cond_13

    .line 134
    :try_start_6
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2$2;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v0, v0, Lorg/xutils/common/task/TaskControllerImpl$2;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    iget-object v1, p0, Lorg/xutils/common/task/TaskControllerImpl$2$2;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v1, v1, Lorg/xutils/common/task/TaskControllerImpl$2;->val$task:Lorg/xutils/common/task/AbsTask;

    iget-object v2, p0, Lorg/xutils/common/task/TaskControllerImpl$2$2;->val$cex:Lorg/xutils/common/Callback$CancelledException;

    invoke-interface {v0, v1, v2}, Lorg/xutils/common/Callback$GroupCallback;->onCancelled(Ljava/lang/Object;Lorg/xutils/common/Callback$CancelledException;)V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    .line 143
    :cond_13
    :goto_13
    return-void

    .line 135
    :catchall_14
    move-exception v0

    .line 137
    :try_start_15
    iget-object v1, p0, Lorg/xutils/common/task/TaskControllerImpl$2$2;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v1, v1, Lorg/xutils/common/task/TaskControllerImpl$2;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    iget-object v2, p0, Lorg/xutils/common/task/TaskControllerImpl$2$2;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v2, v2, Lorg/xutils/common/task/TaskControllerImpl$2;->val$task:Lorg/xutils/common/task/AbsTask;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lorg/xutils/common/Callback$GroupCallback;->onError(Ljava/lang/Object;Ljava/lang/Throwable;Z)V
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_22

    goto :goto_13

    .line 138
    :catchall_22
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method
