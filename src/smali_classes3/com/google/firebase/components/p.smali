.class Lcom/google/firebase/components/p;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/yy;
.implements Labcd/zy;


# instance fields
.field private DW:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lwy<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final FH:Ljava/util/concurrent/Executor;

.field private final j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lxy<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/p;->j6:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/p;->DW:Ljava/util/Queue;

    iput-object p1, p0, Lcom/google/firebase/components/p;->FH:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private DW(Labcd/wy;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwy<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lxy<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/components/p;->j6:Ljava/util/Map;

    invoke-virtual {p1}, Labcd/wy;->DW()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_15

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1b

    monitor-exit p0

    return-object p1

    :cond_15
    :try_start_15
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object p1

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic j6(Ljava/util/Map$Entry;Labcd/wy;)V
    .registers 2

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Labcd/xy;

    invoke-interface {p0, p1}, Labcd/xy;->j6(Labcd/wy;)V

    return-void
.end method


# virtual methods
.method final j6()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/components/p;->DW:Ljava/util/Queue;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iput-object v1, p0, Lcom/google/firebase/components/p;->DW:Ljava/util/Queue;

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_22

    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/wy;

    invoke-virtual {p0, v1}, Lcom/google/firebase/components/p;->j6(Labcd/wy;)V

    goto :goto_11

    :cond_21
    return-void

    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    goto :goto_26

    :goto_25
    throw v0

    :goto_26
    goto :goto_25
.end method

.method public j6(Labcd/wy;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwy<",
            "*>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/google/firebase/components/p;->DW:Ljava/util/Queue;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :cond_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_31

    invoke-direct {p0, p1}, Lcom/google/firebase/components/p;->DW(Labcd/wy;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    invoke-static {v1, p1}, Lcom/google/firebase/components/q;->j6(Ljava/util/Map$Entry;Labcd/wy;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_16

    :cond_30
    return-void

    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    goto :goto_35

    :goto_34
    throw p1

    :goto_35
    goto :goto_34
.end method

.method public j6(Ljava/lang/Class;Labcd/xy;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lxy<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/components/p;->FH:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/firebase/components/p;->j6(Ljava/lang/Class;Ljava/util/concurrent/Executor;Labcd/xy;)V

    return-void
.end method

.method public j6(Ljava/lang/Class;Ljava/util/concurrent/Executor;Labcd/xy;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Lxy<",
            "-TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/components/p;->j6:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/firebase/components/p;->j6:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    iget-object v0, p0, Lcom/google/firebase/components/p;->j6:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method
