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

    if-eqz p0, :cond_23

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_6
    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    if-eqz p2, :cond_14

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    new-instance v1, Lorg/c/a/a/b/d/a/ab;

    invoke-direct {v1, v0}, Lorg/c/a/a/b/d/a/ab;-><init>(I)V

    invoke-static {v1, p0}, Lorg/c/a/a/c/a/a/c/t;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v1, p1}, Lorg/c/a/a/c/a/a/c/t;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v1, p2}, Lorg/c/a/a/c/a/a/c/t;->a(Ljava/util/List;Ljava/util/List;)V

    return-object v1

    :cond_23
    const/4 v0, 0x0

    goto :goto_6
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

    :cond_a
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    :goto_10
    packed-switch v2, :pswitch_data_44

    :goto_13
    return-void

    :cond_14
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/k;

    invoke-interface {v0}, Lorg/c/a/a/c/a/a/a/b/a/k;->q_()I

    move-result v0

    if-lez v0, :cond_a

    if-eq v0, v1, :cond_a

    if-lez v1, :cond_29

    if-nez v2, :cond_2d

    if-le v0, v1, :cond_2b

    move v2, v3

    :cond_29
    :goto_29
    move v1, v0

    goto :goto_a

    :cond_2b
    move v2, v4

    goto :goto_29

    :cond_2d
    if-ne v2, v3, :cond_33

    if-ge v0, v1, :cond_29

    move v2, v5

    goto :goto_10

    :cond_33
    if-ne v2, v4, :cond_29

    if-le v0, v1, :cond_29

    move v2, v5

    goto :goto_10

    :pswitch_39  #0x2
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_13

    :pswitch_3d  #0x3
    sget-object v0, Lorg/c/a/a/c/a/a/c/t;->a:Lorg/c/a/a/c/a/a/c/u;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_13

    nop

    :pswitch_data_44
    .packed-switch 0x2
        :pswitch_39  #00000002
        :pswitch_3d  #00000003
    .end packed-switch
.end method

.method protected static a(Ljava/util/List;Ljava/util/List;)V
    .registers 10

    const/4 v3, 0x0

    if-eqz p1, :cond_15

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p1}, Lorg/c/a/a/c/a/a/c/t;->a(Ljava/util/List;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_15
    return-void

    :cond_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    move v5, v3

    move v6, v2

    move v1, v3

    move v0, v3

    move v4, v3

    :goto_23
    if-ge v4, v7, :cond_15

    :goto_25
    if-lt v4, v7, :cond_35

    move v2, v0

    move v3, v4

    :goto_29
    if-nez v2, :cond_63

    invoke-interface {p1, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v0, v2

    move v4, v3

    goto :goto_23

    :cond_35
    add-int/lit8 v3, v4, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/k;

    invoke-interface {v0}, Lorg/c/a/a/c/a/a/a/b/a/k;->q_()I

    move-result v0

    if-lez v0, :cond_66

    move v2, v0

    goto :goto_29

    :cond_45
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/k;

    invoke-interface {v0}, Lorg/c/a/a/c/a/a/a/b/a/k;->q_()I

    move-result v0

    if-le v0, v2, :cond_60

    :goto_51
    invoke-interface {p1, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    sub-int v0, v3, v5

    add-int/2addr v1, v0

    add-int/2addr v6, v0

    move v5, v3

    move v0, v2

    move v4, v3

    goto :goto_23

    :cond_60
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :cond_63
    if-lt v1, v6, :cond_45

    goto :goto_51

    :cond_66
    move v4, v3

    goto :goto_25
.end method
