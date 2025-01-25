.class final Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser$GraphTraverser;
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
.method constructor <init>(Lcom/google/common/graph/Traverser$GraphTraverser;Ljava/lang/Iterable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TN;>;)V"
        }
    .end annotation

    .line 406
    iput-object p1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->this$0:Lcom/google/common/graph/Traverser$GraphTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 403
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    .line 404
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->visited:Ljava/util/Set;

    .line 407
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 409
    iget-object v2, p0, Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->visited:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 410
    iget-object v2, p0, Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 413
    :cond_2f
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 417
    iget-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->this$0:Lcom/google/common/graph/Traverser$GraphTraverser;

    invoke-static {v1}, Lcom/google/common/graph/Traverser$GraphTraverser;->access$100(Lcom/google/common/graph/Traverser$GraphTraverser;)Lcom/google/common/graph/SuccessorsFunction;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 424
    iget-object v3, p0, Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->visited:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 425
    iget-object v3, p0, Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 428
    :cond_2c
    return-object v0
.end method
