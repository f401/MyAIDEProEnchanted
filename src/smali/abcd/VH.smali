.class Labcd/VH;
.super Labcd/CH;


# instance fields
.field private final v5:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method constructor <init>(Labcd/NH;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/CH;-><init>(Labcd/NH;)V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Labcd/VH;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method


# virtual methods
.method j6([BII)Labcd/CH$a;
    .registers 6

    invoke-virtual {p0, p1, p2}, Labcd/CH;->j6([BI)[B

    move-result-object v0

    iget-object v1, p0, Labcd/VH;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-super {p0, v0, p2, p3}, Labcd/CH;->j6([BII)Labcd/CH$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Labcd/VH;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labcd/VH;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method j6(I)V
    .registers 4

    iget-object v0, p0, Labcd/VH;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-super {p0, p1}, Labcd/CH;->j6(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Labcd/VH;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labcd/VH;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method j6(ILabcd/MH;Labcd/MH;)Z
    .registers 6

    iget-object v0, p0, Labcd/VH;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Labcd/CH;->j6(ILabcd/MH;Labcd/MH;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Labcd/VH;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labcd/VH;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
