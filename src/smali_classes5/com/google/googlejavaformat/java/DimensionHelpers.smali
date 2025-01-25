.class public Lcom/google/googlejavaformat/java/DimensionHelpers;
.super Ljava/lang/Object;
.source "DimensionHelpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;,
        Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static extractDims(Lcom/sun/source/tree/Tree;Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;)Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;
    .registers 5

    .line 43
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 44
    invoke-static {v0, p0}, Lcom/google/googlejavaformat/java/DimensionHelpers;->extractDims(Ljava/util/Deque;Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 46
    sget-object v2, Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;->YES:Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    if-ne p1, v2, :cond_11

    .line 47
    invoke-static {v0}, Lcom/google/googlejavaformat/java/DimensionHelpers;->reorderBySourcePosition(Ljava/util/Deque;)Ljava/lang/Iterable;

    move-result-object v0

    .line 51
    :cond_11
    new-instance v2, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;-><init>(Lcom/sun/source/tree/Tree;Lcom/google/common/collect/ImmutableList;)V

    return-object v2
.end method

.method private static extractDims(Ljava/util/Deque;Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/Tree;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/sun/source/tree/AnnotationTree;",
            ">;>;",
            "Lcom/sun/source/tree/Tree;",
            ")",
            "Lcom/sun/source/tree/Tree;"
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/google/googlejavaformat/java/DimensionHelpers$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    .line 108
    :goto_f
    return-object p1

    .line 97
    :cond_10
    check-cast p1, Lcom/sun/source/tree/ArrayTypeTree;

    invoke-interface {p1}, Lcom/sun/source/tree/ArrayTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/googlejavaformat/java/DimensionHelpers;->extractDims(Ljava/util/Deque;Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/Tree;

    move-result-object p1

    goto :goto_f
.end method

.method private static reorderBySourcePosition(Ljava/util/Deque;)Ljava/lang/Iterable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/sun/source/tree/AnnotationTree;",
            ">;>;)",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/sun/source/tree/AnnotationTree;",
            ">;>;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, -0x1

    .line 68
    .line 71
    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    move v2, v0

    move v3, v4

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 72
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3a

    .line 73
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getStartPosition()I

    move-result v5

    .line 74
    if-ge v5, v2, :cond_34

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/util/Collections;->rotate(Ljava/util/List;I)V

    move-object p0, v0

    .line 84
    :cond_33
    return-object p0

    :cond_34
    move v0, v3

    move v2, v5

    .line 82
    :goto_36
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .line 83
    goto :goto_9

    :cond_3a
    move v0, v1

    goto :goto_36
.end method
