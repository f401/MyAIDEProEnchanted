.class Lgroovyjarjarantlr/TokenStreamRewriteEngine$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;

    check-cast p2, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;

    iget v0, p1, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;->j6:I

    iget v1, p2, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;->j6:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
