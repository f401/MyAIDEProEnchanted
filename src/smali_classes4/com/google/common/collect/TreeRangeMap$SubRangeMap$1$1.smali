.class Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1;->entryIterator()Ljava/util/Iterator;
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
        "Lcom/google/common/collect/Range",
        "<TK;>;TV;>;>;"
    }
.end annotation


# instance fields
.field final this$2:Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1;

.field final val$backingItr:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1;Ljava/util/Iterator;)V
    .registers 3

    .line 499
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1$1;->this$2:Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1;

    iput-object p2, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1$1;->val$backingItr:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .registers 2

    .line 499
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1$1;->computeNext()Ljava/util/Map$Entry;

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
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;"
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1$1;->val$backingItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 504
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1$1;->val$backingItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;

    .line 505
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getUpperBound()Lcom/google/common/collect/Cut;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1$1;->this$2:Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1;

    iget-object v2, v2, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v2}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v2

    iget-object v2, v2, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v1

    if-gtz v1, :cond_2b

    .line 506
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 510
    :goto_2a
    return-object v0

    .line 508
    :cond_2b
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1$1;->this$2:Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1;

    iget-object v2, v2, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v2}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_2a

    .line 510
    :cond_44
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_2a
.end method
