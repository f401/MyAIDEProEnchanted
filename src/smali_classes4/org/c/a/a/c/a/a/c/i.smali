.class public Lorg/c/a/a/c/a/a/c/i;
.super Ljava/lang/Object;


# static fields
.field protected static final a:Lorg/c/a/a/c/a/a/c/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/c/a/a/c/a/a/c/j;

    invoke-direct {v0}, Lorg/c/a/a/c/a/a/c/j;-><init>()V

    sput-object v0, Lorg/c/a/a/c/a/a/c/i;->a:Lorg/c/a/a/c/a/a/c/j;

    return-void
.end method

.method private static a(Lorg/c/a/a/c/a/a/a/a/a;)I
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v2

    const/16 v3, 0x200

    if-ne v2, v3, :cond_3d

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1b
    :goto_1b
    return v1

    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_34

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {v0}, Lorg/c/a/a/c/a/a/c/i;->c(Lorg/c/a/a/c/a/a/a/a/a;)I

    move-result v0

    :goto_30
    if-ge v1, v0, :cond_15

    move v1, v0

    goto :goto_15

    :cond_34
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {v0}, Lorg/c/a/a/c/a/a/c/i;->b(Lorg/c/a/a/c/a/a/a/a/a;)I

    move-result v0

    goto :goto_30

    :cond_3d
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_1b

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    move-object v3, v0

    :cond_4f
    :goto_4f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5f

    if-eqz v2, :cond_1b

    invoke-static {v2}, Lorg/c/a/a/c/a/a/c/i;->b(Lorg/c/a/a/c/a/a/a/a/a;)I

    move-result v0

    if-ge v1, v0, :cond_1b

    move v1, v0

    goto :goto_1b

    :cond_5f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    if-eqz v3, :cond_75

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v5

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v6

    if-ge v5, v6, :cond_4f

    :cond_75
    move-object v2, v3

    move-object v3, v0

    goto :goto_4f
.end method

.method protected static a(ILjava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Ljava/util/BitSet;
    .registers 5

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p0}, Ljava/util/BitSet;-><init>(I)V

    invoke-static {v0, p2, p3}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    if-nez p1, :cond_c

    move-object p1, v0

    :goto_b
    return-object p1

    :cond_c
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    goto :goto_b
.end method

