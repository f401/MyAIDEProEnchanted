.class public final Lcom/a/b/c/c/h;
.super Lcom/a/b/c/c/bg;


# instance fields
.field private final a:Ljava/util/TreeMap;

.field private final b:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>(Lcom/a/b/c/c/t;)V
    .registers 4

    const-string v0, "call_site_ids"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/a/b/c/c/bg;-><init>(Ljava/lang/String;Lcom/a/b/c/c/t;I)V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/a/b/c/c/h;->a:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/a/b/c/c/h;->b:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/e/c/a;)Lcom/a/b/c/c/af;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Lcom/a/b/c/c/h;->j()V

    iget-object v0, p0, Lcom/a/b/c/c/h;->a:Ljava/util/TreeMap;

    check-cast p1, Lcom/a/b/e/c/j;

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

.method a(Lcom/a/b/e/c/i;)Lcom/a/b/c/c/i;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callSite == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/a/b/c/c/h;->b:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/i;

    return-object v0
.end method

.method protected a()V
    .registers 4

    iget-object v0, p0, Lcom/a/b/c/c/h;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/g;

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/g;->a(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c
.end method

.method a(Lcom/a/b/e/c/i;Lcom/a/b/c/c/i;)V
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callSite == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_14

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callSiteItem == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v0, p0, Lcom/a/b/c/c/h;->b:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/a/b/e/c/j;)V
    .registers 4

    monitor-enter p0

    if-nez p1, :cond_e

    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cstRef"

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
    invoke-virtual {p0}, Lcom/a/b/c/c/h;->k()V

    iget-object v0, p0, Lcom/a/b/c/c/h;->a:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/g;

    if-nez v0, :cond_25

    new-instance v0, Lcom/a/b/c/c/g;

    invoke-direct {v0, p1}, Lcom/a/b/c/c/g;-><init>(Lcom/a/b/e/c/j;)V

    iget-object v1, p0, Lcom/a/b/c/c/h;->a:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_b

    :cond_25
    monitor-exit p0

    return-void
.end method

.method public b()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/h;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
