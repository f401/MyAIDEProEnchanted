.class public final Lcom/google/common/graph/ImmutableValueGraph;
.super Lcom/google/common/graph/ConfigurableValueGraph;
.source "ImmutableValueGraph.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
    containerOf = {
        "N",
        "V"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/ConfigurableValueGraph",
        "<TN;TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/common/graph/ValueGraph;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;)V"
        }
    .end annotation

    .line 47
    invoke-static {p1}, Lcom/google/common/graph/ValueGraphBuilder;->from(Lcom/google/common/graph/ValueGraph;)Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/graph/ImmutableValueGraph;->getNodeConnections(Lcom/google/common/graph/ValueGraph;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/common/graph/ConfigurableValueGraph;-><init>(Lcom/google/common/graph/AbstractGraphBuilder;Ljava/util/Map;J)V

    .line 48
    return-void
.end method

.method private static connectionsOf(Lcom/google/common/graph/ValueGraph;Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;TN;)",
            "Lcom/google/common/graph/GraphConnections",
            "<TN;TV;>;"
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/google/common/graph/ImmutableValueGraph$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/graph/ImmutableValueGraph$1;-><init>(Lcom/google/common/graph/ValueGraph;Ljava/lang/Object;)V

    .line 93
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->isDirected()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 95
    invoke-interface {p0, p1}, Lcom/google/common/graph/ValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, p1}, Lcom/google/common/graph/ValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v0

    .line 94
    invoke-static {v1, v0}, Lcom/google/common/graph/DirectedGraphConnections;->ofImmutable(Ljava/util/Set;Ljava/util/Map;)Lcom/google/common/graph/DirectedGraphConnections;

    move-result-object v0

    .line 93
    :goto_1b
    return-object v0

    .line 97
    :cond_1c
    invoke-interface {p0, p1}, Lcom/google/common/graph/ValueGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/google/common/graph/UndirectedGraphConnections;->ofImmutable(Ljava/util/Map;)Lcom/google/common/graph/UndirectedGraphConnections;

    move-result-object v0

    goto :goto_1b
.end method

.method public static copyOf(Lcom/google/common/graph/ImmutableValueGraph;)Lcom/google/common/graph/ImmutableValueGraph;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ImmutableValueGraph",
            "<TN;TV;>;)",
            "Lcom/google/common/graph/ImmutableValueGraph",
            "<TN;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/ImmutableValueGraph;

    return-object v0
.end method

.method public static copyOf(Lcom/google/common/graph/ValueGraph;)Lcom/google/common/graph/ImmutableValueGraph;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;)",
            "Lcom/google/common/graph/ImmutableValueGraph",
            "<TN;TV;>;"
        }
    .end annotation

    .line 52
    instance-of v0, p0, Lcom/google/common/graph/ImmutableValueGraph;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/common/graph/ImmutableValueGraph;

    :goto_6
    return-object p0

    :cond_7
    new-instance v0, Lcom/google/common/graph/ImmutableValueGraph;

    invoke-direct {v0, p0}, Lcom/google/common/graph/ImmutableValueGraph;-><init>(Lcom/google/common/graph/ValueGraph;)V

    move-object p0, v0

    goto :goto_6
.end method

.method private static getNodeConnections(Lcom/google/common/graph/ValueGraph;)Lcom/google/common/collect/ImmutableMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TN;",
            "Lcom/google/common/graph/GraphConnections",
            "<TN;TV;>;>;"
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 78
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 79
    invoke-static {p0, v2}, Lcom/google/common/graph/ImmutableValueGraph;->connectionsOf(Lcom/google/common/graph/ValueGraph;Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_c

    .line 81
    :cond_1e
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3

    .line 41
    invoke-super {p0, p1}, Lcom/google/common/graph/ConfigurableValueGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic allowsSelfLoops()Z
    .registers 2

    .line 41
    invoke-super {p0}, Lcom/google/common/graph/ConfigurableValueGraph;->allowsSelfLoops()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic asGraph()Lcom/google/common/graph/Graph;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/google/common/graph/ImmutableValueGraph;->asGraph()Lcom/google/common/graph/ImmutableGraph;

    move-result-object v0

    return-object v0
.end method

.method public asGraph()Lcom/google/common/graph/ImmutableGraph;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ImmutableGraph",
            "<TN;>;"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/google/common/graph/ImmutableGraph;

    invoke-direct {v0, p0}, Lcom/google/common/graph/ImmutableGraph;-><init>(Lcom/google/common/graph/BaseGraph;)V

    return-object v0
.end method

.method public bridge synthetic edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p3  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/graph/ConfigurableValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .line 41
    invoke-super {p0, p1, p2}, Lcom/google/common/graph/ConfigurableValueGraph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDirected()Z
    .registers 2

    .line 41
    invoke-super {p0}, Lcom/google/common/graph/ConfigurableValueGraph;->isDirected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nodeOrder()Lcom/google/common/graph/ElementOrder;
    .registers 2

    .line 41
    invoke-super {p0}, Lcom/google/common/graph/ConfigurableValueGraph;->nodeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nodes()Ljava/util/Set;
    .registers 2

    .line 41
    invoke-super {p0}, Lcom/google/common/graph/ConfigurableValueGraph;->nodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3

    .line 41
    invoke-super {p0, p1}, Lcom/google/common/graph/ConfigurableValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3

    .line 41
    invoke-super {p0, p1}, Lcom/google/common/graph/ConfigurableValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
