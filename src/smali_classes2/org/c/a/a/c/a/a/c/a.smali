.class public Lorg/c/a/a/c/a/a/c/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/util/List;)V
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/h;

    move-object v1, v0

    move v6, v2

    move v5, v2

    :goto_0
    if-lt v3, v4, :cond_1

    invoke-static {p0, v1, v5, v6}, Lorg/c/a/a/c/a/a/c/a;->a(Ljava/util/List;Lorg/c/a/a/c/a/a/a/b/a/h;II)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/h;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/b/a/h;->q_()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/b/a/h;->a()I

    move-result v2

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/a/h;->a()I

    move-result v7

    if-ne v2, v7, :cond_2

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/b/a/h;->c()Lorg/c/a/a/b/d/e/l;

    move-result-object v2

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/a/h;->c()Lorg/c/a/a/b/d/e/l;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v2, v3

    move v5, v3

    move v6, v3

    :goto_1
    add-int/lit8 v3, v2, 0x1

    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/a/h;->q_()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/b/a/h;->q_()I

    move-result v7

    if-ne v2, v7, :cond_4

    move-object v0, v1

    move v2, v3

    move v6, v3

    goto :goto_1

    :cond_4
    invoke-static {p0, v1, v5, v6}, Lorg/c/a/a/c/a/a/c/a;->a(Ljava/util/List;Lorg/c/a/a/c/a/a/a/b/a/h;II)V

    sub-int v2, v6, v5

    sub-int v1, v3, v2

    sub-int v3, v4, v2

    move v2, v1

    move v4, v3

    move v5, v1

    move v6, v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    move v2, v3

    goto :goto_1
.end method

.method protected static a(Ljava/util/List;Lorg/c/a/a/c/a/a/a/b/a/h;II)V
    .registers 8

    if-ge p2, p3, :cond_0

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p3, 0x1

    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/c/a/a/b/d/a/s;

    sub-int v0, p3, p2

    invoke-direct {v2, v0}, Lorg/c/a/a/b/d/a/s;-><init>(I)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/b/a/h;->d()Lorg/c/a/a/b/d/a/d;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/c/a/a/b/d/a/s;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Lorg/c/a/a/c/a/a/a/b/a/h;->a(Lorg/c/a/a/b/d/a/d;)V

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/h;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/a/h;->d()Lorg/c/a/a/b/d/a/d;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/c/a/a/b/d/a/s;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
