.class final Lcom/google/common/graph/ConfigurableMutableGraph;
.super Lcom/google/common/graph/ForwardingGraph;
.source "ConfigurableMutableGraph.java"

# interfaces
.implements Lcom/google/common/graph/MutableGraph;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/ForwardingGraph",
        "<TN;>;",
        "Lcom/google/common/graph/MutableGraph",
        "<TN;>;"
    }
.end annotation


# instance fields
.field private final backingValueGraph:Lcom/google/common/graph/MutableValueGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/MutableValueGraph",
            "<TN;",
            "Lcom/google/common/graph/GraphConstants$Presence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/AbstractGraphBuilder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/AbstractGraphBuilder",
            "<-TN;>;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/google/common/graph/ForwardingGraph;-><init>()V

    .line 36
    new-instance v0, Lcom/google/common/graph/ConfigurableMutableValueGraph;

    invoke-direct {v0, p1}, Lcom/google/common/graph/ConfigurableMutableValueGraph;-><init>(Lcom/google/common/graph/AbstractGraphBuilder;)V

    iput-object v0, p0, Lcom/google/common/graph/ConfigurableMutableGraph;->backingValueGraph:Lcom/google/common/graph/MutableValueGraph;

    .line 37
    return-void
.end method


# virtual methods
.method public addNode(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableMutableGraph;->backingValueGraph:Lcom/google/common/graph/MutableValueGraph;

    invoke-interface {v0, p1}, Lcom/google/common/graph/MutableValueGraph;->addNode(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected delegate()Lcom/google/common/graph/BaseGraph;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/BaseGraph",
            "<TN;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableMutableGraph;->backingValueGraph:Lcom/google/common/graph/MutableValueGraph;

    return-object v0
.end method

.method public putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableMutableGraph;->backingValueGraph:Lcom/google/common/graph/MutableValueGraph;

    sget-object v1, Lcom/google/common/graph/GraphConstants$Presence;->EDGE_EXISTS:Lcom/google/common/graph/GraphConstants$Presence;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/common/graph/MutableValueGraph;->putEdgeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public removeEdge(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableMutableGraph;->backingValueGraph:Lcom/google/common/graph/MutableValueGraph;

    invoke-interface {v0, p1, p2}, Lcom/google/common/graph/MutableValueGraph;->removeEdge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public removeNode(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableMutableGraph;->backingValueGraph:Lcom/google/common/graph/MutableValueGraph;

    invoke-interface {v0, p1}, Lcom/google/common/graph/MutableValueGraph;->removeNode(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
