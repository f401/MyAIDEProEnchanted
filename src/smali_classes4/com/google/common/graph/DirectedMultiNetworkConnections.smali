.class final Lcom/google/common/graph/DirectedMultiNetworkConnections;
.super Lcom/google/common/graph/AbstractDirectedNetworkConnections;
.source "DirectedMultiNetworkConnections.java"


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


# instance fields
.field private transient predecessorsReference:Ljava/lang/ref/Reference;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Lcom/google/common/collect/Multiset",
            "<TN;>;>;"
        }
    .end annotation
.end field

.field private transient successorsReference:Ljava/lang/ref/Reference;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Lcom/google/common/collect/Multiset",
            "<TN;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;I)V
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

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/graph/DirectedMultiNetworkConnections;)Lcom/google/common/collect/Multiset;
    .registers 2

    .line 42
    invoke-direct {p0}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->successorsMultiset()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method private static getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;
    .registers 2
    .param p0  # Ljava/lang/ref/Reference;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/Reference",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 144
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method static of()Lcom/google/common/graph/DirectedMultiNetworkConnections;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/graph/DirectedMultiNetworkConnections",
            "<TN;TE;>;"
        }
    .end annotation

    const/4 v4, 0x2

    const/high16 v3, 0x3f800000  # 1.0f

    .line 50
    new-instance v0, Lcom/google/common/graph/DirectedMultiNetworkConnections;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4, v3}, Ljava/util/HashMap;-><init>(IF)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v4, v3}, Ljava/util/HashMap;-><init>(IF)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/graph/DirectedMultiNetworkConnections;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    return-object v0
.end method

.method static ofImmutable(Ljava/util/Map;Ljava/util/Map;I)Lcom/google/common/graph/DirectedMultiNetworkConnections;
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
            "Lcom/google/common/graph/DirectedMultiNetworkConnections",
            "<TN;TE;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/google/common/graph/DirectedMultiNetworkConnections;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/google/common/graph/DirectedMultiNetworkConnections;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    return-object v0
.end method

.method private predecessorsMultiset()Lcom/google/common/collect/Multiset;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TN;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->predecessorsReference:Ljava/lang/ref/Reference;

    invoke-static {v0}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    .line 71
    if-nez v0, :cond_1b

    .line 72
    iget-object v0, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->inEdgeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/HashMultiset;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/HashMultiset;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->predecessorsReference:Ljava/lang/ref/Reference;

    .line 75
    :cond_1b
    return-object v0
.end method

.method private successorsMultiset()Lcom/google/common/collect/Multiset;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TN;>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->successorsReference:Ljava/lang/ref/Reference;

    invoke-static {v0}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    .line 87
    if-nez v0, :cond_1b

    .line 88
    iget-object v0, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->outEdgeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/HashMultiset;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/HashMultiset;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->successorsReference:Ljava/lang/ref/Reference;

    .line 91
    :cond_1b
    return-object v0
.end method


# virtual methods
.method public addInEdge(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TN;Z)V"
        }
    .end annotation

    .line 126
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->addInEdge(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 127
    iget-object v0, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->predecessorsReference:Ljava/lang/ref/Reference;

    invoke-static {v0}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    .line 128
    if-eqz v0, :cond_14

    .line 129
    invoke-interface {v0, p2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 131
    :cond_14
    return-void
.end method

.method public addOutEdge(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TN;)V"
        }
    .end annotation

    .line 135
    invoke-super {p0, p1, p2}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->addOutEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->successorsReference:Ljava/lang/ref/Reference;

    invoke-static {v0}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    .line 137
    if-eqz v0, :cond_14

    .line 138
    invoke-interface {v0, p2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 140
    :cond_14
    return-void
.end method

.method public edgesConnecting(Ljava/lang/Object;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/google/common/graph/DirectedMultiNetworkConnections$1;

    iget-object v1, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->outEdgeMap:Ljava/util/Map;

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/common/graph/DirectedMultiNetworkConnections$1;-><init>(Lcom/google/common/graph/DirectedMultiNetworkConnections;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
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

    .line 66
    invoke-direct {p0}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->predecessorsMultiset()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeInEdge(Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)TN;"
        }
    .end annotation

    .line 106
    invoke-super {p0, p1, p2}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->removeInEdge(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    .line 107
    iget-object v0, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->predecessorsReference:Ljava/lang/ref/Reference;

    invoke-static {v0}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    .line 108
    if-eqz v0, :cond_15

    .line 109
    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 111
    :cond_15
    return-object v1
.end method

.method public removeOutEdge(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TN;"
        }
    .end annotation

    .line 116
    invoke-super {p0, p1}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->removeOutEdge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 117
    iget-object v0, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->successorsReference:Ljava/lang/ref/Reference;

    invoke-static {v0}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    .line 118
    if-eqz v0, :cond_15

    .line 119
    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 121
    :cond_15
    return-object v1
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

    .line 82
    invoke-direct {p0}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->successorsMultiset()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
