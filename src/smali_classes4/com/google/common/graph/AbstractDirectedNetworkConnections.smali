.class abstract Lcom/google/common/graph/AbstractDirectedNetworkConnections;
.super Ljava/lang/Object;
.source "AbstractDirectedNetworkConnections.java"

# interfaces
.implements Lcom/google/common/graph/NetworkConnections;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/graph/NetworkConnections",
        "<TN;TE;>;"
    }
.end annotation


# instance fields
.field protected final inEdgeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TE;TN;>;"
        }
    .end annotation
.end field

.field protected final outEdgeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TE;TN;>;"
        }
    .end annotation
.end field

.field private selfLoopCount:I


# direct methods
.method protected constructor <init>(Ljava/util/Map;Ljava/util/Map;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;TN;>;",
            "Ljava/util/Map",
            "<TE;TN;>;I)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->inEdgeMap:Ljava/util/Map;

    .line 54
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->outEdgeMap:Ljava/util/Map;

    .line 55
    invoke-static {p3}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    move-result v0

    iput v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->selfLoopCount:I

    .line 56
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gt p3, v0, :cond_2a

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-gt p3, v0, :cond_2a

    const/4 v0, 0x1

    :goto_26
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 57
    return-void

    .line 56
    :cond_2a
    const/4 v0, 0x0

    goto :goto_26
.end method

.method static synthetic access$000(Lcom/google/common/graph/AbstractDirectedNetworkConnections;)I
    .registers 2

    .line 42
    iget v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->selfLoopCount:I

    return v0
.end method


# virtual methods
.method public addInEdge(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TN;Z)V"
        }
    .end annotation

    .line 122
    const/4 v0, 0x1

    if-eqz p3, :cond_c

    .line 123
    iget v1, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->selfLoopCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->selfLoopCount:I

    invoke-static {v1}, Lcom/google/common/graph/Graphs;->checkPositive(I)I

    .line 125
    :cond_c
    iget-object v1, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->inEdgeMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 126
    if-nez v1, :cond_18

    :goto_14
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 127
    return-void

    .line 126
    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public addOutEdge(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TN;)V"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->outEdgeMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 133
    return-void

    .line 132
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public adjacentNode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TN;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->outEdgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public adjacentNodes()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->predecessors()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->successors()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v0

    return-object v0
.end method

.method public inEdges()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->inEdgeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public incidentEdges()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;

    invoke-direct {v0, p0}, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;-><init>(Lcom/google/common/graph/AbstractDirectedNetworkConnections;)V

    return-object v0
.end method

.method public outEdges()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->outEdgeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeInEdge(Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)TN;"
        }
    .end annotation

    .line 107
    if-eqz p2, :cond_b

    .line 108
    iget v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->selfLoopCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->selfLoopCount:I

    invoke-static {v0}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    .line 110
    :cond_b
    iget-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->inEdgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeOutEdge(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TN;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->outEdgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
