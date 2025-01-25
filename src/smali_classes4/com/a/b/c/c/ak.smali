.class public abstract Lcom/a/b/c/c/ak;
.super Lcom/a/b/c/c/bg;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/a/b/c/c/t;)V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/a/b/c/c/bg;-><init>(Ljava/lang/String;Lcom/a/b/c/c/t;I)V

    return-void
.end method

.method private d()Ljava/lang/String;
    .registers 9

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/a/b/c/c/ak;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_57

    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3}, Ljava/util/Formatter;-><init>()V

    :try_start_18
    instance-of v1, p0, Lcom/a/b/c/c/ap;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_a5

    if-eqz v1, :cond_79

    const-string v1, "method"

    :goto_1e
    :try_start_1e
    const-string v4, "Too many %1$s references to fit in one dex file: %2$d; max is %3$d.%nYou may try using multi-dex. If multi-dex is enabled then the list of classes for the main dex list is too large.%nReferences by package:"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/a/b/c/c/ak;->b()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x2

    const/high16 v6, 0x10000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7c

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;
    :try_end_52
    .catchall {:try_start_1e .. :try_end_52} :catchall_a5

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    return-object v1

    :cond_57
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/c/c/aj;

    invoke-virtual {v1}, Lcom/a/b/c/c/aj;->e()Lcom/a/b/e/c/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/c/ae;->k()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_75

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_75
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_d

    :cond_79
    const-string v1, "field"

    goto :goto_1e

    :cond_7c
    :try_start_7c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    const-string v5, "%n%6d %s"

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-virtual {v3, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_a4
    .catchall {:try_start_7c .. :try_end_a4} :catchall_a5

    goto :goto_49

    :catchall_a5
    move-exception v1

    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    throw v1
.end method


# virtual methods
.method protected a()V
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/c/c/ak;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/high16 v1, 0x10000

    if-le v0, v1, :cond_16

    new-instance v0, Lcom/a/a/c;

    invoke-direct {p0}, Lcom/a/b/c/c/ak;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-virtual {p0}, Lcom/a/b/c/c/ak;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_27

    return-void

    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/aj;

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/aj;->a(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_20
.end method
