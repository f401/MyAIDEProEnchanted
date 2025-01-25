.class public Lcom/google/common/collect/ImmutableRangeSet$Builder;
.super Ljava/lang/Object;
.source "ImmutableRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 708
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$Builder;->ranges:Ljava/util/List;

    .line 709
    return-void
.end method


# virtual methods
.method public add(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet$Builder",
            "<TC;>;"
        }
    .end annotation

    .line 721
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "range must not be empty, but was %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 722
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$Builder;->ranges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    return-object p0
.end method

.method public addAll(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet$Builder",
            "<TC;>;"
        }
    .end annotation

    .line 733
    invoke-interface {p1}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableRangeSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableRangeSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableRangeSet$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet$Builder",
            "<TC;>;"
        }
    .end annotation

    .line 745
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 746
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableRangeSet$Builder;->add(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet$Builder;

    goto :goto_4

    .line 748
    :cond_14
    return-object p0
.end method

.method public build()Lcom/google/common/collect/ImmutableRangeSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$Builder;->ranges:Ljava/util/List;

    .line 758
    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 759
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$Builder;->ranges:Ljava/util/List;

    invoke-static {}, Lcom/google/common/collect/Range;->rangeLexOrdering()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 760
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$Builder;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v3

    .line 761
    :goto_1e
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 762
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    move-object v1, v0

    .line 763
    :goto_2b
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 764
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 765
    invoke-virtual {v1, v0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 766
    invoke-virtual {v1, v0}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v4

    const-string v5, "Overlapping ranges not permitted but found %s overlapping %s"

    invoke-static {v4, v5, v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 771
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/Range;->span(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    move-object v1, v0

    .line 775
    goto :goto_2b

    .line 776
    :cond_56
    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1e

    .line 778
    :cond_5a
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 779
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 780
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    .line 785
    :goto_68
    return-object v0

    .line 781
    :cond_69
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_85

    .line 782
    invoke-static {v1}, Lcom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 783
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->all()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    goto :goto_68

    .line 785
    :cond_85
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    goto :goto_68
.end method
