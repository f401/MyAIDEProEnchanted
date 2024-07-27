.class public Lorg/c/a/a/c/a/a/c/t;
.super Ljava/lang/Object;


# static fields
.field protected static final a:Lorg/c/a/a/c/a/a/c/u;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/c/a/a/c/a/a/c/u;

    invoke-direct {v0}, Lorg/c/a/a/c/a/a/c/u;-><init>()V

    sput-object v0, Lorg/c/a/a/c/a/a/c/t;->a:Lorg/c/a/a/c/a/a/c/u;

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/c/a/a/b/d/a/ab;
    .registers 5

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    new-instance v1, Lorg/c/a/a/b/d/a/ab;

    invoke-direct {v1, v0}, Lorg/c/a/a/b/d/a/ab;-><init>(I)V

    invoke-static {v1, p0}, Lorg/c/a/a/c/a/a/c/t;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v1, p1}, Lorg/c/a/a/c/a/a/c/t;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v1, p2}, Lorg/c/a/a/c/a/a/c/t;->a(Ljava/util/List;Ljava/util/List;)V

    return-object v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static a(Ljava/util/List;)V
    .registers 8

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    move v2, v0

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    packed-switch v2, :pswitch_data_0

    :goto_2
    return-void

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/k;

    invoke-interface {v0}, Lorg/c/a/a/c/a/a/a/b/a/k;->q_()I

    move-result v0

    if-lez v0, :cond_0

    if-eq v0, v1, :cond_0

    if-lez v1, :cond_2

    if-nez v2, :cond_4

    if-le v0, v1, :cond_3

    move v2, v3

    :cond_2
    :goto_3
    move v1, v0

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_3

    :cond_4
    if-ne v2, v3, :cond_5

    if-ge v0, v1, :cond_2

    move v2, v5

    goto :goto_1

    :cond_5
    if-ne v2, v4, :cond_2

    if-le v0, v1, :cond_2

    move v2, v5

    goto :goto_1

    :pswitch_0
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_2

    :pswitch_1
    sget-object v0, Lorg/c/a/a/c/a/a/c/t;->a:Lorg/c/a/a/c/a/a/c/u;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static a(Ljava/util/List;Ljava/util/List;)V
    .registers 10

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/c/a/a/c/a/a/c/t;->a(Ljava/util/List;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    move v5, v3

    move v6, v2

    move v1, v3

    move v0, v3

    move v4, v3

    :goto_0
    if-ge v4, v7, :cond_0

    :goto_1
    if-lt v4, v7, :cond_2

    move v2, v0

    move v3, v4

    :goto_2
    if-nez v2, :cond_5

    invoke-interface {p1, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v0, v2

    move v4, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v4, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/k;

    invoke-interface {v0}, Lorg/c/a/a/c/a/a/a/b/a/k;->q_()I

    move-result v0

    if-lez v0, :cond_6

    move v2, v0

    goto :goto_2

    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/k;

    invoke-interface {v0}, Lorg/c/a/a/c/a/a/a/b/a/k;->q_()I

    move-result v0

    if-le v0, v2, :cond_4

    :goto_3
    invoke-interface {p1, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    sub-int v0, v3, v5

    add-int/2addr v1, v0

    add-int/2addr v6, v0

    move v5, v3

    move v0, v2

    move v4, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :cond_5
    if-lt v1, v6, :cond_3

    goto :goto_3

    :cond_6
    move v4, v3

    goto :goto_1
.end method
