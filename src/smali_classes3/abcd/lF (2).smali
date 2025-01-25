.class public Labcd/lF;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/LE;


# instance fields
.field private final DW:Ljava/util/concurrent/locks/ReentrantLock;

.field private final FH:Ljava/lang/Thread;

.field private final Hw:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final Zo:Ljava/util/concurrent/Semaphore;

.field private final j6:Labcd/LE;

.field private final v5:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Labcd/LE;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/lF;->j6:Labcd/LE;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Labcd/lF;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Labcd/lF;->FH:Ljava/lang/Thread;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Labcd/lF;->Hw:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Labcd/lF;->v5:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/Semaphore;

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Labcd/lF;->Zo:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method private Hw()V
    .registers 3

    iget-object v0, p0, Labcd/lF;->v5:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_e

    iget-object v1, p0, Labcd/lF;->j6:Labcd/LE;

    invoke-interface {v1, v0}, Labcd/LE;->update(I)V

    :cond_e
    return-void
.end method

.method private v5()Z
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Labcd/lF;->FH:Ljava/lang/Thread;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public DW()V
    .registers 2

    iget-object v0, p0, Labcd/lF;->Hw:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Labcd/lF;->Zo:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_d
    return-void
.end method

.method public FH()V
    .registers 2

    :goto_0
    iget-object v0, p0, Labcd/lF;->Hw:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0}, Labcd/lF;->Hw()V

    if-gtz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Labcd/lF;->Zo:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    goto :goto_0
.end method

.method public isCancelled()Z
    .registers 3

    iget-object v0, p0, Labcd/lF;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Labcd/lF;->j6:Labcd/LE;

    invoke-interface {v0}, Labcd/LE;->isCancelled()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    iget-object v1, p0, Labcd/lF;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_11
    move-exception v0

    iget-object v1, p0, Labcd/lF;->DW:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public j6()V
    .registers 2

    invoke-direct {p0}, Labcd/lF;->v5()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Labcd/lF;->j6:Labcd/LE;

    invoke-interface {v0}, Labcd/LE;->j6()V

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public j6(I)V
    .registers 3

    iget-object v0, p0, Labcd/lF;->Hw:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method public j6(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Labcd/lF;->v5()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Labcd/lF;->j6:Labcd/LE;

    invoke-interface {v0, p1, p2}, Labcd/LE;->j6(Ljava/lang/String;I)V

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public start(I)V
    .registers 3

    invoke-direct {p0}, Labcd/lF;->v5()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Labcd/lF;->j6:Labcd/LE;

    invoke-interface {v0, p1}, Labcd/LE;->start(I)V

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public update(I)V
    .registers 3

    iget-object v0, p0, Labcd/lF;->v5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    invoke-direct {p0}, Labcd/lF;->v5()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Labcd/lF;->Hw()V

    goto :goto_17

    :cond_10
    if-nez p1, :cond_17

    iget-object p1, p0, Labcd/lF;->Zo:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_17
    :goto_17
    return-void
.end method
