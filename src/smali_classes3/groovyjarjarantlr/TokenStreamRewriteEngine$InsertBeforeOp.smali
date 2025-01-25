.class Lgroovyjarjarantlr/TokenStreamRewriteEngine$InsertBeforeOp;
.super Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgroovyjarjarantlr/TokenStreamRewriteEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InsertBeforeOp"
.end annotation


# virtual methods
.method public j6(Ljava/lang/StringBuffer;)I
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;->DW:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p0, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;->j6:I

    return p1
.end method
