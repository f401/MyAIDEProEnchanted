.class public Lorg/c/a/a/c/a/a/d/ab;
.super Lorg/c/a/a/c/a/a/d/a;


# instance fields
.field protected a:Lorg/c/a/a/c/a/a/d/ac;

.field protected b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/c/a/a/c/a/a/d/a;-><init>()V

    new-instance v0, Lorg/c/a/a/c/a/a/d/ac;

    invoke-direct {v0, p0}, Lorg/c/a/a/c/a/a/d/ac;-><init>(Lorg/c/a/a/c/a/a/d/ab;)V

    iput-object v0, p0, Lorg/c/a/a/c/a/a/d/ab;->a:Lorg/c/a/a/c/a/a/d/ac;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/c/a/a/d/ab;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected a(Lorg/c/a/a/b/d/b/n;)Lorg/c/a/a/b/d/b/n;
    .registers 13

    const/4 v10, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/c/a/a/b/d/b/y;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    move-object v8, p1

    check-cast v8, Lorg/c/a/a/b/d/b/y;

    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/ab;->b:Ljava/util/HashMap;

    invoke-virtual {v8}, Lorg/c/a/a/b/d/b/y;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/n;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v1

    invoke-interface {v1}, Lorg/c/a/a/b/d/e/l;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/c/a/a/b/d/b/y;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/c/a/a/b/d/b/y;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/a/l;->g()Lorg/c/a/a/b/d/d/b;

    move-result-object v1

    invoke-interface {v1}, Lorg/c/a/a/b/d/d/b;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/c/a/a/b/d/d/p;

    if-ne v2, v3, :cond_2

    check-cast v1, Lorg/c/a/a/b/d/d/p;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/d/p;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/a/l;->s_()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const-class v0, Lorg/c/a/a/b/d/b/q;

    if-ne v2, v0, :cond_4

    move-object v6, v1

    check-cast v6, Lorg/c/a/a/b/d/b/q;

    if-nez v3, :cond_3

    invoke-virtual {v6}, Lorg/c/a/a/b/d/b/q;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v3

    :goto_2
    new-instance v0, Lorg/c/a/a/b/d/b/q;

    invoke-virtual {v8}, Lorg/c/a/a/b/d/b/y;->e()I

    move-result v1

    invoke-virtual {v8}, Lorg/c/a/a/b/d/b/y;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v2

    invoke-virtual {v6}, Lorg/c/a/a/b/d/b/q;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lorg/c/a/a/b/d/b/q;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lorg/c/a/a/b/d/b/q;->j()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/b/d/b/q;-><init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/c/a/a/b/d/d/h;

    if-ne v2, v3, :cond_0

    check-cast v1, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {v8}, Lorg/c/a/a/b/d/b/y;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/a/b/d/b/f;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/n;

    move-object v3, v0

    goto :goto_2

    :cond_4
    const-class v0, Lorg/c/a/a/b/d/b/y;

    if-ne v2, v0, :cond_7

    move-object v6, v1

    check-cast v6, Lorg/c/a/a/b/d/b/y;

    invoke-virtual {v6}, Lorg/c/a/a/b/d/b/y;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/c/a/a/b/d/b/ae;

    if-ne v0, v1, :cond_5

    new-instance v0, Lorg/c/a/a/b/d/b/y;

    invoke-virtual {v8}, Lorg/c/a/a/b/d/b/y;->e()I

    move-result v1

    invoke-virtual {v6}, Lorg/c/a/a/b/d/b/y;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v2

    invoke-virtual {v6}, Lorg/c/a/a/b/d/b/y;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v3

    invoke-virtual {v6}, Lorg/c/a/a/b/d/b/y;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lorg/c/a/a/b/d/b/y;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lorg/c/a/a/b/d/b/y;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Lorg/c/a/a/b/d/b/y;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lorg/c/a/a/b/d/b/y;-><init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/b/f;)V

    move-object p1, v0

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x0

    invoke-virtual {v8}, Lorg/c/a/a/b/d/b/y;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/c/a/a/b/d/b/f;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-interface {v3}, Lorg/c/a/a/b/d/b/f;->l_()Lorg/c/a/a/d/c;

    move-result-object v0

    new-instance v7, Lorg/c/a/a/b/d/b/p;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->size()I

    move-result v1

    invoke-virtual {v0, v10, v1}, Lorg/c/a/a/d/c;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/c/a/a/b/d/b/p;-><init>(Ljava/util/Collection;)V

    :cond_6
    :goto_3
    :pswitch_0
    new-instance v0, Lorg/c/a/a/b/d/b/y;

    invoke-virtual {v8}, Lorg/c/a/a/b/d/b/y;->e()I

    move-result v1

    invoke-virtual {v6}, Lorg/c/a/a/b/d/b/y;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v2

    invoke-interface {v3}, Lorg/c/a/a/b/d/b/f;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v6}, Lorg/c/a/a/b/d/b/y;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lorg/c/a/a/b/d/b/y;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lorg/c/a/a/b/d/b/y;->l()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lorg/c/a/a/b/d/b/y;-><init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/b/f;)V

    move-object p1, v0

    goto/16 :goto_0

    :pswitch_1
    invoke-interface {v3}, Lorg/c/a/a/b/d/b/f;->l_()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/c/a/a/d/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/f;

    move-object v7, v0

    goto :goto_3

    :cond_7
    const-class v0, Lorg/c/a/a/b/d/b/g;

    if-ne v2, v0, :cond_9

    move-object v7, v1

    check-cast v7, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v7}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/c/a/a/b/d/b/q;

    if-ne v3, v10, :cond_8

    new-instance p1, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v8}, Lorg/c/a/a/b/d/b/y;->e()I

    move-result v9

    invoke-virtual {v8}, Lorg/c/a/a/b/d/b/y;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v10

    new-instance v0, Lorg/c/a/a/b/d/b/q;

    invoke-virtual {v5}, Lorg/c/a/a/b/d/b/q;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v1

    invoke-virtual {v5}, Lorg/c/a/a/b/d/b/q;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v2

    invoke-virtual {v5}, Lorg/c/a/a/b/d/b/q;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lorg/c/a/a/b/d/b/q;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lorg/c/a/a/b/d/b/q;->j()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/d/b/q;-><init>(Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/c/a/a/b/d/b/g;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lorg/c/a/a/b/d/b/y;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v1

    invoke-interface {v1}, Lorg/c/a/a/b/d/b/f;->h()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v7}, Lorg/c/a/a/b/d/b/g;->b()I

    move-result v7

    move-object v1, p1

    move v2, v9

    move-object v3, v10

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lorg/c/a/a/b/d/b/g;-><init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Ljava/lang/String;Lorg/c/a/a/b/d/b/n;I)V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x2

    if-ne v3, v0, :cond_0

    invoke-virtual {v8}, Lorg/c/a/a/b/d/b/y;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/a/b/d/b/f;->l_()Lorg/c/a/a/d/c;

    move-result-object v6

    new-instance p1, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v8}, Lorg/c/a/a/b/d/b/y;->e()I

    move-result v9

    invoke-virtual {v8}, Lorg/c/a/a/b/d/b/y;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v8

    new-instance v0, Lorg/c/a/a/b/d/b/q;

    invoke-virtual {v5}, Lorg/c/a/a/b/d/b/q;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lorg/c/a/a/d/c;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v5}, Lorg/c/a/a/b/d/b/q;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lorg/c/a/a/b/d/b/q;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lorg/c/a/a/b/d/b/q;->j()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/d/b/q;-><init>(Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/c/a/a/b/d/b/g;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v10}, Lorg/c/a/a/d/c;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v7}, Lorg/c/a/a/b/d/b/g;->b()I

    move-result v7

    move-object v1, p1

    move v2, v9

    move-object v3, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lorg/c/a/a/b/d/b/g;-><init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Ljava/lang/String;Lorg/c/a/a/b/d/b/n;I)V

    goto/16 :goto_0

    :cond_9
    const-class v0, Lorg/c/a/a/b/d/b/af;

    if-ne v2, v0, :cond_b

    move-object v6, v1

    check-cast v6, Lorg/c/a/a/b/d/b/af;

    invoke-virtual {v6}, Lorg/c/a/a/b/d/b/af;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/c/a/a/b/d/b/q;

    if-nez v3, :cond_a

    invoke-virtual {v5}, Lorg/c/a/a/b/d/b/q;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v2

    :goto_4
    new-instance p1, Lorg/c/a/a/b/d/b/af;

    invoke-virtual {v8}, Lorg/c/a/a/b/d/b/y;->e()I

    move-result v7

    new-instance v0, Lorg/c/a/a/b/d/b/q;

    invoke-virtual {v8}, Lorg/c/a/a/b/d/b/y;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v1

    invoke-virtual {v5}, Lorg/c/a/a/b/d/b/q;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lorg/c/a/a/b/d/b/q;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lorg/c/a/a/b/d/b/q;->j()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/d/b/q;-><init>(Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/c/a/a/b/d/b/af;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v7, v0, v1}, Lorg/c/a/a/b/d/b/af;-><init>(ILorg/c/a/a/b/d/b/n;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v8}, Lorg/c/a/a/b/d/b/y;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/a/b/d/b/f;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/n;

    move-object v2, v0

    goto :goto_4

    :cond_b
    const-class v0, Lorg/c/a/a/b/d/b/ag;

    if-ne v2, v0, :cond_d

    check-cast v1, Lorg/c/a/a/b/d/b/ag;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/ag;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/c/a/a/b/d/b/q;

    if-nez v3, :cond_c

    invoke-virtual {v5}, Lorg/c/a/a/b/d/b/q;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v2

    :goto_5
    new-instance p1, Lorg/c/a/a/b/d/b/ag;

    invoke-virtual {v8}, Lorg/c/a/a/b/d/b/y;->e()I

    move-result v6

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/ag;->d()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lorg/c/a/a/b/d/b/q;

    invoke-virtual {v8}, Lorg/c/a/a/b/d/b/y;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v1

    invoke-virtual {v5}, Lorg/c/a/a/b/d/b/q;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lorg/c/a/a/b/d/b/q;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lorg/c/a/a/b/d/b/q;->j()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/d/b/q;-><init>(Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, v6, v7, v0}, Lorg/c/a/a/b/d/b/ag;-><init>(ILjava/lang/String;Lorg/c/a/a/b/d/b/n;)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v8}, Lorg/c/a/a/b/d/b/y;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/a/b/d/b/f;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/n;

    move-object v2, v0

    goto :goto_5

    :cond_d
    const-class v0, Lorg/c/a/a/b/d/b/t;

    if-ne v2, v0, :cond_0

    move-object p1, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lorg/c/a/a/c/a/a/a/b/a/b;)Z
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/ab;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/ab;->a:Lorg/c/a/a/c/a/a/d/ac;

    invoke-virtual {v0, p1}, Lorg/c/a/a/c/a/a/d/ac;->a(Lorg/c/a/a/b/d/a/i;)V

    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/ab;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
