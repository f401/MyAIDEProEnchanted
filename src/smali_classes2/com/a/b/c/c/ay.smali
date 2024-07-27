.class public final Lcom/a/b/c/c/ay;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/c/c/ay;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/c/c/ag;)V
    .registers 5

    invoke-virtual {p1}, Lcom/a/b/c/c/ag;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/a/b/c/c/ay;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/az;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/b/c/c/ay;->a:Ljava/util/HashMap;

    new-instance v2, Lcom/a/b/c/c/az;

    invoke-direct {v2, p1, v1}, Lcom/a/b/c/c/az;-><init>(Lcom/a/b/c/c/ag;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/a/b/c/c/az;->a(Lcom/a/b/c/c/ag;)V

    goto :goto_0
.end method

.method public a(Lcom/a/b/c/c/ax;)V
    .registers 4

    invoke-virtual {p1}, Lcom/a/b/c/c/ax;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/ag;

    invoke-virtual {p0, v0}, Lcom/a/b/c/c/ay;->a(Lcom/a/b/c/c/ag;)V

    goto :goto_0
.end method

.method public final a(Lcom/a/b/g/a;)V
    .registers 6

    iget-object v0, p0, Lcom/a/b/c/c/ay;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const-string v1, "\nstatistics:\n"

    invoke-interface {p1, v0, v1}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iget-object v0, p0, Lcom/a/b/c/c/ay;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/az;

    invoke-virtual {v0, p1}, Lcom/a/b/c/c/az;->a(Lcom/a/b/g/a;)V

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/az;

    invoke-static {v0}, Lcom/a/b/c/c/az;->a(Lcom/a/b/c/c/az;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
