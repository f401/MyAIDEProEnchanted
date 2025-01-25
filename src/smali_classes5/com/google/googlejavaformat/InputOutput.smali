.class public abstract Lcom/google/googlejavaformat/InputOutput;
.super Ljava/lang/Object;
.source "InputOutput.java"


# static fields
.field protected static final EMPTY_RANGE:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTEGERS:Lcom/google/common/collect/DiscreteDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lines:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final range0s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final range1s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v0}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/InputOutput;->EMPTY_RANGE:Lcom/google/common/collect/Range;

    .line 30
    invoke-static {}, Lcom/google/common/collect/DiscreteDomain;->integers()Lcom/google/common/collect/DiscreteDomain;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/InputOutput;->INTEGERS:Lcom/google/common/collect/DiscreteDomain;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/InputOutput;->lines:Lcom/google/common/collect/ImmutableList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/InputOutput;->range0s:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/InputOutput;->ranges:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/InputOutput;->range1s:Ljava/util/List;

    return-void
.end method

.method private static addToRanges(Ljava/util/List;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;II)V"
        }
    .end annotation

    .line 66
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_c

    .line 67
    sget-object v0, Lcom/google/googlejavaformat/InputOutput;->EMPTY_RANGE:Lcom/google/common/collect/Range;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_c
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 70
    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b

    move v0, p2

    :goto_19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void

    .line 70
    :cond_2b
    invoke-virtual {v0}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_19
.end method

.method public static makeKToIJ(Lcom/google/googlejavaformat/InputOutput;I)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlejavaformat/InputOutput;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 99
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 100
    invoke-virtual {p0}, Lcom/google/googlejavaformat/InputOutput;->getLineCount()I

    move-result v4

    .line 101
    const/4 v0, 0x0

    move v2, v0

    :goto_b
    if-gt v2, v4, :cond_75

    .line 102
    invoke-virtual {p0, v2}, Lcom/google/googlejavaformat/InputOutput;->getRanges(I)Lcom/google/common/collect/Range;

    move-result-object v0

    sget-object v1, Lcom/google/googlejavaformat/InputOutput;->INTEGERS:Lcom/google/common/collect/DiscreteDomain;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Range;->canonical(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Range;

    move-result-object v5

    .line 103
    invoke-virtual {v5}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    :goto_22
    invoke-virtual {v5}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_71

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    add-int/lit8 v7, v2, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :goto_57
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    .line 107
    :cond_5b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v6

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_57

    .line 101
    :cond_71
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    .line 111
    :cond_75
    return-object v3
.end method


# virtual methods
.method protected final computeRanges(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlejavaformat/Input$Tok;",
            ">;)V"
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Tok;

    .line 76
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getOriginalText()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v2}, Lcom/google/googlejavaformat/Newlines;->count(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v1

    .line 79
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v4

    .line 80
    if-ltz v4, :cond_36

    .line 81
    iget-object v0, p0, Lcom/google/googlejavaformat/InputOutput;->range0s:Ljava/util/List;

    invoke-static {v0, v1, v4}, Lcom/google/googlejavaformat/InputOutput;->addToRanges(Ljava/util/List;II)V

    move v0, v1

    .line 82
    :goto_27
    if-gt v0, v2, :cond_31

    .line 83
    iget-object v5, p0, Lcom/google/googlejavaformat/InputOutput;->ranges:Ljava/util/List;

    invoke-static {v5, v0, v4}, Lcom/google/googlejavaformat/InputOutput;->addToRanges(Ljava/util/List;II)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 85
    :cond_31
    iget-object v0, p0, Lcom/google/googlejavaformat/InputOutput;->range1s:Ljava/util/List;

    invoke-static {v0, v1, v4}, Lcom/google/googlejavaformat/InputOutput;->addToRanges(Ljava/util/List;II)V

    :cond_36
    move v1, v2

    .line 87
    goto :goto_6

    .line 88
    :cond_38
    return-void
.end method

.method public final getLine(I)Ljava/lang/String;
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/google/googlejavaformat/InputOutput;->lines:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLineCount()I
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/google/googlejavaformat/InputOutput;->lines:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public final getRange0s(I)Lcom/google/common/collect/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 121
    if-ltz p1, :cond_13

    iget-object v0, p0, Lcom/google/googlejavaformat/InputOutput;->range0s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    iget-object v0, p0, Lcom/google/googlejavaformat/InputOutput;->range0s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    :goto_12
    return-object v0

    :cond_13
    sget-object v0, Lcom/google/googlejavaformat/InputOutput;->EMPTY_RANGE:Lcom/google/common/collect/Range;

    goto :goto_12
.end method

.method public final getRange1s(I)Lcom/google/common/collect/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 141
    if-ltz p1, :cond_13

    iget-object v0, p0, Lcom/google/googlejavaformat/InputOutput;->range1s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    iget-object v0, p0, Lcom/google/googlejavaformat/InputOutput;->range1s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    :goto_12
    return-object v0

    :cond_13
    sget-object v0, Lcom/google/googlejavaformat/InputOutput;->EMPTY_RANGE:Lcom/google/common/collect/Range;

    goto :goto_12
.end method

.method public final getRanges(I)Lcom/google/common/collect/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 131
    if-ltz p1, :cond_13

    iget-object v0, p0, Lcom/google/googlejavaformat/InputOutput;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    iget-object v0, p0, Lcom/google/googlejavaformat/InputOutput;->ranges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    :goto_12
    return-object v0

    :cond_13
    sget-object v0, Lcom/google/googlejavaformat/InputOutput;->EMPTY_RANGE:Lcom/google/common/collect/Range;

    goto :goto_12
.end method

.method protected final setLines(Lcom/google/common/collect/ImmutableList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/google/googlejavaformat/InputOutput;->lines:Lcom/google/common/collect/ImmutableList;

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputOutput{lines="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/InputOutput;->lines:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", range0s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/InputOutput;->range0s:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ranges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/InputOutput;->ranges:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", range1s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/InputOutput;->range1s:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
