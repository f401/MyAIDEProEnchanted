.class public final Lcom/google/googlejavaformat/java/JavaInput;
.super Lcom/google/googlejavaformat/Input;
.source "JavaInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/java/JavaInput$Tok;,
        Lcom/google/googlejavaformat/java/JavaInput$Token;
    }
.end annotation


# instance fields
.field private kN:I

.field private final kToToken:[Lcom/google/googlejavaformat/java/JavaInput$Token;

.field private final positionToColumnMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final positionTokenMap:Lcom/google/common/collect/ImmutableRangeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/googlejavaformat/java/JavaInput$Token;",
            ">;"
        }
    .end annotation
.end field

.field private final text:Ljava/lang/String;

.field private final tokens:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/java/JavaInput$Token;",
            ">;"
        }
    .end annotation
.end field

.field private unit:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/google/googlejavaformat/Input;-><init>()V

    .line 86
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput;->text:Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lcom/google/googlejavaformat/Newlines;->lineIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInput;->setLines(Lcom/google/common/collect/ImmutableList;)V

    .line 88
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/JavaInput;->buildToks(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/google/googlejavaformat/java/JavaInput;->makePositionToColumnMap(Ljava/util/List;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlejavaformat/java/JavaInput;->positionToColumnMap:Lcom/google/common/collect/ImmutableMap;

    .line 90
    invoke-static {v0}, Lcom/google/googlejavaformat/java/JavaInput;->buildTokens(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput;->tokens:Lcom/google/common/collect/ImmutableList;

    .line 91
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeMap;->builder()Lcom/google/common/collect/ImmutableRangeMap$Builder;

    move-result-object v2

    .line 92
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput;->tokens:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaInput$Token;

    .line 93
    invoke-static {v0}, Lcom/google/googlejavaformat/java/JavaOutput;->endTok(Lcom/google/googlejavaformat/Input$Token;)Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v4

    .line 94
    invoke-interface {v4}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v1

    .line 95
    invoke-interface {v4}, Lcom/google/googlejavaformat/Input$Tok;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 96
    invoke-interface {v4}, Lcom/google/googlejavaformat/Input$Tok;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v1, v4

    .line 98
    :cond_0
    invoke-static {v0}, Lcom/google/googlejavaformat/java/JavaOutput;->startTok(Lcom/google/googlejavaformat/Input$Token;)Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/google/common/collect/ImmutableRangeMap$Builder;->put(Lcom/google/common/collect/Range;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableRangeMap$Builder;

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableRangeMap$Builder;->build()Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput;->positionTokenMap:Lcom/google/common/collect/ImmutableRangeMap;

    .line 103
    iget v0, p0, Lcom/google/googlejavaformat/java/JavaInput;->kN:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/google/googlejavaformat/java/JavaInput$Token;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput;->kToToken:[Lcom/google/googlejavaformat/java/JavaInput$Token;

    .line 104
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput;->tokens:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/googlejavaformat/java/JavaInput$Token;

    .line 105
    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/JavaInput$Token;->getToksBefore()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Tok;

    .line 106
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v4

    if-ltz v4, :cond_3

    .line 109
    iget-object v4, p0, Lcom/google/googlejavaformat/java/JavaInput;->kToToken:[Lcom/google/googlejavaformat/java/JavaInput$Token;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v0

    aput-object v1, v4, v0

    goto :goto_1

    .line 111
    :cond_4
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput;->kToToken:[Lcom/google/googlejavaformat/java/JavaInput$Token;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/JavaInput$Token;->getTok()Lcom/google/googlejavaformat/java/JavaInput$Tok;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->getIndex()I

    move-result v3

    aput-object v1, v0, v3

    .line 112
    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/JavaInput$Token;->getToksAfter()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Tok;

    .line 113
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v4

    if-ltz v4, :cond_5

    .line 116
    iget-object v4, p0, Lcom/google/googlejavaformat/java/JavaInput;->kToToken:[Lcom/google/googlejavaformat/java/JavaInput$Token;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v0

    aput-object v1, v4, v0

    goto :goto_2

    .line 119
    :cond_6
    return-void
.end method

.method private static buildTokens(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/java/JavaInput$Tok;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/java/JavaInput$Token;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 277
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v9

    .line 279
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    .line 282
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    move-object v8, v1

    move v0, v5

    .line 285
    :goto_0
    if-ge v0, v10, :cond_10

    move v1, v0

    .line 286
    :goto_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->isToken()Z

    move-result v0

    if-nez v0, :cond_2

    .line 287
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    .line 288
    invoke-virtual {v8, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 289
    invoke-static {v0}, Lcom/google/googlejavaformat/java/JavaInput;->isParamComment(Lcom/google/googlejavaformat/java/JavaInput$Tok;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 290
    :goto_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->isNewline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_0
    move v0, v1

    :goto_3
    move v1, v0

    .line 295
    goto :goto_1

    :cond_1
    move v0, v2

    .line 289
    goto :goto_3

    .line 296
    :cond_2
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    .line 299
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v11

    .line 301
    :goto_4
    if-ge v2, v10, :cond_11

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->isToken()Z

    move-result v1

    if-nez v1, :cond_11

    .line 309
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->isSlashStarComment()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 310
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v12, 0x28

    if-eq v3, v12, :cond_9

    const/16 v12, 0x2e

    if-eq v3, v12, :cond_8

    const/16 v12, 0x3c

    if-eq v3, v12, :cond_7

    :cond_3
    move v1, v4

    :goto_5
    if-eqz v1, :cond_a

    if-eq v1, v6, :cond_a

    if-eq v1, v7, :cond_a

    .line 319
    :cond_4
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->isJavadocComment()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 320
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v12, 0x3b

    if-eq v3, v12, :cond_b

    :cond_5
    move v1, v4

    :goto_6
    if-eqz v1, :cond_c

    .line 327
    :cond_6
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    invoke-static {v1}, Lcom/google/googlejavaformat/java/JavaInput;->isParamComment(Lcom/google/googlejavaformat/java/JavaInput$Tok;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 328
    new-instance v1, Lcom/google/googlejavaformat/java/JavaInput$Token;

    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    invoke-direct {v1, v3, v0, v8}, Lcom/google/googlejavaformat/java/JavaInput$Token;-><init>(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInput$Tok;Ljava/util/List;)V

    invoke-virtual {v9, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 329
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    move v1, v0

    .line 331
    :goto_7
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->isNewline()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 332
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 310
    :cond_7
    const-string v3, "<"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v6

    goto :goto_5

    :cond_8
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v7

    goto :goto_5

    :cond_9
    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    goto :goto_5

    :cond_a
    move v1, v2

    .line 342
    :goto_8
    new-instance v2, Lcom/google/googlejavaformat/java/JavaInput$Token;

    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    invoke-direct {v2, v3, v0, v8}, Lcom/google/googlejavaformat/java/JavaInput$Token;-><init>(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInput$Tok;Ljava/util/List;)V

    invoke-virtual {v9, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 343
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    move-object v8, v2

    move v0, v1

    .line 344
    goto/16 :goto_0

    .line 320
    :cond_b
    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v5

    goto :goto_6

    :cond_c
    move v1, v2

    .line 322
    goto :goto_8

    :cond_d
    move-object v8, v2

    move v0, v1

    .line 331
    goto/16 :goto_0

    .line 336
    :cond_e
    add-int/lit8 v3, v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    .line 337
    invoke-virtual {v11, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 338
    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlejavaformat/Newlines;->containsBreaks(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v3

    .line 339
    goto :goto_8

    :cond_f
    move v2, v3

    .line 341
    goto/16 :goto_4

    .line 345
    :cond_10
    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    :cond_11
    move v1, v2

    goto :goto_8
.end method

.method private buildToks(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/java/JavaInput$Tok;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 372
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/googlejavaformat/java/JavaInput;->buildToks(Ljava/lang/String;Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 373
    invoke-static {v1}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->getIndex()I

    move-result v0

    iput v0, p0, Lcom/google/googlejavaformat/java/JavaInput;->kN:I

    .line 374
    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/JavaInput;->computeRanges(Ljava/util/List;)V

    .line 375
    return-object v1
.end method

.method static buildToks(Ljava/lang/String;Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/ImmutableList;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/java/JavaInput$Tok;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 138
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->EOF:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v11

    .line 139
    new-instance v1, Lcom/sun/tools/javac/util/Context;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/Context;-><init>()V

    .line 140
    new-instance v2, Lcom/sun/tools/javac/file/JavacFileManager;

    const/4 v3, 0x1

    sget-object v4, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3, v4}, Lcom/sun/tools/javac/file/JavacFileManager;-><init>(Lcom/sun/tools/javac/util/Context;ZLjava/nio/charset/Charset;)V

    .line 141
    new-instance v2, Ljavax/tools/DiagnosticCollector;

    invoke-direct {v2}, Ljavax/tools/DiagnosticCollector;-><init>()V

    .line 142
    const-class v3, Ljavax/tools/DiagnosticListener;

    invoke-virtual {v1, v3, v2}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 143
    invoke-static {v1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v3

    .line 144
    new-instance v4, Lcom/google/googlejavaformat/java/JavaInput$1;

    const-string v5, "Source.java"

    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    sget-object v6, Ljavax/tools/JavaFileObject$Kind;->SOURCE:Ljavax/tools/JavaFileObject$Kind;

    move-object/from16 v0, p0

    invoke-direct {v4, v5, v6, v0}, Lcom/google/googlejavaformat/java/JavaInput$1;-><init>(Ljava/net/URI;Ljavax/tools/JavaFileObject$Kind;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 151
    move-object/from16 v0, p0

    invoke-static {v0, v1, v11}, Lcom/google/googlejavaformat/java/JavacTokens;->getTokens(Ljava/lang/String;Lcom/sun/tools/javac/util/Context;Ljava/util/Set;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 156
    invoke-virtual {v2}, Ljavax/tools/DiagnosticCollector;->getDiagnostics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/tools/Diagnostic;

    .line 157
    invoke-interface {v1}, Ljavax/tools/Diagnostic;->getKind()Ljavax/tools/Diagnostic$Kind;

    move-result-object v1

    sget-object v4, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    if-ne v1, v4, :cond_0

    .line 158
    new-instance v1, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/google/googlejavaformat/java/JavaInput$Tok;-><init>(ILjava/lang/String;Ljava/lang/String;IIZLcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;)V

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 263
    :goto_0
    return-object v1

    .line 162
    :cond_1
    const/4 v14, 0x0

    .line 163
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 164
    const/4 v5, 0x0

    .line 165
    const/4 v6, 0x0

    .line 166
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;

    .line 167
    invoke-virtual {v8}, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;->kind()Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    :cond_2
    new-instance v1, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    const-string v3, ""

    const-string v4, ""

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v2, v14

    invoke-direct/range {v1 .. v8}, Lcom/google/googlejavaformat/java/JavaInput$Tok;-><init>(ILjava/lang/String;Ljava/lang/String;IIZLcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-static/range {v19 .. v19}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {v8}, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;->pos()I

    move-result v1

    .line 172
    invoke-virtual {v8}, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;->endPos()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-virtual {v8}, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;->kind()Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move-result-object v1

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->STRINGLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    if-ne v1, v3, :cond_6

    .line 175
    invoke-virtual {v8}, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;->stringVal()Ljava/lang/String;

    move-result-object v4

    .line 177
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 180
    const/4 v3, 0x0

    .line 181
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 183
    invoke-static {v2}, Lcom/google/googlejavaformat/Newlines;->lineIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v3

    .line 186
    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 187
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    invoke-static {v1}, Lcom/google/googlejavaformat/Newlines;->getLineEnding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 189
    if-eqz v7, :cond_7

    .line 190
    const/4 v9, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v1, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 192
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_5
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    move-object v4, v2

    .line 176
    goto :goto_2

    .line 195
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 196
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 199
    :cond_8
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object/from16 v16, v11

    move-object/from16 v17, v9

    move/from16 v18, v1

    move-object v3, v2

    .line 232
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v9, 0x1

    if-ne v1, v9, :cond_13

    .line 233
    if-eqz v18, :cond_18

    add-int/lit8 v1, v14, 0x1

    move v2, v14

    move v9, v1

    .line 241
    :goto_5
    new-instance v1, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v8}, Lcom/google/googlejavaformat/java/JavacTokens$RawTok;->kind()Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcom/google/googlejavaformat/java/JavaInput$Tok;-><init>(ILjava/lang/String;Ljava/lang/String;IIZLcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;)V

    .line 233
    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v5, v1

    .line 243
    invoke-static {v6, v3}, Lcom/google/googlejavaformat/java/JavaInput;->updateColumn(ILjava/lang/String;)I

    move-result v6

    move v14, v9

    .line 256
    :goto_6
    if-eqz v17, :cond_9

    .line 257
    new-instance v1, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    const/4 v2, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, v17

    move-object/from16 v4, v17

    invoke-direct/range {v1 .. v8}, Lcom/google/googlejavaformat/java/JavaInput$Tok;-><init>(ILjava/lang/String;Ljava/lang/String;IIZLcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v5, v1

    const/4 v6, 0x0

    :cond_9
    move-object/from16 v11, v16

    .line 261
    goto/16 :goto_1

    .line 199
    :cond_a
    const-string v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "\""

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 200
    :cond_b
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x1

    move-object/from16 v16, v11

    move-object/from16 v17, v9

    move/from16 v18, v1

    move-object v3, v2

    goto :goto_4

    .line 203
    :cond_c
    const-string v7, "//"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "/*"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 205
    :cond_d
    const-string v1, "//"

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 206
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "\r"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 207
    :cond_e
    invoke-static {v2}, Lcom/google/googlejavaformat/Newlines;->getLineEnding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 208
    const/4 v1, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v3, v9

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 209
    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v4, v9

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v4, v3

    move-object v9, v7

    .line 212
    :goto_7
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    const/4 v2, 0x1

    move-object/from16 v16, v11

    move-object/from16 v17, v9

    move/from16 v18, v2

    move-object v3, v1

    goto/16 :goto_4

    .line 215
    :cond_f
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v3

    if-nez v3, :cond_10

    .line 216
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_10

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_11

    .line 217
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_11

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 219
    :cond_10
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x1

    move-object/from16 v16, v11

    move-object/from16 v17, v9

    move/from16 v18, v1

    move-object v3, v2

    goto/16 :goto_4

    .line 226
    :cond_11
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v7, v3

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v7, :cond_12

    aget-char v9, v3, v1

    .line 229
    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x1

    move-object/from16 v16, v11

    move-object/from16 v17, v9

    move/from16 v18, v1

    move-object v3, v2

    goto/16 :goto_4

    .line 246
    :cond_13
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 250
    :cond_14
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v13, v6

    move v12, v5

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 251
    if-eqz v18, :cond_16

    add-int/lit8 v1, v14, 0x1

    move v9, v14

    :goto_a
    new-instance v8, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    const/4 v15, 0x0

    move-object v11, v10

    move v14, v7

    invoke-direct/range {v8 .. v15}, Lcom/google/googlejavaformat/java/JavaInput$Tok;-><init>(ILjava/lang/String;Ljava/lang/String;IIZLcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v12, v4

    .line 253
    invoke-static {v13, v3}, Lcom/google/googlejavaformat/java/JavaInput;->updateColumn(ILjava/lang/String;)I

    move-result v13

    move v14, v1

    .line 254
    goto :goto_9

    .line 247
    :cond_15
    new-instance v1, Lcom/google/googlejavaformat/java/FormatterException;

    const-string v2, "Unicode escapes not allowed in whitespace or multi-character operators"

    invoke-direct {v1, v2}, Lcom/google/googlejavaformat/java/FormatterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_16
    const/4 v9, -0x1

    move v1, v14

    goto :goto_a

    :cond_17
    move v5, v12

    move v6, v13

    .line 250
    goto/16 :goto_6

    :cond_18
    move v9, v14

    goto/16 :goto_5

    :cond_19
    move-object v1, v2

    move-object v9, v3

    goto/16 :goto_7
.end method

.method private static isParamComment(Lcom/google/googlejavaformat/java/JavaInput$Tok;)Z
    .registers 3

    .line 349
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->isSlashStarComment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\/\\*[A-Za-z0-9\\s_\\-]+=\\s*\\*\\/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 349
    :goto_0
    return v0

    .line 350
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makePositionToColumnMap(Ljava/util/List;)Lcom/google/common/collect/ImmutableMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/java/JavaInput$Tok;",
            ">;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 123
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    .line 124
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->getColumn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private static updateColumn(ILjava/lang/String;)I
    .registers 4

    .line 267
    invoke-static {p1}, Lcom/google/googlejavaformat/Newlines;->lineOffsetIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->getLast(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 268
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 269
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    .line 273
    :goto_0
    return v0

    .line 271
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p0

    goto :goto_0
.end method


# virtual methods
.method characterRangeToTokenRange(II)Lcom/google/common/collect/Range;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 387
    add-int v1, p1, p2

    .line 388
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInput;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 394
    if-gez p2, :cond_0

    .line 395
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInput;->EMPTY_RANGE:Lcom/google/common/collect/Range;

    .line 409
    :goto_0
    return-object v0

    .line 397
    :cond_0
    if-nez p2, :cond_1

    move p2, v0

    .line 401
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInput;->getPositionTokenMap()Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    .line 403
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int v2, p1, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableRangeMap;->subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v1

    .line 406
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInput;->EMPTY_RANGE:Lcom/google/common/collect/Range;

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaInput$Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput$Token;->getTok()Lcom/google/googlejavaformat/java/JavaInput$Tok;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->getIndex()I

    move-result v2

    invoke-static {v1}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaInput$Token;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput$Token;->getTok()Lcom/google/googlejavaformat/java/JavaInput$Tok;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->getIndex()I

    move-result v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    goto :goto_0

    .line 389
    :cond_3
    new-instance v2, Lcom/google/googlejavaformat/java/FormatterException;

    const-string v3, "error: invalid length %d, offset + length (%d) is outside the file"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/googlejavaformat/java/FormatterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public characterRangesToTokenRanges(Ljava/util/Collection;)Lcom/google/common/collect/RangeSet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lcom/google/common/collect/RangeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 481
    invoke-static {}, Lcom/google/common/collect/TreeRangeSet;->create()Lcom/google/common/collect/TreeRangeSet;

    move-result-object v1

    .line 482
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 483
    invoke-static {}, Lcom/google/common/collect/DiscreteDomain;->integers()Lcom/google/common/collect/DiscreteDomain;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/Range;->canonical(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Range;

    move-result-object v3

    .line 484
    invoke-virtual {v3}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 487
    invoke-virtual {v3}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 485
    sub-int v0, v5, v0

    invoke-virtual {p0, v4, v0}, Lcom/google/googlejavaformat/java/JavaInput;->characterRangeToTokenRange(II)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 484
    invoke-interface {v1, v0}, Lcom/google/common/collect/RangeSet;->add(Lcom/google/common/collect/Range;)V

    goto :goto_0

    .line 489
    :cond_0
    return-object v1
.end method

.method public getColumnNumber(I)I
    .registers 5

    .line 469
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput;->unit:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    const-string v1, "Expected compilation unit to be set."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Verify;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput;->unit:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->getLineMap()Lcom/sun/tools/javac/util/Position$LineMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sun/tools/javac/util/Position$LineMap;->getColumnNumber(I)I

    move-result v0

    return v0
.end method

.method public getLineNumber(I)I
    .registers 5

    .line 463
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput;->unit:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    const-string v1, "Expected compilation unit to be set."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Verify;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput;->unit:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->getLineMap()Lcom/sun/tools/javac/util/Position$LineMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sun/tools/javac/util/Position$LineMap;->getLineNumber(I)I

    move-result v0

    return v0
.end method

.method public getPositionToColumnMap()Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput;->positionToColumnMap:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public getPositionTokenMap()Lcom/google/common/collect/ImmutableRangeMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableRangeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/googlejavaformat/java/JavaInput$Token;",
            ">;"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput;->positionTokenMap:Lcom/google/common/collect/ImmutableRangeMap;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 360
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput;->text:Ljava/lang/String;

    return-object v0
.end method

.method getToken(I)Lcom/google/googlejavaformat/java/JavaInput$Token;
    .registers 3

    .line 428
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput;->kToToken:[Lcom/google/googlejavaformat/java/JavaInput$Token;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTokens()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<+",
            "Lcom/google/googlejavaformat/Input$Token;",
            ">;"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInput;->tokens:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method getkN()I
    .registers 2

    .line 419
    iget v0, p0, Lcom/google/googlejavaformat/java/JavaInput;->kN:I

    return v0
.end method

.method public setCompilationUnit(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .registers 2

    .line 476
    iput-object p1, p0, Lcom/google/googlejavaformat/java/JavaInput;->unit:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 477
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 455
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInput;->tokens:Lcom/google/common/collect/ImmutableList;

    .line 456
    const-string v2, "tokens"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 457
    const-string v1, "super"

    invoke-super {p0}, Lcom/google/googlejavaformat/Input;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    return-object v0
.end method
