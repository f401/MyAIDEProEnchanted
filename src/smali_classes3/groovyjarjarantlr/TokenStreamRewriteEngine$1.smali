.class Lgroovyjarjarantlr/TokenStreamRewriteEngine$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;

    check-cast p2, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;

    iget p1, p1, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;->j6:I

    iget p2, p2, Lgroovyjarjarantlr/TokenStreamRewriteEngine$RewriteOperation;->j6:I

    if-ge p1, p2, :cond_c

    const/4 p1, -0x1

    return p1

    :cond_c
    if-le p1, p2, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method