.method public static a(Lorg/c/a/a/c/a/a/a/a/f;[Ljava/util/BitSet;)Ljava/util/List;
    .registers 15

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/f;->b()Lorg/c/a/a/d/c;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v7, v6, [Ljava/util/BitSet;

    move v2, v3

    :goto_c
    if-lt v2, v6, :cond_1f

    move v4, v3

    :goto_f
    if-lt v4, v6, :cond_9c

    new-instance v4, Lorg/c/a/a/d/c;

    invoke-direct {v4}, Lorg/c/a/a/d/c;-><init>()V

    move v2, v3

    :goto_17
    if-lt v2, v6, :cond_12b

    sget-object v0, Lorg/c/a/a/c/a/a/c/i;->a:Lorg/c/a/a/c/a/a/c/j;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v4

    :cond_1f
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    aget-object v4, p1, v2

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v1

    sparse-switch v1, :sswitch_data_1e6

    :cond_2e
    :goto_2e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :sswitch_32
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    if-ltz v1, :cond_4e

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_4e

    aget-object v8, v7, v1

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v9

    invoke-static {v6, v8, v0, v9}, Lorg/c/a/a/c/a/a/c/i;->a(ILjava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Ljava/util/BitSet;

    move-result-object v8

    aput-object v8, v7, v1

    :cond_4e
    :sswitch_4e
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    if-ltz v1, :cond_2e

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2e

    aget-object v4, v7, v1

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v8

    invoke-static {v6, v4, v0, v8}, Lorg/c/a/a/c/a/a/c/i;->a(ILjava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Ljava/util/BitSet;

    move-result-object v0

    aput-object v0, v7, v1

    goto :goto_2e

    :sswitch_6b
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_73
    :goto_73
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v9

    invoke-virtual {v9}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v9

    if-ltz v9, :cond_73

    invoke-virtual {v4, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_73

    aget-object v10, v7, v9

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {v6, v10, v0, v1}, Lorg/c/a/a/c/a/a/c/i;->a(ILjava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Ljava/util/BitSet;

    move-result-object v1

    aput-object v1, v7, v9

    goto :goto_73

    :cond_9c
    aget-object v0, v7, v4

    if-eqz v0, :cond_f6

    aget-object v8, v7, v4

    const/4 v2, -0x1

    move v1, v3

    :goto_a4
    if-lt v1, v6, :cond_fb

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    aget-object v9, p1, v4

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v1

    const/16 v10, 0x200

    if-ne v1, v10, :cond_f6

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    if-eq v2, v1, :cond_f6

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/d/c;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    if-ge v2, v1, :cond_f6

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v10

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_e0
    :goto_e0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_111

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/util/BitSet;->clear(I)V

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    aput-object v8, v7, v0

    const/4 v0, 0x0

    aput-object v0, v7, v4

    :cond_f6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_f

    :cond_fb
    invoke-virtual {v8, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1e3

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    if-ge v2, v0, :cond_1e3

    :goto_10d
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_a4

    :cond_111
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-nez v12, :cond_e0

    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v1, v0, v2}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e0

    :cond_12b
    aget-object v0, v7, v2

    if-eqz v0, :cond_1c6

    aget-object v8, v7, v2

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    aget-object v1, p1, v2

    new-instance v9, Ljava/util/BitSet;

    invoke-direct {v9, v6}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    invoke-virtual {v9, v3, v6}, Ljava/util/BitSet;->flip(II)V

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v1

    const v10, 0x8000

    if-ne v1, v10, :cond_1db

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    if-eq v1, v0, :cond_1d3

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    if-eq v1, v0, :cond_1d3

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1d3

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1d3

    new-instance v10, Ljava/util/BitSet;

    invoke-direct {v10, v6}, Ljava/util/BitSet;-><init>(I)V

    new-instance v11, Ljava/util/BitSet;

    invoke-direct {v11, v6}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {v10, v8, v1, v0}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/BitSet;Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {v11, v8, v1, v0}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/BitSet;Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v10}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    invoke-virtual {v1, v11}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    new-instance v12, Ljava/util/BitSet;

    invoke-direct {v12, v6}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v12, v2}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1, v12}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cb

    invoke-static {v5, v0, v9, v8}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/List;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;Ljava/util/BitSet;)Lorg/c/a/a/c/a/a/a/a/h;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v3, v6}, Ljava/util/BitSet;->flip(II)V

    invoke-virtual {v9, v11}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->set(I)V

    invoke-static {v5, v0, v9, v10}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/List;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;Ljava/util/BitSet;)Lorg/c/a/a/c/a/a/a/a/h;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    :cond_1c6
    :goto_1c6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_17

    :cond_1cb
    invoke-static {v5, v0, v9, v8}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/List;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;Ljava/util/BitSet;)Lorg/c/a/a/c/a/a/a/a/h;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    goto :goto_1c6

    :cond_1d3
    invoke-static {v5, v0, v9, v8}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/List;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;Ljava/util/BitSet;)Lorg/c/a/a/c/a/a/a/a/h;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    goto :goto_1c6

    :cond_1db
    invoke-static {v5, v0, v9, v8}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/List;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;Ljava/util/BitSet;)Lorg/c/a/a/c/a/a/a/a/h;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    goto :goto_1c6

    :cond_1e3
    move v0, v2

    goto/16 :goto_10d

    :sswitch_data_1e6
    .sparse-switch
        0x4 -> :sswitch_4e
        0x40 -> :sswitch_6b
        0x8000 -> :sswitch_32
        0x4000000 -> :sswitch_4e
    .end sparse-switch
.end method

.method protected static a(Ljava/util/Set;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 7

    const v4, 0x34433e85

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_23

    :cond_14
    :goto_14
    return-object p1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_12

    :cond_23
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_47

    const/4 v0, 0x0

    :goto_2e
    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    if-ge v1, v2, :cond_14

    const/16 v1, 0x38

    invoke-virtual {p1, v1}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    goto :goto_14

    :cond_47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v4}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    if-eq v0, p1, :cond_27

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_2e

    :cond_60
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v1

    const v3, 0x8000

    if-ne v1, v3, :cond_27

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    if-eq v1, p1, :cond_77

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    move-object v0, v1

    goto :goto_2e

    :cond_77
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    if-eq v0, p1, :cond_27

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_2e

    :cond_84
    invoke-virtual {p1, v4}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    if-ne v1, v0, :cond_14

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    goto :goto_14
.end method

