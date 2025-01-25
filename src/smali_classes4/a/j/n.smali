.class public La/j/n;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/j/n;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, La/j/n;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, La/j/n;->b:Ljava/util/Set;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3

    iget-object v0, p0, La/j/n;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, La/j/n;->a(Ljava/lang/Object;Ljava/util/Set;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/util/Set;)V
    .registers 5

    iget-object v0, p0, La/j/n;->b:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, La/j/n;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_19

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, La/j/n;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
