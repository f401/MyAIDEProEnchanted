.class public abstract Landroidx/arch/core/executor/TaskExecutor;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract executeOnDiskIO(Ljava/lang/Runnable;)V
.end method

.method public executeOnMainThread(Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0}, Landroidx/arch/core/executor/TaskExecutor;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0, p1}, Landroidx/arch/core/executor/TaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    goto :goto_9
.end method

.method public abstract isMainThread()Z
.end method

.method public abstract postToMainThread(Ljava/lang/Runnable;)V
.end method
