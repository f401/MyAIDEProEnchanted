.class public Labcd/az;
.super Ljava/util/concurrent/PriorityBlockingQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Labcd/_y;",
        ":",
        "Labcd/lz;",
        ":",
        "Labcd/hz;",
        ">",
        "Ljava/util/concurrent/PriorityBlockingQueue<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final DW:Ljava/util/concurrent/locks/ReentrantLock;

.field final j6:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Labcd/az;->j6:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method


# virtual methods
.method DW(ILjava/lang/Long;Ljava/util/concurrent/TimeUnit;)Labcd/_y;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    if-eqz p1, :cond_20

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x3

    if-eq p1, v0, :cond_d

    const/4 p1, 0x0

    return-object p1

    :cond_d
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-super {p0, p1, p2, p3}, Ljava/util/concurrent/PriorityBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_24

    :cond_16
    invoke-super {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    goto :goto_24

    :cond_1b
    invoke-super {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    goto :goto_24

    :cond_20
    invoke-super {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    move-result-object p1

    :goto_24
    check-cast p1, Labcd/_y;

    return-object p1
.end method

.method public clear()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Labcd/az;->j6:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    invoke-super {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_13

    iget-object v0, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_13
    move-exception v0

    iget-object v1, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-super {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Labcd/az;->j6:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_1d

    if-eqz p1, :cond_14

    goto :goto_16

    :cond_14
    const/4 p1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p1, 0x1

    :goto_17
    iget-object v0, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_1d
    move-exception p1

    iget-object v0, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-super {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->drainTo(Ljava/util/Collection;)I

    move-result v0

    iget-object v1, p0, Labcd/az;->j6:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    :goto_f
    iget-object v2, p0, Labcd/az;->j6:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, p0, Labcd/az;->j6:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_28

    goto :goto_f

    :cond_21
    iget-object p1, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    add-int/2addr v0, v1

    return v0

    :catchall_28
    move-exception p1

    iget-object v0, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_30

    :goto_2f
    throw p1

    :goto_30
    goto :goto_2f
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/PriorityBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    :goto_9
    iget-object v1, p0, Labcd/az;->j6:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    if-gt v0, p2, :cond_1f

    iget-object v1, p0, Labcd/az;->j6:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_25

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1f
    iget-object p1, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_25
    move-exception p1

    iget-object p2, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2d

    :goto_2c
    throw p1

    :goto_2d
    goto :goto_2c
.end method

.method j6(ILjava/lang/Long;Ljava/util/concurrent/TimeUnit;)Labcd/_y;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Labcd/az;->DW(ILjava/lang/Long;Ljava/util/concurrent/TimeUnit;)Labcd/_y;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, v0}, Labcd/az;->j6(Labcd/_y;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_11

    :cond_d
    invoke-virtual {p0, p1, v0}, Labcd/az;->j6(ILabcd/_y;)Z

    goto :goto_0

    :cond_11
    :goto_11
    return-object v0
.end method

.method public j6()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Labcd/az;->j6:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/_y;

    invoke-virtual {p0, v1}, Labcd/az;->j6(Labcd/_y;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-super {p0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_2a

    goto :goto_b

    :cond_24
    iget-object v0, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_2a
    move-exception v0

    iget-object v1, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_32

    :goto_31
    throw v0

    :goto_32
    goto :goto_31
.end method

.method j6(ILabcd/_y;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    invoke-super {p0, p2}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    :cond_b
    iget-object p1, p0, Labcd/az;->j6:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_17

    iget-object p2, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_17
    move-exception p1

    iget-object p2, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method j6(Labcd/_y;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-interface {p1}, Labcd/_y;->DW()Z

    move-result p1

    return p1
.end method

.method j6([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    array-length v0, p1

    array-length v1, p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int v3, v0, v1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public peek()Labcd/_y;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v0, v1, v1}, Labcd/az;->j6(ILjava/lang/Long;Ljava/util/concurrent/TimeUnit;)Labcd/_y;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    return-object v1
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/az;->peek()Labcd/_y;

    move-result-object v0

    return-object v0
.end method

.method public poll()Labcd/_y;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v0, v1, v1}, Labcd/az;->j6(ILjava/lang/Long;Ljava/util/concurrent/TimeUnit;)Labcd/_y;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    return-object v1
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Labcd/_y;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p3}, Labcd/az;->j6(ILjava/lang/Long;Ljava/util/concurrent/TimeUnit;)Labcd/_y;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/az;->poll()Labcd/_y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Labcd/az;->poll(JLjava/util/concurrent/TimeUnit;)Labcd/_y;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-super {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Labcd/az;->j6:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_1d

    if-eqz p1, :cond_14

    goto :goto_16

    :cond_14
    const/4 p1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p1, 0x1

    :goto_17
    iget-object v0, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_1d
    move-exception p1

    iget-object v0, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-super {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    iget-object v1, p0, Labcd/az;->j6:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->removeAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_16

    iget-object v1, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    or-int/2addr p1, v0

    return p1

    :catchall_16
    move-exception p1

    iget-object v0, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public size()I
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Labcd/az;->j6:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    invoke-super {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v1
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_16

    iget-object v2, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    add-int/2addr v0, v1

    return v0

    :catchall_16
    move-exception v0

    iget-object v1, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public take()Labcd/_y;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Labcd/az;->j6(ILjava/lang/Long;Ljava/util/concurrent/TimeUnit;)Labcd/_y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic take()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/az;->take()Labcd/_y;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    :try_start_0
    iget-object v0, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-super {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Labcd/az;->j6:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Labcd/az;->j6([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_19

    iget-object v1, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_19
    move-exception v0

    iget-object v1, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-super {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Labcd/az;->j6:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Labcd/az;->j6([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_19

    iget-object v0, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_19
    move-exception p1

    iget-object v0, p0, Labcd/az;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
