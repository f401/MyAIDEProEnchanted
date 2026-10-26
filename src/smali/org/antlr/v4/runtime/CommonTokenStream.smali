.class public Lorg/antlr/v4/runtime/CommonTokenStream;
.super Lorg/antlr/v4/runtime/BufferedTokenStream;
.source "CommonTokenStream.java"


# instance fields
.field protected channel:I


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/TokenSource;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/BufferedTokenStream;-><init>(Lorg/antlr/v4/runtime/TokenSource;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->channel:I

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/TokenSource;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/CommonTokenStream;-><init>(Lorg/antlr/v4/runtime/TokenSource;)V

    .line 65
    iput p2, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->channel:I

    return-void
.end method


# virtual methods
.method protected LB(I)Lorg/antlr/v4/runtime/Token;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 75
    iget v1, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->p:I

    sub-int/2addr v1, p1

    if-gez v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :cond_1
    iget v1, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->p:I

    const/4 v2, 0x1

    :goto_1
    if-gt v2, p1, :cond_2

    if-lez v1, :cond_2

    .line 82
    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->channel:I

    invoke-virtual {p0, v1, v3}, Lorg/antlr/v4/runtime/CommonTokenStream;->previousTokenOnChannel(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-ltz v1, :cond_0

    .line 86
    iget-object v0, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    goto :goto_0
.end method

.method public LT(I)Lorg/antlr/v4/runtime/Token;
    .locals 4

    .line 92
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/CommonTokenStream;->lazyInit()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    .line 92
    :cond_0
    if-gez p1, :cond_1

    neg-int v0, p1

    .line 94
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/CommonTokenStream;->LB(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_1
    iget v0, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->p:I

    const/4 v1, 0x1

    :goto_1
    if-ge v1, p1, :cond_3

    add-int/lit8 v2, v0, 0x1

    .line 100
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/CommonTokenStream;->sync(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    iget v0, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->channel:I

    invoke-virtual {p0, v2, v0}, Lorg/antlr/v4/runtime/CommonTokenStream;->nextTokenOnChannel(II)I

    move-result v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    :cond_3
    iget-object v1, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    goto :goto_0
.end method

.method protected adjustSeekIndex(I)I
    .locals 1

    .line 70
    iget v0, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->channel:I

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/CommonTokenStream;->nextTokenOnChannel(II)I

    move-result v0

    return v0
.end method

.method public getNumberOfOnChannelTokens()I
    .locals 5

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/CommonTokenStream;->fill()V

    move v1, v0

    move v2, v0

    .line 113
    :goto_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 114
    iget-object v0, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    .line 115
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getChannel()I

    move-result v3

    iget v4, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->channel:I

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 116
    :cond_0
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
