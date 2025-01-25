.class final Lcom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser$TreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BreadthFirstIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TN;>;"
    }
.end annotation


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TN;>;"
        }
    .end annotation
.end field

.field final this$0:Lcom/google/common/graph/Traverser$TreeTraverser;


# direct methods
.method constructor <init>(Lcom/google/common/graph/Traverser$TreeTraverser;Ljava/lang/Iterable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TN;>;)V"
        }
    .end annotation

    .line 571
    iput-object p1, p0, Lcom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;->this$0:Lcom/google/common/graph/Traverser$TreeTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 569
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    .line 572
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 573
    iget-object v2, p0, Lcom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 575
    :cond_20
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 579
    iget-object v0, p0, Lcom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lcom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 585
    iget-object v1, p0, Lcom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    iget-object v2, p0, Lcom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;->this$0:Lcom/google/common/graph/Traverser$TreeTraverser;

    invoke-static {v2}, Lcom/google/common/graph/Traverser$TreeTraverser;->access$200(Lcom/google/common/graph/Traverser$TreeTraverser;)Lcom/google/common/graph/SuccessorsFunction;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 586
    return-object v0
.end method
