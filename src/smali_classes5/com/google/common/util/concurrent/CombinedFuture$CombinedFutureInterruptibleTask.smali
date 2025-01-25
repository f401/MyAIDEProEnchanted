.class abstract Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;
.super Lcom/google/common/util/concurrent/InterruptibleTask;
.source "CombinedFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CombinedFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CombinedFutureInterruptibleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/InterruptibleTask",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final listenerExecutor:Ljava/util/concurrent/Executor;

.field final this$0:Lcom/google/common/util/concurrent/CombinedFuture;

.field thrownByExecute:Z


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/CombinedFuture;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 99
    iput-object p1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;-><init>()V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->thrownByExecute:Z

    .line 100
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->listenerExecutor:Ljava/util/concurrent/Executor;

    .line 101
    return-void
.end method


# virtual methods
.method final afterRanInterruptibly(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 120
    if-eqz p2, :cond_21

    .line 121
    instance-of v0, p2, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_10

    .line 122
    iget-object v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/CombinedFuture;->setException(Ljava/lang/Throwable;)Z

    .line 131
    :goto_f
    return-void

    .line 123
    :cond_10
    instance-of v0, p2, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1b

    .line 124
    iget-object v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/CombinedFuture;->cancel(Z)Z

    goto :goto_f

    .line 126
    :cond_1b
    iget-object v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {v0, p2}, Lcom/google/common/util/concurrent/CombinedFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_f

    .line 129
    :cond_21
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->setValue(Ljava/lang/Object;)V

    goto :goto_f
.end method

.method final execute()V
    .registers 3

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->listenerExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_5} :catch_6

    .line 116
    :cond_5
    :goto_5
    return-void

    .line 111
    :catch_6
    move-exception v0

    .line 112
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->thrownByExecute:Z

    if-eqz v1, :cond_5

    .line 113
    iget-object v1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/CombinedFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_5
.end method

.method final isDone()Z
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/CombinedFuture;->isDone()Z

    move-result v0

    return v0
.end method

.method abstract setValue(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
