.class final Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser$GraphTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DepthFirstIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<TN;>;"
    }
.end annotation


# instance fields
.field private final order:Lcom/google/common/graph/Traverser$Order;

.field private final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/google/common/graph/Traverser$GraphTraverser",
            "<TN;>.DepthFirstIterator.NodeAndSuccessors;>;"
        }
    .end annotation
.end field

.field final this$0:Lcom/google/common/graph/Traverser$GraphTraverser;

.field private final visited:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/Traverser$GraphTraverser;Ljava/lang/Iterable;Lcom/google/common/graph/Traverser$Order;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TN;>;",
            "Lcom/google/common/graph/Traverser$Order;",
            ")V"
        }
    .end annotation

    .line 437
    iput-object p1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->this$0:Lcom/google/common/graph/Traverser$GraphTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 433
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    .line 434
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->visited:Ljava/util/Set;

    .line 438
    iget-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    new-instance v1, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p2}, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;-><init>(Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;Ljava/lang/Object;Ljava/lang/Iterable;)V

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 439
    iput-object p3, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->order:Lcom/google/common/graph/Traverser$Order;

    .line 440
    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 446
    invoke-virtual {p0}, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    .line 463
    :goto_c
    return-object v0

    .line 448
    :cond_d
    iget-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;

    .line 449
    iget-object v1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->visited:Ljava/util/Set;

    iget-object v2, v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->node:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 450
    iget-object v1, v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->successorIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v1, 0x1

    xor-int/lit8 v3, v3, 0x1

    .line 451
    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->order:Lcom/google/common/graph/Traverser$Order;

    sget-object v4, Lcom/google/common/graph/Traverser$Order;->PREORDER:Lcom/google/common/graph/Traverser$Order;

    if-eq v2, v4, :cond_36

    :cond_2e
    if-eqz v3, :cond_46

    iget-object v2, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->order:Lcom/google/common/graph/Traverser$Order;

    sget-object v4, Lcom/google/common/graph/Traverser$Order;->POSTORDER:Lcom/google/common/graph/Traverser$Order;

    if-ne v2, v4, :cond_46

    .line 453
    :cond_36
    :goto_36
    if-eqz v3, :cond_48

    .line 454
    iget-object v2, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 462
    :cond_3d
    :goto_3d
    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->node:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 463
    iget-object v0, v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->node:Ljava/lang/Object;

    goto :goto_c

    .line 451
    :cond_46
    const/4 v1, 0x0

    goto :goto_36

    .line 457
    :cond_48
    iget-object v2, v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->successorIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 458
    iget-object v3, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->visited:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 459
    iget-object v3, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    invoke-virtual {p0, v2}, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->withSuccessors(Ljava/lang/Object;)Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_3d
.end method

.method withSuccessors(Ljava/lang/Object;)Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/Traverser$GraphTraverser",
            "<TN;>.DepthFirstIterator.NodeAndSuccessors;"
        }
    .end annotation

    .line 469
    new-instance v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;

    iget-object v1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->this$0:Lcom/google/common/graph/Traverser$GraphTraverser;

    invoke-static {v1}, Lcom/google/common/graph/Traverser$GraphTraverser;->access$100(Lcom/google/common/graph/Traverser$GraphTraverser;)Lcom/google/common/graph/SuccessorsFunction;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;-><init>(Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;Ljava/lang/Object;Ljava/lang/Iterable;)V

    return-object v0
.end method
