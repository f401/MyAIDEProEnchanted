.class abstract Lcom/google/common/util/concurrent/ForwardingLock;
.super Ljava/lang/Object;
.source "ForwardingLock.java"

# interfaces
.implements Ljava/util/concurrent/locks/Lock;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract delegate()Ljava/util/concurrent/locks/Lock;
.end method

.method public lock()V
    .registers 2

    .line 27
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingLock;->delegate()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 28
    return-void
.end method

.method public lockInterruptibly()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingLock;->delegate()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 33
    return-void
.end method

.method public newCondition()Ljava/util/concurrent/locks/Condition;
    .registers 2

    .line 52
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingLock;->delegate()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    return-object v0
.end method

.method public tryLock()Z
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingLock;->delegate()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    return v0
.end method

.method public tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingLock;->delegate()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public unlock()V
    .registers 2

    .line 47
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingLock;->delegate()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 48
    return-void
.end method
