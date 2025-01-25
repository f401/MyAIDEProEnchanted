.class public Lcom/a/b/f/am;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/a/b/e/b/ab;IZ)Lcom/a/b/f/ap;
    .registers 6

    invoke-static {p0, p1, p2}, Lcom/a/b/f/ap;->a(Lcom/a/b/e/b/ab;IZ)Lcom/a/b/f/ap;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/f/am;->a(Lcom/a/b/f/ap;)V

    invoke-static {v0}, Lcom/a/b/f/u;->a(Lcom/a/b/f/ap;)Lcom/a/b/f/v;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/a/b/f/am;->a(Lcom/a/b/f/ap;Lcom/a/b/f/v;I)V

    new-instance v1, Lcom/a/b/f/as;

    invoke-direct {v1, v0}, Lcom/a/b/f/as;-><init>(Lcom/a/b/f/ap;)V

    invoke-virtual {v1}, Lcom/a/b/f/as;->run()V

    invoke-virtual {v0}, Lcom/a/b/f/ap;->a()V

    return-object v0
.end method

.method private static a(Lcom/a/b/f/ap;)V
    .registers 1

    invoke-static {p0}, Lcom/a/b/f/am;->b(Lcom/a/b/f/ap;)V

    invoke-static {p0}, Lcom/a/b/f/am;->c(Lcom/a/b/f/ap;)V

    invoke-static {p0}, Lcom/a/b/f/am;->d(Lcom/a/b/f/ap;)V

    return-void
.end method

.method public static a(Lcom/a/b/f/ap;I)V
    .registers 3

    invoke-static {p0}, Lcom/a/b/f/u;->a(Lcom/a/b/f/ap;)Lcom/a/b/f/v;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/a/b/f/am;->a(Lcom/a/b/f/ap;Lcom/a/b/f/v;I)V

    new-instance v0, Lcom/a/b/f/as;

    invoke-direct {v0, p0, p1}, Lcom/a/b/f/as;-><init>(Lcom/a/b/f/ap;I)V

    invoke-virtual {v0}, Lcom/a/b/f/as;->run()V

    return-void
.end method

