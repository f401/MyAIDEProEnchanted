.class public Lorg/c/a/a/c/a/a/c/aj;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Lorg/c/a/a/b/d/b/f;)Lorg/c/a/a/b/d/b/n;
    .registers 12

    const/4 v6, 0x6

    new-instance v8, Ljava/util/StringTokenizer;

    const-string v0, "\u0001"

    const/4 v1, 0x1

    invoke-direct {v8, p0, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u0001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Lorg/c/a/a/b/d/b/f;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/n;

    invoke-static {v0}, Lorg/c/a/a/c/a/a/c/aj;->a(Lorg/c/a/a/b/d/b/n;)Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    :goto_25
    invoke-interface {p1}, Lorg/c/a/a/b/d/b/f;->j_()Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-interface {p1}, Lorg/c/a/a/b/d/b/f;->l_()Lorg/c/a/a/d/c;

    move-result-object v9

    const/4 v1, 0x0

    move-object v3, v0

    :goto_31
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_3e

    :goto_37
    return-object v3

    :cond_38
    new-instance v0, Lorg/c/a/a/b/d/b/ah;

    invoke-direct {v0, v1}, Lorg/c/a/a/b/d/b/ah;-><init>(Ljava/lang/String;)V

    goto :goto_25

    :cond_3e
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u0001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v9, v1}, Lorg/c/a/a/d/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/n;

    move-object v5, v0

    :goto_53
    new-instance v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v3}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v1

    sget-object v2, Lorg/c/a/a/b/d/e/i;->n:Lorg/c/a/a/b/d/e/i;

    const-string v4, "+"

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/b/d/b/g;-><init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Ljava/lang/String;Lorg/c/a/a/b/d/b/n;I)V

    move v1, v7

    move-object v3, v0

    goto :goto_31

    :cond_63
    new-instance v5, Lorg/c/a/a/b/d/b/ah;

    invoke-direct {v5, v0}, Lorg/c/a/a/b/d/b/ah;-><init>(Ljava/lang/String;)V

    move v7, v1

    goto :goto_53

    :cond_6a
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-interface {p1}, Lorg/c/a/a/b/d/b/f;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/n;

    move-object v5, v0

    :goto_7d
    new-instance v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v3}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v1

    sget-object v2, Lorg/c/a/a/b/d/e/i;->n:Lorg/c/a/a/b/d/e/i;

    const-string v4, "+"

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/b/d/b/g;-><init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Ljava/lang/String;Lorg/c/a/a/b/d/b/n;I)V

    move-object v3, v0

    :goto_8b
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_37

    :cond_92
    new-instance v5, Lorg/c/a/a/b/d/b/ah;

    invoke-direct {v5, v0}, Lorg/c/a/a/b/d/b/ah;-><init>(Ljava/lang/String;)V

    goto :goto_7d

    :cond_98
    sget-object v3, Lorg/c/a/a/b/d/b/ah;->a:Lorg/c/a/a/b/d/b/ah;

    goto :goto_37

    :cond_9b
    move-object v3, v0

    goto :goto_8b
.end method

.method public static a(Lorg/c/a/a/b/d/b/f;)Lorg/c/a/a/b/d/b/n;
    .registers 11

    invoke-interface {p0}, Lorg/c/a/a/b/d/b/f;->j_()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p0}, Lorg/c/a/a/b/d/b/f;->l_()Lorg/c/a/a/d/c;

    move-result-object v8

    invoke-virtual {v8}, Lorg/c/a/a/d/c;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_56

    invoke-interface {p0}, Lorg/c/a/a/b/d/b/f;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/n;

    invoke-static {v0}, Lorg/c/a/a/c/a/a/c/aj;->a(Lorg/c/a/a/b/d/b/n;)Lorg/c/a/a/b/d/b/n;

    move-result-object v3

    invoke-virtual {v8}, Lorg/c/a/a/d/c;->size()I

    move-result v9

    const/4 v0, 0x1

    move v7, v0

    :goto_21
    if-lt v7, v9, :cond_32

    :goto_23
    return-object v3

    :pswitch_24  #0x0
    sget-object v3, Lorg/c/a/a/b/d/b/ah;->a:Lorg/c/a/a/b/d/b/ah;

    goto :goto_23

    :pswitch_27  #0x1
    invoke-interface {p0}, Lorg/c/a/a/b/d/b/f;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/n;

    invoke-static {v0}, Lorg/c/a/a/c/a/a/c/aj;->a(Lorg/c/a/a/b/d/b/n;)Lorg/c/a/a/b/d/b/n;

    move-result-object v3

    goto :goto_23

    :cond_32
    new-instance v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v3}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v1

    sget-object v2, Lorg/c/a/a/b/d/e/i;->n:Lorg/c/a/a/b/d/e/i;

    const-string v4, "+"

    invoke-virtual {v8, v7}, Lorg/c/a/a/d/c;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/c/a/a/b/d/b/n;

    const/4 v6, 0x6

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/b/d/b/g;-><init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Ljava/lang/String;Lorg/c/a/a/b/d/b/n;I)V

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move-object v3, v0

    goto :goto_21

    :cond_4b
    invoke-interface {p0}, Lorg/c/a/a/b/d/b/f;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/n;

    invoke-static {v0}, Lorg/c/a/a/c/a/a/c/aj;->a(Lorg/c/a/a/b/d/b/n;)Lorg/c/a/a/b/d/b/n;

    move-result-object v3

    goto :goto_23

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_24  #00000000
        :pswitch_27  #00000001
    .end packed-switch