.method protected static a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->a()Lorg/c/a/a/c/a/a/a/a/f;

    move-result-object v1

    const/high16 v2, 0x40000000  # 2.0f

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v3

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/c/a/a/c/a/a/a/a/f;->a(IIILjava/util/HashSet;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Lorg/c/a/a/c/a/a/a/a/h;)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 13

    const/4 v11, 0x1

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/h;->a()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/h;->b()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/h;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v1

    invoke-static {v4, v0}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/Set;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->a()Lorg/c/a/a/c/a/a/a/a/f;

    move-result-object v0

    const/high16 v2, 0x400000

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v6

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v7

    invoke-virtual {v0, v2, v6, v7}, Lorg/c/a/a/c/a/a/a/a/f;->a(III)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v6

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_56

    invoke-virtual {v6, v3}, Lorg/c/a/a/c/a/a/a/a/a;->d(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v1

    :cond_3d
    :goto_3d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_70

    if-eqz v5, :cond_4b

    invoke-virtual {v6, v5}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v5, v4, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    :cond_4b
    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v6, v2}, Lorg/c/a/a/c/a/a/a/a/a;->c(I)V

    return-object v6

    :cond_56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2f

    invoke-virtual {v0, v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2f

    :cond_70
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    const v1, 0x34433e85

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_b6

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    if-ne v1, v3, :cond_96

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->e:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    :cond_8a
    :goto_8a
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v1

    if-ge v2, v1, :cond_3d

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    move v2, v0

    goto :goto_3d

    :cond_96
    if-ne v1, v5, :cond_9e

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_8a

    :cond_9e
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8a

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-le v8, v11, :cond_8a

    invoke-static {v0, v1}, Lorg/c/a/a/c/a/a/c/i;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_8a

    :cond_b6
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v1

    const v8, 0x8000

    if-ne v1, v8, :cond_117

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    if-ne v1, v3, :cond_d6

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->e:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    :cond_ca
    :goto_ca
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    if-ne v1, v3, :cond_f6

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->e:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->b(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_8a

    :cond_d6
    if-ne v1, v5, :cond_de

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_ca

    :cond_de
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ca

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-le v8, v11, :cond_ca

    invoke-static {v0, v1}, Lorg/c/a/a/c/a/a/c/i;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_ca

    :cond_f6
    if-ne v1, v5, :cond_fe

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->b(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_8a

    :cond_fe
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8a

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-le v8, v11, :cond_8a

    invoke-static {v0, v1}, Lorg/c/a/a/c/a/a/c/i;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->b(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto/16 :goto_8a

    :cond_117
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v1

    const/16 v8, 0x40

    if-ne v1, v8, :cond_8a

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_127
    :goto_127
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v9

    if-ne v9, v3, :cond_13f

    sget-object v9, Lorg/c/a/a/c/a/a/a/a/a;->e:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v1, v9}, Lorg/c/a/a/c/a/a/a/a/e;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_127

    :cond_13f
    if-ne v9, v5, :cond_147

    sget-object v9, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v1, v9}, Lorg/c/a/a/c/a/a/a/a/e;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_127

    :cond_147
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_127

    invoke-virtual {v9}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v10

    if-le v10, v11, :cond_127

    invoke-static {v0, v9}, Lorg/c/a/a/c/a/a/c/i;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/c/a/a/c/a/a/a/a/e;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_127
.end method

.method protected static a(Ljava/util/List;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;Ljava/util/BitSet;)Lorg/c/a/a/c/a/a/a/a/h;
    .registers 12

    const v7, 0x8000

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, -0x1

    move v3, v2

    :goto_a
    if-lt v3, v4, :cond_64

    invoke-virtual {p3}, Ljava/util/BitSet;->clear()V

    invoke-static {p3, p2, p1, v1}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/BitSet;Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;I)V

    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(I)V

    :goto_1b
    if-lt v2, v4, :cond_7b

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v2

    if-ne v2, v7, :cond_37

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_8e

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    :cond_37
    :goto_37
    sget-object v2, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, v2, :cond_18c

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :cond_40
    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a1

    :goto_46
    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    if-eq v2, v0, :cond_5e

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_58
    :goto_58
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15c

    :cond_5e
    new-instance v0, Lorg/c/a/a/c/a/a/a/a/h;

    invoke-direct {v0, p1, v5, v2}, Lorg/c/a/a/c/a/a/a/a/h;-><init>(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    return-object v0

    :cond_64
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-static {v0}, Lorg/c/a/a/c/a/a/c/i;->a(Lorg/c/a/a/c/a/a/a/a/a;)I

    move-result v0

    if-ge v1, v0, :cond_77

    move v1, v0

    :cond_77
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_a

    :cond_7b
    invoke-virtual {p3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    :cond_8e
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_37

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    goto :goto_37

    :cond_a1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v3

    sparse-switch v3, :sswitch_data_190

    goto :goto_40

    :cond_af
    :sswitch_af
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    if-ge v1, v0, :cond_40

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    move v1, v0

    move-object v2, v3

    goto/16 :goto_40

    :sswitch_cb
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v6

    invoke-virtual {p3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_af

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v6

    if-ge v1, v6, :cond_af

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    move v1, v0

    move-object v2, v3

    goto/16 :goto_40

    :sswitch_e7
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_ef
    :goto_ef
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v6

    invoke-virtual {p3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_ef

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v6

    if-ge v1, v6, :cond_ef

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    move-object v2, v0

    goto :goto_ef

    :sswitch_115
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v6

    invoke-virtual {p3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_12e

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v6

    if-ge v1, v6, :cond_12e

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    move-object v2, v3

    :cond_12e
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_136
    :goto_136
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v6

    invoke-virtual {p3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_136

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v6

    if-ge v1, v6, :cond_136

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    move-object v2, v0

    goto :goto_136

    :cond_15c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v4

    if-ne v4, v7, :cond_58

    if-eq v0, p1, :cond_58

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    invoke-static {v5, p2, v1, v4, v2}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/HashSet;Ljava/util/BitSet;Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Z

    move-result v4

    if-eqz v4, :cond_17a

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_17a
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {v5, p2, v1, v0, v2}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/HashSet;Ljava/util/BitSet;Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_58

    :cond_18c
    move-object v2, v0

    goto/16 :goto_46

    nop

    :sswitch_data_190
    .sparse-switch
        0x4 -> :sswitch_af
        0x40 -> :sswitch_e7
        0x200 -> :sswitch_115
        0x8000 -> :sswitch_cb
        0x4000000 -> :sswitch_af
    .end sparse-switch
.end method

.method protected static a(Ljava/util/BitSet;Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;I)V
    .registers 6

    const v0, 0x3800102

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_67

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_67

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    if-gt v0, p3, :cond_67

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/BitSet;Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;I)V

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/BitSet;Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;I)V

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_68

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_76

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    const/high16 v1, 0x10000000

    if-ne v0, v1, :cond_67

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    :cond_67
    return-void

    :cond_68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/BitSet;Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;I)V

    goto :goto_40

    :cond_76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/BitSet;Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;I)V

    goto :goto_4e
.end method

.method protected static a(Ljava/util/BitSet;Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 6

    const v0, 0x4b80413a  # 1.6810612E7f

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_63

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_63

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    if-eq p2, p3, :cond_63

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/BitSet;Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/BitSet;Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_64

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_72

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    const/high16 v1, 0x10000000

    if-ne v0, v1, :cond_63

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    :cond_63
    return-void

    :cond_64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/BitSet;Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_3c

    :cond_72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/BitSet;Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_4a
.end method

.method protected static a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 5

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    if-eq p1, p2, :cond_21

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_22

    :cond_21
    return-void

    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-static {p0, v0, p2}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_1b
.end method

.method protected static a(Ljava/util/HashSet;Ljava/util/BitSet;Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Z
    .registers 8

    const/4 v0, 0x1

    if-eq p3, p4, :cond_f

    invoke-virtual {p0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const v1, 0x34433e85

    invoke-virtual {p3, v1}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/c/a/a/c/a/a/c/i;->b(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-static {p3, p1}, Lorg/c/a/a/c/a/a/c/i;->a(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_31

    :cond_29
    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->clear(I)V

    goto :goto_f

    :cond_31
    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, p2, v0, p4}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/HashSet;Ljava/util/BitSet;Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Z

    move-result v0

    goto :goto_f

    :cond_3d
    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v1

    const v2, 0x8000

    if-ne v1, v2, :cond_7d

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/c/a/a/c/a/a/c/i;->b(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/c/a/a/c/a/a/c/i;->b(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-static {p3, p1}, Lorg/c/a/a/c/a/a/c/i;->a(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_68

    :cond_60
    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->clear(I)V

    goto :goto_f

    :cond_68
    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, p2, v0, p4}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/HashSet;Ljava/util/BitSet;Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Z

    move-result v0

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {p0, p1, p2, v1, p4}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/HashSet;Ljava/util/BitSet;Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_f

    :cond_7d
    const v1, 0x4b80413a  # 1.6810612E7f

    invoke-virtual {p3, v1}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-static {p3, p1}, Lorg/c/a/a/c/a/a/c/i;->a(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_9b

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    if-ltz v1, :cond_f

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->clear(I)V

    goto/16 :goto_f

    :cond_9b
    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_a0
    const/4 v0, 0x0

    goto/16 :goto_f
.end method

.method protected static a(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z
    .registers 4

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-static {v0, p1}, Lorg/c/a/a/c/a/a/c/i;->b(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static a(Lorg/c/a/a/c/a/a/a/a/f;)[Ljava/util/BitSet;
    .registers 11

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/f;->b()Lorg/c/a/a/d/c;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    aput-object v0, v5, v3

    move v0, v3

    :goto_16
    if-lt v0, v1, :cond_2e

    aget-object v0, v5, v3

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    :cond_20
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3b

    if-nez v2, :cond_20

    return-object v5

    :cond_2e
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v2, v3, v1}, Ljava/util/BitSet;->flip(II)V

    aput-object v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_3b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v7

    aget-object v8, v5, v7

    invoke-virtual {v8}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_55
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_68

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    move v0, v3

    :goto_65
    or-int/2addr v0, v2

    move v2, v0

    goto :goto_25

    :cond_68
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    aget-object v0, v5, v0

    invoke-virtual {v8, v0}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    goto :goto_55

    :cond_78
    const/4 v0, 0x1

    goto :goto_65
.end method

.method private static b(Lorg/c/a/a/c/a/a/a/a/a;)I
    .registers 3

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    const/16 v1, 0x200

    if-ne v0, v1, :cond_2b

    invoke-static {p0}, Lorg/c/a/a/c/a/a/c/c;->b(Lorg/c/a/a/c/a/a/a/a/a;)I

    move-result v0

    const/16 v1, 0xc2

    if-ne v0, v1, :cond_2b

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {v0}, Lorg/c/a/a/c/a/a/c/i;->c(Lorg/c/a/a/c/a/a/a/a/a;)I

    move-result v0

    :goto_2a
    return v0

    :cond_2b
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    goto :goto_2a
.end method

.method public static b(Lorg/c/a/a/c/a/a/a/a/f;)V
    .registers 11

    invoke-static {p0}, Lorg/c/a/a/c/a/a/c/i;->a(Lorg/c/a/a/c/a/a/a/a/f;)[Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/i;->a(Lorg/c/a/a/c/a/a/a/a/f;[Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v0, 0x0

    move v2, v0

    :goto_e
    if-lt v2, v5, :cond_11

    return-void

    :cond_11
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/h;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/h;->a()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v6

    invoke-static {v0}, Lorg/c/a/a/c/a/a/c/i;->a(Lorg/c/a/a/c/a/a/a/a/h;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v7

    add-int/lit8 v1, v5, -0x1

    move v3, v1

    :goto_22
    if-gt v3, v2, :cond_28

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    :cond_28
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/a/h;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/h;->a()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v8

    if-ne v8, v6, :cond_37

    invoke-virtual {v1, v7}, Lorg/c/a/a/c/a/a/a/a/h;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    :cond_37
    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/h;->b()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_53

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/h;->b()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/h;->b()Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/h;->b()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_53
    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/h;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v8

    if-ne v8, v6, :cond_5c

    invoke-virtual {v1, v7}, Lorg/c/a/a/c/a/a/a/a/h;->b(Lorg/c/a/a/c/a/a/a/a/a;)V

    :cond_5c
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_22
.end method

.method protected static b(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z
    .registers 3

    const v0, 0x4a804012  # 4202505.0f

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_14
.end method

.method private static c(Lorg/c/a/a/c/a/a/a/a/a;)I
    .registers 4

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    :goto_9
    const v2, 0x4b80413a  # 1.6810612E7f

    invoke-virtual {p0, v2}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_1c
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_28

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    :cond_28
    return v0

    :cond_29
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object p0

    goto :goto_9
.end method