.method private static a(Lcom/a/b/f/ap;Lcom/a/b/f/v;I)V
    .registers 16

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/a/b/f/ap;->g()I

    move-result v0

    sub-int v5, v0, p2

    new-instance v0, Lcom/a/b/f/g;

    invoke-direct {v0, p0}, Lcom/a/b/f/g;-><init>(Lcom/a/b/f/ap;)V

    invoke-virtual {v0}, Lcom/a/b/f/g;->a()[Lcom/a/b/f/h;

    move-result-object v6

    new-array v7, v5, [Ljava/util/BitSet;

    new-array v8, v5, [Ljava/util/BitSet;

    move v0, v3

    :goto_1d
    if-lt v0, v5, :cond_2a

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v3

    :goto_24
    if-lt v1, v2, :cond_3b

    move v2, v3

    :goto_27
    if-lt v2, v5, :cond_71

    return-void

    :cond_2a
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    aput-object v2, v7, v0

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    aput-object v2, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_3b
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_49
    :goto_49
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_53

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    :cond_53
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v10

    sub-int/2addr v10, p2

    if-ltz v10, :cond_49

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    sub-int/2addr v0, p2

    aget-object v0, v7, v0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_49

    :cond_71
    aget-object v0, v7, v2

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    :cond_79
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-gez v1, :cond_83

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_27

    :cond_83
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    aget-object v1, v6, v1

    iget-object v1, v1, Lcom/a/b/f/h;->a:Lcom/a/b/g/o;

    invoke-interface {v1}, Lcom/a/b/g/o;->b()Lcom/a/b/g/m;

    move-result-object v9

    :cond_8e
    :goto_8e
    invoke-interface {v9}, Lcom/a/b/g/m;->a()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {v9}, Lcom/a/b/g/m;->b()I

    move-result v10

    aget-object v1, v8, v2

    invoke-virtual {v1, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_8e

    aget-object v1, v8, v2

    invoke-virtual {v1, v10}, Ljava/util/BitSet;->set(I)V

    add-int v11, v2, p2

    invoke-virtual {p1, v10}, Lcom/a/b/f/v;->a(I)Lcom/a/b/e/b/z;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/a/b/e/b/z;->a(I)Lcom/a/b/e/b/u;

    move-result-object v12

    if-nez v12, :cond_c6

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/f/aj;

    invoke-virtual {v1, v11}, Lcom/a/b/f/aj;->a(I)V

    :goto_ba
    aget-object v1, v7, v2

    invoke-virtual {v1, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_8e

    invoke-virtual {v0, v10}, Ljava/util/BitSet;->set(I)V

    goto :goto_8e

    :cond_c6
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/f/aj;

    invoke-virtual {v1, v12}, Lcom/a/b/f/aj;->a(Lcom/a/b/e/b/u;)V

    goto :goto_ba
.end method

.method private static a(Lcom/a/b/f/aj;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/a/b/f/aj;->h()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    invoke-virtual {p0}, Lcom/a/b/f/aj;->i()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-le v1, v0, :cond_16

    if-le v2, v0, :cond_16

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static a(Lcom/a/b/f/aj;Lcom/a/b/f/aj;)Z
    .registers 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {p0}, Lcom/a/b/f/aj;->i()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-le v2, v1, :cond_27

    invoke-virtual {p1}, Lcom/a/b/f/aj;->h()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-le v2, v1, :cond_27

    move v0, v1

    :goto_26
    return v0

    :cond_27
    invoke-virtual {v0}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v2

    if-nez v2, :cond_37

    invoke-virtual {v0}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->d_()I

    move-result v0

    if-lez v0, :cond_43

    :cond_37
    invoke-virtual {p1}, Lcom/a/b/f/aj;->h()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-le v0, v1, :cond_43

    move v0, v1

    goto :goto_26

    :cond_43
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private static b(Lcom/a/b/f/ap;)V
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_b
    if-gez v1, :cond_e

    return-void

    :cond_e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-static {v0}, Lcom/a/b/f/am;->a(Lcom/a/b/f/aj;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v0}, Lcom/a/b/f/aj;->p()Lcom/a/b/f/aj;

    :cond_1d
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_b
.end method

.method private static c(Lcom/a/b/f/ap;)V
    .registers 9

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_c
    if-gez v3, :cond_f

    return-void

    :cond_f
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->r()Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-virtual {v0}, Lcom/a/b/f/aj;->h()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4e

    invoke-virtual {v0}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/f/an;

    invoke-virtual {v1}, Lcom/a/b/f/an;->j()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-virtual {v0}, Lcom/a/b/f/aj;->h()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    move v4, v2

    :goto_45
    if-gez v4, :cond_52

    invoke-virtual {v0}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4e
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_c

    :cond_52
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/b/f/aj;

    invoke-virtual {v2, v0}, Lcom/a/b/f/aj;->b(Lcom/a/b/f/aj;)Lcom/a/b/f/aj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/b/f/an;

    invoke-virtual {v2}, Lcom/a/b/f/an;->n()Lcom/a/b/f/an;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    move v4, v2

    goto :goto_45
.end method

.method private static d(Lcom/a/b/f/ap;)V
    .registers 8

    invoke-virtual {p0}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_b
    if-gez v4, :cond_e

    return-void

    :cond_e
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->i()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    move v3, v2

    :goto_24
    if-gez v3, :cond_2a

    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_b

    :cond_2a
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/b/f/aj;

    invoke-static {v0, v2}, Lcom/a/b/f/am;->a(Lcom/a/b/f/aj;Lcom/a/b/f/aj;)Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-virtual {v0, v2}, Lcom/a/b/f/aj;->b(Lcom/a/b/f/aj;)Lcom/a/b/f/aj;

    :cond_39
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    move v3, v2

    goto :goto_24
.end method
