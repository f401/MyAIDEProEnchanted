.class public Lcom/a/b/f/a/j;
.super Ljava/lang/Object;


# static fields
.field private static i:[I


# instance fields
.field private final a:Ljava/util/BitSet;

.field private final b:Ljava/util/BitSet;

.field private final c:I

.field private final d:Lcom/a/b/f/ap;

.field private final e:Lcom/a/b/f/a/i;

.field private f:Lcom/a/b/f/aj;

.field private g:I

.field private h:Lcom/a/b/f/a/k;


# direct methods
.method private constructor <init>(Lcom/a/b/f/ap;ILcom/a/b/f/a/i;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput-object p1, p0, Lcom/a/b/f/a/j;->d:Lcom/a/b/f/ap;

    iput p2, p0, Lcom/a/b/f/a/j;->c:I

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lcom/a/b/f/a/j;->a:Ljava/util/BitSet;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lcom/a/b/f/a/j;->b:Ljava/util/BitSet;

    iput-object p3, p0, Lcom/a/b/f/a/j;->e:Lcom/a/b/f/a/i;

    return-void
.end method

.method public static a(Lcom/a/b/f/ap;)Lcom/a/b/f/a/i;
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/f/ap;->g()I

    move-result v1

    new-instance v2, Lcom/a/b/f/a/i;

    invoke-direct {v2, v1}, Lcom/a/b/f/a/i;-><init>(I)V

    const/4 v0, 0x0

    :goto_a
    if-lt v0, v1, :cond_10

    invoke-static {p0, v2}, Lcom/a/b/f/a/j;->a(Lcom/a/b/f/ap;Lcom/a/b/f/a/i;)V

    return-object v2

    :cond_10
    new-instance v3, Lcom/a/b/f/a/j;

    invoke-direct {v3, p0, v0, v2}, Lcom/a/b/f/a/j;-><init>(Lcom/a/b/f/ap;ILcom/a/b/f/a/i;)V

    invoke-virtual {v3}, Lcom/a/b/f/a/j;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method private static a(Lcom/a/b/f/a/i;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V
    .registers 6

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p2}, Lcom/a/b/e/b/x;->d_()I

    move-result v2

    if-lt v0, v2, :cond_c

    return-void

    :cond_c
    invoke-virtual {p2, v0}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/a/b/f/a/i;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private static a(Lcom/a/b/f/ap;Lcom/a/b/f/a/i;)V
    .registers 12

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v4, v3

    :goto_1f
    if-ge v4, v7, :cond_9

    move v2, v3

    :goto_22
    if-lt v2, v7, :cond_28

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1f

    :cond_28
    if-ne v4, v2, :cond_2e

    :goto_2a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_22

    :cond_2e
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v8

    invoke-virtual {v1}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v9

    invoke-static {p1, v8, v9}, Lcom/a/b/f/a/j;->a(Lcom/a/b/f/a/i;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-virtual {v1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v8

    invoke-virtual {v0}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v9

    invoke-static {p1, v8, v9}, Lcom/a/b/f/a/j;->a(Lcom/a/b/f/a/i;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-virtual {v0}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-virtual {v1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/a/b/f/a/i;->a(II)V

    goto :goto_2a
.end method

.method static synthetic b()[I
    .registers 3

    sget-object v0, Lcom/a/b/f/a/j;->i:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/a/b/f/a/k;->values()[Lcom/a/b/f/a/k;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/a/b/f/a/k;->d:Lcom/a/b/f/a/k;

    invoke-virtual {v1}, Lcom/a/b/f/a/k;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_33

    :goto_15
    :try_start_15
    sget-object v1, Lcom/a/b/f/a/k;->a:Lcom/a/b/f/a/k;

    invoke-virtual {v1}, Lcom/a/b/f/a/k;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_35

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/a/b/f/a/k;->c:Lcom/a/b/f/a/k;

    invoke-virtual {v1}, Lcom/a/b/f/a/k;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_37

    :goto_27
    :try_start_27
    sget-object v1, Lcom/a/b/f/a/k;->b:Lcom/a/b/f/a/k;

    invoke-virtual {v1}, Lcom/a/b/f/a/k;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_39

    :goto_30
    sput-object v0, Lcom/a/b/f/a/j;->i:[I

    goto :goto_4

    :catch_33
    move-exception v1

    goto :goto_15

    :catch_35
    move-exception v1

    goto :goto_1e

    :catch_37
    move-exception v1

    goto :goto_27

    :catch_39
    move-exception v1

    goto :goto_30
.end method

.method private c()V
    .registers 3

    :goto_0
    iget-object v0, p0, Lcom/a/b/f/a/j;->h:Lcom/a/b/f/a/k;

    sget-object v1, Lcom/a/b/f/a/k;->d:Lcom/a/b/f/a/k;

    if-ne v0, v1, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/a/b/f/a/j;->b()[I

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/f/a/j;->h:Lcom/a/b/f/a/k;

    invoke-virtual {v1}, Lcom/a/b/f/a/k;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    goto :goto_0

    :pswitch_17  #0x1
    sget-object v0, Lcom/a/b/f/a/k;->d:Lcom/a/b/f/a/k;

    iput-object v0, p0, Lcom/a/b/f/a/j;->h:Lcom/a/b/f/a/k;

    invoke-direct {p0}, Lcom/a/b/f/a/j;->e()V

    goto :goto_0

    :pswitch_1f  #0x2
    sget-object v0, Lcom/a/b/f/a/k;->d:Lcom/a/b/f/a/k;

    iput-object v0, p0, Lcom/a/b/f/a/j;->h:Lcom/a/b/f/a/k;

    invoke-direct {p0}, Lcom/a/b/f/a/j;->f()V

    goto :goto_0

    :pswitch_27  #0x3
    sget-object v0, Lcom/a/b/f/a/k;->d:Lcom/a/b/f/a/k;

    iput-object v0, p0, Lcom/a/b/f/a/j;->h:Lcom/a/b/f/a/k;

    invoke-direct {p0}, Lcom/a/b/f/a/j;->d()V

    goto :goto_0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_17  #00000001
        :pswitch_1f  #00000002
        :pswitch_27  #00000003
    .end packed-switch
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/a/j;->a:Ljava/util/BitSet;

    iget-object v1, p0, Lcom/a/b/f/a/j;->f:Lcom/a/b/f/aj;

    invoke-virtual {v1}, Lcom/a/b/f/aj;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/a/b/f/a/j;->a:Ljava/util/BitSet;

    iget-object v1, p0, Lcom/a/b/f/a/j;->f:Lcom/a/b/f/aj;

    invoke-virtual {v1}, Lcom/a/b/f/aj;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p0, Lcom/a/b/f/a/j;->f:Lcom/a/b/f/aj;

    iget v1, p0, Lcom/a/b/f/a/j;->c:I

    invoke-virtual {v0, v1}, Lcom/a/b/f/aj;->c(I)V

    iget-object v0, p0, Lcom/a/b/f/a/j;->f:Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/b/f/a/j;->g:I

    sget-object v0, Lcom/a/b/f/a/k;->b:Lcom/a/b/f/a/k;

    iput-object v0, p0, Lcom/a/b/f/a/j;->h:Lcom/a/b/f/a/k;

    :cond_32
    return-void
.end method

.method private e()V
    .registers 3

    iget v0, p0, Lcom/a/b/f/a/j;->g:I

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/a/b/f/a/j;->f:Lcom/a/b/f/aj;

    iget v1, p0, Lcom/a/b/f/a/j;->c:I

    invoke-virtual {v0, v1}, Lcom/a/b/f/aj;->d(I)V

    iget-object v0, p0, Lcom/a/b/f/a/j;->f:Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->h()Ljava/util/BitSet;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/f/a/j;->b:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    :goto_16
    return-void

    :cond_17
    iget v0, p0, Lcom/a/b/f/a/j;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/b/f/a/j;->g:I

    sget-object v0, Lcom/a/b/f/a/k;->b:Lcom/a/b/f/a/k;

    iput-object v0, p0, Lcom/a/b/f/a/j;->h:Lcom/a/b/f/a/k;

    goto :goto_16
.end method

.method private f()V
    .registers 4

    iget-object v0, p0, Lcom/a/b/f/a/j;->f:Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/a/b/f/a/j;->g:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v1

    iget v2, p0, Lcom/a/b/f/a/j;->c:I

    invoke-virtual {v0, v2}, Lcom/a/b/f/an;->b(I)Z

    move-result v0

    if-nez v0, :cond_2b

    if-eqz v1, :cond_27

    iget-object v0, p0, Lcom/a/b/f/a/j;->e:Lcom/a/b/f/a/i;

    iget v2, p0, Lcom/a/b/f/a/j;->c:I

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/a/b/f/a/i;->a(II)V

    :cond_27
    sget-object v0, Lcom/a/b/f/a/k;->a:Lcom/a/b/f/a/k;

    iput-object v0, p0, Lcom/a/b/f/a/j;->h:Lcom/a/b/f/a/k;

    :cond_2b
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/a/b/f/a/j;->d:Lcom/a/b/f/ap;

    iget v1, p0, Lcom/a/b/f/a/j;->c:I

    invoke-virtual {v0, v1}, Lcom/a/b/f/ap;->d(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    :goto_12
    iget-object v0, p0, Lcom/a/b/f/a/j;->b:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-gez v1, :cond_74

    return-void

    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    sget-object v2, Lcom/a/b/f/a/k;->d:Lcom/a/b/f/a/k;

    iput-object v2, p0, Lcom/a/b/f/a/j;->h:Lcom/a/b/f/a/k;

    instance-of v2, v0, Lcom/a/b/f/ac;

    if-eqz v2, :cond_4e

    check-cast v0, Lcom/a/b/f/ac;

    iget v2, p0, Lcom/a/b/f/a/j;->c:I

    iget-object v3, p0, Lcom/a/b/f/a/j;->d:Lcom/a/b/f/ap;

    invoke-virtual {v0, v2, v3}, Lcom/a/b/f/ac;->a(ILcom/a/b/f/ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    iput-object v0, p0, Lcom/a/b/f/a/j;->f:Lcom/a/b/f/aj;

    sget-object v0, Lcom/a/b/f/a/k;->c:Lcom/a/b/f/a/k;

    iput-object v0, p0, Lcom/a/b/f/a/j;->h:Lcom/a/b/f/a/k;

    invoke-direct {p0}, Lcom/a/b/f/a/j;->c()V

    goto :goto_38

    :cond_4e
    invoke-virtual {v0}, Lcom/a/b/f/an;->p()Lcom/a/b/f/aj;

    move-result-object v2

    iput-object v2, p0, Lcom/a/b/f/a/j;->f:Lcom/a/b/f/aj;

    iget-object v2, p0, Lcom/a/b/f/a/j;->f:Lcom/a/b/f/aj;

    invoke-virtual {v2}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/a/b/f/a/j;->g:I

    iget v0, p0, Lcom/a/b/f/a/j;->g:I

    if-gez v0, :cond_6c

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "insn not found in it\'s own block"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    sget-object v0, Lcom/a/b/f/a/k;->a:Lcom/a/b/f/a/k;

    iput-object v0, p0, Lcom/a/b/f/a/j;->h:Lcom/a/b/f/a/k;

    invoke-direct {p0}, Lcom/a/b/f/a/j;->c()V

    goto :goto_c

    :cond_74
    iget-object v0, p0, Lcom/a/b/f/a/j;->d:Lcom/a/b/f/ap;

    invoke-virtual {v0}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    iput-object v0, p0, Lcom/a/b/f/a/j;->f:Lcom/a/b/f/aj;

    iget-object v0, p0, Lcom/a/b/f/a/j;->b:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    sget-object v0, Lcom/a/b/f/a/k;->c:Lcom/a/b/f/a/k;

    iput-object v0, p0, Lcom/a/b/f/a/j;->h:Lcom/a/b/f/a/k;

    invoke-direct {p0}, Lcom/a/b/f/a/j;->c()V

    goto :goto_12
.end method
