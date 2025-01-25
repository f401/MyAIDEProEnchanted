.class final Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;
.super Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;
.source "AbstractBaseGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Directed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet",
        "<TN;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/BaseGraph",
            "<TN;>;TN;)V"
        }
    .end annotation

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;-><init>(Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;Lcom/google/common/graph/AbstractBaseGraph$1;)V

    .line 156
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;Lcom/google/common/graph/AbstractBaseGraph$1;)V
    .registers 4

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;-><init>(Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 190
    instance-of v1, p1, Lcom/google/common/graph/EndpointPair;

    if-nez v1, :cond_6

    .line 201
    :cond_5
    :goto_5
    return v0

    .line 194
    :cond_6
    check-cast p1, Lcom/google/common/graph/EndpointPair;

    .line 195
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->isOrdered()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 199
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->source()Ljava/lang/Object;

    move-result-object v1

    .line 200
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->target()Ljava/lang/Object;

    move-result-object v2

    .line 201
    iget-object v3, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->graph:Lcom/google/common/graph/BaseGraph;

    iget-object v4, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    invoke-interface {v3, v4}, Lcom/google/common/graph/BaseGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    :cond_2c
    iget-object v3, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    .line 202
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->graph:Lcom/google/common/graph/BaseGraph;

    iget-object v3, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/google/common/graph/BaseGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_42
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Lcom/google/common/graph/EndpointPair",
            "<TN;>;>;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->graph:Lcom/google/common/graph/BaseGraph;

    iget-object v1, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    .line 163
    invoke-interface {v0, v1}, Lcom/google/common/graph/BaseGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$1;

    invoke-direct {v1, p0}, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$1;-><init>(Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;)V

    .line 162
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->graph:Lcom/google/common/graph/BaseGraph;

    iget-object v2, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    .line 172
    invoke-interface {v1, v2}, Lcom/google/common/graph/BaseGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Sets$SetView;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    new-instance v2, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$2;

    invoke-direct {v2, p0}, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$2;-><init>(Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;)V

    .line 170
    invoke-static {v1, v2}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v1

    .line 161
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 152
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 5

    .line 183
    iget-object v0, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->graph:Lcom/google/common/graph/BaseGraph;

    iget-object v1, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/graph/BaseGraph;->inDegree(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->graph:Lcom/google/common/graph/BaseGraph;

    iget-object v2, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    .line 184
    invoke-interface {v1, v2}, Lcom/google/common/graph/BaseGraph;->outDegree(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->graph:Lcom/google/common/graph/BaseGraph;

    iget-object v3, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    .line 185
    invoke-interface {v2, v3}, Lcom/google/common/graph/BaseGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 183
    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    return v0
.end method
