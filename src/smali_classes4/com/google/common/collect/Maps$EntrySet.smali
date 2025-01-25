.class abstract Lcom/google/common/collect/Maps$EntrySet;
.super Lcom/google/common/collect/Sets$ImprovedAbstractSet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Sets$ImprovedAbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 3774
    invoke-direct {p0}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 3784
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3785
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    .line 3789
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_2a

    .line 3790
    check-cast p1, Ljava/util/Map$Entry;

    .line 3791
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3792
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3793
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    if-nez v2, :cond_29

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_29
    const/4 v0, 0x1

    .line 3795
    :cond_2a
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 3800
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method abstract map()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    .line 3805
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3806
    check-cast p1, Ljava/util/Map$Entry;

    .line 3807
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 3809
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
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

    .line 3815
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-super {p0, v0}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;->removeAll(Ljava/util/Collection;)Z
    :try_end_9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 3818
    :goto_a
    return v0

    .line 3816
    :catch_b
    move-exception v0

    .line 3818
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Sets;->removeAllImpl(Ljava/util/Set;Ljava/util/Iterator;)Z

    move-result v0

    goto :goto_a
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .line 3825
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-super {p0, v0}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;->retainAll(Ljava/util/Collection;)Z
    :try_end_9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 3835
    :goto_a
    return v0

    .line 3826
    :catch_b
    move-exception v0

    .line 3828
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v1

    .line 3829
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3830
    invoke-virtual {p0, v0}, Lcom/google/common/collect/Maps$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3831
    check-cast v0, Ljava/util/Map$Entry;

    .line 3832
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 3835
    :cond_32
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_a
.end method

.method public size()I
    .registers 2

    .line 3779
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
