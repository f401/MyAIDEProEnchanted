.class public final Landroidx/core/os/CancellationSignal;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/CancellationSignal$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancelInProgress:Z

.field private mCancellationSignalObj:Ljava/lang/Object;

.field private mIsCanceled:Z

.field private mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private waitForCancelFinishedLocked()V
    .registers 2

    :goto_0
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    if-eqz v0, :cond_a

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_0

    :catch_8
    move-exception v0

    goto :goto_0

    :cond_a
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_7

    monitor-exit p0

    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    iget-object v1, p0, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_3d

    if-eqz v1, :cond_17

    :try_start_14
    invoke-interface {v1}, Landroidx/core/os/CancellationSignal$OnCancelListener;->onCancel()V

    :cond_17
    if-eqz v0, :cond_24

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_24

    check-cast v0, Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_30

    :cond_24
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_26
    iput-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_6

    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_2d

    throw v0

    :catchall_30
    move-exception v0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_33
    iput-boolean v1, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_3a

    throw v0

    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0

    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public getCancellationSignalObject()Ljava/lang/Object;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    monitor-enter p0

    :try_start_9
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    if-nez v0, :cond_1d

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    iget-boolean v1, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v1, :cond_1d

    check-cast v0, Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_1d
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    monitor-exit p0

    goto :goto_7

    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public isCanceled()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroidx/core/os/CancellationSignal;->waitForCancelFinishedLocked()V

    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    if-ne v0, p1, :cond_a

    monitor-exit p0

    :goto_9
    return-void

    :cond_a
    iput-object p1, p0, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_12

    if-nez p1, :cond_17

    :cond_12
    monitor-exit p0

    goto :goto_9

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0

    :cond_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_14

    invoke-interface {p1}, Landroidx/core/os/CancellationSignal$OnCancelListener;->onCancel()V

    goto :goto_9
.end method

.method public throwIfCanceled()V
    .registers 2

    invoke-virtual {p0}, Landroidx/core/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Landroidx/core/os/OperationCanceledException;

    invoke-direct {v0}, Landroidx/core/os/OperationCanceledException;-><init>()V

    throw v0
.end method
