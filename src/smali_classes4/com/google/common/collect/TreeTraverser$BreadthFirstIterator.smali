.class final Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "TreeTraverser.java"

# interfaces
.implements Lcom/google/common/collect/PeekingIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BreadthFirstIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TT;>;",
        "Lcom/google/common/collect/PeekingIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field

.field final this$0:Lcom/google/common/collect/TreeTraverser;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeTraverser;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->this$0:Lcom/google/common/collect/TreeTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 245
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    .line 246
    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    iget-object v2, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->this$0:Lcom/google/common/collect/TreeTraverser;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/TreeTraverser;->children(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 263
    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
