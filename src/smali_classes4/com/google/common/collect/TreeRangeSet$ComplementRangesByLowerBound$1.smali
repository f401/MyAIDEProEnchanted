.class Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Lcom/google/common/collect/Cut",
        "<TC;>;",
        "Lcom/google/common/collect/Range",
        "<TC;>;>;>;"
    }
.end annotation


# instance fields
.field nextComplementRangeLowerBound:Lcom/google/common/collect/Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation
.end field

.field final this$0:Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

.field final val$firstComplementRangeLowerBound:Lcom/google/common/collect/Cut;

.field final val$positiveItr:Lcom/google/common/collect/PeekingIterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;Lcom/google/common/collect/Cut;Lcom/google/common/collect/PeekingIterator;)V
    .registers 5

    .line 536
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->this$0:Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

    iput-object p2, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->val$firstComplementRangeLowerBound:Lcom/google/common/collect/Cut;

    iput-object p3, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->val$positiveItr:Lcom/google/common/collect/PeekingIterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 537
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->val$firstComplementRangeLowerBound:Lcom/google/common/collect/Cut;

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->nextComplementRangeLowerBound:Lcom/google/common/collect/Cut;

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .registers 2

    .line 536
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->this$0:Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

    invoke-static {v0}, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->access$100(Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;)Lcom/google/common/collect/Range;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->nextComplementRangeLowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->nextComplementRangeLowerBound:Lcom/google/common/collect/Cut;

    .line 542
    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    .line 543
    :cond_18
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 554
    :goto_1e
    return-object v0

    .line 546
    :cond_1f
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->val$positiveItr:Lcom/google/common/collect/PeekingIterator;

    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 547
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->val$positiveItr:Lcom/google/common/collect/PeekingIterator;

    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 548
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->nextComplementRangeLowerBound:Lcom/google/common/collect/Cut;

    iget-object v2, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-static {v1, v2}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v1

    .line 549
    iget-object v0, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->nextComplementRangeLowerBound:Lcom/google/common/collect/Cut;

    move-object v0, v1

    .line 554
    :goto_3c
    iget-object v1, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_1e

    .line 551
    :cond_43
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->nextComplementRangeLowerBound:Lcom/google/common/collect/Cut;

    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 552
    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->nextComplementRangeLowerBound:Lcom/google/common/collect/Cut;

    goto :goto_3c
.end method
