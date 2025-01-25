.class final Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;
.super Lcom/google/common/util/concurrent/AggregateFuture$RunningState;
.source "CombinedFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CombinedFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CombinedFutureRunningState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/AggregateFuture",
        "<",
        "Ljava/lang/Object;",
        "TV;>.RunningState;"
    }
.end annotation


# instance fields
.field private task:Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;

.field final this$0:Lcom/google/common/util/concurrent/CombinedFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/CombinedFuture;Lcom/google/common/collect/ImmutableCollection;ZLcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;>;Z",
            "Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;",
            ")V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;-><init>(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/collect/ImmutableCollection;ZZ)V

    .line 63
    iput-object p4, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->task:Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;

    .line 64
    return-void
.end method


# virtual methods
.method collectOneValue(ZILjava/lang/Object;)V
    .registers 4
    .param p3  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 67
    return-void
.end method

.method handleAllCompleted()V
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->task:Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;

    .line 72
    if-eqz v0, :cond_8

    .line 73
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->execute()V

    .line 77
    :goto_7
    return-void

    .line 75
    :cond_8
    iget-object v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/CombinedFuture;->isDone()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_7
.end method

.method interruptTask()V
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->task:Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;

    .line 88
    if-eqz v0, :cond_7

    .line 89
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->interruptTask()V

    .line 91
    :cond_7
    return-void
.end method

.method releaseResourcesAfterFailure()V
    .registers 2

    .line 81
    invoke-super {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->releaseResourcesAfterFailure()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->task:Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;

    .line 83
    return-void
.end method
