.class public Lorg/antlr/v4/runtime/ListTokenSource;
.super Ljava/lang/Object;
.source "ListTokenSource.java"

# interfaces
.implements Lorg/antlr/v4/runtime/TokenSource;


# instance fields
.field private _factory:Lorg/antlr/v4/runtime/TokenFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/antlr/v4/runtime/TokenFactory<",
            "*>;"
        }
    .end annotation
.end field

.field protected eofToken:Lorg/antlr/v4/runtime/Token;

.field protected i:I

.field private final sourceName:Ljava/lang/String;

.field protected final tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
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

    if-eqz p1, :cond_e

    .line 83
    iput-object p1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    .line 84
    iput-object p2, p0, Lorg/antlr/v4/runtime/ListTokenSource;->sourceName:Ljava/lang/String;

    return-void

    .line 80
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "tokens cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCharPositionInLine()I
    .registers 4

    .line 92
    iget v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->i:I

    iget-object v1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 93
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    iget v1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result v0

    return v0

    .line 95
    :cond_19
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->eofToken:Lorg/antlr/v4/runtime/Token;

    if-eqz v0, :cond_22

    .line 96
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result v0

    return v0

    .line 98
    :cond_22
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5f

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

    if-eqz v1, :cond_4e

    .line 104
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_4e

    .line 106
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 110
    :cond_4e
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result v1

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getStopIndex()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getStartIndex()I

    move-result v0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_5f
    const/4 v0, 0x0

    return v0
.end method

.method public getInputStream()Lorg/antlr/v4/runtime/CharStream;
    .registers 3

    .line 189
    iget v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->i:I

    iget-object v1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 190
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    iget v1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    return-object v0

    .line 192
    :cond_19
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->eofToken:Lorg/antlr/v4/runtime/Token;

    if-eqz v0, :cond_22

    .line 193
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    return-object v0

    .line 195
    :cond_22
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3d

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

    return-object v0

    :cond_3d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine()I
    .registers 6

    .line 154
    iget v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->i:I

    iget-object v1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 155
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    iget v1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v0

    return v0

    .line 157
    :cond_19
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->eofToken:Lorg/antlr/v4/runtime/Token;

    if-eqz v0, :cond_22

    .line 158
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v0

    return v0

    .line 160
    :cond_22
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_56

    .line 163
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    .line 164
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v1

    .line 166
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56

    const/4 v2, 0x0

    .line 168
    :goto_43
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_56

    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_53

    add-int/lit8 v1, v1, 0x1

    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_56
    return v1
.end method

.method public getSourceName()Ljava/lang/String;
    .registers 2

    .line 208
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->sourceName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 212
    :cond_5
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ListTokenSource;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 214
    invoke-interface {v0}, Lorg/antlr/v4/runtime/CharStream;->getSourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 217
    :cond_10
    const-string v0, "List"

    return-object v0
.end method

.method public getTokenFactory()Lorg/antlr/v4/runtime/TokenFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/antlr/v4/runtime/TokenFactory<",
            "*>;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->_factory:Lorg/antlr/v4/runtime/TokenFactory;

    return-object v0
.end method

.method public nextToken()Lorg/antlr/v4/runtime/Token;
    .registers 13

    .line 123
    iget v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->i:I

    iget-object v1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-lt v0, v1, :cond_56

    .line 124
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->eofToken:Lorg/antlr/v4/runtime/Token;

    if-nez v0, :cond_53

    .line 126
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2f

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

    if-eq v0, v2, :cond_2f

    add-int/lit8 v0, v0, 0x1

    move v8, v0

    goto :goto_30

    :cond_2f
    const/4 v8, -0x1

    .line 133
    :goto_30
    add-int/lit8 v0, v8, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 134
    iget-object v3, p0, Lorg/antlr/v4/runtime/ListTokenSource;->_factory:Lorg/antlr/v4/runtime/TokenFactory;

    new-instance v4, Lorg/antlr/v4/runtime/misc/Pair;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ListTokenSource;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    invoke-direct {v4, p0, v0}, Lorg/antlr/v4/runtime/misc/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, -0x1

    const-string v6, "EOF"

    const/4 v7, 0x0

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ListTokenSource;->getLine()I

    move-result v10

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ListTokenSource;->getCharPositionInLine()I

    move-result v11

    invoke-interface/range {v3 .. v11}, Lorg/antlr/v4/runtime/TokenFactory;->create(Lorg/antlr/v4/runtime/misc/Pair;ILjava/lang/String;IIIII)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    iput-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->eofToken:Lorg/antlr/v4/runtime/Token;

    .line 137
    :cond_53
    iget-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->eofToken:Lorg/antlr/v4/runtime/Token;

    return-object v0

    .line 140
    :cond_56
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

    if-ne v1, v3, :cond_74

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v1

    if-ne v1, v2, :cond_74

    .line 142
    iput-object v0, p0, Lorg/antlr/v4/runtime/ListTokenSource;->eofToken:Lorg/antlr/v4/runtime/Token;

    .line 145
    :cond_74
    iget v1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->i:I

    return-object v0
.end method

.method public setTokenFactory(Lorg/antlr/v4/runtime/TokenFactory;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/TokenFactory<",
            "*>;)V"
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lorg/antlr/v4/runtime/ListTokenSource;->_factory:Lorg/antlr/v4/runtime/TokenFactory;

    return-void
.end method
