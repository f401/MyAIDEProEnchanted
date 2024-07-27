.class public Lorg/codehaus/groovy/util/LockableObject;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;


# instance fields
.field transient j6:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->release(I)Z

    return-void
.end method

.method protected final isHeldExclusively()Z
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/groovy/util/LockableObject;->j6:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j6()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetState(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/groovy/util/LockableObject;->j6:Ljava/lang/Thread;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquire(I)V

    goto :goto_0
.end method

.method protected final tryAcquire(I)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v1, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetState(II)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lorg/codehaus/groovy/util/LockableObject;->j6:Ljava/lang/Thread;

    :goto_0
    return v0

    :cond_0
    iget-object v4, p0, Lorg/codehaus/groovy/util/LockableObject;->j6:Ljava/lang/Thread;

    if-ne v2, v4, :cond_1

    add-int v1, v3, p1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setState(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected final tryRelease(I)Z
    .registers 5

    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    sub-int v1, v0, p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lorg/codehaus/groovy/util/LockableObject;->j6:Ljava/lang/Thread;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codehaus/groovy/util/LockableObject;->j6:Ljava/lang/Thread;

    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setState(I)V

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method
