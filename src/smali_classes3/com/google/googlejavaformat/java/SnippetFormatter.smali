.class public Lcom/google/googlejavaformat/java/SnippetFormatter;
.super Ljava/lang/Object;
.source "SnippetFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;,
        Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;
    }
.end annotation


# static fields
.field private static final INDENTATION_SIZE:I = 0x2

.field private static final NOT_WHITESPACE:Lcom/google/common/base/CharMatcher;


# instance fields
.field private final formatter:Lcom/google/googlejavaformat/java/Formatter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    invoke-static {}, Lcom/google/common/base/CharMatcher;->whitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/CharMatcher;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/SnippetFormatter;->NOT_WHITESPACE:Lcom/google/common/base/CharMatcher;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/google/googlejavaformat/java/Formatter;

    invoke-direct {v0}, Lcom/google/googlejavaformat/java/Formatter;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/java/SnippetFormatter;->formatter:Lcom/google/googlejavaformat/java/Formatter;

    return-void
.end method

.method private static offsetRange(Lcom/google/common/collect/Range;I)Lcom/google/common/collect/Range;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 37
    invoke-static {}, Lcom/google/common/collect/DiscreteDomain;->integers()Lcom/google/common/collect/DiscreteDomain;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Range;->canonical(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Range;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method private static offsetRanges(Ljava/util/List;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 44
    invoke-static {v0, p1}, Lcom/google/googlejavaformat/java/SnippetFormatter;->offsetRange(Lcom/google/common/collect/Range;I)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_0
    return-object v1
.end method

.method private snippetWrapper(Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;Ljava/lang/String;I)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;
    .registers 9

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 144
    sget-object v0, Lcom/google/googlejavaformat/java/SnippetFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$SnippetFormatter$SnippetKind:[I

    invoke-virtual {p1}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 174
    new-instance v0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    invoke-direct {v0, p0, v4}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;-><init>(Lcom/google/googlejavaformat/java/SnippetFormatter;Lcom/google/googlejavaformat/java/SnippetFormatter$1;)V

    .line 175
    const-string v3, "class Dummy {\n"

    invoke-virtual {v0, v3}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/SnippetFormatter;->createIndentationString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    .line 176
    :goto_0
    if-gt v2, p3, :cond_0

    .line 177
    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/google/googlejavaformat/java/SnippetFormatter;->createIndentationString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_0
    const-string v1, "Object o = "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    .line 180
    invoke-virtual {v0, p2}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->appendSource(Ljava/lang/String;)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    .line 181
    const-string v1, ";"

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    .line 182
    invoke-virtual {v0, p3}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->closeBraces(I)V

    .line 183
    :goto_1
    return-object v0

    .line 186
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown snippet kind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_2
    new-instance v0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    invoke-direct {v0, p0, v4}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;-><init>(Lcom/google/googlejavaformat/java/SnippetFormatter;Lcom/google/googlejavaformat/java/SnippetFormatter$1;)V

    .line 165
    const-string v3, "class Dummy {\n"

    invoke-virtual {v0, v3}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/SnippetFormatter;->createIndentationString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    move v1, v2

    .line 166
    :goto_2
    if-gt v1, p3, :cond_3

    .line 167
    const-string v2, "{\n"

    invoke-virtual {v0, v2}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/SnippetFormatter;->createIndentationString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 169
    :cond_3
    invoke-virtual {v0, p2}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->appendSource(Ljava/lang/String;)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    .line 170
    invoke-virtual {v0, p3}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->closeBraces(I)V

    goto :goto_1

    .line 155
    :cond_4
    new-instance v0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    invoke-direct {v0, p0, v4}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;-><init>(Lcom/google/googlejavaformat/java/SnippetFormatter;Lcom/google/googlejavaformat/java/SnippetFormatter$1;)V

    .line 156
    :goto_3
    if-gt v1, p3, :cond_5

    .line 157
    const-string v2, "class Dummy {\n"

    invoke-virtual {v0, v2}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/SnippetFormatter;->createIndentationString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 159
    :cond_5
    invoke-virtual {v0, p2}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->appendSource(Ljava/lang/String;)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    .line 160
    invoke-virtual {v0, p3}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->closeBraces(I)V

    goto :goto_1

    .line 146
    :cond_6
    new-instance v0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    invoke-direct {v0, p0, v4}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;-><init>(Lcom/google/googlejavaformat/java/SnippetFormatter;Lcom/google/googlejavaformat/java/SnippetFormatter$1;)V

    .line 147
    :goto_4
    if-gt v1, p3, :cond_7

    .line 148
    const-string v2, "class Dummy {\n"

    invoke-virtual {v0, v2}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/SnippetFormatter;->createIndentationString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->append(Ljava/lang/String;)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 150
    :cond_7
    invoke-virtual {v0, p2}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->appendSource(Ljava/lang/String;)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    .line 151
    invoke-virtual {v0, p3}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->closeBraces(I)V

    goto :goto_1
.end method

.method private static toReplacements(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/java/Replacement;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 54
    sget-object v0, Lcom/google/googlejavaformat/java/SnippetFormatter;->NOT_WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->retainFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlejavaformat/java/SnippetFormatter;->NOT_WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v1, p1}, Lcom/google/common/base/CharMatcher;->retainFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 64
    sget-object v0, Lcom/google/googlejavaformat/java/SnippetFormatter;->NOT_WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v1

    .line 65
    sget-object v0, Lcom/google/googlejavaformat/java/SnippetFormatter;->NOT_WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v0

    .line 66
    if-nez v1, :cond_0

    if-eqz v0, :cond_6

    .line 67
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/googlejavaformat/java/Replacement;->create(Lcom/google/common/collect/Range;Ljava/lang/String;)Lcom/google/googlejavaformat/java/Replacement;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v1

    .line 69
    :goto_0
    if-eq v2, v7, :cond_1

    if-eq v0, v7, :cond_1

    .line 70
    sget-object v1, Lcom/google/googlejavaformat/java/SnippetFormatter;->NOT_WHITESPACE:Lcom/google/common/base/CharMatcher;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, p0, v3}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 71
    sget-object v1, Lcom/google/googlejavaformat/java/SnippetFormatter;->NOT_WHITESPACE:Lcom/google/common/base/CharMatcher;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, p1, v5}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 72
    if-eq v3, v7, :cond_1

    if-ne v1, v7, :cond_2

    .line 83
    :cond_1
    return-object v4

    .line 75
    :cond_2
    sub-int v5, v3, v2

    sub-int v6, v1, v0

    if-ne v5, v6, :cond_3

    .line 76
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 77
    :cond_3
    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/googlejavaformat/java/Replacement;->create(Lcom/google/common/collect/Range;Ljava/lang/String;)Lcom/google/googlejavaformat/java/Replacement;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move v0, v1

    move v2, v3

    .line 82
    goto :goto_0

    .line 55
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", replacement = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public createIndentationString(I)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    .line 87
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Indentation level cannot be less than zero. Given: %s"

    invoke-static {v0, v2, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 91
    mul-int/lit8 v0, p1, 0x2

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 93
    :goto_1
    if-ge v1, v0, :cond_1

    .line 94
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 87
    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;Ljava/lang/String;Ljava/util/List;IZ)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/java/Replacement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 109
    invoke-static {}, Lcom/google/common/collect/TreeRangeSet;->create()Lcom/google/common/collect/TreeRangeSet;

    move-result-object v2

    .line 110
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 111
    invoke-interface {v2, v0}, Lcom/google/common/collect/RangeSet;->add(Lcom/google/common/collect/Range;)V

    goto :goto_0

    .line 113
    :cond_0
    if-eqz p5, :cond_2

    .line 114
    sget-object v0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->COMPILATION_UNIT:Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    if-ne p1, v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/google/googlejavaformat/java/SnippetFormatter;->formatter:Lcom/google/googlejavaformat/java/Formatter;

    invoke-virtual {v0, p2, p3}, Lcom/google/googlejavaformat/java/Formatter;->getFormatReplacements(Ljava/lang/String;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 136
    :goto_1
    return-object v0

    .line 115
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "comment formatting is only supported for compilation units"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_2
    invoke-direct {p0, p1, p2, p4}, Lcom/google/googlejavaformat/java/SnippetFormatter;->snippetWrapper(Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;Ljava/lang/String;I)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;

    move-result-object v0

    .line 121
    iget v1, v0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->offset:I

    invoke-static {p3, v1}, Lcom/google/googlejavaformat/java/SnippetFormatter;->offsetRanges(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 123
    iget-object v3, p0, Lcom/google/googlejavaformat/java/SnippetFormatter;->formatter:Lcom/google/googlejavaformat/java/Formatter;

    iget-object v4, v0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->contents:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/google/googlejavaformat/java/Formatter;->formatSource(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    .line 124
    iget v3, v0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->offset:I

    .line 127
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, v0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->contents:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    iget v0, v0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetWrapper;->offset:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    .line 125
    sub-int v0, v5, v0

    sub-int/2addr v0, v6

    sub-int v0, v4, v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {p2, v0}, Lcom/google/googlejavaformat/java/SnippetFormatter;->toReplacements(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/Replacement;

    .line 132
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/Replacement;->getReplaceRange()Lcom/google/common/collect/Range;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/common/collect/RangeSet;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 133
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 136
    goto :goto_1
.end method
