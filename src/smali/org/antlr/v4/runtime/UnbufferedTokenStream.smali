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
.field static final $assertionsDisabled:Z


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
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/TokenSource;)V
    .locals 1

    .line 68
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;-><init>(Lorg/antlr/v4/runtime/TokenSource;I)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/TokenSource;I)V
    .locals 2

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    .line 44
    iput v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->numMarkers:I

    .line 65
    iput v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->currentTokenIndex:I

    .line 72
    iput-object p1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokenSource:Lorg/antlr/v4/runtime/TokenSource;

    .line 73
    new-array v0, p2, [Lorg/antlr/v4/runtime/Token;

    iput-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    .line 74
    iput v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->fill(I)I

    return-void
.end method


# virtual methods
.method public LA(I)I
    .locals 1

    .line 110
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    return v0
.end method

.method public LT(I)Lorg/antlr/v4/runtime/Token;
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->lastToken:Lorg/antlr/v4/runtime/Token;

    .line 105
    :goto_0
    return-object v0

    .line 94
    :cond_0
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->sync(I)V

    .line 95
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 100
    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    if-lt v0, v1, :cond_1

    .line 102
    iget-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 105
    :cond_1
    iget-object v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    aget-object v0, v1, v0

    goto :goto_0

    .line 97
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LT("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") gives negative index"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected add(Lorg/antlr/v4/runtime/Token;)V
    .locals 3

    .line 187
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    iget-object v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 188
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/Token;

    iput-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    .line 191
    :cond_0
    instance-of v0, p1, Lorg/antlr/v4/runtime/WritableToken;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 192
    check-cast v0, Lorg/antlr/v4/runtime/WritableToken;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->getBufferStartIndex()I

    move-result v1

    iget v2, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/WritableToken;->setTokenIndex(I)V

    .line 195
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    aput-object p1, v0, v1

    return-void
.end method

.method public consume()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 138
    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->LA(I)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 143
    iget-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->lastToken:Lorg/antlr/v4/runtime/Token;

    .line 146
    iget v2, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->numMarkers:I

    if-nez v1, :cond_0

    .line 147
    const/4 v1, 0x0

    iput v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    .line 148
    iput v3, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    .line 149
    iput-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->lastTokenBufferStart:Lorg/antlr/v4/runtime/Token;

    .line 152
    :cond_0
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    .line 153
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->currentTokenIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->currentTokenIndex:I

    .line 154
    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->sync(I)V

    return-void

    .line 139
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot consume EOF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected fill(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 175
    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    if-lez v1, :cond_1

    iget-object v2, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v2, v1

    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    move p1, v0

    .line 180
    :cond_0
    return p1

    .line 179
    :cond_1
    iget-object v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokenSource:Lorg/antlr/v4/runtime/TokenSource;

    invoke-interface {v1}, Lorg/antlr/v4/runtime/TokenSource;->nextToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    .line 180
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->add(Lorg/antlr/v4/runtime/Token;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public get(I)Lorg/antlr/v4/runtime/Token;
    .locals 3

    .line 80
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->getBufferStartIndex()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 81
    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_0

    .line 85
    iget-object v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    sub-int v0, p1, v0

    aget-object v0, v1, v0

    return-object v0

    .line 82
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") outside buffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final getBufferStartIndex()I
    .locals 2

    .line 309
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->currentTokenIndex:I

    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokenSource:Lorg/antlr/v4/runtime/TokenSource;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenSource;->getSourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 121
    const-string v0, ""

    return-object v0
.end method

.method public getText(Lorg/antlr/v4/runtime/RuleContext;)Ljava/lang/String;
    .locals 1

    .line 127
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/RuleContext;->getSourceInterval()Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;
    .locals 2

    .line 133
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v0

    invoke-interface {p2}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;
    .locals 5

    .line 286
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->getBufferStartIndex()I

    move-result v1

    .line 287
    iget-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    array-length v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 289
    iget v2, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 290
    iget v3, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-lt v2, v1, :cond_1

    if-gt v3, v0, :cond_1

    sub-int v0, v2, v1

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    sub-int v4, v3, v1

    if-gt v0, v4, :cond_0

    .line 301
    iget-object v4, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    aget-object v4, v4, v0

    .line 302
    invoke-interface {v4}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 292
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interval "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not in token buffer window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTokenSource()Lorg/antlr/v4/runtime/TokenSource;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokenSource:Lorg/antlr/v4/runtime/TokenSource;

    return-object v0
.end method

.method public index()I
    .locals 1

    .line 239
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->currentTokenIndex:I

    return v0
.end method

.method public mark()I
    .locals 2

    .line 207
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->numMarkers:I

    if-nez v0, :cond_0

    .line 208
    iget-object v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->lastToken:Lorg/antlr/v4/runtime/Token;

    iput-object v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->lastTokenBufferStart:Lorg/antlr/v4/runtime/Token;

    :cond_0
    neg-int v1, v0

    .line 212
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->numMarkers:I

    add-int/lit8 v0, v1, -0x1

    return v0
.end method

.method public release(I)V
    .locals 4

    const/4 v3, 0x0

    .line 218
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->numMarkers:I

    neg-int v1, v0

    if-ne p1, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 223
    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->numMarkers:I

    if-nez v0, :cond_1

    .line 225
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    if-lez v0, :cond_0

    .line 228
    iget-object v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    iget v2, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    .line 230
    iput v3, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    .line 233
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->lastToken:Lorg/antlr/v4/runtime/Token;

    iput-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->lastTokenBufferStart:Lorg/antlr/v4/runtime/Token;

    :cond_1
    return-void

    .line 220
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "release() called with an invalid marker."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seek(I)V
    .locals 3

    .line 244
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->currentTokenIndex:I

    if-ne p1, v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 244
    :cond_0
    if-le p1, v0, :cond_1

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
    :cond_1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->getBufferStartIndex()I

    move-result v0

    sub-int v1, p1, v0

    if-ltz v1, :cond_4

    .line 258
    iget v2, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    if-ge v1, v2, :cond_3

    .line 263
    iput v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    .line 264
    iput p1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->currentTokenIndex:I

    if-nez v1, :cond_2

    .line 266
    iget-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->lastTokenBufferStart:Lorg/antlr/v4/runtime/Token;

    iput-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->lastToken:Lorg/antlr/v4/runtime/Token;

    goto :goto_0

    .line 269
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->tokens:[Lorg/antlr/v4/runtime/Token;

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->lastToken:Lorg/antlr/v4/runtime/Token;

    goto :goto_0

    .line 259
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seek to index outside buffer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot seek to negative index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public size()I
    .locals 2

    .line 275
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unbuffered stream cannot know its size"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected sync(I)V
    .locals 2

    .line 162
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->p:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->n:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 164
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/UnbufferedTokenStream;->fill(I)I

    :cond_0
    return-void
.end method
