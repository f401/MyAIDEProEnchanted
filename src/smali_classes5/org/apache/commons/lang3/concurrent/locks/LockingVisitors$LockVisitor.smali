.class public Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;
.super Ljava/lang/Object;
.source "LockingVisitors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field private final object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final readLockSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation
.end field

.field private final writeLockSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;T",
            "L;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;)V"
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const-string v0, "object"

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->object:Ljava/lang/Object;

    .line 123
    const-string v0, "lock"

    invoke-static {p2, v0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->lock:Ljava/lang/Object;

    .line 124
    const-string v0, "readLockSupplier"

    invoke-static {p3, v0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->readLockSupplier:Ljava/util/function/Supplier;

    .line 125
    const-string v0, "writeLockSupplier"

    invoke-static {p4, v0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->writeLockSupplier:Ljava/util/function/Supplier;

    .line 126
    return-void
.end method


# virtual methods
.method public acceptReadLocked(Lorg/apache/commons/lang3/function/FailableConsumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableConsumer",
            "<TO;*>;)V"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->readLockSupplier:Ljava/util/function/Supplier;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->lockAcceptUnlock(Ljava/util/function/Supplier;Lorg/apache/commons/lang3/function/FailableConsumer;)V

    .line 148
    return-void
.end method

.method public acceptWriteLocked(Lorg/apache/commons/lang3/function/FailableConsumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableConsumer",
            "<TO;*>;)V"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->writeLockSupplier:Ljava/util/function/Supplier;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->lockAcceptUnlock(Ljava/util/function/Supplier;Lorg/apache/commons/lang3/function/FailableConsumer;)V

    .line 170
    return-void
.end method

.method public applyReadLocked(Lorg/apache/commons/lang3/function/FailableFunction;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableFunction",
            "<TO;TT;*>;)TT;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->readLockSupplier:Ljava/util/function/Supplier;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->lockApplyUnlock(Ljava/util/function/Supplier;Lorg/apache/commons/lang3/function/FailableFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyWriteLocked(Lorg/apache/commons/lang3/function/FailableFunction;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableFunction",
            "<TO;TT;*>;)TT;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->writeLockSupplier:Ljava/util/function/Supplier;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->lockApplyUnlock(Ljava/util/function/Supplier;Lorg/apache/commons/lang3/function/FailableFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->object:Ljava/lang/Object;

    return-object v0
.end method

.method protected lockAcceptUnlock(Ljava/util/function/Supplier;Lorg/apache/commons/lang3/function/FailableConsumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;",
            "Lorg/apache/commons/lang3/function/FailableConsumer",
            "<TO;*>;)V"
        }
    .end annotation

    .line 270
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    .line 271
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 273
    :try_start_9
    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->object:Ljava/lang/Object;

    invoke-interface {p2, v1}, Lorg/apache/commons/lang3/function/FailableConsumer;->accept(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 277
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 278
    return-void

    .line 274
    :catchall_12
    move-exception v1

    .line 275
    :try_start_13
    invoke-static {v1}, Lorg/apache/commons/lang3/function/Failable;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_18

    .line 277
    :catchall_18
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 278
    throw v1
.end method

.method protected lockApplyUnlock(Ljava/util/function/Supplier;Lorg/apache/commons/lang3/function/FailableFunction;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;",
            "Lorg/apache/commons/lang3/function/FailableFunction",
            "<TO;TT;*>;)TT;"
        }
    .end annotation

    .line 297
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    .line 298
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 300
    :try_start_9
    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->object:Ljava/lang/Object;

    invoke-interface {p2, v1}, Lorg/apache/commons/lang3/function/FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    move-result-object v1

    .line 304
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 300
    return-object v1

    .line 301
    :catchall_13
    move-exception v1

    .line 302
    :try_start_14
    invoke-static {v1}, Lorg/apache/commons/lang3/function/Failable;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_19

    .line 304
    :catchall_19
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 305
    throw v1
.end method
