.class public La/b/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, La/b/b;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)La/b/c;
    .registers 3

    iget-object v0, p0, La/b/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/b/c;

    return-object p1
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, La/b/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public a(La/b/c;)V
    .registers 4

    iget-object v0, p0, La/b/b;->a:Ljava/util/Map;

    invoke-interface {p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(La/b/g/n;)V
    .registers 2

    invoke-interface {p1, p0}, La/b/g/n;->a(La/b/b;)V

    return-void
.end method

.method public a(La/b/g/s;)V
    .registers 4

    iget-object v0, p0, La/b/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/c;

    invoke-interface {v1, p1}, La/b/c;->a(La/b/g/s;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public a(Ljava/lang/String;La/b/g/s;)V
    .registers 3

    invoke-virtual {p0, p1}, La/b/b;->a(Ljava/lang/String;)La/b/c;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1, p2}, La/b/c;->a(La/b/g/s;)V

    :cond_9
    return-void
.end method

.method public b()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, La/b/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public b(La/b/g/s;)V
    .registers 4

    iget-object v0, p0, La/b/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/c;

    invoke-interface {v1, p1}, La/b/c;->a(La/b/g/s;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, La/b/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
