.class public Lcom/a/b/f/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/f/ap;


# direct methods
.method private constructor <init>(Lcom/a/b/f/ap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/f/b;->a:Lcom/a/b/f/ap;

    return-void
.end method

.method static synthetic a(Lcom/a/b/f/b;)Lcom/a/b/f/ap;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/b;->a:Lcom/a/b/f/ap;

    return-object v0
.end method

.method private a()V
    .registers 21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/b/f/b;->a:Lcom/a/b/f/ap;

    invoke-virtual {v2}, Lcom/a/b/f/ap;->g()I

    move-result v15

    invoke-direct/range {p0 .. p0}, Lcom/a/b/f/b;->b()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/b/f/b;->a:Lcom/a/b/f/ap;

    invoke-virtual {v2}, Lcom/a/b/f/ap;->d()Lcom/a/b/f/aj;

    move-result-object v18

    new-instance v19, Ljava/util/HashMap;

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    move v14, v2

    :goto_0
    move/from16 v0, v17

    if-lt v14, v0, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v15}, Lcom/a/b/f/b;->a(Ljava/util/HashMap;I)V

    return-void

    :cond_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/a/b/e/c/ag;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/b/f/b;->a:Lcom/a/b/f/ap;

    invoke-virtual {v2}, Lcom/a/b/f/ap;->n()I

    move-result v2

    invoke-static {v2, v7}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v5

    invoke-static {v7}, Lcom/a/b/e/b/ac;->f(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/aa;

    move-result-object v9

    invoke-virtual {v9}, Lcom/a/b/e/b/aa;->d()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    new-instance v2, Lcom/a/b/e/b/r;

    invoke-static {v7}, Lcom/a/b/e/b/ac;->f(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/aa;

    move-result-object v3

    sget-object v4, Lcom/a/b/e/b/ad;->a:Lcom/a/b/e/b/ad;

    sget-object v6, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct/range {v2 .. v7}, Lcom/a/b/e/b/r;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;Lcom/a/b/e/c/a;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/a/b/f/aj;->a(Lcom/a/b/e/b/j;)V

    :goto_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/b/f/b;->a:Lcom/a/b/f/ap;

    invoke-virtual {v2}, Lcom/a/b/f/ap;->d()Lcom/a/b/f/aj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/f/aj;->m()Lcom/a/b/f/aj;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/a/b/f/aj;->b(Lcom/a/b/f/aj;)Lcom/a/b/f/aj;

    move-result-object v2

    new-instance v8, Lcom/a/b/e/b/af;

    sget-object v10, Lcom/a/b/e/b/ad;->a:Lcom/a/b/e/b/ad;

    sget-object v11, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    sget-object v12, Lcom/a/b/e/d/b;->a:Lcom/a/b/e/d/b;

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/a/b/e/b/af;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;Lcom/a/b/e/c/a;)V

    invoke-virtual {v2, v8}, Lcom/a/b/f/aj;->b(Lcom/a/b/e/b/j;)V

    invoke-virtual {v2, v3}, Lcom/a/b/f/aj;->b(Lcom/a/b/f/aj;)Lcom/a/b/f/aj;

    move-result-object v2

    new-instance v3, Lcom/a/b/e/b/s;

    invoke-virtual {v5}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v4

    invoke-static {v4}, Lcom/a/b/e/b/ac;->e(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/aa;

    move-result-object v4

    sget-object v6, Lcom/a/b/e/b/ad;->a:Lcom/a/b/e/b/ad;

    sget-object v8, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {v3, v4, v6, v5, v8}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-virtual {v2, v3}, Lcom/a/b/f/aj;->a(Lcom/a/b/e/b/j;)V

    goto :goto_1
.end method

.method public static a(Lcom/a/b/f/ap;)V
    .registers 2

    new-instance v0, Lcom/a/b/f/b;

    invoke-direct {v0, p0}, Lcom/a/b/f/b;-><init>(Lcom/a/b/f/ap;)V

    invoke-direct {v0}, Lcom/a/b/f/b;->a()V

    return-void
.end method

.method private a(Ljava/util/HashMap;I)V
    .registers 10

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/a/b/f/b;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->m()[Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/b/f/b;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, v1}, Lcom/a/b/f/ap;->c(I)Lcom/a/b/f/an;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v0}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/b/e/d/d;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v0, Lcom/a/b/e/c/ag;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/u;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/a/b/f/b;->a:Lcom/a/b/f/ap;

    invoke-virtual {v4, v3}, Lcom/a/b/f/ap;->a(Lcom/a/b/e/b/u;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/a/b/f/d;

    invoke-direct {v4, p0, v3, v0}, Lcom/a/b/f/d;-><init>(Lcom/a/b/f/b;Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)V

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/f/an;->k()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/a/b/f/an;->p()Lcom/a/b/f/aj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/b/f/aj;->i()Ljava/util/BitSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_3

    :cond_4
    invoke-virtual {v0, v4}, Lcom/a/b/f/an;->a(Lcom/a/b/f/ag;)V

    goto :goto_1
.end method

.method private b()Ljava/util/ArrayList;
    .registers 11

    const/4 v9, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/a/b/f/b;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->g()I

    move-result v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/a/b/f/c;

    invoke-direct {v0, p0, v5}, Lcom/a/b/f/c;-><init>(Lcom/a/b/f/b;Ljava/util/HashMap;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/a/b/f/b;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, v2}, Lcom/a/b/f/ap;->c(I)Lcom/a/b/f/an;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/a/b/f/an;->e()Lcom/a/b/e/b/aa;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/b/e/d/d;->f()Z

    move-result v7

    if-eqz v7, :cond_2

    check-cast v0, Lcom/a/b/e/c/ag;

    invoke-virtual {v1}, Lcom/a/b/f/an;->e()Lcom/a/b/e/b/aa;

    move-result-object v7

    invoke-virtual {v7}, Lcom/a/b/e/b/aa;->a()I

    move-result v7

    const/16 v8, 0x38

    if-ne v7, v8, :cond_4

    invoke-virtual {v1}, Lcom/a/b/f/an;->p()Lcom/a/b/f/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/f/aj;->h()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    iget-object v7, p0, Lcom/a/b/f/b;->a:Lcom/a/b/f/ap;

    invoke-virtual {v7}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/f/aj;

    invoke-virtual {v1}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/f/an;

    :cond_4
    invoke-virtual {v1}, Lcom/a/b/f/an;->k()Z

    move-result v1

    if-eqz v1, :cond_5

    instance-of v0, v0, Lcom/a/b/e/c/ad;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/a/b/f/b;->a:Lcom/a/b/f/ap;

    invoke-virtual {v1, v6}, Lcom/a/b/f/ap;->a(Lcom/a/b/e/b/u;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v9, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ag;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
