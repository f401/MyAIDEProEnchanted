.class public final Lcom/a/b/c/c/ab;
.super Lcom/a/b/c/c/ak;


# instance fields
.field private final a:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>(Lcom/a/b/c/c/t;)V
    .registers 3

    const-string v0, "field_ids"

    invoke-direct {p0, v0, p1}, Lcom/a/b/c/c/ak;-><init>(Ljava/lang/String;Lcom/a/b/c/c/t;)V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/a/b/c/c/ab;->a:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/e/c/n;)Lcom/a/b/c/c/aa;
    .registers 4

    monitor-enter p0

    if-nez p1, :cond_e

    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

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
    invoke-virtual {p0}, Lcom/a/b/c/c/ab;->k()V

    iget-object v0, p0, Lcom/a/b/c/c/ab;->a:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/aa;

    if-nez v0, :cond_25

    new-instance v0, Lcom/a/b/c/c/aa;

    invoke-direct {v0, p1}, Lcom/a/b/c/c/aa;-><init>(Lcom/a/b/e/c/n;)V

    iget-object v1, p0, Lcom/a/b/c/c/ab;->a:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_b

    :cond_25
    monitor-exit p0

    return-object v0
.end method

.method public a(Lcom/a/b/e/c/a;)Lcom/a/b/c/c/af;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Lcom/a/b/c/c/ab;->j()V

    iget-object v0, p0, Lcom/a/b/c/c/ab;->a:Ljava/util/TreeMap;

    check-cast p1, Lcom/a/b/e/c/n;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/af;

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    return-object v0
.end method

.method public a(Lcom/a/b/g/a;)V
    .registers 7

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/a/b/c/c/ab;->j()V

    iget-object v0, p0, Lcom/a/b/c/c/ab;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-nez v1, :cond_46

    const/4 v0, 0x0

    :goto_d
    invoke-interface {p1}, Lcom/a/b/g/a;->a()Z

    move-result v2

    if-eqz v2, :cond_3f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "field_ids_size:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "field_ids_off:   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_3f
    invoke-interface {p1, v1}, Lcom/a/b/g/a;->d(I)V

    invoke-interface {p1, v0}, Lcom/a/b/g/a;->d(I)V

    return-void

    :cond_46
    invoke-virtual {p0}, Lcom/a/b/c/c/ab;->h()I

    move-result v0

    goto :goto_d
.end method

.method public b(Lcom/a/b/e/c/n;)I
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ref == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Lcom/a/b/c/c/ab;->j()V

    iget-object v0, p0, Lcom/a/b/c/c/ab;->a:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/aa;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    invoke-virtual {v0}, Lcom/a/b/c/c/aa;->g()I

    move-result v0

    return v0
.end method

.method public b()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/ab;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
