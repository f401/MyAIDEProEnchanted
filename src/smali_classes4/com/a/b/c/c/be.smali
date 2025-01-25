.class public final Lcom/a/b/c/c/be;
.super Lcom/a/b/c/c/bg;


# instance fields
.field private final a:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>(Lcom/a/b/c/c/t;)V
    .registers 4

    const-string v0, "type_ids"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/a/b/c/c/bg;-><init>(Ljava/lang/String;Lcom/a/b/c/c/t;I)V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/a/b/c/c/be;->a:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/e/c/a;)Lcom/a/b/c/c/af;
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Lcom/a/b/c/c/be;->j()V

    move-object v0, p1

    check-cast v0, Lcom/a/b/e/c/ae;

    invoke-virtual {v0}, Lcom/a/b/e/c/ae;->i()Lcom/a/b/e/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/c/be;->a:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/af;

    if-nez v0, :cond_33

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    return-object v0
.end method

.method public a(Lcom/a/b/e/c/ae;)Lcom/a/b/c/c/bd;
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_e

    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lcom/a/b/c/c/be;->k()V

    invoke-virtual {p1}, Lcom/a/b/e/c/ae;->i()Lcom/a/b/e/d/c;

    move-result-object v1

    iget-object v0, p0, Lcom/a/b/c/c/be;->a:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/bd;

    if-nez v0, :cond_29

    new-instance v0, Lcom/a/b/c/c/bd;

    invoke-direct {v0, p1}, Lcom/a/b/c/c/bd;-><init>(Lcom/a/b/e/c/ae;)V

    iget-object v2, p0, Lcom/a/b/c/c/be;->a:Ljava/util/TreeMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_b

    :cond_29
    monitor-exit p0

    return-object v0
.end method

.method public a(Lcom/a/b/e/d/c;)Lcom/a/b/c/c/bd;
    .registers 4

    monitor-enter p0

    if-nez p1, :cond_e

    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lcom/a/b/c/c/be;->k()V

    iget-object v0, p0, Lcom/a/b/c/c/be;->a:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/bd;

    if-nez v0, :cond_2a

    new-instance v0, Lcom/a/b/c/c/bd;

    new-instance v1, Lcom/a/b/e/c/ae;

    invoke-direct {v1, p1}, Lcom/a/b/e/c/ae;-><init>(Lcom/a/b/e/d/c;)V

    invoke-direct {v0, v1}, Lcom/a/b/c/c/bd;-><init>(Lcom/a/b/e/c/ae;)V

    iget-object v1, p0, Lcom/a/b/c/c/be;->a:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_b

    :cond_2a
    monitor-exit p0

    return-object v0
.end method

.method protected a()V
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/c/c/be;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/bd;

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/bd;->a(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a
.end method

.method public b(Lcom/a/b/e/c/ae;)I
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Lcom/a/b/e/c/ae;->i()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/b/c/c/be;->b(Lcom/a/b/e/d/c;)I

    move-result v0

    return v0
.end method

.method public b(Lcom/a/b/e/d/c;)I
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Lcom/a/b/c/c/be;->j()V

    iget-object v0, p0, Lcom/a/b/c/c/be;->a:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/bd;

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    invoke-virtual {v0}, Lcom/a/b/c/c/bd;->g()I

    move-result v0

    return v0
.end method

.method public b()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/be;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/a/b/g/a;)V
    .registers 8

    const/high16 v5, 0x10000

    const/4 v4, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/a/b/c/c/be;->j()V

    iget-object v0, p0, Lcom/a/b/c/c/be;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-nez v2, :cond_36

    move v0, v1

    :goto_10
    if-le v2, v5, :cond_3b

    new-instance v0, Lcom/a/a/c;

    const-string v2, "Too many type identifiers to fit in one dex file: %1$d; max is %2$d.%nYou may try using multi-dex. If multi-dex is enabled then the list of classes for the main dex list is too large."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/a/b/c/c/be;->b()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    invoke-virtual {p0}, Lcom/a/b/c/c/be;->h()I

    move-result v0

    goto :goto_10

    :cond_3b
    invoke-interface {p1}, Lcom/a/b/g/a;->a()Z

    move-result v1

    if-eqz v1, :cond_6d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "type_ids_size:   "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v1}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "type_ids_off:    "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v1}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_6d
    invoke-interface {p1, v2}, Lcom/a/b/g/a;->d(I)V

    invoke-interface {p1, v0}, Lcom/a/b/g/a;->d(I)V

    return-void
.end method
