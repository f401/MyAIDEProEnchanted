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

    :goto_4b
    iget v2, p0, Lcom/a/b/f/ah;->b:I

    if-lt v0, v2, :cond_50

    return-void

    :cond_50
    iget-object v2, p0, Lcom/a/b/f/ah;->c:[I

    aput v1, v2, v0

    iget-object v2, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4b
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

    if-eq v2, v5, :cond_33

    move-object v1, v3

    :goto_22
    invoke-virtual {v7}, Lcom/a/b/e/b/x;->d_()I

    move-result v2

    if-ne v2, v5, :cond_38

    check-cast v0, Lcom/a/b/e/b/f;

    invoke-virtual {v0}, Lcom/a/b/e/b/f;->g_()Lcom/a/b/e/c/a;

    move-result-object v2

    :goto_2e
    if-eqz v1, :cond_32

    if-nez v2, :cond_4d

    :cond_32
    :goto_32
    return-object v3

    :cond_33
    iget-object v2, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aget-object v1, v2, v1

    goto :goto_22

    :cond_38
    invoke-virtual {v7, v5}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    iget-object v2, p0, Lcom/a/b/f/ah;->c:[I

    aget v2, v2, v0

    if-eq v2, v5, :cond_48

    move-object v2, v3

    goto :goto_2e

    :cond_48
    iget-object v2, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aget-object v2, v2, v0

    goto :goto_2e

    :cond_4d
    packed-switch p2, :pswitch_data_aa

    goto :goto_32

    :pswitch_51  #0x6
    move-object v0, v1

    check-cast v0, Lcom/a/b/e/c/p;

    invoke-virtual {v0}, Lcom/a/b/e/c/p;->i_()I

    move-result v1

    move-object v0, v2

    check-cast v0, Lcom/a/b/e/c/p;

    invoke-virtual {v0}, Lcom/a/b/e/c/p;->i_()I

    move-result v0

    packed-switch v6, :pswitch_data_b0

    :pswitch_62  #0x13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected op"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6a  #0xe
    add-int/2addr v0, v1

    move v1, v4

    :goto_6c
    if-nez v1, :cond_32

    invoke-static {v0}, Lcom/a/b/e/c/p;->a(I)Lcom/a/b/e/c/p;

    move-result-object v3

    goto :goto_32

    :pswitch_73  #0xf
    invoke-virtual {v7}, Lcom/a/b/e/b/x;->d_()I

    move-result v2

    if-ne v2, v5, :cond_7c

    sub-int/2addr v0, v1

    move v1, v4

    goto :goto_6c

    :cond_7c
    sub-int v0, v1, v0

    move v1, v4

    goto :goto_6c

    :pswitch_80  #0x10
    mul-int/2addr v0, v1

    move v1, v4

    goto :goto_6c

    :pswitch_83  #0x11
    if-nez v0, :cond_88

    move v0, v4

    move v1, v5

    goto :goto_6c

    :cond_88
    div-int v0, v1, v0

    move v1, v4

    goto :goto_6c

    :pswitch_8c  #0x14
    and-int/2addr v0, v1

    move v1, v4

    goto :goto_6c

    :pswitch_8f  #0x15
    or-int/2addr v0, v1

    move v1, v4

    goto :goto_6c

    :pswitch_92  #0x16
    xor-int/2addr v0, v1

    move v1, v4

    goto :goto_6c

    :pswitch_95  #0x17
    shl-int v0, v1, v0

    move v1, v4

    goto :goto_6c

    :pswitch_99  #0x18
    shr-int v0, v1, v0

    move v1, v4

    goto :goto_6c

    :pswitch_9d  #0x19
    ushr-int v0, v1, v0

    move v1, v4

    goto :goto_6c

    :pswitch_a1  #0x12
    if-nez v0, :cond_a6

    move v0, v4

    move v1, v5

    goto :goto_6c

    :cond_a6
    rem-int v0, v1, v0

    move v1, v4

    goto :goto_6c

    :pswitch_data_aa
    .packed-switch 0x6
        :pswitch_51  #00000006
    .end packed-switch

    :pswitch_data_b0
    .packed-switch 0xe
        :pswitch_6a  #0000000e
        :pswitch_73  #0000000f
        :pswitch_80  #00000010
        :pswitch_83  #00000011
        :pswitch_a1  #00000012
        :pswitch_62  #00000013
        :pswitch_8c  #00000014
        :pswitch_8f  #00000015
        :pswitch_92  #00000016
        :pswitch_95  #00000017
        :pswitch_99  #00000018
        :pswitch_9d  #00000019
    .end packed-switch
.end method

.method private a()V
    .registers 4

    iget-object v0, p0, Lcom/a/b/f/ah;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->d()Lcom/a/b/f/aj;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->a(Lcom/a/b/f/aj;)V

    :cond_9
    iget-object v0, p0, Lcom/a/b/f/ah;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/a/b/f/ah;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/a/b/f/ah;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/a/b/f/ah;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-direct {p0}, Lcom/a/b/f/ah;->b()V

    invoke-direct {p0}, Lcom/a/b/f/ah;->c()V

    return-void

    :cond_30
    iget-object v0, p0, Lcom/a/b/f/ah;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/ah;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->b(Lcom/a/b/f/aj;)V

    :cond_43
    iget-object v0, p0, Lcom/a/b/f/ah;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    :goto_4b
    iget-object v0, p0, Lcom/a/b/f/ah;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8d

    :cond_53
    :goto_53
    iget-object v0, p0, Lcom/a/b/f/ah;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a1

    :cond_5b
    :goto_5b
    iget-object v0, p0, Lcom/a/b/f/ah;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

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

    if-eqz v1, :cond_5b

    instance-of v1, v0, Lcom/a/b/f/ac;

    if-eqz v1, :cond_cf

    check-cast v0, Lcom/a/b/f/ac;

    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->a(Lcom/a/b/f/ac;)V

    goto :goto_5b

    :cond_8d
    iget-object v0, p0, Lcom/a/b/f/ah;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/ah;->f:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->c(Lcom/a/b/f/aj;)V

    goto :goto_4b

    :cond_a1
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

    if-eqz v1, :cond_53

    instance-of v1, v0, Lcom/a/b/f/ac;

    if-eqz v1, :cond_cb

    check-cast v0, Lcom/a/b/f/ac;

    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->a(Lcom/a/b/f/ac;)V

    goto :goto_53

    :cond_cb
    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->b(Lcom/a/b/f/an;)V

    goto :goto_53

    :cond_cf
    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->b(Lcom/a/b/f/an;)V

    goto :goto_5b
.end method

.method private a(II)V
    .registers 6

    const/4 v0, 0x2

    if-ne p2, v0, :cond_20

    iget-object v0, p0, Lcom/a/b/f/ah;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, p1}, Lcom/a/b/f/ap;->d(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    return-void

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    iget-object v2, p0, Lcom/a/b/f/ah;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_20
    iget-object v0, p0, Lcom/a/b/f/ah;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, p1}, Lcom/a/b/f/ap;->d(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    iget-object v2, p0, Lcom/a/b/f/ah;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a
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

    if-ne v2, v0, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    invoke-virtual {p1}, Lcom/a/b/f/ac;->b()Lcom/a/b/e/b/x;

    move-result-object v7

    invoke-virtual {v7}, Lcom/a/b/e/b/x;->d_()I

    move-result v8

    const/4 v3, 0x0

    move v5, v1

    move v2, v1

    :goto_1d
    if-lt v5, v8, :cond_2a

    move v0, v2

    :cond_20
    :goto_20
    invoke-direct {p0, v6, v0, v3}, Lcom/a/b/f/ah;->a(IILcom/a/b/e/c/a;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {p0, v6, v0}, Lcom/a/b/f/ah;->a(II)V

    goto :goto_11

    :cond_2a
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

    if-nez v9, :cond_47

    move-object v1, v3

    :goto_43
    add-int/lit8 v5, v5, 0x1

    move-object v3, v1

    goto :goto_1d

    :cond_47
    if-ne v1, v4, :cond_5d

    if-nez v3, :cond_51

    iget-object v1, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aget-object v1, v1, v10

    move v2, v4

    goto :goto_43

    :cond_51
    iget-object v1, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aget-object v1, v1, v10

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    move-object v1, v3

    goto :goto_43

    :cond_5d
    move v0, v1

    goto :goto_20
.end method

.method private a(Lcom/a/b/f/aj;)V
    .registers 4

    iget-object v0, p0, Lcom/a/b/f/ah;->g:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/a/b/f/aj;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/a/b/f/ah;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/b/f/ah;->g:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/a/b/f/aj;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/a/b/f/ah;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a
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

    if-ne v1, v2, :cond_d3

    invoke-virtual {v6, v4}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    iget-object v7, p0, Lcom/a/b/f/ah;->a:Lcom/a/b/f/ap;

    invoke-virtual {v7, v1}, Lcom/a/b/f/ap;->a(Lcom/a/b/e/b/u;)Z

    move-result v1

    if-nez v1, :cond_154

    iget-object v1, p0, Lcom/a/b/f/ah;->c:[I

    aget v1, v1, v2

    if-ne v1, v3, :cond_154

    iget-object v1, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aget-object v1, v1, v2

    :goto_2c
    invoke-virtual {v6}, Lcom/a/b/e/b/x;->d_()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_151

    invoke-virtual {v6, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v7

    iget-object v8, p0, Lcom/a/b/f/ah;->a:Lcom/a/b/f/ap;

    invoke-virtual {v8, v2}, Lcom/a/b/f/ap;->a(Lcom/a/b/e/b/u;)Z

    move-result v2

    if-nez v2, :cond_151

    iget-object v2, p0, Lcom/a/b/f/ah;->c:[I

    aget v2, v2, v7

    if-ne v2, v3, :cond_151

    iget-object v0, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aget-object v2, v0, v7

    :goto_4d
    if-eqz v1, :cond_c5

    invoke-virtual {v6}, Lcom/a/b/e/b/x;->d_()I

    move-result v0

    if-ne v0, v3, :cond_c5

    move-object v0, v1

    check-cast v0, Lcom/a/b/e/c/ag;

    invoke-virtual {v0}, Lcom/a/b/e/c/ag;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_158

    move v1, v4

    move v0, v4

    :goto_61
    invoke-virtual {p1}, Lcom/a/b/f/an;->p()Lcom/a/b/f/aj;

    move-result-object v2

    if-eqz v1, :cond_145

    if-eqz v0, :cond_122

    invoke-virtual {v2}, Lcom/a/b/f/aj;->j()Lcom/a/b/g/n;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    :goto_71
    iget-object v1, p0, Lcom/a/b/f/ah;->a:Lcom/a/b/f/ap;

    invoke-virtual {v1}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->a(Lcom/a/b/f/aj;)V

    iget-object v0, p0, Lcom/a/b/f/ah;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_85
    return-void

    :pswitch_86  #0x6
    check-cast v1, Lcom/a/b/e/c/p;

    invoke-virtual {v1}, Lcom/a/b/e/c/p;->i_()I

    move-result v0

    invoke-virtual {v5}, Lcom/a/b/e/b/aa;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_15e

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected op"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9b  #0x7
    if-nez v0, :cond_a0

    move v0, v3

    :goto_9e
    move v1, v3

    goto :goto_61

    :cond_a0
    move v0, v4

    goto :goto_9e

    :pswitch_a2  #0x8
    if-eqz v0, :cond_a7

    move v0, v3

    :goto_a5
    move v1, v3

    goto :goto_61

    :cond_a7
    move v0, v4

    goto :goto_a5

    :pswitch_a9  #0x9
    if-gez v0, :cond_ae

    move v0, v3

    :goto_ac
    move v1, v3

    goto :goto_61

    :cond_ae
    move v0, v4

    goto :goto_ac

    :pswitch_b0  #0xa
    if-ltz v0, :cond_b5

    move v0, v3

    :goto_b3
    move v1, v3

    goto :goto_61

    :cond_b5
    move v0, v4

    goto :goto_b3

    :pswitch_b7  #0xb
    if-gtz v0, :cond_bc

    move v0, v3

    :goto_ba
    move v1, v3

    goto :goto_61

    :cond_bc
    move v0, v4

    goto :goto_ba

    :pswitch_be  #0xc
    if-lez v0, :cond_c3

    move v0, v3

    :goto_c1
    move v1, v3

    goto :goto_61

    :cond_c3
    move v0, v4

    goto :goto_c1

    :cond_c5
    if-eqz v1, :cond_d3

    if-eqz v2, :cond_d3

    move-object v0, v1

    check-cast v0, Lcom/a/b/e/c/ag;

    invoke-virtual {v0}, Lcom/a/b/e/c/ag;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_16e

    :cond_d3
    move v1, v4

    move v0, v4

    goto :goto_61

    :pswitch_d6  #0x6
    check-cast v1, Lcom/a/b/e/c/p;

    invoke-virtual {v1}, Lcom/a/b/e/c/p;->i_()I

    move-result v1

    move-object v0, v2

    check-cast v0, Lcom/a/b/e/c/p;

    invoke-virtual {v0}, Lcom/a/b/e/c/p;->i_()I

    move-result v0

    invoke-virtual {v5}, Lcom/a/b/e/b/aa;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_174

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected op"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f2  #0x7
    if-ne v1, v0, :cond_f8

    move v0, v3

    :goto_f5
    move v1, v3

    goto/16 :goto_61

    :cond_f8
    move v0, v4

    goto :goto_f5

    :pswitch_fa  #0x8
    if-eq v1, v0, :cond_100

    move v0, v3

    :goto_fd
    move v1, v3

    goto/16 :goto_61

    :cond_100
    move v0, v4

    goto :goto_fd

    :pswitch_102  #0x9
    if-ge v1, v0, :cond_108

    move v0, v3

    :goto_105
    move v1, v3

    goto/16 :goto_61

    :cond_108
    move v0, v4

    goto :goto_105

    :pswitch_10a  #0xa
    if-lt v1, v0, :cond_110

    move v0, v3

    :goto_10d
    move v1, v3

    goto/16 :goto_61

    :cond_110
    move v0, v4

    goto :goto_10d

    :pswitch_112  #0xb
    if-gt v1, v0, :cond_118

    move v0, v3

    :goto_115
    move v1, v3

    goto/16 :goto_61

    :cond_118
    move v0, v4

    goto :goto_115

    :pswitch_11a  #0xc
    if-le v1, v0, :cond_120

    move v0, v3

    :goto_11d
    move v1, v3

    goto/16 :goto_61

    :cond_120
    move v0, v4

    goto :goto_11d

    :cond_122
    invoke-virtual {v2}, Lcom/a/b/f/aj;->j()Lcom/a/b/g/n;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    goto/16 :goto_71

    :cond_12c
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

    :cond_145
    invoke-virtual {v2}, Lcom/a/b/f/aj;->j()Lcom/a/b/g/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v0

    if-lt v4, v0, :cond_12c

    goto/16 :goto_85

    :cond_151
    move-object v2, v0

    goto/16 :goto_4d

    :cond_154
    move-object v1, v0

    goto/16 :goto_2c

    nop

    :pswitch_data_158
    .packed-switch 0x6
        :pswitch_86  #00000006
    .end packed-switch

    :pswitch_data_15e
    .packed-switch 0x7
        :pswitch_9b  #00000007
        :pswitch_a2  #00000008
        :pswitch_a9  #00000009
        :pswitch_b0  #0000000a
        :pswitch_b7  #0000000b
        :pswitch_be  #0000000c
    .end packed-switch

    :pswitch_data_16e
    .packed-switch 0x6
        :pswitch_d6  #00000006
    .end packed-switch

    :pswitch_data_174
    .packed-switch 0x7
        :pswitch_f2  #00000007
        :pswitch_fa  #00000008
        :pswitch_102  #00000009
        :pswitch_10a  #0000000a
        :pswitch_112  #0000000b
        :pswitch_11a  #0000000c
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

    if-eq p2, v0, :cond_11

    iget-object v2, p0, Lcom/a/b/f/ah;->c:[I

    aget v2, v2, p1

    if-eq v2, p2, :cond_f

    iget-object v1, p0, Lcom/a/b/f/ah;->c:[I

    aput p2, v1, p1

    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e

    :cond_11
    iget-object v2, p0, Lcom/a/b/f/ah;->c:[I

    aget v2, v2, p1

    if-ne v2, p2, :cond_21

    iget-object v2, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aget-object v2, v2, p1

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    :cond_21
    iget-object v1, p0, Lcom/a/b/f/ah;->c:[I

    aput p2, v1, p1

    iget-object v1, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aput-object p3, v1, p1

    goto :goto_e

    :cond_2a
    move v0, v1

    goto :goto_e
.end method

.method private b()V
    .registers 7

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    iget v0, p0, Lcom/a/b/f/ah;->b:I

    if-lt v2, v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/a/b/f/ah;->c:[I

    aget v0, v0, v2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    :cond_e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_12
    iget-object v0, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aget-object v0, v0, v2

    instance-of v0, v0, Lcom/a/b/e/c/ag;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/a/b/f/ah;->a:Lcom/a/b/f/ap;

    invoke-virtual {v0, v2}, Lcom/a/b/f/ap;->c(I)Lcom/a/b/f/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/b/e/d/d;->f()Z

    move-result v0

    if-nez v0, :cond_e

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

    :cond_49
    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/f/an;->l()Z

    move-result v1

    if-nez v1, :cond_49

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

    goto :goto_49
.end method

.method private b(Lcom/a/b/f/aj;)V
    .registers 5

    invoke-virtual {p1}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    instance-of v2, v0, Lcom/a/b/f/ac;

    if-eqz v2, :cond_1f

    check-cast v0, Lcom/a/b/f/ac;

    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->a(Lcom/a/b/f/ac;)V

    goto :goto_8

    :cond_1f
    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->b(Lcom/a/b/f/an;)V

    goto :goto_8
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

    if-ne v0, v3, :cond_1b

    invoke-virtual {v1}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->e()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1b
    invoke-direct {p0, p1}, Lcom/a/b/f/ah;->a(Lcom/a/b/f/an;)V

    :cond_1e
    invoke-virtual {p1}, Lcom/a/b/f/an;->e()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->a()I

    move-result v4

    invoke-virtual {p1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    if-nez v0, :cond_4a

    const/16 v0, 0x11

    if-eq v4, v0, :cond_34

    const/16 v0, 0x12

    if-ne v4, v0, :cond_5c

    :cond_34
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

    :cond_4a
    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v5

    sparse-switch v4, :sswitch_data_a2

    :cond_51
    const/4 v1, 0x0

    move v0, v2

    :goto_53
    invoke-direct {p0, v5, v0, v1}, Lcom/a/b/f/ah;->a(IILcom/a/b/e/c/a;)Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-direct {p0, v5, v0}, Lcom/a/b/f/ah;->a(II)V

    :cond_5c
    return-void

    :sswitch_5d
    move-object v0, v1

    check-cast v0, Lcom/a/b/e/b/f;

    invoke-virtual {v0}, Lcom/a/b/e/b/f;->g_()Lcom/a/b/e/c/a;

    move-result-object v1

    move v0, v3

    goto :goto_53

    :sswitch_66
    invoke-virtual {p1}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->d_()I

    move-result v0

    if-ne v0, v3, :cond_51

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

    goto :goto_53

    :sswitch_85
    invoke-virtual {v0}, Lcom/a/b/e/b/u;->c()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/a/b/f/ah;->a(Lcom/a/b/f/an;I)Lcom/a/b/e/c/a;

    move-result-object v1

    if-eqz v1, :cond_a0

    move v0, v3

    goto :goto_53

    :sswitch_91
    iget-object v0, p0, Lcom/a/b/f/ah;->c:[I

    aget v0, v0, v5

    if-ne v0, v3, :cond_51

    iget-object v0, p0, Lcom/a/b/f/ah;->c:[I

    aget v0, v0, v5

    iget-object v1, p0, Lcom/a/b/f/ah;->d:[Lcom/a/b/e/c/a;

    aget-object v1, v1, v5

    goto :goto_53

    :cond_a0
    move v0, v2

    goto :goto_53

    :sswitch_data_a2
    .sparse-switch
        0x2 -> :sswitch_66
        0x5 -> :sswitch_5d
        0xe -> :sswitch_85
        0xf -> :sswitch_85
        0x10 -> :sswitch_85
        0x11 -> :sswitch_85
        0x12 -> :sswitch_85
        0x14 -> :sswitch_85
        0x15 -> :sswitch_85
        0x16 -> :sswitch_85
        0x17 -> :sswitch_85
        0x18 -> :sswitch_85
        0x19 -> :sswitch_85
        0x38 -> :sswitch_91
    .end sparse-switch
.end method

.method private c()V
    .registers 10

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/a/b/f/ah;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
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

    :goto_23
    if-lt v3, v7, :cond_43

    const/4 v1, 0x2

    if-ne v7, v1, :cond_7

    if-eq v2, v4, :cond_7

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

    goto :goto_7

    :cond_43
    invoke-virtual {v6}, Lcom/a/b/f/aj;->j()Lcom/a/b/g/n;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/a/b/g/n;->b(I)I

    move-result v1

    iget-object v8, p0, Lcom/a/b/f/ah;->g:Ljava/util/BitSet;

    invoke-virtual {v8, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_57

    :goto_53
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_23

    :cond_57
    move v1, v2

    goto :goto_53
.end method

.method private c(Lcom/a/b/f/aj;)V
    .registers 5

    invoke-virtual {p1}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    return-void

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    instance-of v2, v0, Lcom/a/b/f/ac;

    if-eqz v2, :cond_e

    check-cast v0, Lcom/a/b/f/ac;

    invoke-direct {p0, v0}, Lcom/a/b/f/ah;->a(Lcom/a/b/f/ac;)V

    goto :goto_8
.end method
