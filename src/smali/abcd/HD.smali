.class public Labcd/HD;
.super Ljava/lang/Object;


# instance fields
.field private final j6:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Labcd/LD;",
            ">;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Labcd/GD;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Labcd/HD;->j6:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private j6(Labcd/GD;)V
    .registers 5

    iget-object v0, p0, Labcd/HD;->j6:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p1, Labcd/GD;->DW:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v0, p0, Labcd/HD;->j6:Ljava/util/concurrent/ConcurrentMap;

    iget-object v2, p1, Labcd/GD;->DW:Ljava/lang/Class;

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public j6(Labcd/DD;)Labcd/GD;
    .registers 3

    const-class v0, Labcd/DD;

    invoke-virtual {p0, v0, p1}, Labcd/HD;->j6(Ljava/lang/Class;Labcd/LD;)Labcd/GD;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/Class;Labcd/LD;)Labcd/GD;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Labcd/LD;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)",
            "Labcd/GD;"
        }
    .end annotation

    new-instance v0, Labcd/GD;

    invoke-direct {v0, p0, p1, p2}, Labcd/GD;-><init>(Labcd/HD;Ljava/lang/Class;Labcd/LD;)V

    invoke-direct {p0, v0}, Labcd/HD;->j6(Labcd/GD;)V

    return-object v0
.end method

.method public j6(Labcd/KD;)V
    .registers 4

    iget-object v0, p0, Labcd/HD;->j6:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Labcd/KD;->j6()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/GD;

    iget-object v0, v0, Labcd/GD;->FH:Labcd/LD;

    invoke-virtual {p1, v0}, Labcd/KD;->j6(Labcd/LD;)V

    goto :goto_0
.end method
