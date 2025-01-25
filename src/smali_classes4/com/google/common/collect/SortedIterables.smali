.class final Lcom/google/common/collect/SortedIterables;
.super Ljava/lang/Object;
.source "SortedIterables.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static comparator(Ljava/util/SortedSet;)Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;)",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .line 53
    invoke-interface {p0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 54
    if-nez v0, :cond_a

    .line 55
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 57
    :cond_a
    return-object v0
.end method

.method public static hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<*>;",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .line 37
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_15

    .line 41
    check-cast p1, Ljava/util/SortedSet;

    invoke-static {p1}, Lcom/google/common/collect/SortedIterables;->comparator(Ljava/util/SortedSet;)Ljava/util/Comparator;

    move-result-object v0

    .line 47
    :goto_10
    invoke-interface {p0, v0}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_14
    return v0

    .line 42
    :cond_15
    instance-of v0, p1, Lcom/google/common/collect/SortedIterable;

    if-eqz v0, :cond_20

    .line 43
    check-cast p1, Lcom/google/common/collect/SortedIterable;

    invoke-interface {p1}, Lcom/google/common/collect/SortedIterable;->comparator()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_10

    .line 45
    :cond_20
    const/4 v0, 0x0

    goto :goto_14
.end method
