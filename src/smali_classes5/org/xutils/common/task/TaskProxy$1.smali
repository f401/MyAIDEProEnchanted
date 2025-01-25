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

    if-nez v0, :cond_7e

    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v0}, Lorg/xutils/common/task/TaskProxy;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 66
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v0}, Lorg/xutils/common/task/TaskProxy;->onStarted()V

    .line 68
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v0}, Lorg/xutils/common/task/TaskProxy;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_6e

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

    if-nez v0, :cond_58

    .line 82
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-static {v0}, Lorg/xutils/common/task/TaskProxy;->access$300(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/common/task/AbsTask;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/TaskProxy;->onSuccess(Ljava/lang/Object;)V
    :try_end_52
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_0 .. :try_end_52} :catch_60
    .catchall {:try_start_0 .. :try_end_52} :catchall_76

    .line 88
    :goto_52
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v0}, Lorg/xutils/common/task/TaskProxy;->onFinished()V

    .line 89
    return-void

    .line 78
    :cond_58
    :try_start_58
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_60
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_58 .. :try_end_60} :catch_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_76

    .line 83
    :catch_60
    move-exception v0

    .line 84
    :try_start_61
    iget-object v1, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v1, v0}, Lorg/xutils/common/task/TaskProxy;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_67

    goto :goto_52

    .line 88
    :catchall_67
    move-exception v0

    iget-object v1, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v1}, Lorg/xutils/common/task/TaskProxy;->onFinished()V

    .line 89
    throw v0

    .line 69
    :cond_6e
    :try_start_6e
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_76
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_6e .. :try_end_76} :catch_60
    .catchall {:try_start_6e .. :try_end_76} :catchall_76

    .line 85
    :catchall_76
    move-exception v0

    .line 86
    :try_start_77
    iget-object v1, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/xutils/common/task/TaskProxy;->onError(Ljava/lang/Throwable;Z)V
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_67

    goto :goto_52

    .line 62
    :cond_7e
    :try_start_7e
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_86
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_7e .. :try_end_86} :catch_60
    .catchall {:try_start_7e .. :try_end_86} :catchall_76
.end method
