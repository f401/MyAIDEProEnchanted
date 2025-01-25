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

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/codehaus/groovy/util/LockableObject;->j6:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public final j6()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetState(II)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/groovy/util/LockableObject;->j6:Ljava/lang/Thread;

    goto :goto_12

    :cond_f
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquire(I)V

    :goto_12
    return-void
.end method

.method protected final tryAcquire(I)Z
    .registers 7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_15

    invoke-virtual {p0, v3, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetState(II)Z

    move-result p1

    if-eqz p1, :cond_1e

    iput-object v0, p0, Lorg/codehaus/groovy/util/LockableObject;->j6:Ljava/lang/Thread;

    return v2

    :cond_15
    iget-object v4, p0, Lorg/codehaus/groovy/util/LockableObject;->j6:Ljava/lang/Thread;

    if-ne v0, v4, :cond_1e

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setState(I)V

    return v2

    :cond_1e
    return v3
.end method

.method protected final tryRelease(I)Z
    .registers 4

    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lorg/codehaus/groovy/util/LockableObject;->j6:Ljava/lang/Thread;

    if-ne p1, v1, :cond_19

    if-nez v0, :cond_14

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/codehaus/groovy/util/LockableObject;->j6:Ljava/lang/Thread;

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setState(I)V

    return p1

    :cond_19
    new-instance p1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p1
.end method
