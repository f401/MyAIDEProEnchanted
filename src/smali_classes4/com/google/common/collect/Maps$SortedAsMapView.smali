.class Lcom/google/common/collect/Maps$SortedAsMapView;
.super Lcom/google/common/collect/Maps$AsMapView;
.source "Maps.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortedAsMapView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$AsMapView",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/SortedSet;Lcom/google/common/base/Function;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<TK;>;",
            "Lcom/google/common/base/Function",
            "<-TK;TV;>;)V"
        }
    .end annotation

    .line 857
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Maps$AsMapView;-><init>(Ljava/util/Set;Lcom/google/common/base/Function;)V

    .line 858
    return-void
.end method


# virtual methods
.method bridge synthetic backingSet()Ljava/util/Set;
    .registers 2

    .line 854
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedAsMapView;->backingSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method backingSet()Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .line 862
    invoke-super {p0}, Lcom/google/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .line 867
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedAsMapView;->backingSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 892
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedAsMapView;->backingSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 882
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedAsMapView;->backingSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$SortedAsMapView;->function:Lcom/google/common/base/Function;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/SortedSet;Lcom/google/common/base/Function;)Ljava/util/SortedMap;

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

    .line 872
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedAsMapView;->backingSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->access$300(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 897
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedAsMapView;->backingSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 877
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedAsMapView;->backingSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$SortedAsMapView;->function:Lcom/google/common/base/Function;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/SortedSet;Lcom/google/common/base/Function;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 887
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedAsMapView;->backingSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$SortedAsMapView;->function:Lcom/google/common/base/Function;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/SortedSet;Lcom/google/common/base/Function;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
