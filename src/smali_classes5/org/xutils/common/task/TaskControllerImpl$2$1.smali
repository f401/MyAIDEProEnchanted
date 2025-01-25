.class Lorg/xutils/common/task/TaskControllerImpl$2$1;
.super Ljava/lang/Object;
.source "TaskControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/common/task/TaskControllerImpl$2;->onSuccess(Ljava/lang/Object;)V
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

    .line 108
    iput-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$2$1;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 111
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2$1;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v0, v0, Lorg/xutils/common/task/TaskControllerImpl$2;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    if-eqz v0, :cond_11

    .line 113
    :try_start_6
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2$1;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v0, v0, Lorg/xutils/common/task/TaskControllerImpl$2;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    iget-object v1, p0, Lorg/xutils/common/task/TaskControllerImpl$2$1;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v1, v1, Lorg/xutils/common/task/TaskControllerImpl$2;->val$task:Lorg/xutils/common/task/AbsTask;

    invoke-interface {v0, v1}, Lorg/xutils/common/Callback$GroupCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    .line 122
    :cond_11
    :goto_11
    return-void

    .line 114
    :catchall_12
    move-exception v0

    .line 116
    :try_start_13
    iget-object v1, p0, Lorg/xutils/common/task/TaskControllerImpl$2$1;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v1, v1, Lorg/xutils/common/task/TaskControllerImpl$2;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    iget-object v2, p0, Lorg/xutils/common/task/TaskControllerImpl$2$1;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v2, v2, Lorg/xutils/common/task/TaskControllerImpl$2;->val$task:Lorg/xutils/common/task/AbsTask;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lorg/xutils/common/Callback$GroupCallback;->onError(Ljava/lang/Object;Ljava/lang/Throwable;Z)V
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_20

    goto :goto_11

    .line 117
    :catchall_20
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method
