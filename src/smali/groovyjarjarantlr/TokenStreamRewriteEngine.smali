.class public Lgroovyjarjarantlr/TokenStreamRewriteEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lgroovyjarjarantlr/TokenStream;
.implements Lgroovyjarjarantlr/ASdebug/IASDebugStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgroovyjarjarantlr/TokenStreamRewriteEngine$DeleteOp;,
        Lgroovyjarjarantlr/TokenStreamRewriteEngine$InsertBeforeOp;,
        Lgroovyjarjarantlr/TokenStreamRewriteEngine$ReplaceOp;,
        Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;
    }
.end annotation


# instance fields
.field protected DW:Ljava/util/Map;

.field protected FH:I

.field protected Hw:Lgroovyjarjarantlr/TokenStream;

.field protected j6:Ljava/util/List;

.field protected v5:Lgroovyjarjarantlr/collections/impl/BitSet;


# virtual methods
.method public DW()I
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public DW(II)Ljava/lang/String;
    .registers 4

    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p2}, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->j6(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6()I
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public j6(I)Lgroovyjarjarantlr/TokenWithIndex;
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->j6:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/TokenWithIndex;

    return-object v0
.end method

.method public j6(II)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    iget-object v1, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->j6:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->j6(I)Lgroovyjarjarantlr/TokenWithIndex;

    move-result-object v1

    invoke-virtual {v1}, Lgroovyjarjarantlr/CommonToken;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/String;II)Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->DW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0, p2, p3}, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->j6(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    move v3, p2

    :cond_2
    :goto_1
    if-ltz v3, :cond_6

    if-gt v3, p3, :cond_6

    iget-object v1, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->j6:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;

    :cond_3
    :goto_2
    iget v4, v1, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;->j6:I

    if-ge v4, v3, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_a

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;

    goto :goto_2

    :goto_3
    iget v2, v1, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;->j6:I

    if-ne v3, v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_4

    invoke-virtual {v1, v5}, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;->j6(Ljava/lang/StringBuffer;)I

    move-result v2

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_9

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;

    move v3, v2

    goto :goto_3

    :cond_4
    move v2, v4

    :cond_5
    if-gt v3, p3, :cond_2

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->j6(I)Lgroovyjarjarantlr/TokenWithIndex;

    move-result-object v1

    invoke-virtual {v1}, Lgroovyjarjarantlr/CommonToken;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;

    iget v3, v1, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;->j6:I

    invoke-virtual {p0}, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->DW()I

    move-result v4

    if-lt v3, v4, :cond_7

    invoke-virtual {v1, v5}, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;->j6(Ljava/lang/StringBuffer;)I

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    move v3, v2

    goto :goto_3

    :cond_a
    move v4, v2

    goto :goto_3
.end method

.method public nextToken()Lgroovyjarjarantlr/Token;
    .registers 4

    :cond_0
    iget-object v0, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->Hw:Lgroovyjarjarantlr/TokenStream;

    invoke-interface {v0}, Lgroovyjarjarantlr/TokenStream;->nextToken()Lgroovyjarjarantlr/Token;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/TokenWithIndex;

    if-eqz v0, :cond_2

    iget v1, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->FH:I

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/TokenWithIndex;->setIndex(I)V

    invoke-virtual {v0}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->j6:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v1, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->FH:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->FH:I

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->v5:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v2

    invoke-virtual {v1, v2}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->j6()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->DW(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
