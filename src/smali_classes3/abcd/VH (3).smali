.class Labcd/VH;
.super Labcd/CH;


# instance fields
.field private final v5:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method constructor <init>(Labcd/NH;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/CH;-><init>(Labcd/NH;)V

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Labcd/VH;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method


# virtual methods
.method j6([BII)Labcd/CH$a;
    .registers 5

    invoke-virtual {p0, p1, p2}, Labcd/CH;->j6([BI)[B

    move-result-object p1

    iget-object v0, p0, Labcd/VH;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_9
    invoke-super {p0, p1, p2, p3}, Labcd/CH;->j6([BII)Labcd/CH$a;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_13

    iget-object p2, p0, Labcd/VH;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_13
    move-exception p1

    iget-object p2, p0, Labcd/VH;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method j6(I)V
    .registers 3

    iget-object v0, p0, Labcd/VH;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    invoke-super {p0, p1}, Labcd/CH;->j6(I)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_e

    iget-object p1, p0, Labcd/VH;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_e
    move-exception p1

    iget-object v0, p0, Labcd/VH;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method j6(ILabcd/MH;Labcd/MH;)Z
    .registers 5

    iget-object v0, p0, Labcd/VH;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    invoke-super {p0, p1, p2, p3}, Labcd/CH;->j6(ILabcd/MH;Labcd/MH;)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_f

    iget-object p2, p0, Labcd/VH;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_f
    move-exception p1

    iget-object p2, p0, Labcd/VH;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
