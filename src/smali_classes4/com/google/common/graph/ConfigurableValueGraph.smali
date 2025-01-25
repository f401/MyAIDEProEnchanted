.class Lcom/google/common/graph/ConfigurableValueGraph;
.super Lcom/google/common/graph/AbstractValueGraph;
.source "ConfigurableValueGraph.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractValueGraph",
        "<TN;TV;>;"
    }
.end annotation


# instance fields
.field private final allowsSelfLoops:Z

.field protected edgeCount:J

.field private final isDirected:Z

.field protected final nodeConnections:Lcom/google/common/graph/MapIteratorCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/MapIteratorCache",
            "<TN;",
            "Lcom/google/common/graph/GraphConnections",
            "<TN;TV;>;>;"
        }
    .end annotation
.end field

.field private final nodeOrder:Lcom/google/common/graph/ElementOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/ElementOrder",
            "<TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/AbstractGraphBuilder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/AbstractGraphBuilder",
            "<-TN;>;)V"
        }
    .end annotation

    .line 56
    iget-object v1, p1, Lcom/google/common/graph/AbstractGraphBuilder;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    iget-object v0, p1, Lcom/google/common/graph/AbstractGraphBuilder;->expectedNodeCount:Lcom/google/common/base/Optional;

    .line 59
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 58
    invoke-virtual {v1, v0}, Lcom/google/common/graph/ElementOrder;->createMap(I)Ljava/util/Map;

    move-result-object v0

    .line 56
    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/google/common/graph/ConfigurableValueGraph;-><init>(Lcom/google/common/graph/AbstractGraphBuilder;Ljava/util/Map;J)V

    .line 61
    return-void
.end method

.method constructor <init>(Lcom/google/common/graph/AbstractGraphBuilder;Ljava/util/Map;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/AbstractGraphBuilder",
            "<-TN;>;",
            "Ljava/util/Map",
            "<TN;",
            "Lcom/google/common/graph/GraphConnections",
            "<TN;TV;>;>;J)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/google/common/graph/AbstractValueGraph;-><init>()V

    .line 71
    iget-boolean v0, p1, Lcom/google/common/graph/AbstractGraphBuilder;->directed:Z

    iput-boolean v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->isDirected:Z

    .line 72
    iget-boolean v0, p1, Lcom/google/common/graph/AbstractGraphBuilder;->allowsSelfLoops:Z

    iput-boolean v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->allowsSelfLoops:Z

    .line 73
    iget-object v0, p1, Lcom/google/common/graph/AbstractGraphBuilder;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    invoke-virtual {v0}, Lcom/google/common/graph/ElementOrder;->cast()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    .line 75
    instance-of v0, p2, Ljava/util/TreeMap;

    if-eqz v0, :cond_25

    new-instance v0, Lcom/google/common/graph/MapRetrievalCache;

    invoke-direct {v0, p2}, Lcom/google/common/graph/MapRetrievalCache;-><init>(Ljava/util/Map;)V

    :goto_1c
    iput-object v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    .line 79
    invoke-static {p3, p4}, Lcom/google/common/graph/Graphs;->checkNonNegative(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->edgeCount:J

    .line 80
    return-void

    .line 75
    :cond_25
    new-instance v0, Lcom/google/common/graph/MapIteratorCache;

    invoke-direct {v0, p2}, Lcom/google/common/graph/MapIteratorCache;-><init>(Ljava/util/Map;)V

    goto :goto_1c
.end method


# virtual methods
.method public adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .line 104
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ConfigurableValueGraph;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/GraphConnections;->adjacentNodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public allowsSelfLoops()Z
    .registers 2

    .line 94
    iget-boolean v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->allowsSelfLoops:Z

    return v0
.end method

.method protected final checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/GraphConnections",
            "<TN;TV;>;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/GraphConnections;

    .line 142
    if-eqz v0, :cond_b

    .line 146
    return-object v0

    .line 143
    :cond_b
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Node "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not an element of this graph."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final containsNode(Ljava/lang/Object;)Z
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected edgeCount()J
    .registers 3

    .line 137
    iget-wide v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->edgeCount:J

    return-wide v0
.end method

.method public edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p3  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 128
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/GraphConnections;

    .line 131
    if-nez v0, :cond_14

    const/4 v0, 0x0

    .line 132
    :goto_11
    if-nez v0, :cond_19

    :goto_13
    return-object p3

    .line 131
    :cond_14
    invoke-interface {v0, p2}, Lcom/google/common/graph/GraphConnections;->value(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_11

    :cond_19
    move-object p3, v0

    goto :goto_13
.end method

.method public hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    .line 119
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/GraphConnections;

    .line 122
    if-eqz v0, :cond_1c

    invoke-interface {v0}, Lcom/google/common/graph/GraphConnections;->successors()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public isDirected()Z
    .registers 2

    .line 89
    iget-boolean v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->isDirected:Z

    return v0
.end method

.method public nodeOrder()Lcom/google/common/graph/ElementOrder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder",
            "<TN;>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    return-object v0
.end method

.method public nodes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0}, Lcom/google/common/graph/MapIteratorCache;->unmodifiableKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 3

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ConfigurableValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .line 109
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ConfigurableValueGraph;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/GraphConnections;->predecessors()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 3

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ConfigurableValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public successors(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ConfigurableValueGraph;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/GraphConnections;->successors()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
