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

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    return v1

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {v0}, Lorg/c/a/a/c/a/a/c/i;->c(Lorg/c/a/a/c/a/a/a/a/a;)I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {v0}, Lorg/c/a/a/c/a/a/c/i;->b(Lorg/c/a/a/c/a/a/a/a/a;)I

    move-result v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    move-object v3, v0

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v2, :cond_1

    invoke-static {v2}, Lorg/c/a/a/c/a/a/c/i;->b(Lorg/c/a/a/c/a/a/a/a/a;)I

    move-result v0

    if-ge v1, v0, :cond_1

    move v1, v0

    goto :goto_1

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v5

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v6

    if-ge v5, v6, :cond_5

    :cond_7
    move-object v2, v3

    move-object v3, v0

    goto :goto_3
.end method

.method protected static a(ILjava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Ljava/util/BitSet;
    .registers 5

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p0}, Ljava/util/BitSet;-><init>(I)V

    invoke-static {v0, p2, p3}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    if-nez p1, :cond_0

    move-object p1, v0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    goto :goto_0
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

    :goto_0
    if-lt v2, v6, :cond_0

    move v4, v3

    :goto_1
    if-lt v4, v6, :cond_4

    new-instance v4, Lorg/c/a/a/d/c;

    invoke-direct {v4}, Lorg/c/a/a/d/c;-><init>()V

    move v2, v3

    :goto_2
    if-lt v2, v6, :cond_9

    sget-object v0, Lorg/c/a/a/c/a/a/c/i;->a:Lorg/c/a/a/c/a/a/c/j;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v4

    :cond_0
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    aget-object v4, p1, v2

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2

    aget-object v8, v7, v1

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v9

    invoke-static {v6, v8, v0, v9}, Lorg/c/a/a/c/a/a/c/i;->a(ILjava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Ljava/util/BitSet;

    move-result-object v8

    aput-object v8, v7, v1

    :cond_2
    :sswitch_1
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, v7, v1

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v8

    invoke-static {v6, v4, v0, v8}, Lorg/c/a/a/c/a/a/c/i;->a(ILjava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Ljava/util/BitSet;

    move-result-object v0

    aput-object v0, v7, v1

    goto :goto_3

    :sswitch_2
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v9

    invoke-virtual {v9}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v9

    if-ltz v9, :cond_3

    invoke-virtual {v4, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_3

    aget-object v10, v7, v9

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {v6, v10, v0, v1}, Lorg/c/a/a/c/a/a/c/i;->a(ILjava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Ljava/util/BitSet;

    move-result-object v1

    aput-object v1, v7, v9

    goto :goto_4

    :cond_4
    aget-object v0, v7, v4

    if-eqz v0, :cond_6

    aget-object v8, v7, v4

    const/4 v2, -0x1

    move v1, v3

    :goto_5
    if-lt v1, v6, :cond_7

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    aget-object v9, p1, v4

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v1

    const/16 v10, 0x200

    if-ne v1, v10, :cond_6

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    if-eq v2, v1, :cond_6

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/d/c;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    if-ge v2, v1, :cond_6

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v10

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/util/BitSet;->clear(I)V

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    aput-object v8, v7, v0

    const/4 v0, 0x0

    aput-object v0, v7, v4

    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v8, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    if-ge v2, v0, :cond_e

    :goto_7
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_5

    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v1, v0, v2}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    aget-object v0, v7, v2

    if-eqz v0, :cond_a

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

    if-ne v1, v10, :cond_d

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    if-eq v1, v0, :cond_c

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    if-eq v1, v0, :cond_c

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_c

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

    if-eqz v1, :cond_b

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

    :cond_a
    :goto_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    :cond_b
    invoke-static {v5, v0, v9, v8}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/List;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;Ljava/util/BitSet;)Lorg/c/a/a/c/a/a/a/a/h;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    invoke-static {v5, v0, v9, v8}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/List;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;Ljava/util/BitSet;)Lorg/c/a/a/c/a/a/a/a/h;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    invoke-static {v5, v0, v9, v8}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/List;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;Ljava/util/BitSet;)Lorg/c/a/a/c/a/a/a/a/h;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    move v0, v2

    goto/16 :goto_7

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x40 -> :sswitch_2
        0x8000 -> :sswitch_0
        0x4000000 -> :sswitch_1
    .end sparse-switch
.end method

