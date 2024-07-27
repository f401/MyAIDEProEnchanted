.class Lgroovyjarjarantlr/TokenStreamRewriteEngine$ReplaceOp;
.super Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgroovyjarjarantlr/TokenStreamRewriteEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReplaceOp"
.end annotation


# instance fields
.field protected FH:I


# virtual methods
.method public j6(Ljava/lang/StringBuffer;)I
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;->DW:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget v0, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine$ReplaceOp;->FH:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
