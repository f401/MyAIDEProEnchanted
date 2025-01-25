.class public Lorg/antlr/v4/runtime/BufferedTokenStream;
.super Ljava/lang/Object;
.source "BufferedTokenStream.java"

# interfaces
.implements Lorg/antlr/v4/runtime/TokenStream;


# static fields
.field static final $assertionsDisabled:Z = false


# instance fields
.field protected fetchedEOF:Z

.field protected p:I

.field protected tokenSource:Lorg/antlr/v4/runtime/TokenSource;

.field protected tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/TokenSource;)V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    if-eqz p1, :cond_14

    .line 73
    iput-object p1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokenSource:Lorg/antlr/v4/runtime/TokenSource;

    return-void

    .line 71
    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "tokenSource cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public LA(I)I
    .registers 2

    .line 206
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/BufferedTokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result p1

    return p1
.end method

.method protected LB(I)Lorg/antlr/v4/runtime/Token;
    .registers 3

    .line 209
    iget v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_7

    const/4 p1, 0x0

    return-object p1

    .line 210
    :cond_7
    iget-object p1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/Token;

    return-object p1
.end method

.method public LT(I)Lorg/antlr/v4/runtime/Token;
    .registers 3

    .line 216
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->lazyInit()V

    if-nez p1, :cond_7

    const/4 p1, 0x0

    return-object p1

    :cond_7
    if-gez p1, :cond_f

    neg-int p1, p1

    .line 218
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/BufferedTokenStream;->LB(I)Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    return-object p1

    .line 220
    :cond_f
    iget v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 221
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->sync(I)Z

    .line 222
    iget-object p1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt v0, p1, :cond_2e

    .line 224
    iget-object p1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/Token;

    return-object p1

    .line 227
    :cond_2e
    iget-object p1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/Token;

    return-object p1
.end method

.method protected adjustSeekIndex(I)I
    .registers 2

    return p1
.end method

