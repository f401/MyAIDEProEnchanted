.class Lorg/xutils/common/task/TaskControllerImpl$2$3;
.super Ljava/lang/Object;
.source "TaskControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/common/task/TaskControllerImpl$2;->onError(Ljava/lang/Throwable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

.field final val$ex:Ljava/lang/Throwable;

.field final val$isCallbackError:Z


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskControllerImpl$2;Ljava/lang/Throwable;Z)V
    .registers 4

    .line 150
    iput-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$2$3;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iput-object p2, p0, Lorg/xutils/common/task/TaskControllerImpl$2$3;->val$ex:Ljava/lang/Throwable;

    iput-boolean p3, p0, Lorg/xutils/common/task/TaskControllerImpl$2$3;->val$isCallbackError:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 153
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2$3;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v0, v0, Lorg/xutils/common/task/TaskControllerImpl$2;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    if-eqz v0, :cond_15

    .line 155
    :try_start_6
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2$3;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v0, v0, Lorg/xutils/common/task/TaskControllerImpl$2;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    iget-object v1, p0, Lorg/xutils/common/task/TaskControllerImpl$2$3;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v1, v1, Lorg/xutils/common/task/TaskControllerImpl$2;->val$task:Lorg/xutils/common/task/AbsTask;

    iget-object v2, p0, Lorg/xutils/common/task/TaskControllerImpl$2$3;->val$ex:Ljava/lang/Throwable;

    iget-boolean v3, p0, Lorg/xutils/common/task/TaskControllerImpl$2$3;->val$isCallbackError:Z

    invoke-interface {v0, v1, v2, v3}, Lorg/xutils/common/Callback$GroupCallback;->onError(Ljava/lang/Object;Ljava/lang/Throwable;Z)V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    .line 160
    :cond_15
    :goto_15
    return-void

    .line 156
    :catchall_16
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15
.end method
