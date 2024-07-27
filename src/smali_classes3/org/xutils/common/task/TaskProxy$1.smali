.class Lorg/xutils/common/task/TaskProxy$1;
.super Ljava/lang/Object;
.source "TaskProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/common/task/TaskProxy;->doBackground()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/xutils/common/task/TaskProxy;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskProxy;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 61
    :try_start_0
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-static {v0}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v0}, Lorg/xutils/common/task/TaskProxy;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v0}, Lorg/xutils/common/task/TaskProxy;->onStarted()V

    .line 68
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v0}, Lorg/xutils/common/task/TaskProxy;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-static {v0}, Lorg/xutils/common/task/TaskProxy;->access$300(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-static {v1}, Lorg/xutils/common/task/TaskProxy;->access$300(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/common/task/AbsTask;->doBackground()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/AbsTask;->setResult(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-static {v0}, Lorg/xutils/common/task/TaskProxy;->access$300(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/common/task/AbsTask;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/TaskProxy;->setResult(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v0}, Lorg/xutils/common/task/TaskProxy;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-static {v0}, Lorg/xutils/common/task/TaskProxy;->access$300(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/common/task/AbsTask;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/TaskProxy;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 88
    :goto_0
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v0}, Lorg/xutils/common/task/TaskProxy;->onFinished()V

    .line 89
    return-void

    .line 78
    :cond_0
    :try_start_1
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    :try_start_2
    iget-object v1, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v1, v0}, Lorg/xutils/common/task/TaskProxy;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v1}, Lorg/xutils/common/task/TaskProxy;->onFinished()V

    .line 89
    throw v0

    .line 69
    :cond_1
    :try_start_3
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    :catchall_1
    move-exception v0

    .line 86
    :try_start_4
    iget-object v1, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/xutils/common/task/TaskProxy;->onError(Ljava/lang/Throwable;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 62
    :cond_2
    :try_start_5
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method
