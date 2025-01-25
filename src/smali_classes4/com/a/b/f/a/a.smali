.class public Lcom/a/b/f/a/a;
.super Lcom/a/b/f/a/l;


# instance fields
.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/ArrayList;

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/ArrayList;

.field private final g:Ljava/util/BitSet;

.field private final h:Lcom/a/b/f/r;

.field private final i:I

.field private final j:Ljava/util/BitSet;

.field private final k:Ljava/util/BitSet;

.field private final l:Z


# direct methods
.method public constructor <init>(Lcom/a/b/f/ap;Lcom/a/b/f/a/i;Z)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/a/b/f/a/l;-><init>(Lcom/a/b/f/ap;Lcom/a/b/f/a/i;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/a/b/f/ap;->g()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/f/a/a;->g:Ljava/util/BitSet;

    new-instance v0, Lcom/a/b/f/r;

    invoke-virtual {p1}, Lcom/a/b/f/ap;->g()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lcom/a/b/f/r;-><init>(Lcom/a/b/f/a/i;I)V

    iput-object v0, p0, Lcom/a/b/f/a/a;->h:Lcom/a/b/f/r;

    iput-boolean p3, p0, Lcom/a/b/f/a/a;->l:Z

    invoke-virtual {p1}, Lcom/a/b/f/ap;->h()I

    move-result v0

    iput v0, p0, Lcom/a/b/f/a/a;->i:I

    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Lcom/a/b/f/a/a;->i:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/f/a/a;->j:Ljava/util/BitSet;

    iget-object v0, p0, Lcom/a/b/f/a/a;->j:Ljava/util/BitSet;

    const/4 v1, 0x0

    iget v2, p0, Lcom/a/b/f/a/a;->i:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Lcom/a/b/f/a/a;->i:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/f/a/a;->k:Ljava/util/BitSet;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/a/a;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/a/a;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/a/a;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/a/a;->f:Ljava/util/ArrayList;

    return-void
.end method

.method private a(IILcom/a/b/f/a/c;)I
    .registers 8

    iget-object v0, p0, Lcom/a/b/f/a/a;->j:Ljava/util/BitSet;

    invoke-virtual {p3, v0, p1}, Lcom/a/b/f/a/c;->a(Ljava/util/BitSet;I)I

    move-result v0

    :goto_6
    const/4 v1, 0x1

    :goto_7
    if-ge v1, p2, :cond_13

    iget-object v2, p0, Lcom/a/b/f/a/a;->j:Ljava/util/BitSet;

    add-int v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_13
    if-ne v1, p2, :cond_19

    return v0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    iget-object v2, p0, Lcom/a/b/f/a/a;->j:Ljava/util/BitSet;

    add-int/2addr v0, v1

    invoke-virtual {p3, v2, v0}, Lcom/a/b/f/a/c;->a(Ljava/util/BitSet;I)I

    move-result v0

    goto :goto_6
.end method

.method private a(ILcom/a/b/f/z;[ILjava/util/BitSet;)I
    .registers 16

    invoke-virtual {p2}, Lcom/a/b/f/z;->b()Lcom/a/b/e/b/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/x;->d_()I

    move-result v4

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/a/b/f/z;->p()Lcom/a/b/f/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/f/aj;->q()Lcom/a/b/g/o;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/a/b/f/a/a;->a(Lcom/a/b/g/o;)Lcom/a/b/e/b/x;

    move-result-object v5

    new-instance v6, Ljava/util/BitSet;

    iget-object v1, p0, Lcom/a/b/f/a/a;->a:Lcom/a/b/f/ap;

    invoke-virtual {v1}, Lcom/a/b/f/ap;->g()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/BitSet;-><init>(I)V

    const/4 v2, 0x0

    move v1, p1

    :goto_22
    if-lt v2, v4, :cond_25

    :goto_24
    return v0

    :cond_25
    invoke-virtual {v3, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v7

    invoke-virtual {v7}, Lcom/a/b/e/b/u;->g()I

    move-result v8

    aget v9, p3, v2

    if-eqz v2, :cond_36

    add-int/lit8 v10, v2, -0x1

    aget v10, p3, v10

    add-int/2addr v1, v10

    :cond_36
    iget-object v10, p0, Lcom/a/b/f/a/a;->g:Ljava/util/BitSet;

    invoke-virtual {v10, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_4d

    iget-object v10, p0, Lcom/a/b/f/a/a;->h:Lcom/a/b/f/r;

    invoke-virtual {v10, v8}, Lcom/a/b/f/r;->a(I)I

    move-result v10

    if-ne v10, v1, :cond_4d

    add-int/2addr v0, v9

    :goto_47
    invoke-virtual {v6, v8}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_4d
    invoke-direct {p0, v1, v9}, Lcom/a/b/f/a/a;->b(II)Z

    move-result v10

    if-eqz v10, :cond_55

    const/4 v0, -0x1

    goto :goto_24

    :cond_55
    iget-object v10, p0, Lcom/a/b/f/a/a;->g:Ljava/util/BitSet;

    invoke-virtual {v10, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_6b

    invoke-direct {p0, v7, v1}, Lcom/a/b/f/a/a;->a(Lcom/a/b/e/b/u;I)Z

    move-result v7

    if-eqz v7, :cond_6b

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-nez v7, :cond_6b

    add-int/2addr v0, v9

    goto :goto_47

    :cond_6b
    iget-object v7, p0, Lcom/a/b/f/a/a;->h:Lcom/a/b/f/r;

    invoke-virtual {v7, v5, v1, v9}, Lcom/a/b/f/r;->a(Lcom/a/b/e/b/x;II)Z

    move-result v7

    if-nez v7, :cond_7f

    iget-object v7, p0, Lcom/a/b/f/a/a;->h:Lcom/a/b/f/r;

    invoke-virtual {v7, v3, v1, v9}, Lcom/a/b/f/r;->a(Lcom/a/b/e/b/x;II)Z

    move-result v7

    if-nez v7, :cond_7f

    invoke-virtual {p4, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_47

    :cond_7f
    const/4 v0, -0x1

    goto :goto_24
.end method

.method private a(Lcom/a/b/f/z;I[ILjava/util/BitSet;)I
    .registers 13

    const/4 v3, 0x0

    sget-object v0, Lcom/a/b/f/a/c;->c:Lcom/a/b/f/a/c;

    array-length v6, p3

    move v4, v3

    move v5, v3

    move v1, v3

    move v2, v3

    :goto_8
    if-lt v4, v6, :cond_23

    if-le v1, v2, :cond_3f

    iget v0, p0, Lcom/a/b/f/a/a;->i:I

    invoke-static {v0}, Lcom/a/b/f/a/a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/a/b/f/a/c;->b:Lcom/a/b/f/a/c;

    :cond_16
    :goto_16
    iget v1, p0, Lcom/a/b/f/a/a;->i:I

    :goto_18
    invoke-direct {p0, v1, p2, v0}, Lcom/a/b/f/a/a;->a(IILcom/a/b/f/a/c;)I

    move-result v1

    invoke-direct {p0, v1, p1, p3, p4}, Lcom/a/b/f/a/a;->a(ILcom/a/b/f/z;[ILjava/util/BitSet;)I

    move-result v2

    if-ltz v2, :cond_4f

    return v1

    :cond_23
    aget v3, p3, v4

    const/4 v7, 0x2

    if-ne v3, v7, :cond_39

    invoke-static {v5}, Lcom/a/b/f/a/a;->f(I)Z

    move-result v3

    if-eqz v3, :cond_36

    add-int/lit8 v2, v2, 0x1

    :goto_30
    add-int/lit8 v3, v5, 0x2

    :goto_32
    add-int/lit8 v4, v4, 0x1

    move v5, v3

    goto :goto_8

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_39
    add-int/lit8 v3, v5, 0x1

    goto :goto_32

    :cond_3c
    sget-object v0, Lcom/a/b/f/a/c;->a:Lcom/a/b/f/a/c;

    goto :goto_16

    :cond_3f
    if-lez v2, :cond_16

    iget v0, p0, Lcom/a/b/f/a/a;->i:I

    invoke-static {v0}, Lcom/a/b/f/a/a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/a/b/f/a/c;->a:Lcom/a/b/f/a/c;

    goto :goto_16

    :cond_4c
    sget-object v0, Lcom/a/b/f/a/c;->b:Lcom/a/b/f/a/c;

    goto :goto_16

    :cond_4f
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p4}, Ljava/util/BitSet;->clear()V

    goto :goto_18
.end method

.method static synthetic a(Lcom/a/b/f/a/a;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/a/a;->c:Ljava/util/Map;

    return-object v0
.end method

.method private a(II)V
    .registers 6

    iget-object v0, p0, Lcom/a/b/f/a/a;->j:Ljava/util/BitSet;

    add-int v1, p1, p2

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/BitSet;->set(IIZ)V

    return-void
.end method

.method private a(Lcom/a/b/f/ac;)V
    .registers 12

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/a/b/f/ac;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->k()I

    move-result v3

    invoke-virtual {p1}, Lcom/a/b/f/ac;->b()Lcom/a/b/e/b/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/b/x;->d_()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/a/b/f/a/g;

    add-int/lit8 v8, v5, 0x1

    invoke-direct {v7, v8}, Lcom/a/b/f/a/g;-><init>(I)V

    iget-object v8, p0, Lcom/a/b/f/a/a;->g:Ljava/util/BitSet;

    invoke-virtual {v8, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_49

    iget-object v0, p0, Lcom/a/b/f/a/a;->h:Lcom/a/b/f/r;

    invoke-virtual {v0, v2}, Lcom/a/b/f/r;->a(I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/a/b/f/a/g;->a(I)V

    :goto_32
    move v0, v1

    :goto_33
    if-lt v0, v5, :cond_4d

    move v0, v1

    :goto_36
    invoke-virtual {v7}, Lcom/a/b/f/a/g;->b()I

    move-result v2

    if-lt v0, v2, :cond_7b

    iget v0, p0, Lcom/a/b/f/a/a;->i:I

    invoke-direct {p0, v0, v3}, Lcom/a/b/f/a/a;->c(II)I

    move-result v0

    :goto_42
    invoke-direct {p0, v6, v0, v3, v1}, Lcom/a/b/f/a/a;->a(Ljava/util/ArrayList;IIZ)Z

    move-result v2

    if-eqz v2, :cond_85

    return-void

    :cond_49
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_4d
    invoke-virtual {v4, v0}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    iget-object v8, p0, Lcom/a/b/f/a/a;->a:Lcom/a/b/f/ap;

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/a/b/f/ap;->c(I)Lcom/a/b/f/an;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v8

    iget-object v9, p0, Lcom/a/b/f/a/a;->g:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_77

    iget-object v2, p0, Lcom/a/b/f/a/a;->h:Lcom/a/b/f/r;

    invoke-virtual {v2, v8}, Lcom/a/b/f/r;->a(I)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/a/b/f/a/g;->a(I)V

    :goto_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_77
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_74

    :cond_7b
    invoke-virtual {v7}, Lcom/a/b/f/a/g;->a()I

    move-result v2

    invoke-direct {p0, v6, v2, v3, v1}, Lcom/a/b/f/a/a;->a(Ljava/util/ArrayList;IIZ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_85
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v3}, Lcom/a/b/f/a/a;->c(II)I

    move-result v0

    goto :goto_42
.end method

.method private a(Lcom/a/b/f/z;)V
    .registers 14

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/a/b/f/a/a;->b(Lcom/a/b/f/z;)I

    move-result v0

    invoke-virtual {p1}, Lcom/a/b/f/z;->b()Lcom/a/b/e/b/x;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/b/e/b/x;->d_()I

    move-result v7

    move v4, v3

    move v5, v0

    :goto_f
    if-lt v4, v7, :cond_12

    return-void

    :cond_12
    invoke-virtual {v6, v4}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->k()I

    move-result v8

    iget-object v2, p0, Lcom/a/b/f/a/a;->g:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_26
    add-int/lit8 v0, v4, 0x1

    add-int v1, v5, v8

    move v4, v0

    move v5, v1

    goto :goto_f

    :cond_2d
    invoke-direct {p0, v1}, Lcom/a/b/f/a/a;->e(I)Lcom/a/b/e/b/o;

    move-result-object v1

    invoke-direct {p0, v0, v5}, Lcom/a/b/f/a/a;->b(Lcom/a/b/e/b/u;I)V

    if-eqz v1, :cond_26

    invoke-direct {p0, v5, v8}, Lcom/a/b/f/a/a;->a(II)V

    iget-object v0, p0, Lcom/a/b/f/a/a;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v2, v3

    :goto_46
    if-ge v2, v9, :cond_26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/e/b/u;

    const/4 v10, -0x1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v11

    invoke-virtual {v6, v11}, Lcom/a/b/e/b/x;->c(I)I

    move-result v11

    if-eq v10, v11, :cond_5d

    :goto_59
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_46

    :cond_5d
    invoke-direct {p0, v1, v5, v8}, Lcom/a/b/f/a/a;->a(Lcom/a/b/e/b/u;II)Z

    goto :goto_59
.end method

.method static synthetic a(I)Z
    .registers 2

    invoke-static {p0}, Lcom/a/b/f/a/a;->f(I)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/a/b/e/b/u;I)Z
    .registers 4

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->k()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/a/b/f/a/a;->e(II)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/a/b/f/a/a;->h:Lcom/a/b/f/r;

    invoke-virtual {v0, p1, p2}, Lcom/a/b/f/r;->a(Lcom/a/b/e/b/u;I)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method private a(Lcom/a/b/e/b/u;II)Z
    .registers 6

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->k()I

    move-result v0

    if-gt v0, p3, :cond_1d

    iget-object v0, p0, Lcom/a/b/f/a/a;->g:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-direct {p0, p1, p2}, Lcom/a/b/f/a/a;->a(Lcom/a/b/e/b/u;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0, p1, p2}, Lcom/a/b/f/a/a;->b(Lcom/a/b/e/b/u;I)V

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private a(Ljava/util/ArrayList;I)Z
    .registers 7

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/u;

    iget-object v2, p0, Lcom/a/b/f/a/a;->g:Ljava/util/BitSet;

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, v0, p2}, Lcom/a/b/f/a/a;->a(Lcom/a/b/e/b/u;I)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_b
.end method

.method private a(Ljava/util/ArrayList;IIZ)Z
    .registers 12

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_7
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    if-eqz v1, :cond_39

    :goto_f
    return v2

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/u;

    iget-object v5, p0, Lcom/a/b/f/a/a;->g:Ljava/util/BitSet;

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-direct {p0, v0, p2, p3}, Lcom/a/b/f/a/a;->a(Lcom/a/b/e/b/u;II)Z

    move-result v5

    if-eqz v5, :cond_37

    if-nez v1, :cond_37

    move v1, v2

    :goto_2b
    if-eqz v5, :cond_7

    if-eqz p4, :cond_7

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->k()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/a/b/f/a/a;->a(II)V

    goto :goto_7

    :cond_37
    move v1, v3

    goto :goto_2b

    :cond_39
    move v2, v3

    goto :goto_f
.end method

.method private b(Lcom/a/b/f/z;)I
    .registers 15

    invoke-virtual {p1}, Lcom/a/b/f/z;->b()Lcom/a/b/e/b/x;

    move-result-object v9

    invoke-virtual {v9}, Lcom/a/b/e/b/x;->d_()I

    move-result v10

    new-array v11, v10, [I

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v8, v0

    :goto_d
    if-lt v1, v10, :cond_2c

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/4 v4, 0x0

    move v7, v4

    :goto_16
    if-lt v7, v10, :cond_3d

    :goto_18
    const/4 v2, -0x1

    if-ne v1, v2, :cond_24

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v10}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {p0, p1, v8, v11, v0}, Lcom/a/b/f/a/a;->a(Lcom/a/b/f/z;I[ILjava/util/BitSet;)I

    move-result v1

    :cond_24
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    :goto_29
    if-gez v2, :cond_81

    return v1

    :cond_2c
    invoke-virtual {v9, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->k()I

    move-result v0

    aput v0, v11, v1

    aget v0, v11, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v8

    move v8, v0

    goto :goto_d

    :cond_3d
    invoke-virtual {v9, v7}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/b/u;->g()I

    move-result v4

    if-eqz v7, :cond_4c

    add-int/lit8 v5, v7, -0x1

    aget v5, v11, v5

    sub-int/2addr v3, v5

    :cond_4c
    iget-object v5, p0, Lcom/a/b/f/a/a;->g:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_58

    :cond_54
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_16

    :cond_58
    iget-object v5, p0, Lcom/a/b/f/a/a;->h:Lcom/a/b/f/r;

    invoke-virtual {v5, v4}, Lcom/a/b/f/r;->a(I)I

    move-result v4

    add-int v6, v4, v3

    if-ltz v6, :cond_54

    invoke-direct {p0, v6, v8}, Lcom/a/b/f/a/a;->e(II)Z

    move-result v4

    if-nez v4, :cond_54

    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4, v10}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {p0, v6, p1, v11, v4}, Lcom/a/b/f/a/a;->a(ILcom/a/b/f/z;[ILjava/util/BitSet;)I

    move-result v12

    if-ltz v12, :cond_54

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    sub-int v5, v12, v5

    if-le v5, v2, :cond_7e

    move-object v0, v4

    move v2, v5

    move v1, v6

    :cond_7e
    if-ne v12, v8, :cond_54

    goto :goto_18

    :cond_81
    invoke-virtual {v9, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/a/b/f/a/a;->a(Lcom/a/b/f/an;Lcom/a/b/e/b/u;)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/a/b/f/z;->a(ILcom/a/b/e/b/u;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    goto :goto_29
.end method

.method static synthetic b(Lcom/a/b/f/a/a;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/a/a;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Lcom/a/b/e/b/u;I)V
    .registers 7

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/a/a;->g:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-direct {p0, p1, p2}, Lcom/a/b/f/a/a;->a(Lcom/a/b/e/b/u;I)Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempt to add invalid register mapping"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-virtual {p1}, Lcom/a/b/e/b/u;->k()I

    move-result v1

    iget-object v2, p0, Lcom/a/b/f/a/a;->h:Lcom/a/b/f/r;

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v3

    invoke-virtual {v2, v3, p2, v1}, Lcom/a/b/f/r;->a(III)V

    iget-object v2, p0, Lcom/a/b/f/a/a;->g:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p0, Lcom/a/b/f/a/a;->k:Ljava/util/BitSet;

    add-int/2addr v1, p2

    invoke-virtual {v0, p2, v1}, Ljava/util/BitSet;->set(II)V

    return-void
.end method

.method private b(II)Z
    .registers 5

    move v0, p1

    :goto_1
    add-int v1, p1, p2

    if-lt v0, v1, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    iget-object v1, p0, Lcom/a/b/f/a/a;->j:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    goto :goto_6

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private c(I)I
    .registers 6

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/a/b/f/a/a;->a:Lcom/a/b/f/ap;

    invoke-virtual {v1, p1}, Lcom/a/b/f/ap;->c(I)Lcom/a/b/f/an;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {v1}, Lcom/a/b/f/an;->e()Lcom/a/b/e/b/aa;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/a/b/e/b/aa;->a()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    invoke-virtual {v1}, Lcom/a/b/f/an;->f()Lcom/a/b/e/b/j;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/f;

    invoke-virtual {v0}, Lcom/a/b/e/b/f;->g_()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/p;

    invoke-virtual {v0}, Lcom/a/b/e/c/p;->i_()I

    move-result v0

    goto :goto_9
.end method

.method private c(II)I
    .registers 4

    invoke-direct {p0, p2}, Lcom/a/b/f/a/a;->d(I)Lcom/a/b/f/a/c;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/a/b/f/a/a;->a(IILcom/a/b/f/a/c;)I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/a/b/f/a/a;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/a/a;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c()V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/b/f/a/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v3, -0x1

    move v5, v2

    :goto_1e
    if-lt v5, v7, :cond_29

    move v1, v2

    move v4, v3

    :goto_22
    if-ltz v4, :cond_b

    const/4 v3, 0x1

    invoke-direct {p0, v0, v4, v1, v3}, Lcom/a/b/f/a/a;->a(Ljava/util/ArrayList;IIZ)Z

    goto :goto_b

    :cond_29
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/e/b/u;

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/a/b/f/a/a;->c(I)I

    move-result v4

    if-ltz v4, :cond_42

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->k()I

    move-result v3

    invoke-direct {p0, v1, v4}, Lcom/a/b/f/a/a;->b(Lcom/a/b/e/b/u;I)V

    move v1, v3

    goto :goto_22

    :cond_42
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v3, v4

    goto :goto_1e
.end method

.method private d(II)I
    .registers 8

    invoke-direct {p0, p2}, Lcom/a/b/f/a/a;->d(I)Lcom/a/b/f/a/c;

    move-result-object v2

    iget-object v0, p0, Lcom/a/b/f/a/a;->k:Ljava/util/BitSet;

    invoke-virtual {v2, v0, p1}, Lcom/a/b/f/a/c;->a(Ljava/util/BitSet;I)I

    move-result v0

    :goto_a
    const/4 v1, 0x1

    :goto_b
    if-ge v1, p2, :cond_17

    iget-object v3, p0, Lcom/a/b/f/a/a;->k:Ljava/util/BitSet;

    add-int v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_17
    if-ne v1, p2, :cond_1d

    return v0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1d
    iget-object v3, p0, Lcom/a/b/f/a/a;->k:Ljava/util/BitSet;

    add-int/2addr v0, v1

    invoke-virtual {v2, v3, v0}, Lcom/a/b/f/a/c;->a(Ljava/util/BitSet;I)I

    move-result v0

    goto :goto_a
.end method

.method private d(I)Lcom/a/b/f/a/c;
    .registers 4

    sget-object v0, Lcom/a/b/f/a/c;->c:Lcom/a/b/f/a/c;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_f

    iget v0, p0, Lcom/a/b/f/a/a;->i:I

    invoke-static {v0}, Lcom/a/b/f/a/a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/a/b/f/a/c;->a:Lcom/a/b/f/a/c;

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    sget-object v0, Lcom/a/b/f/a/c;->b:Lcom/a/b/f/a/c;

    goto :goto_f
.end method

.method static synthetic d(Lcom/a/b/f/a/a;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/a/a;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d()V
    .registers 13

    const/4 v8, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/a/b/f/a/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/a/b/f/a/a;->i:I

    move v2, v3

    move v4, v1

    :goto_1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v7, v3

    move v6, v8

    :goto_23
    if-lt v7, v10, :cond_39

    invoke-direct {p0, v4, v6}, Lcom/a/b/f/a/a;->d(II)I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/a/b/f/a/a;->a(Ljava/util/ArrayList;I)Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-direct {p0, v0, v4, v6, v8}, Lcom/a/b/f/a/a;->a(Ljava/util/ArrayList;IIZ)Z

    move-result v1

    :goto_33
    if-nez v1, :cond_c

    add-int/lit8 v4, v4, 0x1

    move v2, v1

    goto :goto_1d

    :cond_39
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/e/b/u;

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->k()I

    move-result v5

    iget-object v11, p0, Lcom/a/b/f/a/a;->g:Ljava/util/BitSet;

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_59

    if-le v5, v6, :cond_59

    move v1, v5

    :goto_52
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move v6, v1

    goto :goto_23

    :cond_57
    move v1, v2

    goto :goto_33

    :cond_59
    move v1, v6

    goto :goto_52
.end method

.method private e(I)Lcom/a/b/e/b/o;
    .registers 6

    iget-object v0, p0, Lcom/a/b/f/a/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/e/b/u;

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    if-ne v1, p1, :cond_22

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/o;

    goto :goto_11
.end method

.method private e()V
    .registers 5

    iget-object v0, p0, Lcom/a/b/f/a/a;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->g()I

    move-result v1

    const/4 v0, 0x0

    :goto_7
    if-lt v0, v1, :cond_a

    return-void

    :cond_a
    iget-object v2, p0, Lcom/a/b/f/a/a;->g:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_12
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    invoke-direct {p0, v0}, Lcom/a/b/f/a/a;->c(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/a/b/f/a/a;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    if-ltz v2, :cond_12

    invoke-direct {p0, v3, v2}, Lcom/a/b/f/a/a;->b(Lcom/a/b/e/b/u;I)V

    goto :goto_12
.end method

.method private e(II)Z
    .registers 5

    iget v0, p0, Lcom/a/b/f/a/a;->i:I

    if-ge p1, v0, :cond_c

    add-int v0, p1, p2

    iget v1, p0, Lcom/a/b/f/a/a;->i:I

    if-le v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/z;

    invoke-direct {p0, v0}, Lcom/a/b/f/a/a;->a(Lcom/a/b/f/z;)V

    goto :goto_6
.end method

.method private static f(I)Z
    .registers 2

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private g()V
    .registers 13

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/a/b/f/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/z;

    invoke-virtual {v0}, Lcom/a/b/f/z;->o()Lcom/a/b/e/b/u;

    move-result-object v7

    invoke-virtual {v7}, Lcom/a/b/e/b/u;->g()I

    move-result v8

    invoke-virtual {v0}, Lcom/a/b/f/z;->p()Lcom/a/b/f/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/f/aj;->h()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/a/b/f/a/a;->a:Lcom/a/b/f/ap;

    invoke-virtual {v1}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/f/an;->e()Lcom/a/b/e/b/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/aa;->a()I

    move-result v1

    const/16 v4, 0x2b

    if-ne v1, v4, :cond_8

    invoke-virtual {v0}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v9

    invoke-virtual {v9}, Lcom/a/b/e/b/u;->g()I

    move-result v10

    invoke-virtual {v9}, Lcom/a/b/e/b/u;->k()I

    move-result v11

    iget-object v1, p0, Lcom/a/b/f/a/a;->g:Ljava/util/BitSet;

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    iget-object v4, p0, Lcom/a/b/f/a/a;->g:Ljava/util/BitSet;

    invoke-virtual {v4, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_e6

    move v5, v3

    :goto_76
    and-int/2addr v5, v1

    if-eqz v5, :cond_f3

    iget-object v4, p0, Lcom/a/b/f/a/a;->h:Lcom/a/b/f/r;

    invoke-virtual {v4, v8}, Lcom/a/b/f/r;->a(I)I

    move-result v4

    invoke-direct {p0, v9, v4, v11}, Lcom/a/b/f/a/a;->a(Lcom/a/b/e/b/u;II)Z

    move-result v4

    move v5, v4

    :goto_84
    if-eqz v1, :cond_e8

    move v4, v3

    :goto_87
    and-int/2addr v4, v5

    if-eqz v4, :cond_94

    iget-object v1, p0, Lcom/a/b/f/a/a;->h:Lcom/a/b/f/r;

    invoke-virtual {v1, v10}, Lcom/a/b/f/r;->a(I)I

    move-result v1

    invoke-direct {p0, v7, v1, v11}, Lcom/a/b/f/a/a;->a(Lcom/a/b/e/b/u;II)Z

    move-result v1

    :cond_94
    if-eqz v1, :cond_98

    if-nez v5, :cond_b0

    :cond_98
    iget v1, p0, Lcom/a/b/f/a/a;->i:I

    invoke-direct {p0, v1, v11}, Lcom/a/b/f/a/a;->c(II)I

    move-result v1

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_aa
    invoke-direct {p0, v4, v1, v11, v3}, Lcom/a/b/f/a/a;->a(Ljava/util/ArrayList;IIZ)Z

    move-result v5

    if-eqz v5, :cond_ea

    :cond_b0
    invoke-virtual {v0}, Lcom/a/b/f/an;->f()Lcom/a/b/e/b/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/j;->b()Lcom/a/b/e/d/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/a/b/e/d/e;->d_()I

    move-result v1

    if-eqz v1, :cond_f1

    move v1, v2

    :goto_bf
    iget-object v4, p0, Lcom/a/b/f/a/a;->h:Lcom/a/b/f/r;

    invoke-virtual {v4, v8}, Lcom/a/b/f/r;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/a/b/f/a/a;->h:Lcom/a/b/f/r;

    invoke-virtual {v5, v10}, Lcom/a/b/f/r;->a(I)I

    move-result v5

    if-eq v4, v5, :cond_8

    if-nez v1, :cond_8

    move-object v1, v0

    check-cast v1, Lcom/a/b/f/z;

    invoke-virtual {p0, v0, v9}, Lcom/a/b/f/a/a;->a(Lcom/a/b/f/an;Lcom/a/b/e/b/u;)Lcom/a/b/e/b/u;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/a/b/f/z;->a(ILcom/a/b/e/b/u;)V

    invoke-virtual {v0}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/a/b/f/a/a;->b(Lcom/a/b/e/b/u;I)V

    goto/16 :goto_8

    :cond_e6
    move v5, v2

    goto :goto_76

    :cond_e8
    move v4, v2

    goto :goto_87

    :cond_ea
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v11}, Lcom/a/b/f/a/a;->c(II)I

    move-result v1

    goto :goto_aa

    :cond_f1
    move v1, v3

    goto :goto_bf

    :cond_f3
    move v5, v4

    goto :goto_84
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/ac;

    invoke-direct {p0, v0}, Lcom/a/b/f/a/a;->a(Lcom/a/b/f/ac;)V

    goto :goto_6
.end method

.method private i()V
    .registers 7

    iget-object v0, p0, Lcom/a/b/f/a/a;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->g()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-lt v1, v2, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/a/b/f/a/a;->g:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_13
    :goto_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_17
    invoke-virtual {p0, v1}, Lcom/a/b/f/a/a;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->k()I

    move-result v4

    iget v0, p0, Lcom/a/b/f/a/a;->i:I

    invoke-direct {p0, v0, v4}, Lcom/a/b/f/a/a;->c(II)I

    move-result v0

    :goto_27
    invoke-direct {p0, v3, v0}, Lcom/a/b/f/a/a;->a(Lcom/a/b/e/b/u;I)Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-direct {p0, v3, v0}, Lcom/a/b/f/a/a;->b(Lcom/a/b/e/b/u;I)V

    goto :goto_13

    :cond_31
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v4}, Lcom/a/b/f/a/a;->c(II)I

    move-result v0

    goto :goto_27
.end method

.method private j()V
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/a/a;->a:Lcom/a/b/f/ap;

    new-instance v1, Lcom/a/b/f/a/b;

    invoke-direct {v1, p0}, Lcom/a/b/f/a/b;-><init>(Lcom/a/b/f/a/a;)V

    invoke-virtual {v0, v1}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/ao;)V

    return-void
.end method


# virtual methods
.method a(Lcom/a/b/g/o;)Lcom/a/b/e/b/x;
    .registers 6

    new-instance v1, Lcom/a/b/e/b/x;

    invoke-interface {p1}, Lcom/a/b/g/o;->a()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/a/b/e/b/x;-><init>(I)V

    invoke-interface {p1}, Lcom/a/b/g/o;->b()Lcom/a/b/g/m;

    move-result-object v2

    const/4 v0, 0x0

    :goto_e
    invoke-interface {v2}, Lcom/a/b/g/m;->a()Z

    move-result v3

    if-nez v3, :cond_15

    return-object v1

    :cond_15
    invoke-interface {v2}, Lcom/a/b/g/m;->b()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/a/b/f/a/a;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/a/b/e/b/x;->a(ILcom/a/b/e/b/u;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/a/b/f/ag;
    .registers 2

    invoke-direct {p0}, Lcom/a/b/f/a/a;->j()V

    invoke-direct {p0}, Lcom/a/b/f/a/a;->c()V

    invoke-direct {p0}, Lcom/a/b/f/a/a;->e()V

    invoke-direct {p0}, Lcom/a/b/f/a/a;->f()V

    invoke-direct {p0}, Lcom/a/b/f/a/a;->d()V

    invoke-direct {p0}, Lcom/a/b/f/a/a;->g()V

    invoke-direct {p0}, Lcom/a/b/f/a/a;->h()V

    invoke-direct {p0}, Lcom/a/b/f/a/a;->i()V

    iget-object v0, p0, Lcom/a/b/f/a/a;->h:Lcom/a/b/f/r;

    return-object v0
.end method
