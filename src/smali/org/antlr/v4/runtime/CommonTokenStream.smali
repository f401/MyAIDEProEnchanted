.class public Lorg/antlr/v4/runtime/CommonTokenStream;
.super Lorg/antlr/v4/runtime/BufferedTokenStream;
.source "CommonTokenStream.java"


# instance fields
.field protected channel:I


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/TokenSource;)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/BufferedTokenStream;-><init>(Lorg/antlr/v4/runtime/TokenSource;)V

    .line 41
    const/4 p1, 0x0

    iput p1, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->channel:I

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/TokenSource;I)V
    .registers 3

    .line 64
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/CommonTokenStream;-><init>(Lorg/antlr/v4/runtime/TokenSource;)V

    .line 65
    iput p2, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->channel:I

    return-void
.end method


# virtual methods
.method protected LB(I)Lorg/antlr/v4/runtime/Token;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    .line 75
    iget v1, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->p:I

    sub-int/2addr v1, p1

    if-gez v1, :cond_9

    goto :goto_27

    .line 77
    :cond_9
    iget v1, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->p:I

    const/4 v2, 0x1

    :goto_c
    if-gt v2, p1, :cond_1b

    if-lez v1, :cond_1b

    .line 82
    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->channel:I

    invoke-virtual {p0, v1, v3}, Lorg/antlr/v4/runtime/CommonTokenStream;->previousTokenOnChannel(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1b
    if-gez v1, :cond_1e

    return-object v0

    .line 86
    :cond_1e
    iget-object p1, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->tokens:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/Token;

    return-object p1

    :cond_27
    :goto_27
    return-object v0
.end method

.method public LT(I)Lorg/antlr/v4/runtime/Token;
    .registers 6

    .line 92
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/CommonTokenStream;->lazyInit()V

    if-nez p1, :cond_7

    const/4 p1, 0x0

    return-object p1

    :cond_7
    if-gez p1, :cond_f

    neg-int p1, p1

    .line 94
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/CommonTokenStream;->LB(I)Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    return-object p1

    .line 95
    :cond_f
    iget v0, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->p:I

    const/4 v1, 0x1

    :goto_12
    if-ge v1, p1, :cond_25

    add-int/lit8 v2, v0, 0x1

    .line 100
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/CommonTokenStream;->sync(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 101
    iget v0, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->channel:I

    invoke-virtual {p0, v2, v0}, Lorg/antlr/v4/runtime/CommonTokenStream;->nextTokenOnChannel(II)I

    move-result v0

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 106
    :cond_25
    iget-object p1, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->tokens:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/Token;

    return-object p1
.end method

.method protected adjustSeekIndex(I)I
    .registers 3

    .line 70
    iget v0, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->channel:I

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/CommonTokenStream;->nextTokenOnChannel(II)I

    move-result p1

    return p1
.end method

.method public getNumberOfOnChannelTokens()I
    .registers 6

    .line 112
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/CommonTokenStream;->fill()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 113
    :goto_5
    iget-object v2, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 114
    iget-object v2, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->tokens:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/Token;

    .line 115
    invoke-interface {v2}, Lorg/antlr/v4/runtime/Token;->getChannel()I

    move-result v3

    iget v4, p0, Lorg/antlr/v4/runtime/CommonTokenStream;->channel:I

    if-ne v3, v4, :cond_1f

    add-int/lit8 v0, v0, 0x1

    .line 116
    :cond_1f
    invoke-interface {v2}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_27

    goto :goto_2a

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2a
    :goto_2a
    return v0
.end method
