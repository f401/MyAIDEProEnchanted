.class Lcom/google/common/graph/Graphs$TransposedValueGraph;
.super Lcom/google/common/graph/ForwardingValueGraph;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransposedValueGraph"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/ForwardingValueGraph",
        "<TN;TV;>;"
    }
.end annotation


# instance fields
.field private final graph:Lcom/google/common/graph/ValueGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/ValueGraph;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;)V"
        }
    .end annotation

    .line 309
    invoke-direct {p0}, Lcom/google/common/graph/ForwardingValueGraph;-><init>()V

    .line 310
    iput-object p1, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lcom/google/common/graph/ValueGraph;

    .line 311
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/graph/Graphs$TransposedValueGraph;)Lcom/google/common/graph/ValueGraph;
    .registers 2

    .line 306
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lcom/google/common/graph/ValueGraph;

    return-object v0
.end method


# virtual methods
.method protected delegate()Lcom/google/common/graph/ValueGraph;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lcom/google/common/graph/ValueGraph;

    return-object v0
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

    .line 346
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p2, p1, p3}, Lcom/google/common/graph/ValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/google/common/graph/ValueGraph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public inDegree(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 330
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->outDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public outDegree(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->inDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 3

    .line 306
    invoke-virtual {p0, p1}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 320
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 3

    .line 306
    invoke-virtual {p0, p1}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 325
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
