.class final Lcom/google/common/collect/FilteredKeyListMultimap;
.super Lcom/google/common/collect/FilteredKeyMultimap;
.source "FilteredKeyListMultimap.java"

# interfaces
.implements Lcom/google/common/collect/ListMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/FilteredKeyMultimap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/ListMultimap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/ListMultimap;Lcom/google/common/base/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TK;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/FilteredKeyMultimap;-><init>(Lcom/google/common/collect/Multimap;Lcom/google/common/base/Predicate;)V

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/common/collect/FilteredKeyListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .line 43
    invoke-super {p0, p1}, Lcom/google/common/collect/FilteredKeyMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/common/collect/FilteredKeyListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .line 48
    invoke-super {p0, p1}, Lcom/google/common/collect/FilteredKeyMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 4

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/FilteredKeyListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .line 53
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/FilteredKeyMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public unfiltered()Lcom/google/common/collect/ListMultimap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 38
    invoke-super {p0}, Lcom/google/common/collect/FilteredKeyMultimap;->unfiltered()Lcom/google/common/collect/Multimap;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ListMultimap;

    return-object v0
.end method

.method public bridge synthetic unfiltered()Lcom/google/common/collect/Multimap;
    .registers 2

    .line 29
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredKeyListMultimap;->unfiltered()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method
