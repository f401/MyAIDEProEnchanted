.class final Lcom/google/common/collect/FilteredMultimapValues;
.super Ljava/util/AbstractCollection;
.source "FilteredMultimapValues.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final multimap:Lcom/google/common/collect/FilteredMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/FilteredMultimap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/FilteredMultimap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/FilteredMultimap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/FilteredMultimap;

    iput-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/FilteredMultimap;

    .line 41
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lcom/google/common/collect/FilteredMultimap;->clear()V

    .line 94
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 50
    iget-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/FilteredMultimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/FilteredMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lcom/google/common/collect/FilteredMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 60
    iget-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lcom/google/common/collect/FilteredMultimap;->entryPredicate()Lcom/google/common/base/Predicate;

    move-result-object v1

    .line 61
    iget-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lcom/google/common/collect/FilteredMultimap;->unfiltered()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 62
    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v1, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 65
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 66
    const/4 v0, 0x1

    .line 69
    :goto_34
    return v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/FilteredMultimap;

    .line 75
    invoke-interface {v0}, Lcom/google/common/collect/FilteredMultimap;->unfiltered()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/FilteredMultimap;

    .line 78
    invoke-interface {v1}, Lcom/google/common/collect/FilteredMultimap;->entryPredicate()Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Maps;->valuePredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v2

    .line 77
    invoke-static {v1, v2}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    .line 74
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->removeIf(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/FilteredMultimap;

    .line 84
    invoke-interface {v0}, Lcom/google/common/collect/FilteredMultimap;->unfiltered()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/FilteredMultimap;

    .line 87
    invoke-interface {v1}, Lcom/google/common/collect/FilteredMultimap;->entryPredicate()Lcom/google/common/base/Predicate;

    move-result-object v1

    .line 88
    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Maps;->valuePredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v2

    .line 86
    invoke-static {v1, v2}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->removeIf(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lcom/google/common/collect/FilteredMultimap;->size()I

    move-result v0

    return v0
.end method
