.class final Lcom/google/common/graph/AbstractValueGraph$2;
.super Ljava/lang/Object;
.source "AbstractValueGraph.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/AbstractValueGraph;->edgeValueMap(Lcom/google/common/graph/ValueGraph;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/google/common/graph/EndpointPair",
        "<TN;>;TV;>;"
    }
.end annotation


# instance fields
.field final val$graph:Lcom/google/common/graph/ValueGraph;


# direct methods
.method constructor <init>(Lcom/google/common/graph/ValueGraph;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/google/common/graph/AbstractValueGraph$2;->val$graph:Lcom/google/common/graph/ValueGraph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/common/graph/EndpointPair;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair",
            "<TN;>;)TV;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/google/common/graph/AbstractValueGraph$2;->val$graph:Lcom/google/common/graph/ValueGraph;

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/common/graph/ValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 137
    check-cast p1, Lcom/google/common/graph/EndpointPair;

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractValueGraph$2;->apply(Lcom/google/common/graph/EndpointPair;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