.method public consume()V
    .registers 4

    .line 116
    iget v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    const/4 v1, 0x1

    if-ltz v0, :cond_1c

    .line 117
    iget-boolean v2, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->fetchedEOF:Z

    if-eqz v2, :cond_13

    .line 120
    iget-object v2, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1c

    goto :goto_23

    .line 124
    :cond_13
    iget-object v2, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    goto :goto_23

    .line 132
    :cond_1c
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/BufferedTokenStream;->LA(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_36

    .line 136
    :goto_23
    iget v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->sync(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 137
    iget v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->adjustSeekIndex(I)I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    :cond_35
    return-void

    .line 133
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot consume EOF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected fetch(I)I
    .registers 6

    .line 164
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->fetchedEOF:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    :goto_6
    if-ge v1, p1, :cond_32

    .line 169
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokenSource:Lorg/antlr/v4/runtime/TokenSource;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenSource;->nextToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 170
    instance-of v2, v0, Lorg/antlr/v4/runtime/WritableToken;

    if-eqz v2, :cond_1e

    .line 171
    move-object v2, v0

    check-cast v2, Lorg/antlr/v4/runtime/WritableToken;

    iget-object v3, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/antlr/v4/runtime/WritableToken;->setTokenIndex(I)V

    .line 173
    :cond_1e
    iget-object v2, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2f

    .line 175
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->fetchedEOF:Z

    add-int/2addr v1, p1

    return v1

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_32
    return p1
.end method

.method public fill()V
    .registers 3

    .line 482
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->lazyInit()V

    .line 485
    :cond_3
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->fetch(I)I

    move-result v1

    if-ge v1, v0, :cond_3

    return-void
.end method

.method protected filterForChannel(III)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-gt p1, p2, :cond_28

    .line 425
    iget-object v1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/Token;

    const/4 v2, -0x1

    if-ne p3, v2, :cond_1c

    .line 427
    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getChannel()I

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 430
    :cond_1c
    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getChannel()I

    move-result v2

    if-ne v2, p3, :cond_25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    :goto_25
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 433
    :cond_28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_30

    const/4 p1, 0x0

    return-object p1

    :cond_30
    return-object v0
.end method

.method public get(II)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_36

    if-gez p2, :cond_5

    goto :goto_36

    .line 194
    :cond_5
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->lazyInit()V

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    iget-object v1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_1d

    iget-object p2, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :cond_1d
    :goto_1d
    if-gt p1, p2, :cond_35

    .line 198
    iget-object v1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/Token;

    .line 199
    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2f

    goto :goto_35

    .line 200
    :cond_2f
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1d

    :cond_35
    :goto_35
    return-object v0

    :cond_36
    :goto_36
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(I)Lorg/antlr/v4/runtime/Token;
    .registers 4

    if-ltz p1, :cond_13

    .line 185
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    .line 188
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/Token;

    return-object p1

    .line 186
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "token index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range 0.."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHiddenTokensToLeft(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 419
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->getHiddenTokensToLeft(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getHiddenTokensToLeft(II)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 395
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->lazyInit()V

    if-ltz p1, :cond_22

    .line 396
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_22

    const/4 v0, 0x0

    if-nez p1, :cond_11

    return-object v0

    :cond_11
    add-int/lit8 p1, p1, -0x1

    .line 405
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/antlr/v4/runtime/BufferedTokenStream;->previousTokenOnChannel(II)I

    move-result v1

    if-ne v1, p1, :cond_1b

    return-object v0

    .line 412
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, p1, p2}, Lorg/antlr/v4/runtime/BufferedTokenStream;->filterForChannel(III)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 397
    :cond_22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not in 0.."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHiddenTokensToRight(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 387
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->getHiddenTokensToRight(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getHiddenTokensToRight(II)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 366
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->lazyInit()V

    if-ltz p1, :cond_22

    .line 367
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_22

    add-int/lit8 p1, p1, 0x1

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->nextTokenOnChannel(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    .line 376
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 379
    :cond_1d
    invoke-virtual {p0, p1, v0, p2}, Lorg/antlr/v4/runtime/BufferedTokenStream;->filterForChannel(III)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 368
    :cond_22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not in 0.."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSourceName()Ljava/lang/String;
    .registers 2

    .line 438
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokenSource:Lorg/antlr/v4/runtime/TokenSource;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenSource;->getSourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .line 444
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(Lorg/antlr/v4/runtime/RuleContext;)Ljava/lang/String;
    .registers 2

    .line 467
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/RuleContext;->getSourceInterval()Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/BufferedTokenStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getText(Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_15

    if-eqz p2, :cond_15

    .line 474
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result p1

    invoke-interface {p2}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result p2

    invoke-static {p1, p2}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/BufferedTokenStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 477
    :cond_15
    const-string p1, ""

    return-object p1
.end method

.method public getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;
    .registers 7

    .line 449
    iget v0, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 450
    iget p1, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-ltz v0, :cond_42

    if-gez p1, :cond_9

    goto :goto_42

    .line 452
    :cond_9
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->fill()V

    .line 453
    iget-object v1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1c

    iget-object p1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 455
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_21
    if-gt v0, p1, :cond_3d

    .line 457
    iget-object v2, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/Token;

    .line 458
    invoke-interface {v2}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_33

    goto :goto_3d

    .line 459
    :cond_33
    invoke-interface {v2}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 461
    :cond_3d
    :goto_3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 451
    :cond_42
    :goto_42
    const-string p1, ""

    return-object p1
.end method

.method public getTokenSource()Lorg/antlr/v4/runtime/TokenSource;
    .registers 2

    .line 77
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokenSource:Lorg/antlr/v4/runtime/TokenSource;

    return-object v0
.end method

.method public getTokens()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    return-object v0
.end method

.method public getTokens(II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->getTokens(IILjava/util/Set;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTokens(III)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(I)V

    .line 302
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {p0, p1, p2, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->getTokens(IILjava/util/Set;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTokens(IILjava/util/Set;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->lazyInit()V

    if-ltz p1, :cond_49

    .line 278
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_49

    if-ltz p2, :cond_49

    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_49

    const/4 v0, 0x0

    if-le p1, p2, :cond_1b

    return-object v0

    .line 287
    :cond_1b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_20
    if-gt p1, p2, :cond_40

    .line 289
    iget-object v2, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/Token;

    if-eqz p3, :cond_3a

    .line 290
    invoke-interface {v2}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 291
    :cond_3a
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 p1, p1, 0x1

    goto :goto_20

    .line 294
    :cond_40
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_47

    goto :goto_48

    :cond_47
    move-object v0, v1

    :goto_48
    return-object v0

    .line 281
    :cond_49
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "start "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " or stop "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not in 0.."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_76

    :goto_75
    throw p1

    :goto_76
    goto :goto_75
.end method

.method public index()I
    .registers 2

    .line 80
    iget v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    return v0
.end method

.method protected final lazyInit()V
    .registers 3

    .line 248
    iget v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 249
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->setup()V

    :cond_8
    return-void
.end method

.method public mark()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected nextTokenOnChannel(II)I
    .registers 5

    .line 313
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/BufferedTokenStream;->sync(I)Z

    .line 314
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->size()I

    move-result v0

    if-lt p1, v0, :cond_10

    .line 315
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 318
    :cond_10
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    .line 319
    :goto_18
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getChannel()I

    move-result v1

    if-eq v1, p2, :cond_34

    .line 320
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    return p1

    :cond_26
    add-int/lit8 p1, p1, 0x1

    .line 325
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/BufferedTokenStream;->sync(I)Z

    .line 326
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    goto :goto_18

    :cond_34
    return p1
.end method

.method protected previousTokenOnChannel(II)I
    .registers 6

    .line 343
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/BufferedTokenStream;->sync(I)Z

    .line 344
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->size()I

    move-result v0

    if-lt p1, v0, :cond_10

    .line 346
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_10
    :goto_10
    if-ltz p1, :cond_2b

    .line 350
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    .line 351
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2b

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getChannel()I

    move-result v0

    if-ne v0, p2, :cond_28

    goto :goto_2b

    :cond_28
    add-int/lit8 p1, p1, -0x1

    goto :goto_10

    :cond_2b
    :goto_2b
    return p1
.end method

.method public release(I)V
    .registers 2

    return-void
.end method

.method public reset()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->seek(I)V

    return-void
.end method

.method public seek(I)V
    .registers 2

    .line 106
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->lazyInit()V

    .line 107
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/BufferedTokenStream;->adjustSeekIndex(I)I

    move-result p1

    iput p1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    return-void
.end method

.method public setTokenSource(Lorg/antlr/v4/runtime/TokenSource;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokenSource:Lorg/antlr/v4/runtime/TokenSource;

    .line 261
    iget-object p1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 262
    const/4 p1, -0x1

    iput p1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    .line 263
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->fetchedEOF:Z

    return-void
.end method

.method protected setup()V
    .registers 2

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->sync(I)Z

    .line 255
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->adjustSeekIndex(I)I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    return-void
.end method

.method public size()I
    .registers 2

    .line 111
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected sync(I)Z
    .registers 4

    .line 149
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    if-lez p1, :cond_13

    .line 152
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/BufferedTokenStream;->fetch(I)I

    move-result v1

    if-lt v1, p1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :cond_13
    :goto_13
    return v0
.end method
