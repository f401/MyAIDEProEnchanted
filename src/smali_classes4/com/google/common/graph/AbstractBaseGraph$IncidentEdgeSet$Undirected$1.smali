.class Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected$1;
.super Ljava/lang/Object;
.source "AbstractBaseGraph.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<TN;",
        "Lcom/google/common/graph/EndpointPair",
        "<TN;>;>;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;


# direct methods
.method constructor <init>(Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected$1;->this$0:Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/EndpointPair",
            "<TN;>;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected$1;->this$0:Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;

    iget-object v0, v0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->node:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/graph/EndpointPair;->unordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 216
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected$1;->apply(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0
.end method
