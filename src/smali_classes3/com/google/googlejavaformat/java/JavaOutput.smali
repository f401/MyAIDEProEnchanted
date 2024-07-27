.class public final Lcom/google/googlejavaformat/java/JavaOutput;
.super Lcom/google/googlejavaformat/Output;
.source "JavaOutput.java"


# instance fields
.field private final blankLines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;",
            ">;"
        }
    .end annotation
.end field

.field private final commentsHelper:Lcom/google/googlejavaformat/CommentsHelper;

.field private iLine:I

.field private final javaInput:Lcom/google/googlejavaformat/java/JavaInput;

.field private final kN:I

.field private lastK:I

.field private lineBuilder:Ljava/lang/StringBuilder;

.field private final lineSeparator:Ljava/lang/String;

.field private final mutableLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private newlinesPending:I

.field private final partialFormatRanges:Lcom/google/common/collect/RangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RangeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private spacesPending:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/googlejavaformat/java/JavaInput;Lcom/google/googlejavaformat/CommentsHelper;)V
    .registers 6

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lcom/google/googlejavaformat/Output;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->blankLines:Ljava/util/Map;

    .line 55
    invoke-static {}, Lcom/google/common/collect/TreeRangeSet;->create()Lcom/google/common/collect/TreeRangeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->partialFormatRanges:Lcom/google/common/collect/RangeSet;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    .line 59
    iput v1, p0, Lcom/google/googlejavaformat/java/JavaOutput;->iLine:I

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->lastK:I

    .line 61
    iput v1, p0, Lcom/google/googlejavaformat/java/JavaOutput;->spacesPending:I

    .line 62
    iput v1, p0, Lcom/google/googlejavaformat/java/JavaOutput;->newlinesPending:I

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->lineBuilder:Ljava/lang/StringBuilder;

    .line 72
    iput-object p1, p0, Lcom/google/googlejavaformat/java/JavaOutput;->lineSeparator:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/google/googlejavaformat/java/JavaOutput;->javaInput:Lcom/google/googlejavaformat/java/JavaInput;

    .line 74
    iput-object p3, p0, Lcom/google/googlejavaformat/java/JavaOutput;->commentsHelper:Lcom/google/googlejavaformat/CommentsHelper;

    .line 75
    invoke-virtual {p2}, Lcom/google/googlejavaformat/java/JavaInput;->getkN()I

    move-result v0

    iput v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->kN:I

    .line 76
    return-void
.end method

