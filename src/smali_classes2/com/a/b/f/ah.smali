.class public Lcom/a/b/f/ah;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/f/ap;

.field private final b:I

.field private final c:[I

.field private final d:[Lcom/a/b/e/c/a;

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/ArrayList;

.field private final g:Ljava/util/BitSet;

.field private final h:Ljava/util/ArrayList;

.field private final i:Ljava/util/ArrayList;

.field private final j:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Lcom/a/b/f/ap;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/f/ah;->a:Lcom/a/b/f/ap;

    invoke-virtual {p1}, Lcom/a/b/f/ap;->g()I

    move-result v0

    iput v0, p0, Lcom/a/b/f/ah;->b:I

    iget v0, p0, Lcom/a/b/f/ah;->b:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/a/b/f/ah;->c:[I

    iget v0, p0, Lcom/a/b/f/ah;->b:I

    new-array v0, v0, [Lcom/a/b/e/c/a;

    iput-object v0, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/ah;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/ah;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/f/ah;->g:Ljava/util/BitSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/ah;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/ah;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/ah;->j:Ljava/util/ArrayList;

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/a/b/f/ah;->b:I

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/a/b/f/ah;->c:[I

    aput v1, v2, v0

    iget-object v2, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/a/b/f/an;I)Lcom/a/b/e/c/a;
    .registers 11

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/a/b/f/an;->f()Lcom/a/b/e/b/j;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/f/an;->e()Lcom/a/b/e/b/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/aa;->a()I

    move-result v6

    invoke-virtual {p1}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    iget-object v2, p0, Lcom/a/b/f/ah;->c:[I

    aget v2, v2, v1

    if-eq v2, v5, :cond_1

    move-object v1, v3

    :goto_0
    invoke-virtual {v7}, Lcom/a/b/e/b/x;->d_()I

    move-result v2

    if-ne v2, v5, :cond_2

    check-cast v0, Lcom/a/b/e/b/f;

    invoke-virtual {v0}, Lcom/a/b/e/b/f;->g_()Lcom/a/b/e/c/a;

    move-result-object v2

    :goto_1
    if-eqz v1, :cond_0

    if-nez v2, :cond_4

    :cond_0
    :goto_2
    return-object v3

    :cond_1
    iget-object v2, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aget-object v1, v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v7, v5}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    iget-object v2, p0, Lcom/a/b/f/ah;->c:[I

    aget v2, v2, v0

    if-eq v2, v5, :cond_3

    move-object v2, v3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aget-object v2, v2, v0

    goto :goto_1

    :cond_4
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    move-object v0, v1

    check-cast v0, Lcom/a/b/e/c/p;

    invoke-virtual {v0}, Lcom/a/b/e/c/p;->i_()I

    move-result v1

    move-object v0, v2

    check-cast v0, Lcom/a/b/e/c/p;

    invoke-virtual {v0}, Lcom/a/b/e/c/p;->i_()I

    move-result v0

    packed-switch v6, :pswitch_data_1

    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected op"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    add-int/2addr v0, v1

    move v1, v4

    :goto_3
    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/a/b/e/c/p;->a(I)Lcom/a/b/e/c/p;

    move-result-object v3

    goto :goto_2

    :pswitch_3
    invoke-virtual {v7}, Lcom/a/b/e/b/x;->d_()I

    move-result v2

    if-ne v2, v5, :cond_5

    sub-int/2addr v0, v1

    move v1, v4

    goto :goto_3

    :cond_5
    sub-int v0, v1, v0

    move v1, v4

    goto :goto_3

    :pswitch_4
    mul-int/2addr v0, v1

    move v1, v4

    goto :goto_3

    :pswitch_5
    if-nez v0, :cond_6

    move v0, v4

    move v1, v5

    goto :goto_3

    :cond_6
    div-int v0, v1, v0

    move v1, v4

    goto :goto_3

    :pswitch_6
    and-int/2addr v0, v1

    move v1, v4

    goto :goto_3

    :pswitch_7
    or-int/2addr v0, v1

    move v1, v4

    goto :goto_3

    :pswitch_8
    xor-int/2addr v0, v1

    move v1, v4

    goto :goto_3

    :pswitch_9
    shl-int v0, v1, v0

    move v1, v4

    goto :goto_3

    :pswitch_a
    shr-int v0, v1, v0

    move v1, v4

    goto :goto_3

    :pswitch_b
    ushr-int v0, v1, v0

    move v1, v4

    goto :goto_3

    :pswitch_c
    if-nez v0, :cond_7

    move v0, v4

    move v1, v5

    goto :goto_3

    :cond_7
    rem-int v0, v1, v0

    move v1, v4

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_c
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private a()V
    .registers 4

    iget-object v0, p0, Lcom/a/b/f/ah;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->d()Lcom/a/b/f/aj;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->a(Lcom/a/b/f/aj;)V

    :cond_0
    iget-object v0, p0, Lcom/a/b/f/ah;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/b/f/ah;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/b/f/ah;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/b/f/ah;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/a/b/f/ah;->b()V

    invoke-direct {p0}, Lcom/a/b/f/ah;->c()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/b/f/ah;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/ah;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->b(Lcom/a/b/f/aj;)V

    :cond_2
    iget-object v0, p0, Lcom/a/b/f/ah;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/a/b/f/ah;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/a/b/f/ah;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/a/b/f/ah;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/b/f/ah;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/ah;->h:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    iget-object v1, p0, Lcom/a/b/f/ah;->g:Ljava/util/BitSet;

    invoke-virtual {v0}, Lcom/a/b/f/an;->p()Lcom/a/b/f/aj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/f/aj;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, v0, Lcom/a/b/f/ac;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/a/b/f/ac;

    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->a(Lcom/a/b/f/ac;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/a/b/f/ah;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/ah;->f:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->c(Lcom/a/b/f/aj;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/a/b/f/ah;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/ah;->i:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    iget-object v1, p0, Lcom/a/b/f/ah;->g:Ljava/util/BitSet;

    invoke-virtual {v0}, Lcom/a/b/f/an;->p()Lcom/a/b/f/aj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/f/aj;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, v0, Lcom/a/b/f/ac;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/a/b/f/ac;

    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->a(Lcom/a/b/f/ac;)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->b(Lcom/a/b/f/an;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->b(Lcom/a/b/f/an;)V

    goto :goto_2
.end method

.method private a(II)V
    .registers 6

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/a/b/f/ah;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, p1}, Lcom/a/b/f/ap;->d(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    check-cast v0, Lcom/a/b/f/an;

    iget-object v2, p0, Lcom/a/b/f/ah;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/a/b/f/ah;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, p1}, Lcom/a/b/f/ap;->d(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    iget-object v2, p0, Lcom/a/b/f/ah;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private a(Lcom/a/b/f/ac;)V
    .registers 14

    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/a/b/f/ac;->o()Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v6

    iget-object v2, p0, Lcom/a/b/f/ah;->c:[I

    aget v2, v2, v6

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/a/b/f/ac;->b()Lcom/a/b/e/b/x;

    move-result-object v7

    invoke-virtual {v7}, Lcom/a/b/e/b/x;->d_()I

    move-result v8

    const/4 v3, 0x0

    move v5, v1

    move v2, v1

    :goto_1
    if-lt v5, v8, :cond_3

    move v0, v2

    :cond_2
    :goto_2
    invoke-direct {p0, v6, v0, v3}, Lcom/a/b/f/ah;->a(IILcom/a/b/e/c/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v6, v0}, Lcom/a/b/f/ah;->a(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v5}, Lcom/a/b/f/ac;->a(I)I

    move-result v9

    invoke-virtual {v7, v5}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v10

    iget-object v1, p0, Lcom/a/b/f/ah;->c:[I

    aget v1, v1, v10

    iget-object v11, p0, Lcom/a/b/f/ah;->g:Ljava/util/BitSet;

    invoke-virtual {v11, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_4

    move-object v1, v3

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object v3, v1

    goto :goto_1

    :cond_4
    if-ne v1, v4, :cond_6

    if-nez v3, :cond_5

    iget-object v1, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aget-object v1, v1, v10

    move v2, v4

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aget-object v1, v1, v10

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v3

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method private a(Lcom/a/b/f/aj;)V
    .registers 4

    iget-object v0, p0, Lcom/a/b/f/ah;->g:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/a/b/f/aj;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/b/f/ah;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/b/f/ah;->g:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/a/b/f/aj;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/b/f/ah;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Lcom/a/b/f/an;)V
    .registers 11

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/a/b/f/an;->e()Lcom/a/b/e/b/aa;

    move-result-object v5

    invoke-virtual {p1}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v6

    invoke-virtual {v5}, Lcom/a/b/e/b/aa;->d()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    invoke-virtual {v6, v4}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    iget-object v7, p0, Lcom/a/b/f/ah;->a:Lcom/a/b/f/ap;

    invoke-virtual {v7, v1}, Lcom/a/b/f/ap;->a(Lcom/a/b/e/b/u;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/a/b/f/ah;->c:[I

    aget v1, v1, v2

    if-ne v1, v3, :cond_12

    iget-object v1, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aget-object v1, v1, v2

    :goto_0
    invoke-virtual {v6}, Lcom/a/b/e/b/x;->d_()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_11

    invoke-virtual {v6, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v7

    iget-object v8, p0, Lcom/a/b/f/ah;->a:Lcom/a/b/f/ap;

    invoke-virtual {v8, v2}, Lcom/a/b/f/ap;->a(Lcom/a/b/e/b/u;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/a/b/f/ah;->c:[I

    aget v2, v2, v7

    if-ne v2, v3, :cond_11

    iget-object v0, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aget-object v2, v0, v7

    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {v6}, Lcom/a/b/e/b/x;->d_()I

    move-result v0

    if-ne v0, v3, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/a/b/e/c/ag;

    invoke-virtual {v0}, Lcom/a/b/e/c/ag;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v1, v4

    move v0, v4

    :goto_2
    invoke-virtual {p1}, Lcom/a/b/f/an;->p()Lcom/a/b/f/aj;

    move-result-object v2

    if-eqz v1, :cond_10

    if-eqz v0, :cond_e

    invoke-virtual {v2}, Lcom/a/b/f/aj;->j()Lcom/a/b/g/n;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    :goto_3
    iget-object v1, p0, Lcom/a/b/f/ah;->a:Lcom/a/b/f/ap;

    invoke-virtual {v1}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->a(Lcom/a/b/f/aj;)V

    iget-object v0, p0, Lcom/a/b/f/ah;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    return-void

    :pswitch_0
    check-cast v1, Lcom/a/b/e/c/p;

    invoke-virtual {v1}, Lcom/a/b/e/c/p;->i_()I

    move-result v0

    invoke-virtual {v5}, Lcom/a/b/e/b/aa;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected op"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    if-nez v0, :cond_0

    move v0, v3

    :goto_5
    move v1, v3

    goto :goto_2

    :cond_0
    move v0, v4

    goto :goto_5

    :pswitch_2
    if-eqz v0, :cond_1

    move v0, v3

    :goto_6
    move v1, v3

    goto :goto_2

    :cond_1
    move v0, v4

    goto :goto_6

    :pswitch_3
    if-gez v0, :cond_2

    move v0, v3

    :goto_7
    move v1, v3

    goto :goto_2

    :cond_2
    move v0, v4

    goto :goto_7

    :pswitch_4
    if-ltz v0, :cond_3

    move v0, v3

    :goto_8
    move v1, v3

    goto :goto_2

    :cond_3
    move v0, v4

    goto :goto_8

    :pswitch_5
    if-gtz v0, :cond_4

    move v0, v3

    :goto_9
    move v1, v3

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_9

    :pswitch_6
    if-lez v0, :cond_5

    move v0, v3

    :goto_a
    move v1, v3

    goto :goto_2

    :cond_5
    move v0, v4

    goto :goto_a

    :cond_6
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    move-object v0, v1

    check-cast v0, Lcom/a/b/e/c/ag;

    invoke-virtual {v0}, Lcom/a/b/e/c/ag;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    :cond_7
    move v1, v4

    move v0, v4

    goto :goto_2

    :pswitch_7
    check-cast v1, Lcom/a/b/e/c/p;

    invoke-virtual {v1}, Lcom/a/b/e/c/p;->i_()I

    move-result v1

    move-object v0, v2

    check-cast v0, Lcom/a/b/e/c/p;

    invoke-virtual {v0}, Lcom/a/b/e/c/p;->i_()I

    move-result v0

    invoke-virtual {v5}, Lcom/a/b/e/b/aa;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected op"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    if-ne v1, v0, :cond_8

    move v0, v3

    :goto_b
    move v1, v3

    goto/16 :goto_2

    :cond_8
    move v0, v4

    goto :goto_b

    :pswitch_9
    if-eq v1, v0, :cond_9

    move v0, v3

    :goto_c
    move v1, v3

    goto/16 :goto_2

    :cond_9
    move v0, v4

    goto :goto_c

    :pswitch_a
    if-ge v1, v0, :cond_a

    move v0, v3

    :goto_d
    move v1, v3

    goto/16 :goto_2

    :cond_a
    move v0, v4

    goto :goto_d

    :pswitch_b
    if-lt v1, v0, :cond_b

    move v0, v3

    :goto_e
    move v1, v3

    goto/16 :goto_2

    :cond_b
    move v0, v4

    goto :goto_e

    :pswitch_c
    if-gt v1, v0, :cond_c

    move v0, v3

    :goto_f
    move v1, v3

    goto/16 :goto_2

    :cond_c
    move v0, v4

    goto :goto_f

    :pswitch_d
    if-le v1, v0, :cond_d

    move v0, v3

    :goto_10
    move v1, v3

    goto/16 :goto_2

    :cond_d
    move v0, v4

    goto :goto_10

    :cond_e
    invoke-virtual {v2}, Lcom/a/b/f/aj;->j()Lcom/a/b/g/n;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    goto/16 :goto_3

    :cond_f
    invoke-virtual {v2}, Lcom/a/b/f/aj;->j()Lcom/a/b/g/n;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/ah;->a:Lcom/a/b/f/ap;

    invoke-virtual {v1}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->a(Lcom/a/b/f/aj;)V

    add-int/lit8 v4, v4, 0x1

    :cond_10
    invoke-virtual {v2}, Lcom/a/b/f/aj;->j()Lcom/a/b/g/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v0

    if-lt v4, v0, :cond_f

    goto/16 :goto_4

    :cond_11
    move-object v2, v0

    goto/16 :goto_1

    :cond_12
    move-object v1, v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static a(Lcom/a/b/f/ap;)V
    .registers 2

    new-instance v0, Lcom/a/b/f/ah;

    invoke-direct {v0, p0}, Lcom/a/b/f/ah;-><init>(Lcom/a/b/f/ap;)V

    invoke-direct {v0}, Lcom/a/b/f/ah;->a()V

    return-void
.end method

.method private a(IILcom/a/b/e/c/a;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    iget-object v2, p0, Lcom/a/b/f/ah;->c:[I

    aget v2, v2, p1

    if-eq v2, p2, :cond_0

    iget-object v1, p0, Lcom/a/b/f/ah;->c:[I

    aput p2, v1, p1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/a/b/f/ah;->c:[I

    aget v2, v2, p1

    if-ne v2, p2, :cond_2

    iget-object v2, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aget-object v2, v2, p1

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/a/b/f/ah;->c:[I

    aput p2, v1, p1

    iget-object v1, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aput-object p3, v1, p1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private b()V
    .registers 7

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget v0, p0, Lcom/a/b/f/ah;->b:I

    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/b/f/ah;->c:[I

    aget v0, v0, v2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aget-object v0, v0, v2

    instance-of v0, v0, Lcom/a/b/e/c/ag;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/b/f/ah;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, v2}, Lcom/a/b/f/ap;->c(I)Lcom/a/b/f/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/b/e/d/d;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v3

    iget-object v0, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aget-object v0, v0, v2

    check-cast v0, Lcom/a/b/e/c/ag;

    invoke-virtual {v3, v0}, Lcom/a/b/e/b/u;->a(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/a/b/f/an;->b(Lcom/a/b/e/b/u;)V

    iget-object v0, p0, Lcom/a/b/f/ah;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, v2}, Lcom/a/b/f/ap;->d(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/f/an;->l()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/a/b/f/z;

    invoke-virtual {v0}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/a/b/e/b/x;->c(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v5

    iget-object v0, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aget-object v0, v0, v2

    check-cast v0, Lcom/a/b/e/c/ag;

    invoke-virtual {v5, v0}, Lcom/a/b/e/b/u;->a(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/a/b/f/z;->a(ILcom/a/b/e/b/u;)V

    goto :goto_1
.end method

.method private b(Lcom/a/b/f/aj;)V
    .registers 5

    invoke-virtual {p1}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    instance-of v2, v0, Lcom/a/b/f/ac;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/a/b/f/ac;

    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->a(Lcom/a/b/f/ac;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->b(Lcom/a/b/f/an;)V

    goto :goto_0
.end method

.method private b(Lcom/a/b/f/an;)V
    .registers 9

    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/a/b/f/an;->f()Lcom/a/b/e/b/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->d()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {v1}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/a/b/f/ah;->a(Lcom/a/b/f/an;)V

    :cond_1
    invoke-virtual {p1}, Lcom/a/b/f/an;->e()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->a()I

    move-result v4

    invoke-virtual {p1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    if-nez v0, :cond_3

    const/16 v0, 0x11

    if-eq v4, v0, :cond_2

    const/16 v0, 0x12

    if-ne v4, v0, :cond_5

    :cond_2
    invoke-virtual {p1}, Lcom/a/b/f/an;->p()Lcom/a/b/f/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/f/aj;->m()Lcom/a/b/f/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v5

    sparse-switch v4, :sswitch_data_0

    :cond_4
    const/4 v1, 0x0

    move v0, v2

    :goto_0
    invoke-direct {p0, v5, v0, v1}, Lcom/a/b/f/ah;->a(IILcom/a/b/e/c/a;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v5, v0}, Lcom/a/b/f/ah;->a(II)V

    :cond_5
    return-void

    :sswitch_0
    move-object v0, v1

    check-cast v0, Lcom/a/b/e/b/f;

    invoke-virtual {v0}, Lcom/a/b/e/b/f;->g_()Lcom/a/b/e/c/a;

    move-result-object v1

    move v0, v3

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->d_()I

    move-result v0

    if-ne v0, v3, :cond_4

    invoke-virtual {p1}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    iget-object v0, p0, Lcom/a/b/f/ah;->c:[I

    aget v0, v0, v1

    iget-object v2, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aget-object v1, v2, v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0}, Lcom/a/b/e/b/u;->c()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/a/b/f/ah;->a(Lcom/a/b/f/an;I)Lcom/a/b/e/c/a;

    move-result-object v1

    if-eqz v1, :cond_6

    move v0, v3

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/a/b/f/ah;->c:[I

    aget v0, v0, v5

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/a/b/f/ah;->c:[I

    aget v0, v0, v5

    iget-object v1, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aget-object v1, v1, v5

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
        0xe -> :sswitch_2
        0xf -> :sswitch_2
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x12 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
        0x17 -> :sswitch_2
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x38 -> :sswitch_3
    .end sparse-switch
.end method

.method private c()V
    .registers 10

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/a/b/f/ah;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/f/an;->p()Lcom/a/b/f/aj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/b/f/aj;->j()Lcom/a/b/g/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/g/n;->b()I

    move-result v7

    const/4 v1, 0x0

    move v3, v1

    move v2, v4

    :goto_1
    if-lt v3, v7, :cond_2

    const/4 v1, 0x2

    if-ne v7, v1, :cond_0

    if-eq v2, v4, :cond_0

    invoke-virtual {v0}, Lcom/a/b/f/an;->f()Lcom/a/b/e/b/j;

    move-result-object v0

    new-instance v1, Lcom/a/b/e/b/s;

    sget-object v3, Lcom/a/b/e/b/ac;->s:Lcom/a/b/e/b/aa;

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->g()Lcom/a/b/e/b/ad;

    move-result-object v0

    const/4 v7, 0x0

    sget-object v8, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {v1, v3, v0, v7, v8}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-virtual {v6, v1}, Lcom/a/b/f/aj;->b(Lcom/a/b/e/b/j;)V

    invoke-virtual {v6, v2}, Lcom/a/b/f/aj;->b(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Lcom/a/b/f/aj;->j()Lcom/a/b/g/n;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/a/b/g/n;->b(I)I

    move-result v1

    iget-object v8, p0, Lcom/a/b/f/ah;->g:Ljava/util/BitSet;

    invoke-virtual {v8, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private c(Lcom/a/b/f/aj;)V
    .registers 5

    invoke-virtual {p1}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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

    check-cast v0, Lcom/a/b/f/an;

    instance-of v2, v0, Lcom/a/b/f/ac;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/a/b/f/ac;

    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->a(Lcom/a/b/f/ac;)V

    goto :goto_0
.end method
