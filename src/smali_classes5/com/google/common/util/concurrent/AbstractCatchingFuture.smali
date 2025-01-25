.class abstract Lcom/google/common/util/concurrent/AbstractCatchingFuture;
.super Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture;
.source "AbstractCatchingFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;,
        Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        "F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture",
        "<TV;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field exceptionType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TX;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field fallback:Ljava/lang/Object;
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
            "<+TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;",
            "Ljava/lang/Class",
            "<TX;>;TF;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 64
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->exceptionType:Ljava/lang/Class;

    .line 65
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->fallback:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method static create(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;",
            "Ljava/lang/Class",
            "<TX;>;",
            "Lcom/google/common/base/Function",
            "<-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/base/Function;)V

    .line 39
    invoke-static {p3, v0}, Lcom/google/common/util/concurrent/MoreExecutors;->rejectionPropagatingExecutor(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 40
    return-object v0
.end method

.method static create(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;",
            "Ljava/lang/Class",
            "<TX;>;",
            "Lcom/google/common/util/concurrent/AsyncFunction",
            "<-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/util/concurrent/AsyncFunction;)V

    .line 49
    invoke-static {p3, v0}, Lcom/google/common/util/concurrent/MoreExecutors;->rejectionPropagatingExecutor(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 50
    return-object v0
.end method


# virtual methods
.method protected final afterDone()V
    .registers 3

    const/4 v1, 0x0

    .line 153
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V

    .line 154
    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 155
    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->exceptionType:Ljava/lang/Class;

    .line 156
    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->fallback:Ljava/lang/Object;

    .line 157
    return-void
.end method

.method abstract doFallback(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TX;)TT;"
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
    .registers 7

    .line 121
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 122
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->exceptionType:Ljava/lang/Class;

    .line 123
    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->fallback:Ljava/lang/Object;

    .line 124
    invoke-super {p0}, Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture;->pendingToString()Ljava/lang/String;

    move-result-object v4

    .line 125
    const-string v0, ""

    .line 126
    if-eqz v1, :cond_24

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inputFuture=["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_24
    if-eqz v2, :cond_4a

    if-eqz v3, :cond_4a

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "exceptionType=["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "], fallback=["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    :goto_49
    return-object v0

    .line 136
    :cond_4a
    if-eqz v4, :cond_5c

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    .line 139
    :cond_5c
    const/4 v0, 0x0

    goto :goto_49
.end method

.method public final run()V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 70
    iget-object v5, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 71
    iget-object v6, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->exceptionType:Ljava/lang/Class;

    .line 72
    iget-object v7, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->fallback:Ljava/lang/Object;

    .line 73
    if-nez v5, :cond_1c

    move v4, v0

    :goto_c
    if-nez v6, :cond_1e

    move v3, v0

    :goto_f
    if-nez v7, :cond_20

    .line 76
    :goto_11
    or-int v1, v4, v3

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->isCancelled()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_22

    .line 117
    :goto_1b
    return-void

    :cond_1c
    move v4, v1

    .line 73
    goto :goto_c

    :cond_1e
    move v3, v1

    goto :goto_f

    :cond_20
    move v0, v1

    goto :goto_11

    .line 79
    :cond_22
    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 85
    :try_start_24
    invoke-static {v5}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_24 .. :try_end_27} :catch_33
    .catchall {:try_start_24 .. :try_end_27} :catchall_30

    move-result-object v0

    move-object v1, v0

    move-object v3, v2

    .line 92
    :goto_2a
    if-nez v3, :cond_41

    .line 93
    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->set(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 88
    :catchall_30
    move-exception v3

    move-object v1, v2

    .line 89
    goto :goto_2a

    .line 86
    :catch_33
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    move-object v1, v2

    move-object v3, v0

    goto :goto_2a

    .line 97
    :cond_41
    invoke-static {v3, v6}, Lcom/google/common/util/concurrent/Platform;->isInstanceOfThrowableClass(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 98
    invoke-virtual {p0, v5}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    goto :goto_1b

    .line 104
    :cond_4b
    :try_start_4b
    invoke-virtual {p0, v7, v3}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->doFallback(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_57

    move-result-object v0

    .line 112
    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->exceptionType:Ljava/lang/Class;

    .line 113
    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->fallback:Ljava/lang/Object;

    .line 114
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->setResult(Ljava/lang/Object;)V

    goto :goto_1b

    .line 108
    :catchall_57
    move-exception v0

    .line 109
    :try_start_58
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_60

    .line 112
    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->exceptionType:Ljava/lang/Class;

    .line 113
    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->fallback:Ljava/lang/Object;

    goto :goto_1b

    .line 112
    :catchall_60
    move-exception v0

    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->exceptionType:Ljava/lang/Class;

    .line 113
    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->fallback:Ljava/lang/Object;

    .line 114
    throw v0
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
