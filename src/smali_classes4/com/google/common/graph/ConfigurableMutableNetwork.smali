.class final Lcom/google/common/graph/ConfigurableMutableNetwork;
.super Lcom/google/common/graph/ConfigurableNetwork;
.source "ConfigurableMutableNetwork.java"

# interfaces
.implements Lcom/google/common/graph/MutableNetwork;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/ConfigurableNetwork",
        "<TN;TE;>;",
        "Lcom/google/common/graph/MutableNetwork",
        "<TN;TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/graph/NetworkBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/NetworkBuilder",
            "<-TN;-TE;>;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;-><init>(Lcom/google/common/graph/NetworkBuilder;)V

    .line 48
    return-void
.end method

.method private addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/NetworkConnections",
            "<TN;TE;>;"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/google/common/graph/ConfigurableMutableNetwork;->newConnections()Lcom/google/common/graph/NetworkConnections;

    move-result-object v1

    .line 71
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/graph/MapIteratorCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 72
    return-object v1

    .line 71
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private newConnections()Lcom/google/common/graph/NetworkConnections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/NetworkConnections",
            "<TN;TE;>;"
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableNetwork;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 159
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableNetwork;->allowsParallelEdges()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 160
    invoke-static {}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->of()Lcom/google/common/graph/DirectedMultiNetworkConnections;

    move-result-object v0

    .line 158
    :goto_10
    return-object v0

    .line 161
    :cond_11
    invoke-static {}, Lcom/google/common/graph/DirectedNetworkConnections;->of()Lcom/google/common/graph/DirectedNetworkConnections;

    move-result-object v0

    goto :goto_10

    .line 162
    :cond_16
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableNetwork;->allowsParallelEdges()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 163
    invoke-static {}, Lcom/google/common/graph/UndirectedMultiNetworkConnections;->of()Lcom/google/common/graph/UndirectedMultiNetworkConnections;

    move-result-object v0

    goto :goto_10

    .line 164
    :cond_21
    invoke-static {}, Lcom/google/common/graph/UndirectedNetworkConnections;->of()Lcom/google/common/graph/UndirectedNetworkConnections;

    move-result-object v0

    goto :goto_10
.end method


# virtual methods
.method public addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TE;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    const-string v0, "nodeU"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "nodeV"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "edge"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p0, p3}, Lcom/google/common/graph/ConfigurableMutableNetwork;->containsEdge(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 83
    invoke-virtual {p0, p3}, Lcom/google/common/graph/ConfigurableMutableNetwork;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    .line 84
    invoke-static {p0, p1, p2}, Lcom/google/common/graph/EndpointPair;->of(Lcom/google/common/graph/Network;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v2

    .line 85
    invoke-virtual {v0, v2}, Lcom/google/common/graph/EndpointPair;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Edge %s already exists between the following nodes: %s, so it cannot be reused to connect the following nodes: %s."

    invoke-static {v3, v4, p3, v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    :goto_28
    return v1

    .line 93
    :cond_29
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/NetworkConnections;

    .line 94
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableNetwork;->allowsParallelEdges()Z

    move-result v3

    if-nez v3, :cond_49

    .line 95
    if-eqz v0, :cond_43

    .line 96
    invoke-interface {v0}, Lcom/google/common/graph/NetworkConnections;->successors()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    :cond_43
    move v1, v2

    .line 95
    :cond_44
    const-string v3, "Nodes %s and %s are already connected by a different edge. To construct a graph that allows parallel edges, call allowsParallelEdges(true) on the Builder."

    invoke-static {v1, v3, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    :cond_49
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 102
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableNetwork;->allowsSelfLoops()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 103
    xor-int/lit8 v3, v1, 0x1

    const-string v4, "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder."

    invoke-static {v3, v4, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 106
    :cond_5a
    if-nez v0, :cond_60

    .line 107
    invoke-direct {p0, p1}, Lcom/google/common/graph/ConfigurableMutableNetwork;->addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object v0

    .line 109
    :cond_60
    invoke-interface {v0, p3, p2}, Lcom/google/common/graph/NetworkConnections;->addOutEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p2}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/NetworkConnections;

    .line 111
    if-nez v0, :cond_71

    .line 112
    invoke-direct {p0, p2}, Lcom/google/common/graph/ConfigurableMutableNetwork;->addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object v0

    .line 114
    :cond_71
    invoke-interface {v0, p3, p1, v1}, Lcom/google/common/graph/NetworkConnections;->addInEdge(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 115
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->edgeToReferenceNode:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p3, p1}, Lcom/google/common/graph/MapIteratorCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 116
    goto :goto_28
.end method

.method public addNode(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 53
    const-string v0, "node"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ConfigurableMutableNetwork;->containsNode(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 56
    const/4 v0, 0x0

    .line 60
    :goto_c
    return v0

    .line 59
    :cond_d
    invoke-direct {p0, p1}, Lcom/google/common/graph/ConfigurableMutableNetwork;->addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    .line 60
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public removeEdge(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 141
    const-string v0, "edge"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->edgeToReferenceNode:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 144
    if-nez v4, :cond_10

    .line 154
    :goto_f
    return v3

    .line 148
    :cond_10
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, v4}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/NetworkConnections;

    .line 149
    invoke-interface {v0, p1}, Lcom/google/common/graph/NetworkConnections;->adjacentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 150
    iget-object v1, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v1, v5}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/NetworkConnections;

    .line 151
    invoke-interface {v0, p1}, Lcom/google/common/graph/NetworkConnections;->removeOutEdge(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableNetwork;->allowsSelfLoops()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v2

    :goto_34
    invoke-interface {v1, p1, v0}, Lcom/google/common/graph/NetworkConnections;->removeInEdge(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->edgeToReferenceNode:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v2

    .line 154
    goto :goto_f

    :cond_3e
    move v0, v3

    goto :goto_34
.end method

.method public removeNode(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 122
    const-string v0, "node"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/NetworkConnections;

    .line 125
    if-nez v0, :cond_11

    .line 126
    const/4 v0, 0x0

    .line 135
    :goto_10
    return v0

    .line 131
    :cond_11
    invoke-interface {v0}, Lcom/google/common/graph/NetworkConnections;->incidentEdges()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 132
    invoke-virtual {p0, v1}, Lcom/google/common/graph/ConfigurableMutableNetwork;->removeEdge(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 134
    :cond_2b
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const/4 v0, 0x1

    goto :goto_10
.end method