.method public static applyReplacements(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/java/Replacement;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    new-instance v1, Lcom/google/googlejavaformat/java/JavaOutput$1;

    invoke-direct {v1}, Lcom/google/googlejavaformat/java/JavaOutput$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/Replacement;

    .line 91
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/Replacement;->getReplaceRange()Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 93
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/Replacement;->getReplaceRange()Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 94
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/Replacement;->getReplacementString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {v2, v4, v1, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static endTok(Lcom/google/googlejavaformat/Input$Token;)Lcom/google/googlejavaformat/Input$Tok;
    .registers 4

    .line 126
    invoke-interface {p0}, Lcom/google/googlejavaformat/Input$Token;->getToksAfter()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 127
    invoke-interface {p0}, Lcom/google/googlejavaformat/Input$Token;->getToksAfter()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Tok;

    .line 128
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v2

    if-ltz v2, :cond_0

    .line 132
    :goto_1
    return-object v0

    .line 126
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 132
    :cond_1
    invoke-interface {p0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v0

    goto :goto_1
.end method

.method private expandToBreakableRegions(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 413
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 414
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 417
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->partialFormatRanges:Lcom/google/common/collect/RangeSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/common/collect/RangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->partialFormatRanges:Lcom/google/common/collect/RangeSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/common/collect/RangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 418
    :cond_0
    sget-object v0, Lcom/google/googlejavaformat/java/JavaOutput;->EMPTY_RANGE:Lcom/google/common/collect/Range;

    .line 422
    :goto_0
    return-object v0

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->partialFormatRanges:Lcom/google/common/collect/RangeSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/RangeSet;->rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 421
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->partialFormatRanges:Lcom/google/common/collect/RangeSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/common/collect/RangeSet;->rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 422
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    goto :goto_0
.end method

.method private isComment(Ljava/lang/String;)Z
    .registers 3

    .line 426
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startPosition(Lcom/google/googlejavaformat/Input$Token;)I
    .registers 4

    .line 103
    invoke-interface {p0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v0

    .line 104
    invoke-interface {p0}, Lcom/google/googlejavaformat/Input$Token;->getToksBefore()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Tok;

    .line 105
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    .line 106
    goto :goto_0

    .line 107
    :cond_0
    return v1
.end method

.method public static startTok(Lcom/google/googlejavaformat/Input$Token;)Lcom/google/googlejavaformat/Input$Tok;
    .registers 4

    .line 114
    invoke-interface {p0}, Lcom/google/googlejavaformat/Input$Token;->getToksBefore()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Tok;

    .line 115
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v2

    if-ltz v2, :cond_0

    .line 119
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v0

    goto :goto_0
.end method

.method private static union(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range;->span(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/DiscreteDomain;->integers()Lcom/google/common/collect/DiscreteDomain;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Range;->canonical(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Range;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/String;Lcom/google/common/collect/Range;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/16 v10, 0x20

    const/16 v9, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    invoke-virtual {p2}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->javaInput:Lcom/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput;->getLineCount()I

    move-result v4

    move v1, v2

    .line 164
    :goto_0
    iget v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->iLine:I

    if-ge v0, v4, :cond_1

    iget-object v5, p0, Lcom/google/googlejavaformat/java/JavaOutput;->javaInput:Lcom/google/googlejavaformat/java/JavaInput;

    .line 165
    invoke-virtual {v5, v0}, Lcom/google/googlejavaformat/java/JavaInput;->getRange1s(I)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->javaInput:Lcom/google/googlejavaformat/java/JavaInput;

    iget v5, p0, Lcom/google/googlejavaformat/java/JavaOutput;->iLine:I

    .line 166
    invoke-virtual {v0, v5}, Lcom/google/googlejavaformat/java/JavaInput;->getRange1s(I)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p2}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v5, v0, :cond_1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->javaInput:Lcom/google/googlejavaformat/java/JavaInput;

    iget v5, p0, Lcom/google/googlejavaformat/java/JavaOutput;->iLine:I

    invoke-virtual {v0, v5}, Lcom/google/googlejavaformat/java/JavaInput;->getRanges(I)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v3

    .line 171
    :goto_1
    iget v1, p0, Lcom/google/googlejavaformat/java/JavaOutput;->iLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlejavaformat/java/JavaOutput;->iLine:I

    move v1, v0

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->blankLines:Ljava/util/Map;

    iget v4, p0, Lcom/google/googlejavaformat/java/JavaOutput;->lastK:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-static {v0, v4}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    .line 178
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/JavaOutput;->isComment(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v1, :cond_2

    .line 179
    :goto_2
    iget v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->newlinesPending:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->newlinesPending:I

    .line 182
    :cond_2
    invoke-static {p1}, Lcom/google/googlejavaformat/Newlines;->isNewline(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 187
    iget v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->newlinesPending:I

    if-nez v0, :cond_3

    .line 188
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->newlinesPending:I

    .line 190
    :cond_3
    iput v2, p0, Lcom/google/googlejavaformat/java/JavaOutput;->spacesPending:I

    .line 253
    :cond_4
    :goto_3
    invoke-virtual {p2}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 254
    invoke-virtual {p2}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->lastK:I

    .line 256
    :cond_5
    return-void

    .line 178
    :cond_6
    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->wanted()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 194
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    move v0, v2

    move v5, v2

    move v4, v2

    .line 195
    :goto_4
    if-ge v4, v6, :cond_11

    .line 196
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 197
    if-eq v7, v9, :cond_13

    const/16 v1, 0xd

    if-eq v7, v1, :cond_10

    if-eq v7, v10, :cond_f

    move v1, v0

    .line 211
    :goto_5
    iget v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->newlinesPending:I

    if-lez v0, :cond_a

    .line 213
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->lineBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 214
    :cond_8
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaOutput;->lineBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->lineBuilder:Ljava/lang/StringBuilder;

    .line 218
    iget v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->newlinesPending:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->newlinesPending:I

    move v1, v2

    goto :goto_5

    .line 220
    :cond_a
    :goto_6
    iget v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->spacesPending:I

    if-lez v0, :cond_b

    .line 221
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->lineBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    iget v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->spacesPending:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->spacesPending:I

    goto :goto_6

    .line 224
    :cond_b
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->lineBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {p2}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 226
    if-nez v5, :cond_d

    .line 227
    invoke-virtual {p2}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 228
    :goto_7
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->range0s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v5, p0, Lcom/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v0, v5, :cond_c

    .line 229
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->range0s:Ljava/util/List;

    sget-object v5, Lcom/google/googlejavaformat/java/Formatter;->EMPTY_RANGE:Lcom/google/common/collect/Range;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 231
    :cond_c
    iget-object v5, p0, Lcom/google/googlejavaformat/java/JavaOutput;->range0s:Ljava/util/List;

    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->range0s:Ljava/util/List;

    iget-object v8, p0, Lcom/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-static {v0, p2}, Lcom/google/googlejavaformat/java/JavaOutput;->union(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-interface {v5, v7, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v5, v3

    .line 235
    :cond_d
    if-nez v1, :cond_14

    .line 236
    :goto_8
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_e

    .line 237
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->ranges:Ljava/util/List;

    sget-object v1, Lcom/google/googlejavaformat/java/Formatter;->EMPTY_RANGE:Lcom/google/common/collect/Range;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 239
    :cond_e
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaOutput;->ranges:Ljava/util/List;

    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->ranges:Ljava/util/List;

    iget-object v8, p0, Lcom/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-static {v0, p2}, Lcom/google/googlejavaformat/java/JavaOutput;->union(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    .line 195
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 199
    :cond_f
    iget v1, p0, Lcom/google/googlejavaformat/java/JavaOutput;->spacesPending:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlejavaformat/java/JavaOutput;->spacesPending:I

    goto :goto_9

    .line 202
    :cond_10
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_13

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_13

    .line 203
    add-int/lit8 v1, v4, 0x1

    .line 207
    :goto_a
    iput v2, p0, Lcom/google/googlejavaformat/java/JavaOutput;->spacesPending:I

    .line 208
    iget v4, p0, Lcom/google/googlejavaformat/java/JavaOutput;->newlinesPending:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/googlejavaformat/java/JavaOutput;->newlinesPending:I

    move v4, v1

    .line 209
    goto :goto_9

    .line 246
    :cond_11
    invoke-virtual {p2}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 247
    :goto_b
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->range1s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_12

    .line 248
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->range1s:Ljava/util/List;

    sget-object v1, Lcom/google/googlejavaformat/java/Formatter;->EMPTY_RANGE:Lcom/google/common/collect/Range;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 250
    :cond_12
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaOutput;->range1s:Ljava/util/List;

    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->range1s:Ljava/util/List;

    iget-object v3, p0, Lcom/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-static {v0, p2}, Lcom/google/googlejavaformat/java/JavaOutput;->union(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_13
    move v1, v4

    goto :goto_a

    :cond_14
    move v0, v1

    goto :goto_9

    :cond_15
    move v0, v1

    goto/16 :goto_1
.end method

.method public blankLine(ILcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V
    .registers 7

    .line 143
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->blankLines:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaOutput;->blankLines:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->blankLines:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v0, p2}, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->merge(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->blankLines:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method flush()V
    .registers 5

    .line 267
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->lineBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 272
    iget v1, p0, Lcom/google/googlejavaformat/java/JavaOutput;->kN:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/googlejavaformat/java/JavaOutput;->kN:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v1

    .line 273
    :goto_0
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaOutput;->range0s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 274
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaOutput;->range0s:Ljava/util/List;

    sget-object v3, Lcom/google/googlejavaformat/java/Formatter;->EMPTY_RANGE:Lcom/google/common/collect/Range;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_1
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaOutput;->range0s:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :goto_1
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaOutput;->ranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v0, :cond_2

    .line 278
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaOutput;->ranges:Ljava/util/List;

    sget-object v3, Lcom/google/googlejavaformat/java/Formatter;->EMPTY_RANGE:Lcom/google/common/collect/Range;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 280
    :cond_2
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaOutput;->ranges:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :goto_2
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaOutput;->range1s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v0, :cond_3

    .line 282
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaOutput;->range1s:Ljava/util/List;

    sget-object v3, Lcom/google/googlejavaformat/java/Formatter;->EMPTY_RANGE:Lcom/google/common/collect/Range;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->range1s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaOutput;->setLines(Lcom/google/common/collect/ImmutableList;)V

    .line 286
    return-void
.end method

.method public getCommentsHelper()Lcom/google/googlejavaformat/CommentsHelper;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->commentsHelper:Lcom/google/googlejavaformat/CommentsHelper;

    return-object v0
.end method

.method public getFormatReplacements(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/java/Replacement;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v3, -0x1

    .line 299
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v7

    .line 300
    iget v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->kN:I

    invoke-static {p0, v0}, Lcom/google/googlejavaformat/java/JavaOutput;->makeKToIJ(Lcom/google/googlejavaformat/InputOutput;I)Ljava/util/Map;

    move-result-object v8

    .line 303
    invoke-static {}, Lcom/google/common/collect/TreeRangeSet;->create()Lcom/google/common/collect/TreeRangeSet;

    move-result-object v1

    .line 304
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaOutput;->javaInput:Lcom/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v2}, Lcom/google/googlejavaformat/java/JavaInput;->getkN()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/common/collect/RangeSet;->subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeSet;

    move-result-object v0

    .line 305
    invoke-interface {v0}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 306
    invoke-static {}, Lcom/google/common/collect/DiscreteDomain;->integers()Lcom/google/common/collect/DiscreteDomain;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/common/collect/Range;->canonical(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/JavaOutput;->expandToBreakableRegions(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 307
    sget-object v4, Lcom/google/googlejavaformat/java/JavaOutput;->EMPTY_RANGE:Lcom/google/common/collect/Range;

    invoke-virtual {v0, v4}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 311
    invoke-interface {v1, v0}, Lcom/google/common/collect/RangeSet;->add(Lcom/google/common/collect/Range;)V

    goto :goto_0

    .line 315
    :cond_1
    invoke-interface {v1}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/common/collect/Range;

    .line 317
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaOutput;->javaInput:Lcom/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v1}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/googlejavaformat/java/JavaInput;->getToken(I)Lcom/google/googlejavaformat/java/JavaInput$Token;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlejavaformat/java/JavaOutput;->startTok(Lcom/google/googlejavaformat/Input$Token;)Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v2

    .line 318
    iget-object v4, p0, Lcom/google/googlejavaformat/java/JavaOutput;->javaInput:Lcom/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v1}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Lcom/google/googlejavaformat/java/JavaInput;->getToken(I)Lcom/google/googlejavaformat/java/JavaInput$Token;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlejavaformat/java/JavaOutput;->endTok(Lcom/google/googlejavaformat/Input$Token;)Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v4

    .line 321
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    invoke-interface {v2}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v0

    move v6, v0

    .line 325
    :goto_2
    if-lez v6, :cond_2

    .line 326
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->javaInput:Lcom/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput;->getText()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 327
    invoke-static {}, Lcom/google/common/base/CharMatcher;->whitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-nez v0, :cond_3

    .line 333
    :cond_2
    invoke-interface {v2}, Lcom/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 336
    :goto_3
    if-lez v0, :cond_10

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/JavaOutput;->getLine(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 337
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 330
    :cond_3
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    .line 331
    goto :goto_2

    .line 340
    :goto_4
    invoke-interface {v4}, Lcom/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 343
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaOutput;->getLineCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 344
    if-lez v1, :cond_4

    .line 345
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_4
    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/JavaOutput;->getLine(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 351
    :cond_6
    invoke-interface {v4}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v0

    invoke-interface {v4}, Lcom/google/googlejavaformat/Input$Tok;->length()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaOutput;->javaInput:Lcom/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v2}, Lcom/google/googlejavaformat/java/JavaInput;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 355
    invoke-interface {v4}, Lcom/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v2

    iget-object v4, p0, Lcom/google/googlejavaformat/java/JavaOutput;->javaInput:Lcom/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v4}, Lcom/google/googlejavaformat/java/JavaInput;->getkN()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_7

    .line 356
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->javaInput:Lcom/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_7
    move v2, v3

    move v4, v0

    .line 363
    :goto_5
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->javaInput:Lcom/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v4, v0, :cond_8

    .line 364
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->javaInput:Lcom/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 365
    invoke-static {}, Lcom/google/common/base/CharMatcher;->whitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-nez v0, :cond_b

    .line 363
    :cond_8
    if-eq v2, v3, :cond_9

    move v4, v2

    .line 381
    :cond_9
    if-ne v2, v3, :cond_a

    .line 383
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_a
    :goto_6
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaOutput;->getLineCount()I

    move-result v0

    if-ge v1, v0, :cond_e

    .line 386
    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/JavaOutput;->getLine(I)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 389
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 368
    :cond_b
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaOutput;->javaInput:Lcom/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/googlejavaformat/Newlines;->hasNewlineAt(Ljava/lang/String;I)I

    move-result v0

    .line 369
    if-eq v0, v3, :cond_c

    .line 370
    add-int v5, v4, v0

    move v0, v4

    :goto_7
    move v2, v0

    move v4, v5

    .line 376
    goto :goto_5

    .line 374
    :cond_c
    add-int/lit8 v5, v4, 0x1

    move v0, v2

    goto :goto_7

    .line 391
    :cond_d
    if-ne v2, v3, :cond_e

    .line 393
    invoke-static {}, Lcom/google/common/base/CharMatcher;->whitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/base/CharMatcher;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v1

    .line 394
    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v4, v0}, Lcom/google/googlejavaformat/java/Replacement;->create(IILjava/lang/String;)Lcom/google/googlejavaformat/java/Replacement;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto/16 :goto_1

    .line 402
    :cond_f
    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    :cond_10
    move v1, v0

    goto/16 :goto_4
.end method

.method public indent(I)V
    .registers 2

    .line 260
    iput p1, p0, Lcom/google/googlejavaformat/java/JavaOutput;->spacesPending:I

    .line 261
    return-void
.end method

.method public markForPartialFormat(Lcom/google/googlejavaformat/Input$Token;Lcom/google/googlejavaformat/Input$Token;)V
    .registers 6

    .line 152
    invoke-static {p1}, Lcom/google/googlejavaformat/java/JavaOutput;->startTok(Lcom/google/googlejavaformat/Input$Token;)Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v0

    .line 153
    invoke-static {p2}, Lcom/google/googlejavaformat/java/JavaOutput;->endTok(Lcom/google/googlejavaformat/Input$Token;)Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v1

    .line 154
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaOutput;->partialFormatRanges:Lcom/google/common/collect/RangeSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/common/collect/RangeSet;->add(Lcom/google/common/collect/Range;)V

    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 431
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/googlejavaformat/java/JavaOutput;->iLine:I

    .line 432
    const-string v2, "iLine"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/googlejavaformat/java/JavaOutput;->lastK:I

    .line 433
    const-string v2, "lastK"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/googlejavaformat/java/JavaOutput;->spacesPending:I

    .line 434
    const-string v2, "spacesPending"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/googlejavaformat/java/JavaOutput;->newlinesPending:I

    .line 435
    const-string v2, "newlinesPending"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaOutput;->blankLines:Ljava/util/Map;

    .line 436
    const-string v2, "blankLines"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 437
    const-string v1, "super"

    invoke-super {p0}, Lcom/google/googlejavaformat/Output;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    return-object v0
.end method
