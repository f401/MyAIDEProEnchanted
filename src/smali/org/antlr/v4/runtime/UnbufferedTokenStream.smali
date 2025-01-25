.class public Lorg/antlr/v4/runtime/UnbufferedTokenStream;
.super Ljava/lang/Object;
.source "UnbufferedTokenStream.java"

# interfaces
.implements Lorg/antlr/v4/runtime/TokenStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/antlr/v4/runtime/Token;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/antlr/v4/runtime/TokenStream;"
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z = false


# instance fields
.field protected currentTokenIndex:I

.field protected lastToken:Lorg/antlr/v4/runtime/Token;

.field protected lastTokenBufferStart:Lorg/antlr/v4/runtime/Token;

.field protected n:I

.field protected numMarkers:I

.field protected p:I

.field protected tokenSource:Lorg/antlr/v4/runtime/TokenSource;

.field protected tokens:[Lorg/antlr/v4/runtime/Token;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/TokenSource;)V
    .registers 3

    .line 68
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;-><init>(Lorg/antlr/v4/runtime/TokenSource;I)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/TokenSource;I)V
    .registers 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    .line 44
    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->numMarkers:I

    .line 65
    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->currentTokenIndex:I

    .line 72
    iput-object p1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokenSource:Lorg/antlr/v4/runtime/TokenSource;

    .line 73
    new-array p1, p2, [Lorg/antlr/v4/runtime/Token;

    iput-object p1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    .line 74
    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    .line 75
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->fill(I)I

    return-void
.end method


# virtual methods
.method public LA(I)I
    .registers 2

    .line 110
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result p1

    return p1
.end method

.method public LT(I)Lorg/antlr/v4/runtime/Token;
    .registers 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    .line 91
    iget-object p1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->lastToken:Lorg/antlr/v4/runtime/Token;

    return-object p1

    .line 94
    :cond_6
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->sync(I)V

    .line 95
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_20

    .line 100
    iget p1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    if-lt v0, p1, :cond_1b

    .line 102
    iget-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    return-object p1

    .line 105
    :cond_1b
    iget-object p1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    aget-object p1, p1, v0

    return-object p1

    .line 97
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LT("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") gives negative index"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected add(Lorg/antlr/v4/runtime/Token;)V
    .registers 5

    .line 187
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    iget-object v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    array-length v2, v1

    if-lt v0, v2, :cond_12

    .line 188
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/Token;

    iput-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    .line 191
    :cond_12
    instance-of v0, p1, Lorg/antlr/v4/runtime/WritableToken;

    if-eqz v0, :cond_23

    .line 192
    move-object v0, p1

    check-cast v0, Lorg/antlr/v4/runtime/WritableToken;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->getBufferStartIndex()I

    move-result v1

    iget v2, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/WritableToken;->setTokenIndex(I)V

    .line 195
    :cond_23
    iget-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    aput-object p1, v0, v1

    return-void
.end method

.method public consume()V
    .registers 6

    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->LA(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2e

    .line 143
    iget-object v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    iget v3, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    aget-object v1, v1, v3

    iput-object v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->lastToken:Lorg/antlr/v4/runtime/Token;

    .line 146
    iget v4, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    sub-int/2addr v4, v0

    if-ne v3, v4, :cond_20

    iget v3, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->numMarkers:I

    if-nez v3, :cond_20

    .line 147
    const/4 v3, 0x0

    iput v3, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    .line 148
    iput v2, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    .line 149
    iput-object v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->lastTokenBufferStart:Lorg/antlr/v4/runtime/Token;

    .line 152
    :cond_20
    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    .line 153
    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->currentTokenIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->currentTokenIndex:I

    .line 154
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->sync(I)V

    return-void

    .line 139
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot consume EOF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected fill(I)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_21

    .line 175
    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    if-lez v1, :cond_15

    iget-object v2, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v2, v1

    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    return v0

    .line 179
    :cond_15
    iget-object v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokenSource:Lorg/antlr/v4/runtime/TokenSource;

    invoke-interface {v1}, Lorg/antlr/v4/runtime/TokenSource;->nextToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    .line 180
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->add(Lorg/antlr/v4/runtime/Token;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    return p1
.end method

.method public get(I)Lorg/antlr/v4/runtime/Token;
    .registers 5

    .line 80
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->getBufferStartIndex()I

    move-result v0

    if-lt p1, v0, :cond_11

    .line 81
    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_11

    .line 85
    iget-object v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    return-object p1

    .line 82
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") outside buffer: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final getBufferStartIndex()I
    .registers 3

    .line 309
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->currentTokenIndex:I

    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSourceName()Ljava/lang/String;
    .registers 2

    .line 280
    iget-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokenSource:Lorg/antlr/v4/runtime/TokenSource;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenSource;->getSourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 121
    const-string v0, ""

    return-object v0
.end method

.method public getText(Lorg/antlr/v4/runtime/RuleContext;)Ljava/lang/String;
    .registers 2

    .line 127
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/RuleContext;->getSourceInterval()Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getText(Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;
    .registers 3

    .line 133
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result p1

    invoke-interface {p2}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result p2

    invoke-static {p1, p2}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;
    .registers 6

    .line 286
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->getBufferStartIndex()I

    move-result v0

    .line 287
    iget-object v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    array-length v1, v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 289
    iget v2, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 290
    iget v3, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-lt v2, v0, :cond_2f

    if-gt v3, v1, :cond_2f

    sub-int/2addr v2, v0

    .line 299
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_18
    sub-int v1, v3, v0

    if-gt v2, v1, :cond_2a

    .line 301
    iget-object v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    aget-object v1, v1, v2

    .line 302
    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 305
    :cond_2a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 292
    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interval "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not in token buffer window: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_54

    :goto_53
    throw p1

    :goto_54
    goto :goto_53
.end method

.method public getTokenSource()Lorg/antlr/v4/runtime/TokenSource;
    .registers 2

    .line 115
    iget-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokenSource:Lorg/antlr/v4/runtime/TokenSource;

    return-object v0
.end method

.method public index()I
    .registers 2

    .line 239
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->currentTokenIndex:I

    return v0
.end method

.method public mark()I
    .registers 3

    .line 207
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->numMarkers:I

    if-nez v0, :cond_8

    .line 208
    iget-object v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->lastToken:Lorg/antlr/v4/runtime/Token;

    iput-object v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->lastTokenBufferStart:Lorg/antlr/v4/runtime/Token;

    :cond_8
    neg-int v1, v0

    .line 212
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->numMarkers:I

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public release(I)V
    .registers 5

    .line 218
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->numMarkers:I

    neg-int v1, v0

    if-ne p1, v1, :cond_26

    add-int/lit8 v0, v0, -0x1

    .line 223
    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->numMarkers:I

    if-nez v0, :cond_25

    .line 225
    iget p1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    if-lez p1, :cond_21

    .line 228
    iget-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {v0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iget p1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    .line 230
    iput v2, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    .line 233
    :cond_21
    iget-object p1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->lastToken:Lorg/antlr/v4/runtime/Token;

    iput-object p1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->lastTokenBufferStart:Lorg/antlr/v4/runtime/Token;

    :cond_25
    return-void

    .line 220
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "release() called with an invalid marker."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public seek(I)V
    .registers 5

    .line 244
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->currentTokenIndex:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    if-le p1, v0, :cond_19

    .line 249
    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->sync(I)V

    .line 250
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->getBufferStartIndex()I

    move-result v0

    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 253
    :cond_19
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->getBufferStartIndex()I

    move-result v0

    sub-int v1, p1, v0

    if-ltz v1, :cond_60

    .line 258
    iget v2, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    if-ge v1, v2, :cond_39

    .line 263
    iput v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    .line 264
    iput p1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->currentTokenIndex:I

    if-nez v1, :cond_30

    .line 266
    iget-object p1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->lastTokenBufferStart:Lorg/antlr/v4/runtime/Token;

    iput-object p1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->lastToken:Lorg/antlr/v4/runtime/Token;

    goto :goto_38

    .line 269
    :cond_30
    iget-object p1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    iput-object p1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->lastToken:Lorg/antlr/v4/runtime/Token;

    :goto_38
    return-void

    .line 259
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seek to index outside buffer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 256
    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot seek to negative index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .registers 3

    .line 275
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unbuffered stream cannot know its size"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected sync(I)V
    .registers 3

    .line 162
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    iget p1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_f

    .line 164
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->fill(I)I

    :cond_f
    return-void
.end method