.method protected static a(Ljava/util/Set;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 7

    const v4, 0x34433e85

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    return-object p1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/16 v1, 0x38

    invoke-virtual {p1, v1}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    goto :goto_1

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v4}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    if-eq v0, p1, :cond_4

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v1

    const v3, 0x8000

    if-ne v1, v3, :cond_4

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    if-eq v1, p1, :cond_7

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move-object v0, v1

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    if-eq v0, p1, :cond_4

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v4}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    if-ne v1, v0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    goto :goto_1
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

    const/high16 v2, 0x40000000    # 2.0f

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

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v6, v3}, Lorg/c/a/a/c/a/a/a/a/a;->d(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v1

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v5, :cond_2

    invoke-virtual {v6, v5}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v5, v4, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    :cond_2
    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v6, v2}, Lorg/c/a/a/c/a/a/a/a/a;->c(I)V

    return-object v6

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v0, v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    const v1, 0x34433e85

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    if-ne v1, v3, :cond_6

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->e:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    :cond_5
    :goto_2
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v0

    move v2, v0

    goto :goto_1

    :cond_6
    if-ne v1, v5, :cond_7

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-le v8, v11, :cond_5

    invoke-static {v0, v1}, Lorg/c/a/a/c/a/a/c/i;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v1

    const v8, 0x8000

    if-ne v1, v8, :cond_e

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    if-ne v1, v3, :cond_a

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->e:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    :cond_9
    :goto_3
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    if-ne v1, v3, :cond_c

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->e:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->b(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_2

    :cond_a
    if-ne v1, v5, :cond_b

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_3

    :cond_b
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-le v8, v11, :cond_9

    invoke-static {v0, v1}, Lorg/c/a/a/c/a/a/c/i;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_3

    :cond_c
    if-ne v1, v5, :cond_d

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->b(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_2

    :cond_d
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-le v8, v11, :cond_5

    invoke-static {v0, v1}, Lorg/c/a/a/c/a/a/c/i;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->b(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v1

    const/16 v8, 0x40

    if-ne v1, v8, :cond_5

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_f
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v9

    if-ne v9, v3, :cond_10

    sget-object v9, Lorg/c/a/a/c/a/a/a/a/a;->e:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v1, v9}, Lorg/c/a/a/c/a/a/a/a/e;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_4

    :cond_10
    if-ne v9, v5, :cond_11

    sget-object v9, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v1, v9}, Lorg/c/a/a/c/a/a/a/a/e;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_4

    :cond_11
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    invoke-virtual {v9}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v10

    if-le v10, v11, :cond_f

    invoke-static {v0, v9}, Lorg/c/a/a/c/a/a/c/i;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/c/a/a/c/a/a/a/a/e;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_4
.end method

.method protected static a(Ljava/util/List;Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;Ljava/util/BitSet;)Lorg/c/a/a/c/a/a/a/a/h;
    .registers 12

    const v7, 0x8000

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, -0x1

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_4

    invoke-virtual {p3}, Ljava/util/BitSet;->clear()V

    invoke-static {p3, p2, p1, v1}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/BitSet;Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;I)V

    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(I)V

    :goto_1
    if-lt v2, v4, :cond_6

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v2

    if-ne v2, v7, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    :cond_0
    :goto_2
    sget-object v2, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, v2, :cond_10

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :cond_1
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_4
    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    if-eq v2, v0, :cond_3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_3
    new-instance v0, Lorg/c/a/a/c/a/a/a/a/h;

    invoke-direct {v0, p1, v5, v2}, Lorg/c/a/a/c/a/a/a/a/h;-><init>(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    return-object v0

    :cond_4
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-static {v0}, Lorg/c/a/a/c/a/a/c/i;->a(Lorg/c/a/a/c/a/a/a/a/a;)I

    move-result v0

    if-ge v1, v0, :cond_5

    move v1, v0

    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_6
    invoke-virtual {p3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    goto :goto_2

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_3

    :cond_a
    :sswitch_0
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    move v1, v0

    move-object v2, v3

    goto/16 :goto_3

    :sswitch_1
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v6

    invoke-virtual {p3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v6

    if-ge v1, v6, :cond_a

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    move v1, v0

    move-object v2, v3

    goto/16 :goto_3

    :sswitch_2
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->k()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v6

    invoke-virtual {p3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v6

    if-ge v1, v6, :cond_b

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    move-object v2, v0

    goto :goto_6

    :sswitch_3
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v6

    invoke-virtual {p3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v6

    if-ge v1, v6, :cond_c

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    move-object v2, v3

    :cond_c
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v6

    invoke-virtual {p3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v6

    if-ge v1, v6, :cond_d

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v1

    move-object v2, v0

    goto :goto_7

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v4

    if-ne v4, v7, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v4

    invoke-static {v5, p2, v1, v4, v2}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/HashSet;Ljava/util/BitSet;Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_f
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {v5, p2, v1, v0, v2}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/HashSet;Ljava/util/BitSet;Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    :cond_10
    move-object v2, v0

    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x40 -> :sswitch_2
        0x200 -> :sswitch_3
        0x8000 -> :sswitch_1
        0x4000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected static a(Ljava/util/BitSet;Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;I)V
    .registers 6

    const v0, 0x3800102

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    if-gt v0, p3, :cond_0

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

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    const/high16 v1, 0x10000000

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/BitSet;Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;I)V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/BitSet;Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;I)V

    goto :goto_1
.end method

.method protected static a(Ljava/util/BitSet;Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 6

    const v0, 0x4b80413a    # 1.6810612E7f

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    if-eq p2, p3, :cond_0

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

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->j()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    const/high16 v1, 0x10000000

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/BitSet;Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/BitSet;Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_1
.end method

.method protected static a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 5

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    if-eq p1, p2, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-static {p0, v0, p2}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/BitSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_0
.end method

.method protected static a(Ljava/util/HashSet;Ljava/util/BitSet;Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Z
    .registers 8

    const/4 v0, 0x1

    if-eq p3, p4, :cond_0

    invoke-virtual {p0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v1, 0x34433e85

    invoke-virtual {p3, v1}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/c/a/a/c/a/a/c/i;->b(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p3, p1}, Lorg/c/a/a/c/a/a/c/i;->a(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->clear(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-static {p0, p1, p2, v0, p4}, Lorg/c/a/a/c/a/a/c/i;->a(Ljava/util/HashSet;Ljava/util/BitSet;Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v1

    const v2, 0x8000

    if-ne v1, v2, :cond_7

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/c/a/a/c/a/a/c/i;->b(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/c/a/a/c/a/a/c/i;->b(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p3, p1}, Lorg/c/a/a/c/a/a/c/i;->a(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->clear(I)V

    goto :goto_0

    :cond_6
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

    goto :goto_0

    :cond_7
    const v1, 0x4b80413a    # 1.6810612E7f

    invoke-virtual {p3, v1}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p3, p1}, Lorg/c/a/a/c/a/a/c/i;->a(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->clear(I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected static a(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z
    .registers 4

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-static {v0, p1}, Lorg/c/a/a/c/a/a/c/i;->b(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
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

    :goto_0
    if-lt v0, v1, :cond_1

    aget-object v0, v5, v3

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v2, :cond_0

    return-object v5

    :cond_1
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v2, v3, v1}, Ljava/util/BitSet;->flip(II)V

    aput-object v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
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

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    :goto_3
    or-int/2addr v0, v2

    move v2, v0

    goto :goto_1

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    aget-object v0, v5, v0

    invoke-virtual {v8, v0}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static b(Lorg/c/a/a/c/a/a/a/a/a;)I
    .registers 3

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v0

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/c/a/a/c/a/a/c/c;->b(Lorg/c/a/a/c/a/a/a/a/a;)I

    move-result v0

    const/16 v1, 0xc2

    if-ne v0, v1, :cond_0

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

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    goto :goto_0
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

    :goto_0
    if-lt v2, v5, :cond_0

    return-void

    :cond_0
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/h;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/h;->a()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v6

    invoke-static {v0}, Lorg/c/a/a/c/a/a/c/i;->a(Lorg/c/a/a/c/a/a/a/a/h;)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v7

    add-int/lit8 v1, v5, -0x1

    move v3, v1

    :goto_1
    if-gt v3, v2, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/a/h;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/h;->a()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v8

    if-ne v8, v6, :cond_2

    invoke-virtual {v1, v7}, Lorg/c/a/a/c/a/a/a/a/h;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    :cond_2
    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/h;->b()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/h;->b()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/h;->b()Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/h;->b()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/a/h;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v8

    if-ne v8, v6, :cond_4

    invoke-virtual {v1, v7}, Lorg/c/a/a/c/a/a/a/a/h;->b(Lorg/c/a/a/c/a/a/a/a/a;)V

    :cond_4
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_1
.end method

.method protected static b(Lorg/c/a/a/c/a/a/a/a/a;Ljava/util/BitSet;)Z
    .registers 3

    const v0, 0x4a804012    # 4202505.0f

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c(Lorg/c/a/a/c/a/a/a/a/a;)I
    .registers 4

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    :goto_0
    const v2, 0x4b80413a    # 1.6810612E7f

    invoke-virtual {p0, v2}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object p0

    goto :goto_0
.end method