.end method

.method private static a(Lorg/c/a/a/b/d/b/n;)Lorg/c/a/a/b/d/b/n;
    .registers 8

    invoke-virtual {p0}, Lorg/c/a/a/b/d/b/n;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v0

    sget-object v1, Lorg/c/a/a/b/d/e/i;->n:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    new-instance v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {p0}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v1

    sget-object v2, Lorg/c/a/a/b/d/e/i;->n:Lorg/c/a/a/b/d/e/i;

    sget-object v3, Lorg/c/a/a/b/d/b/ah;->a:Lorg/c/a/a/b/d/b/ah;

    const-string v4, "+"

    const/4 v6, 0x6

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/b/d/b/g;-><init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Ljava/lang/String;Lorg/c/a/a/b/d/b/n;I)V

    :goto_1d
    return-object v0

    :cond_1e
    move-object v0, p0

    goto :goto_1d
.end method

.method public static a(Lorg/c/a/a/b/d/b/n;ILjava/lang/String;)Lorg/c/a/a/b/d/b/n;
    .registers 11

    const/4 v6, 0x4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/c/a/a/b/d/b/y;

    if-ne v0, v1, :cond_cc

    move-object v0, p0

    check-cast v0, Lorg/c/a/a/b/d/b/y;

    const-string v1, "append"

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/y;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cc

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/y;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v1

    if-eqz v1, :cond_cc

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/y;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v1

    invoke-interface {v1}, Lorg/c/a/a/b/d/b/f;->j_()Z

    move-result v1

    if-nez v1, :cond_cc

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/y;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v1

    invoke-interface {v1}, Lorg/c/a/a/b/d/b/f;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/y;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v2

    move-object v5, v1

    :goto_37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/c/a/a/b/d/b/y;

    if-eq v0, v1, :cond_6a

    :cond_3f
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/c/a/a/b/d/b/ab;

    if-ne v0, v1, :cond_cc

    move-object v1, v2

    check-cast v1, Lorg/c/a/a/b/d/b/ab;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/ab;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/a/b/d/e/l;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Ljava/lang/StringBuilder;"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    const-string v2, "Ljava/lang/StringBuffer;"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    :cond_62
    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/ab;->j()Lorg/c/a/a/b/d/b/f;

    move-result-object v0

    if-nez v0, :cond_a2

    move-object v0, v5

    :goto_69
    return-object v0

    :cond_6a
    move-object v7, v2

    check-cast v7, Lorg/c/a/a/b/d/b/y;

    const-string v0, "append"

    invoke-virtual {v7}, Lorg/c/a/a/b/d/b/y;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {v7}, Lorg/c/a/a/b/d/b/y;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {v7}, Lorg/c/a/a/b/d/b/y;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/a/b/d/b/f;->j_()Z

    move-result v0

    if-nez v0, :cond_3f

    new-instance v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v7}, Lorg/c/a/a/b/d/b/y;->e()I

    move-result v1

    sget-object v2, Lorg/c/a/a/b/d/e/i;->n:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v7}, Lorg/c/a/a/b/d/b/y;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v3

    check-cast v3, Lorg/c/a/a/b/d/b/n;

    const-string v4, "+"

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/b/d/b/g;-><init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Ljava/lang/String;Lorg/c/a/a/b/d/b/n;I)V

    invoke-virtual {v7}, Lorg/c/a/a/b/d/b/y;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v2

    move-object v5, v0

    goto :goto_37

    :cond_a2
    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/ab;->j()Lorg/c/a/a/b/d/b/f;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/a/b/d/b/f;->j_()Z

    move-result v0

    if-nez v0, :cond_cc

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/ab;->j()Lorg/c/a/a/b/d/b/f;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/a/b/d/b/f;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v3}, Lorg/c/a/a/b/d/b/n;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v0

    sget-object v2, Lorg/c/a/a/b/d/e/i;->n:Lorg/c/a/a/b/d/e/i;

    if-ne v0, v2, :cond_cd

    new-instance v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/ab;->e()I

    move-result v1

    sget-object v2, Lorg/c/a/a/b/d/e/i;->n:Lorg/c/a/a/b/d/e/i;

    const-string v4, "+"

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/b/d/b/g;-><init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Ljava/lang/String;Lorg/c/a/a/b/d/b/n;I)V

    goto :goto_69

    :cond_cc
    move-object v3, p0

    :cond_cd
    new-instance v0, Lorg/c/a/a/b/d/b/y;

    sget-object v2, Lorg/c/a/a/b/d/e/i;->n:Lorg/c/a/a/b/d/e/i;

    const-string v5, "toString"

    const-string v6, "()Ljava/lang/String;"

    move v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/b/d/b/y;-><init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69
.end method
