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

    move-result-object p1

    return-object p1
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

    move-result-object p1

    check-cast p1, Lgroovyjarjarantlr/TokenWithIndex;

    return-object p1
.end method

.method public j6(II)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_5
    if-ltz p1, :cond_1f

    if-gt p1, p2, :cond_1f

    iget-object v1, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->j6:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1f

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->j6(I)Lgroovyjarjarantlr/TokenWithIndex;

    move-result-object v1

    invoke-virtual {v1}, Lgroovyjarjarantlr/CommonToken;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/String;II)Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->DW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_8f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_8f

    :cond_12
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :cond_18
    :goto_18
    if-ltz p2, :cond_70

    if-gt p2, p3, :cond_70

    iget-object v2, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->j6:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_70

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_60

    :goto_2a
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;

    :cond_30
    iget v3, v2, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;->j6:I

    if-ge v3, p2, :cond_43

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_43

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_30

    goto :goto_2a

    :cond_43
    :goto_43
    iget v3, v2, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;->j6:I

    if-ne p2, v3, :cond_60

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_60

    invoke-virtual {v2, v0}, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;->j6(Ljava/lang/StringBuffer;)I

    move-result p2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_43

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;

    goto :goto_43

    :cond_60
    if-gt p2, p3, :cond_18

    invoke-virtual {p0, p2}, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->j6(I)Lgroovyjarjarantlr/TokenWithIndex;

    move-result-object v2

    invoke-virtual {v2}, Lgroovyjarjarantlr/CommonToken;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_18

    :cond_70
    :goto_70
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_8a

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;

    iget p3, p2, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;->j6:I

    invoke-virtual {p0}, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->DW()I

    move-result v2

    if-lt p3, v2, :cond_87

    invoke-virtual {p2, v0}, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;->j6(Ljava/lang/StringBuffer;)I

    :cond_87
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    :cond_8a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8f
    :goto_8f
    invoke-virtual {p0, p2, p3}, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->j6(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nextToken()Lgroovyjarjarantlr/Token;
    .registers 4

    :cond_0
    iget-object v0, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->Hw:Lgroovyjarjarantlr/TokenStream;

    invoke-interface {v0}, Lgroovyjarjarantlr/TokenStream;->nextToken()Lgroovyjarjarantlr/Token;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/TokenWithIndex;

    if-eqz v0, :cond_20

    iget v1, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->FH:I

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/TokenWithIndex;->setIndex(I)V

    invoke-virtual {v0}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1b

    iget-object v1, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->j6:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    iget v1, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->FH:I

    add-int/2addr v1, v2

    iput v1, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->FH:I

    :cond_20
    if-eqz v0, :cond_2e

    iget-object v1, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->v5:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v2

    invoke-virtual {v1, v2}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2e
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->j6()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lgroovyjarjarantlr/TokenStreamRewriteEngine;->DW(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
