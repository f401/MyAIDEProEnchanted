.class public final Lcom/google/android/gms/internal/ads/DG;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/lE",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final FH:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/ads/lE",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final Hw:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/ads/lE",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final VH:Lcom/google/android/gms/internal/ads/b;

.field private final Zo:Lcom/google/android/gms/internal/ads/MB;

.field private final gn:[Lcom/google/android/gms/internal/ads/mC;

.field private final j6:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final tp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/bH;",
            ">;"
        }
    .end annotation
.end field

.field private u7:Lcom/google/android/gms/internal/ads/ox;

.field private final v5:Lcom/google/android/gms/internal/ads/El;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/El;Lcom/google/android/gms/internal/ads/MB;)V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/DG;-><init>(Lcom/google/android/gms/internal/ads/El;Lcom/google/android/gms/internal/ads/MB;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/El;Lcom/google/android/gms/internal/ads/MB;I)V
    .registers 8

    const/4 v0, 0x4

    new-instance v1, Lcom/google/android/gms/internal/ads/Pz;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/Pz;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/DG;-><init>(Lcom/google/android/gms/internal/ads/El;Lcom/google/android/gms/internal/ads/MB;ILcom/google/android/gms/internal/ads/b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/El;Lcom/google/android/gms/internal/ads/MB;ILcom/google/android/gms/internal/ads/b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DG;->j6:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DG;->DW:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DG;->FH:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DG;->Hw:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DG;->tp:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/DG;->v5:Lcom/google/android/gms/internal/ads/El;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/DG;->Zo:Lcom/google/android/gms/internal/ads/MB;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/mC;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DG;->gn:[Lcom/google/android/gms/internal/ads/mC;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/DG;->VH:Lcom/google/android/gms/internal/ads/b;

    return-void
.end method


# virtual methods
.method final DW(Lcom/google/android/gms/internal/ads/lE;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/lE",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DG;->DW:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DG;->DW:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DG;->tp:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DG;->tp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bH;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bH;->j6(Lcom/google/android/gms/internal/ads/lE;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/lE;)Lcom/google/android/gms/internal/ads/lE;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/lE",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/ads/lE",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/lE;->j6(Lcom/google/android/gms/internal/ads/DG;)Lcom/google/android/gms/internal/ads/lE;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DG;->DW:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DG;->DW:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DG;->j6:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/lE;->j6(I)Lcom/google/android/gms/internal/ads/lE;

    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/lE;->j6(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lE;->Mr()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DG;->Hw:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DG;->FH:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final j6()V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DG;->u7:Lcom/google/android/gms/internal/ads/ox;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ox;->j6()V

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/DG;->gn:[Lcom/google/android/gms/internal/ads/mC;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/mC;->j6()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/ox;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/DG;->FH:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/DG;->Hw:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/DG;->v5:Lcom/google/android/gms/internal/ads/El;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/DG;->VH:Lcom/google/android/gms/internal/ads/b;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/ox;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/El;Lcom/google/android/gms/internal/ads/b;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/DG;->u7:Lcom/google/android/gms/internal/ads/ox;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DG;->u7:Lcom/google/android/gms/internal/ads/ox;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DG;->gn:[Lcom/google/android/gms/internal/ads/mC;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/ads/mC;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/DG;->Hw:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/DG;->Zo:Lcom/google/android/gms/internal/ads/MB;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/DG;->v5:Lcom/google/android/gms/internal/ads/El;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/DG;->VH:Lcom/google/android/gms/internal/ads/b;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/mC;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/MB;Lcom/google/android/gms/internal/ads/El;Lcom/google/android/gms/internal/ads/b;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/DG;->gn:[Lcom/google/android/gms/internal/ads/mC;

    aput-object v1, v2, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
