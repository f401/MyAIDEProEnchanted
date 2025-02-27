.class final Lcom/google/common/graph/DirectedNetworkConnections;
.super Lcom/google/common/graph/AbstractDirectedNetworkConnections;
.source "DirectedNetworkConnections.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractDirectedNetworkConnections",
        "<TN;TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/util/Map;Ljava/util/Map;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;TN;>;",
            "Ljava/util/Map",
            "<TE;TN;>;I)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    .line 40
    return-void
.end method

.method static of()Lcom/google/common/graph/DirectedNetworkConnections;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/graph/DirectedNetworkConnections",
            "<TN;TE;>;"
        }
    .end annotation

    const/4 v2, 0x2

    .line 43
    new-instance v0, Lcom/google/common/graph/DirectedNetworkConnections;

    invoke-static {v2}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v1

    invoke-static {v2}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/graph/DirectedNetworkConnections;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    return-object v0
.end method

.method static ofImmutable(Ljava/util/Map;Ljava/util/Map;I)Lcom/google/common/graph/DirectedNetworkConnections;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TE;TN;>;",
            "Ljava/util/Map",
            "<TE;TN;>;I)",
            "Lcom/google/common/graph/DirectedNetworkConnections",
            "<TN;TE;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/google/common/graph/DirectedNetworkConnections;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableBiMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableBiMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/google/common/graph/DirectedNetworkConnections;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    return-object v0
.end method


# virtual methods
.method public edgesConnecting(Ljava/lang/Object;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .line 65
    new-instance v1, Lcom/google/common/graph/EdgesConnecting;

    iget-object v0, p0, Lcom/google/common/graph/DirectedNetworkConnections;->outEdgeMap:Ljava/util/Map;

    check-cast v0, Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/common/graph/EdgesConnecting;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v1
.end method

.method public predecessors()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/common/graph/DirectedNetworkConnections;->inEdgeMap:Ljava/util/Map;

    check-cast v0, Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public successors()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/common/graph/DirectedNetworkConnections;->outEdgeMap:Ljava/util/Map;

    check-cast v0, Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
