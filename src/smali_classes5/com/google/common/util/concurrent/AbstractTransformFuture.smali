.class abstract Lcom/google/common/util/concurrent/AbstractTransformFuture;
.super Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture;
.source "AbstractTransformFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;,
        Lcom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture",
        "<TO;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field function:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TI;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TI;>;TF;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture;-><init>()V

    .line 59
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 60
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 61
    return-void
.end method

.method static create(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TI;>;",
            "Lcom/google/common/base/Function",
            "<-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TO;>;"
        }
    .end annotation

    .line 45
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v0, Lcom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)V

    .line 47
    invoke-static {p2, v0}, Lcom/google/common/util/concurrent/MoreExecutors;->rejectionPropagatingExecutor(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 48
    return-object v0
.end method

.method static create(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TI;>;",
            "Lcom/google/common/util/concurrent/AsyncFunction",
            "<-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TO;>;"
        }
    .end annotation

    .line 37
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v0, Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)V

    .line 39
    invoke-static {p2, v0}, Lcom/google/common/util/concurrent/MoreExecutors;->rejectionPropagatingExecutor(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 40
    return-object v0
.end method


# virtual methods
.method protected final afterDone()V
    .registers 3

    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V

    .line 178
    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 179
    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 180
    return-void
.end method

.method abstract doTransform(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .param p2  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TI;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end method

.method protected pendingToString()Ljava/lang/String;
    .registers 6

    .line 184
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 185
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 186
    invoke-super {p0}, Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture;->pendingToString()Ljava/lang/String;

    move-result-object v3

    .line 187
    const-string v0, ""

    .line 188
    if-eqz v1, :cond_22

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inputFuture=["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_22
    if-eqz v2, :cond_3e

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "function=["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_3d
    return-object v0

    .line 193
    :cond_3e
    if-eqz v3, :cond_50

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    .line 196
    :cond_50
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method public final run()V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 65
    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 66
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->isCancelled()Z

    move-result v5

    if-nez v3, :cond_15

    move v2, v0

    :goto_e
    if-nez v4, :cond_17

    :goto_10
    or-int/2addr v2, v5

    or-int/2addr v0, v2

    if-eqz v0, :cond_19

    .line 164
    :goto_14
    return-void

    :cond_15
    move v2, v1

    .line 67
    goto :goto_e

    :cond_17
    move v0, v1

    goto :goto_10

    .line 70
    :cond_19
    iput-object v6, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 72
    invoke-interface {v3}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 74
    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    goto :goto_14

    .line 89
    :cond_25
    :try_start_25
    invoke-static {v3}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/util/concurrent/CancellationException; {:try_start_25 .. :try_end_28} :catch_51
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_25 .. :try_end_28} :catch_48
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_28} :catch_43
    .catch Ljava/lang/Error; {:try_start_25 .. :try_end_28} :catch_3e

    move-result-object v0

    .line 114
    :try_start_29
    invoke-virtual {p0, v4, v0}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->doTransform(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_33

    move-result-object v0

    .line 124
    iput-object v6, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 125
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->setResult(Ljava/lang/Object;)V

    goto :goto_14

    .line 119
    :catchall_33
    move-exception v0

    .line 121
    :try_start_34
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3a

    .line 124
    iput-object v6, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    goto :goto_14

    :catchall_3a
    move-exception v0

    iput-object v6, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 125
    throw v0

    .line 106
    :catch_3e
    move-exception v0

    .line 112
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_14

    .line 102
    :catch_43
    move-exception v0

    .line 104
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_14

    .line 98
    :catch_48
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_14

    .line 90
    :catch_51
    move-exception v0

    .line 96
    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->cancel(Z)Z

    goto :goto_14
.end method

.method abstract setResult(Ljava/lang/Object;)V
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
