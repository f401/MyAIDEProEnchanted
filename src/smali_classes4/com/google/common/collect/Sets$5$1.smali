.class Lcom/google/common/collect/Sets$5$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$5;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Ljava/util/Set",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final bits:Ljava/util/BitSet;

.field final this$0:Lcom/google/common/collect/Sets$5;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$5;)V
    .registers 4

    .line 1555
    iput-object p1, p0, Lcom/google/common/collect/Sets$5$1;->this$0:Lcom/google/common/collect/Sets$5;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 1556
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lcom/google/common/collect/Sets$5$1;->this$0:Lcom/google/common/collect/Sets$5;

    iget-object v1, v1, Lcom/google/common/collect/Sets$5;->val$index:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .registers 2

    .line 1555
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$5$1;->computeNext()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    const/4 v4, 0x0

    .line 1560
    iget-object v0, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1561
    iget-object v0, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    iget-object v1, p0, Lcom/google/common/collect/Sets$5$1;->this$0:Lcom/google/common/collect/Sets$5;

    iget v1, v1, Lcom/google/common/collect/Sets$5;->val$size:I

    invoke-virtual {v0, v4, v1}, Ljava/util/BitSet;->set(II)V

    .line 1586
    :goto_12
    iget-object v0, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 1587
    new-instance v1, Lcom/google/common/collect/Sets$5$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Sets$5$1$1;-><init>(Lcom/google/common/collect/Sets$5$1;Ljava/util/BitSet;)V

    move-object v0, v1

    :goto_20
    return-object v0

    .line 1563
    :cond_21
    iget-object v0, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .line 1564
    iget-object v1, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v1

    .line 1566
    iget-object v2, p0, Lcom/google/common/collect/Sets$5$1;->this$0:Lcom/google/common/collect/Sets$5;

    iget-object v2, v2, Lcom/google/common/collect/Sets$5;->val$index:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v2

    if-ne v1, v2, :cond_3e

    .line 1567
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$5$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    goto :goto_20

    .line 1582
    :cond_3e
    iget-object v2, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/util/BitSet;->set(II)V

    .line 1583
    iget-object v2, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->clear(II)V

    .line 1584
    iget-object v0, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_12
.end method
