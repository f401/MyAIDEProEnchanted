.class public Lorg/antlr/v4/runtime/BufferedTokenStream;
.super Ljava/lang/Object;
.source "BufferedTokenStream.java"

# interfaces
.implements Lorg/antlr/v4/runtime/TokenStream;


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field protected fetchedEOF:Z

.field protected p:I

.field protected tokenSource:Lorg/antlr/v4/runtime/TokenSource;

.field protected tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/TokenSource;)V
    .locals 2

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

    if-eqz p1, :cond_0

    .line 73
    iput-object p1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokenSource:Lorg/antlr/v4/runtime/TokenSource;

    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tokenSource cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public LA(I)I
    .locals 1

    .line 206
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/BufferedTokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    return v0
.end method

.method protected LB(I)Lorg/antlr/v4/runtime/Token;
    .locals 2

    .line 209
    iget v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    goto :goto_0
.end method

.method public LT(I)Lorg/antlr/v4/runtime/Token;
    .locals 2

    .line 216
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->lazyInit()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 227
    :goto_0
    return-object v0

    .line 216
    :cond_0
    if-gez p1, :cond_1

    neg-int v0, p1

    .line 218
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->LB(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_1
    iget v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 221
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->sync(I)Z

    .line 222
    iget-object v1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 224
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    goto :goto_0

    .line 227
    :cond_2
    iget-object v1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    goto :goto_0
.end method

.method protected adjustSeekIndex(I)I
    .locals 0

    return p1
.end method

.method public consume()V
    .locals 2

    .line 116
    iget v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    if-ltz v0, :cond_3

    .line 117
    iget-boolean v1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->fetchedEOF:Z

    if-eqz v1, :cond_2

    .line 120
    iget-object v1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 136
    :cond_0
    iget v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->sync(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->adjustSeekIndex(I)I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    :cond_1
    return-void

    .line 124
    :cond_2
    iget-object v1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 132
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->LA(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot consume EOF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected fetch(I)I
    .locals 4

    const/4 v0, 0x0

    .line 164
    iget-boolean v1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->fetchedEOF:Z

    if-eqz v1, :cond_3

    move p1, v0

    .line 175
    :cond_0
    :goto_0
    return p1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 164
    :goto_1
    if-ge v2, p1, :cond_0

    .line 169
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokenSource:Lorg/antlr/v4/runtime/TokenSource;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenSource;->nextToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    .line 170
    instance-of v0, v1, Lorg/antlr/v4/runtime/WritableToken;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 171
    check-cast v0, Lorg/antlr/v4/runtime/WritableToken;

    iget-object v3, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v3}, Lorg/antlr/v4/runtime/WritableToken;->setTokenIndex(I)V

    .line 173
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->fetchedEOF:Z

    add-int/lit8 p1, v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1
.end method

.method public fill()V
    .locals 2

    const/16 v1, 0x3e8

    .line 482
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->lazyInit()V

    .line 485
    :cond_0
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/BufferedTokenStream;->fetch(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    return-void
.end method

.method protected filterForChannel(III)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 423
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_2

    .line 425
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    const/4 v2, -0x1

    if-ne p3, v2, :cond_1

    .line 427
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getChannel()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getChannel()I

    move-result v2

    if-ne v2, p3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 433
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public get(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 200
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 194
    :cond_1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->lazyInit()V

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_2

    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 p2, v0, -0x1

    :cond_2
    :goto_1
    if-gt p1, p2, :cond_3

    .line 198
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    .line 199
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    :cond_3
    move-object v0, v1

    .line 200
    goto :goto_0

    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method public get(I)Lorg/antlr/v4/runtime/Token;
    .locals 2

    if-ltz p1, :cond_0

    .line 185
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 188
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    return-object v0

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "token index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " out of range 0.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getHiddenTokensToLeft(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 419
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->getHiddenTokensToLeft(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHiddenTokensToLeft(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 395
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->lazyInit()V

    if-ltz p1, :cond_2

    .line 396
    iget-object v1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    if-nez p1, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-object v0

    .line 396
    :cond_1
    add-int/lit8 v1, p1, -0x1

    .line 405
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/antlr/v4/runtime/BufferedTokenStream;->previousTokenOnChannel(II)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 412
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lorg/antlr/v4/runtime/BufferedTokenStream;->filterForChannel(III)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 397
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not in 0.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getHiddenTokensToRight(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 387
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->getHiddenTokensToRight(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHiddenTokensToRight(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 366
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->lazyInit()V

    if-ltz p1, :cond_1

    .line 367
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    add-int/lit8 v1, p1, 0x1

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->nextTokenOnChannel(II)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 376
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 379
    :cond_0
    invoke-virtual {p0, v1, v0, p2}, Lorg/antlr/v4/runtime/BufferedTokenStream;->filterForChannel(III)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 368
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not in 0.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 438
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokenSource:Lorg/antlr/v4/runtime/TokenSource;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenSource;->getSourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 444
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(Lorg/antlr/v4/runtime/RuleContext;)Ljava/lang/String;
    .locals 1

    .line 467
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/RuleContext;->getSourceInterval()Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 474
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v0

    invoke-interface {p2}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v0

    .line 477
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;
    .locals 6

    .line 449
    iget v2, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 450
    iget v0, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-ltz v2, :cond_0

    if-gez v0, :cond_1

    .line 451
    :cond_0
    const-string v0, ""

    .line 461
    :goto_0
    return-object v0

    .line 452
    :cond_1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->fill()V

    .line 453
    iget-object v1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 455
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    if-gt v2, v1, :cond_2

    .line 457
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    .line 458
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 461
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 459
    :cond_3
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method public getTokenSource()Lorg/antlr/v4/runtime/TokenSource;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokenSource:Lorg/antlr/v4/runtime/TokenSource;

    return-object v0
.end method

.method public getTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    return-object v0
.end method

.method public getTokens(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->getTokens(IILjava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTokens(III)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(I)V

    .line 302
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {p0, p1, p2, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->getTokens(IILjava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTokens(IILjava/util/Set;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 277
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->lazyInit()V

    if-ltz p1, :cond_5

    .line 278
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_5

    if-ltz p2, :cond_5

    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    if-le p1, p2, :cond_0

    .line 294
    :goto_0
    return-object v1

    .line 287
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-gt p1, p2, :cond_3

    .line 289
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    if-eqz p3, :cond_1

    .line 290
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 291
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 294
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_2
    move-object v1, v0

    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_2

    .line 281
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " or stop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not in 0.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public index()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    return v0
.end method

.method protected final lazyInit()V
    .locals 2

    .line 248
    iget v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 249
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->setup()V

    :cond_0
    return-void
.end method

.method public mark()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected nextTokenOnChannel(II)I
    .locals 2

    .line 313
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/BufferedTokenStream;->sync(I)Z

    .line 314
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 315
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->size()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    .line 326
    :cond_0
    return p1

    .line 318
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    .line 319
    :goto_0
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getChannel()I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 320
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 325
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/BufferedTokenStream;->sync(I)Z

    .line 326
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    goto :goto_0
.end method

.method protected previousTokenOnChannel(II)I
    .locals 4

    .line 343
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/BufferedTokenStream;->sync(I)Z

    .line 344
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 346
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 351
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 346
    :goto_1
    if-ltz v1, :cond_1

    .line 350
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    .line 351
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getChannel()I

    move-result v0

    if-ne v0, p2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, p1

    goto :goto_1
.end method

.method public release(I)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->seek(I)V

    return-void
.end method

.method public seek(I)V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->lazyInit()V

    .line 107
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/BufferedTokenStream;->adjustSeekIndex(I)I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    return-void
.end method

.method public setTokenSource(Lorg/antlr/v4/runtime/TokenSource;)V
    .locals 1

    .line 260
    iput-object p1, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokenSource:Lorg/antlr/v4/runtime/TokenSource;

    .line 261
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 262
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->fetchedEOF:Z

    return-void
.end method

.method protected setup()V
    .locals 1

    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->sync(I)Z

    .line 255
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/BufferedTokenStream;->adjustSeekIndex(I)I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->p:I

    return-void
.end method

.method public size()I
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected sync(I)Z
    .locals 3

    .line 149
    iget-object v0, p0, Lorg/antlr/v4/runtime/BufferedTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_0

    .line 152
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/BufferedTokenStream;->fetch(I)I

    move-result v2

    if-lt v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
