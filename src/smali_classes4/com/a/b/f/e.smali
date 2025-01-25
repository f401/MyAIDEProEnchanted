.class public Lcom/a/b/f/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/f/ap;

.field private final b:I

.field private final c:Ljava/util/BitSet;

.field private final d:[Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Lcom/a/b/f/ap;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/f/e;->a:Lcom/a/b/f/ap;

    invoke-virtual {p1}, Lcom/a/b/f/ap;->g()I

    move-result v0

    iput v0, p0, Lcom/a/b/f/e;->b:I

    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Lcom/a/b/f/e;->b:I

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/f/e;->c:Ljava/util/BitSet;

    iget-object v0, p0, Lcom/a/b/f/e;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->m()[Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/f/e;->d:[Ljava/util/ArrayList;

    return-void
.end method

.method private a()V
    .registers 10

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/a/b/f/e;->b()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/a/b/f/e;->a:Lcom/a/b/f/ap;

    new-instance v3, Lcom/a/b/f/f;

    iget-object v4, p0, Lcom/a/b/f/e;->c:Ljava/util/BitSet;

    invoke-direct {v3, v4}, Lcom/a/b/f/f;-><init>(Ljava/util/BitSet;)V

    invoke-virtual {v0, v3}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/ao;)V

    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/a/b/f/e;->c:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    if-gez v0, :cond_23

    iget-object v0, p0, Lcom/a/b/f/e;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, v2}, Lcom/a/b/f/ap;->a(Ljava/util/Set;)V

    return-void

    :cond_23
    iget-object v3, p0, Lcom/a/b/f/e;->c:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->clear(I)V

    iget-object v3, p0, Lcom/a/b/f/e;->d:[Ljava/util/ArrayList;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_39

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/a/b/f/e;->a(ILjava/util/BitSet;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_39
    iget-object v3, p0, Lcom/a/b/f/e;->a:Lcom/a/b/f/ap;

    invoke-virtual {v3, v0}, Lcom/a/b/f/ap;->c(I)Lcom/a/b/f/an;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v3}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/b/x;->d_()I

    move-result v5

    move v0, v1

    :goto_4e
    if-lt v0, v5, :cond_54

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_54
    invoke-virtual {v4, v0}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v6

    iget-object v7, p0, Lcom/a/b/f/e;->d:[Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/a/b/e/b/u;->g()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/a/b/f/e;->a:Lcom/a/b/f/ap;

    invoke-virtual {v6}, Lcom/a/b/e/b/u;->g()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/a/b/f/ap;->c(I)Lcom/a/b/f/an;

    move-result-object v7

    invoke-static {v7}, Lcom/a/b/f/e;->b(Lcom/a/b/f/an;)Z

    move-result v7

    if-nez v7, :cond_7c

    iget-object v7, p0, Lcom/a/b/f/e;->c:Ljava/util/BitSet;

    invoke-virtual {v6}, Lcom/a/b/e/b/u;->g()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/util/BitSet;->set(I)V

    :cond_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e
.end method

.method public static a(Lcom/a/b/f/ap;)V
    .registers 2

    new-instance v0, Lcom/a/b/f/e;

    invoke-direct {v0, p0}, Lcom/a/b/f/e;-><init>(Lcom/a/b/f/ap;)V

    invoke-direct {v0}, Lcom/a/b/f/e;->a()V

    return-void
.end method

.method private a(ILjava/util/BitSet;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_c

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/a/b/f/e;->d:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_36

    if-nez p2, :cond_23

    new-instance p2, Ljava/util/BitSet;

    iget v0, p0, Lcom/a/b/f/e;->b:I

    invoke-direct {p2, v0}, Ljava/util/BitSet;-><init>(I)V

    :cond_23
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p0, Lcom/a/b/f/e;->d:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_44

    move v0, v1

    goto :goto_b

    :cond_36
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-static {v0}, Lcom/a/b/f/e;->b(Lcom/a/b/f/an;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v2

    goto :goto_b

    :cond_44
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/a/b/f/e;->a(ILjava/util/BitSet;)Z

    move-result v0

    if-nez v0, :cond_2e

    :cond_5a
    move v0, v2

    goto :goto_b
.end method

.method static synthetic a(Lcom/a/b/f/an;)Z
    .registers 2

    invoke-static {p0}, Lcom/a/b/f/e;->b(Lcom/a/b/f/an;)Z

    move-result v0

    return v0
.end method

.method private b()V
    .registers 14

    const/4 v2, 0x0

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/a/b/f/e;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->k()Ljava/util/BitSet;

    move-result-object v6

    iget-object v0, p0, Lcom/a/b/f/e;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v7

    move v0, v2

    :goto_13
    invoke-virtual {v6, v0}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v8, v0, :cond_23

    iget-object v0, p0, Lcom/a/b/f/e;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, v5}, Lcom/a/b/f/ap;->a(Ljava/util/Set;)V

    return-void

    :cond_23
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    move v3, v2

    :goto_2a
    invoke-virtual {v0}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v3, v1, :cond_37

    add-int/lit8 v0, v8, 0x1

    goto :goto_13

    :cond_37
    invoke-virtual {v0}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/f/an;

    invoke-virtual {v1}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v9

    invoke-virtual {v9}, Lcom/a/b/e/b/x;->d_()I

    move-result v10

    if-eqz v10, :cond_4e

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4e
    move v4, v2

    :goto_4f
    if-lt v4, v10, :cond_5b

    invoke-virtual {v1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v4

    if-nez v4, :cond_6d

    :cond_57
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2a

    :cond_5b
    invoke-virtual {v9, v4}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v11

    iget-object v12, p0, Lcom/a/b/f/e;->d:[Ljava/util/ArrayList;

    invoke-virtual {v11}, Lcom/a/b/e/b/u;->g()I

    move-result v11

    aget-object v11, v12, v11

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :cond_6d
    iget-object v1, p0, Lcom/a/b/f/e;->d:[Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/a/b/e/b/u;->g()I

    move-result v9

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_79
    :goto_79
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/f/an;

    instance-of v10, v1, Lcom/a/b/f/ac;

    if-eqz v10, :cond_79

    check-cast v1, Lcom/a/b/f/ac;

    invoke-virtual {v1, v4}, Lcom/a/b/f/ac;->a(Lcom/a/b/e/b/u;)V

    goto :goto_79
.end method

.method private static b(Lcom/a/b/f/an;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/a/b/f/an;->m()Z

    move-result v0

    goto :goto_3
.end method
