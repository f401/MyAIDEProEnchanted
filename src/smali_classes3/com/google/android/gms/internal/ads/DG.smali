.class public final Lcom/google/android/gms/internal/ads/DG;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/lE<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final FH:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/google/android/gms/internal/ads/lE<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final Hw:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/google/android/gms/internal/ads/lE<",
            "*>;>;"
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
            "Ljava/util/List<",
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
    .registers 6

    new-instance p3, Lcom/google/android/gms/internal/ads/Pz;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/ads/Pz;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/DG;-><init>(Lcom/google/android/gms/internal/ads/El;Lcom/google/android/gms/internal/ads/MB;ILcom/google/android/gms/internal/ads/b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/El;Lcom/google/android/gms/internal/ads/MB;ILcom/google/android/gms/internal/ads/b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/DG;->j6:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/DG;->DW:Ljava/util/Set;

    new-instance p3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/DG;->FH:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance p3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/DG;->Hw:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/DG;->tp:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/DG;->v5:Lcom/google/android/gms/internal/ads/El;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/DG;->Zo:Lcom/google/android/gms/internal/ads/MB;

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/mC;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/DG;->gn:[Lcom/google/android/gms/internal/ads/mC;

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
            "Lcom/google/android/gms/internal/ads/lE<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DG;->DW:Ljava/util/Set;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DG;->DW:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_27

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DG;->tp:Ljava/util/List;

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DG;->tp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/bH;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/bH;->j6(Lcom/google/android/gms/internal/ads/lE;)V

    goto :goto_12

    :cond_22
    monitor-exit v1

    return-void

    :catchall_24
    move-exception p1

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_24

    throw p1

    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    goto :goto_2b

    :goto_2a
    throw p1

    :goto_2b
    goto :goto_2a
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/lE;)Lcom/google/android/gms/internal/ads/lE;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/lE<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/lE<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/lE;->j6(Lcom/google/android/gms/internal/ads/DG;)Lcom/google/android/gms/internal/ads/lE;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DG;->DW:Ljava/util/Set;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DG;->DW:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DG;->j6:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/lE;->j6(I)Lcom/google/android/gms/internal/ads/lE;

    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/lE;->j6(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lE;->Mr()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DG;->Hw:Ljava/util/concurrent/PriorityBlockingQueue;

    :goto_22
    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DG;->FH:Ljava/util/concurrent/PriorityBlockingQueue;

    goto :goto_22

    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    goto :goto_2d

    :goto_2c
    throw p1

    :goto_2d
    goto :goto_2c
.end method

.method public final j6()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DG;->u7:Lcom/google/android/gms/internal/ads/ox;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ox;->j6()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DG;->gn:[Lcom/google/android/gms/internal/ads/mC;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/mC;->j6()V

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_18
    new-instance v0, Lcom/google/android/gms/internal/ads/ox;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DG;->FH:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/DG;->Hw:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/DG;->v5:Lcom/google/android/gms/internal/ads/El;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/DG;->VH:Lcom/google/android/gms/internal/ads/b;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/ox;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/El;Lcom/google/android/gms/internal/ads/b;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DG;->u7:Lcom/google/android/gms/internal/ads/ox;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DG;->gn:[Lcom/google/android/gms/internal/ads/mC;

    array-length v0, v0

    if-ge v2, v0, :cond_46

    new-instance v0, Lcom/google/android/gms/internal/ads/mC;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DG;->Hw:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/DG;->Zo:Lcom/google/android/gms/internal/ads/MB;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/DG;->v5:Lcom/google/android/gms/internal/ads/El;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/DG;->VH:Lcom/google/android/gms/internal/ads/b;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/mC;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/MB;Lcom/google/android/gms/internal/ads/El;Lcom/google/android/gms/internal/ads/b;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DG;->gn:[Lcom/google/android/gms/internal/ads/mC;

    aput-object v0, v1, v2

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_46
    return-void
.end method
