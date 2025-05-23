.class public Landroidj/support/v4/util/ArrayMap;
.super Landroidj/support/v4/util/SimpleArrayMap;

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidj/support/v4/util/SimpleArrayMap",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field mCollections:Landroidj/support/v4/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidj/support/v4/util/MapCollections",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/util/SimpleArrayMap;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Landroidj/support/v4/util/SimpleArrayMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidj/support/v4/util/SimpleArrayMap;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidj/support/v4/util/SimpleArrayMap;-><init>(Landroidj/support/v4/util/SimpleArrayMap;)V

    return-void
.end method

.method private getCollection()Landroidj/support/v4/util/MapCollections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidj/support/v4/util/MapCollections",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/util/ArrayMap;->mCollections:Landroidj/support/v4/util/MapCollections;

    if-nez v0, :cond_b

    new-instance v0, Landroidj/support/v4/util/ArrayMap$1;

    invoke-direct {v0, p0}, Landroidj/support/v4/util/ArrayMap$1;-><init>(Landroidj/support/v4/util/ArrayMap;)V

    iput-object v0, p0, Landroidj/support/v4/util/ArrayMap;->mCollections:Landroidj/support/v4/util/MapCollections;

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/util/ArrayMap;->mCollections:Landroidj/support/v4/util/MapCollections;

    return-object v0
.end method


# virtual methods
.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidj/support/v4/util/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroidj/support/v4/util/ArrayMap;->getCollection()Landroidj/support/v4/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroidj/support/v4/util/MapCollections;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroidj/support/v4/util/ArrayMap;->getCollection()Landroidj/support/v4/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroidj/support/v4/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    iget v0, p0, Landroidj/support/v4/util/ArrayMap;->mSize:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidj/support/v4/util/ArrayMap;->ensureCapacity(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_2a
    return-void
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidj/support/v4/util/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidj/support/v4/util/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroidj/support/v4/util/ArrayMap;->getCollection()Landroidj/support/v4/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroidj/support/v4/util/MapCollections;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
