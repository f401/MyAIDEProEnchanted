.class public Lorg/antlr/v4/runtime/ListTokenSource;
.super Ljava/lang/Object;
.source "ListTokenSource.java"

# interfaces
.implements Lorg/antlr/v4/runtime/TokenSource;


# instance fields
.field private _factory:Lorg/antlr/v4/runtime/TokenFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/antlr/v4/runtime/TokenFactory",
            "<*>;"
        }
    .end annotation
.end field

.field protected eofToken:Lorg/antlr/v4/runtime/Token;

.field protected i:I

.field private final sourceName:Ljava/lang/String;

.field protected final tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/antlr/v4/runtime/Token;",
            ">;)V"
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/antlr/v4/runtime/ListTokenSource;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/antlr/v4/runtime/Token;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lorg/antlr/v4/runtime/CommonTokenFactory;->DEFAULT:Lorg/antlr/v4/runtime/TokenFactory;

    iput-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->_factory:Lorg/antlr/v4/runtime/TokenFactory;

    if-eqz p1, :cond_0

    .line 83
    iput-object p1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    .line 84
    iput-object p2, p0, Lorg/antlr/v4/runtime/ListTokenSource;->sourceName:Ljava/lang/String;

    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tokens cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCharPositionInLine()I
    .locals 3

    .line 92
    iget v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->i:I

    iget-object v1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    iget v1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result v0

    .line 110
    :goto_0
    return v0

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->eofToken:Lorg/antlr/v4/runtime/Token;

    if-eqz v0, :cond_1

    .line 96
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result v0

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 101
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    .line 102
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 104
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 106
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 110
    :cond_2
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result v1

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getStopIndex()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getStartIndex()I

    move-result v0

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputStream()Lorg/antlr/v4/runtime/CharStream;
    .locals 2

    .line 189
    iget v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->i:I

    iget-object v1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    iget v1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->eofToken:Lorg/antlr/v4/runtime/Token;

    if-eqz v0, :cond_1

    .line 193
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 196
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLine()I
    .locals 5

    .line 154
    iget v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->i:I

    iget-object v1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    iget v1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v1

    .line 169
    :cond_0
    :goto_0
    return v1

    .line 157
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->eofToken:Lorg/antlr/v4/runtime/Token;

    if-eqz v0, :cond_2

    .line 158
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v1

    goto :goto_0

    .line 160
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    .line 164
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v1

    .line 166
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 168
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 169
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->sourceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 217
    :goto_0
    return-object v0

    .line 212
    :cond_0
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ListTokenSource;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    invoke-interface {v0}, Lorg/antlr/v4/runtime/CharStream;->getSourceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 217
    :cond_1
    const-string v0, "List"

    goto :goto_0
.end method

.method public getTokenFactory()Lorg/antlr/v4/runtime/TokenFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/antlr/v4/runtime/TokenFactory",
            "<*>;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->_factory:Lorg/antlr/v4/runtime/TokenFactory;

    return-object v0
.end method

.method public nextToken()Lorg/antlr/v4/runtime/Token;
    .locals 9

    const/4 v2, -0x1

    .line 123
    iget v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->i:I

    iget-object v1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 124
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->eofToken:Lorg/antlr/v4/runtime/Token;

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 127
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getStopIndex()I

    move-result v0

    if-eq v0, v2, :cond_1

    add-int/lit8 v5, v0, 0x1

    .line 133
    :goto_0
    add-int/lit8 v0, v5, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 134
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->_factory:Lorg/antlr/v4/runtime/TokenFactory;

    new-instance v1, Lorg/antlr/v4/runtime/misc/Pair;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ListTokenSource;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lorg/antlr/v4/runtime/misc/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "EOF"

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ListTokenSource;->getLine()I

    move-result v7

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ListTokenSource;->getCharPositionInLine()I

    move-result v8

    invoke-interface/range {v0 .. v8}, Lorg/antlr/v4/runtime/TokenFactory;->create(Lorg/antlr/v4/runtime/misc/Pair;ILjava/lang/String;IIIII)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    iput-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->eofToken:Lorg/antlr/v4/runtime/Token;

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->eofToken:Lorg/antlr/v4/runtime/Token;

    .line 145
    :goto_1
    return-object v0

    :cond_1
    move v5, v2

    .line 127
    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    iget v1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    .line 141
    iget v1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->i:I

    iget-object v3, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_3

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 142
    iput-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->eofToken:Lorg/antlr/v4/runtime/Token;

    .line 145
    :cond_3
    iget v1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->i:I

    goto :goto_1
.end method

.method public setTokenFactory(Lorg/antlr/v4/runtime/TokenFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/TokenFactory",
            "<*>;)V"
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->_factory:Lorg/antlr/v4/runtime/TokenFactory;

    return-void
.end method
