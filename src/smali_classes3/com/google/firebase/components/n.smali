.class public final Lcom/google/firebase/components/n;
.super Lcom/google/firebase/components/j;


# instance fields
.field private final DW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/components/r<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final FH:Lcom/google/firebase/components/p;

.field private final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/components/b<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;[Lcom/google/firebase/components/b;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/components/e;",
            ">;[",
            "Lcom/google/firebase/components/b<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/components/j;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/n;->DW:Ljava/util/Map;

    new-instance v0, Lcom/google/firebase/components/p;

    invoke-direct {v0, p1}, Lcom/google/firebase/components/p;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/firebase/components/n;->FH:Lcom/google/firebase/components/p;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Lcom/google/firebase/components/p;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Labcd/zy;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Labcd/yy;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/firebase/components/b;->j6(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_30
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/e;

    invoke-interface {v0}, Lcom/google/firebase/components/e;->getComponents()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_30

    :cond_44
    invoke-static {p1, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/google/firebase/components/a;->j6(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/components/n;->j6:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_55
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/components/b;

    invoke-direct {p0, p2}, Lcom/google/firebase/components/n;->j6(Lcom/google/firebase/components/b;)V

    goto :goto_55

    :cond_65
    invoke-direct {p0}, Lcom/google/firebase/components/n;->j6()V

    return-void
.end method

.method private j6()V
    .registers 7

    iget-object v0, p0, Lcom/google/firebase/components/n;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/components/b;

    invoke-virtual {v1}, Lcom/google/firebase/components/b;->DW()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/components/f;

    invoke-virtual {v3}, Lcom/google/firebase/components/f;->DW()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/google/firebase/components/n;->DW:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/firebase/components/f;->j6()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    goto :goto_1a

    :cond_39
    new-instance v0, Lcom/google/firebase/components/i;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v1, 0x1

    invoke-virtual {v3}, Lcom/google/firebase/components/f;->j6()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Unsatisfied dependency for component %s: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/components/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    return-void
.end method

.method private j6(Lcom/google/firebase/components/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/components/b<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/components/r;

    invoke-virtual {p1}, Lcom/google/firebase/components/b;->FH()Lcom/google/firebase/components/d;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/components/t;

    invoke-direct {v2, p1, p0}, Lcom/google/firebase/components/t;-><init>(Lcom/google/firebase/components/b;Lcom/google/firebase/components/c;)V

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/components/r;-><init>(Lcom/google/firebase/components/d;Lcom/google/firebase/components/c;)V

    invoke-virtual {p1}, Lcom/google/firebase/components/b;->j6()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/firebase/components/n;->DW:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_28
    return-void
.end method


# virtual methods
.method public final DW(Ljava/lang/Class;)Labcd/By;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "LBy<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Null interface requested."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/components/n;->DW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/By;

    return-object p1
.end method

.method public final bridge synthetic j6(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/firebase/components/j;->j6(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/components/n;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/components/b;

    invoke-virtual {v1}, Lcom/google/firebase/components/b;->v5()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v1}, Lcom/google/firebase/components/b;->Zo()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p1, :cond_6

    :cond_20
    invoke-virtual {v1}, Lcom/google/firebase/components/b;->j6()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v1}, Lcom/google/firebase/components/n;->j6(Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_6

    :cond_32
    iget-object p1, p0, Lcom/google/firebase/components/n;->FH:Lcom/google/firebase/components/p;

    invoke-virtual {p1}, Lcom/google/firebase/components/p;->j6()V

    return-void
.end method
