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

    :goto_0
    if-lt v0, v1, :cond_0

    invoke-static {p0, v2}, Lcom/a/b/f/a/j;->a(Lcom/a/b/f/ap;Lcom/a/b/f/a/i;)V

    return-object v2

    :cond_0
    new-instance v3, Lcom/a/b/f/a/j;

    invoke-direct {v3, p0, v0, v2}, Lcom/a/b/f/a/j;-><init>(Lcom/a/b/f/ap;ILcom/a/b/f/a/i;)V

    invoke-virtual {v3}, Lcom/a/b/f/a/j;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Lcom/a/b/f/a/i;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V
    .registers 6

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/a/b/e/b/x;->d_()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, v0}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/a/b/f/a/i;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Lcom/a/b/f/ap;Lcom/a/b/f/a/i;)V
    .registers 12

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v2, v3

    :goto_0
    if-ge v2, v7, :cond_0

    move v4, v3

    :goto_1
    if-lt v4, v7, :cond_2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    if-ne v2, v4, :cond_3

    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_3
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    goto :goto_2
.end method

.method static synthetic b()[I
    .registers 3

    sget-object v0, Lcom/a/b/f/a/j;->i:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/a/b/f/a/k;->values()[Lcom/a/b/f/a/k;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/a/b/f/a/k;->d:Lcom/a/b/f/a/k;

    invoke-virtual {v1}, Lcom/a/b/f/a/k;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    sget-object v1, Lcom/a/b/f/a/k;->a:Lcom/a/b/f/a/k;

    invoke-virtual {v1}, Lcom/a/b/f/a/k;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/a/b/f/a/k;->c:Lcom/a/b/f/a/k;

    invoke-virtual {v1}, Lcom/a/b/f/a/k;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/a/b/f/a/k;->b:Lcom/a/b/f/a/k;

    invoke-virtual {v1}, Lcom/a/b/f/a/k;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    sput-object v0, Lcom/a/b/f/a/j;->i:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_4
.end method

.method private c()V
    .registers 3

    :goto_0
    iget-object v0, p0, Lcom/a/b/f/a/j;->h:Lcom/a/b/f/a/k;

    sget-object v1, Lcom/a/b/f/a/k;->d:Lcom/a/b/f/a/k;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/a/b/f/a/j;->b()[I

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/f/a/j;->h:Lcom/a/b/f/a/k;

    invoke-virtual {v1}, Lcom/a/b/f/a/k;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/a/b/f/a/k;->d:Lcom/a/b/f/a/k;

    iput-object v0, p0, Lcom/a/b/f/a/j;->h:Lcom/a/b/f/a/k;

    invoke-direct {p0}, Lcom/a/b/f/a/j;->e()V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/a/b/f/a/k;->d:Lcom/a/b/f/a/k;

    iput-object v0, p0, Lcom/a/b/f/a/j;->h:Lcom/a/b/f/a/k;

    invoke-direct {p0}, Lcom/a/b/f/a/j;->f()V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/a/b/f/a/k;->d:Lcom/a/b/f/a/k;

    iput-object v0, p0, Lcom/a/b/f/a/j;->h:Lcom/a/b/f/a/k;

    invoke-direct {p0}, Lcom/a/b/f/a/j;->d()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
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

    if-nez v0, :cond_0

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

    :cond_0
    return-void
.end method

.method private e()V
    .registers 3

    iget v0, p0, Lcom/a/b/f/a/j;->g:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/b/f/a/j;->f:Lcom/a/b/f/aj;

    iget v1, p0, Lcom/a/b/f/a/j;->c:I

    invoke-virtual {v0, v1}, Lcom/a/b/f/aj;->d(I)V

    iget-object v0, p0, Lcom/a/b/f/a/j;->f:Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->h()Ljava/util/BitSet;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/f/a/j;->b:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/a/b/f/a/j;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/b/f/a/j;->g:I

    sget-object v0, Lcom/a/b/f/a/k;->b:Lcom/a/b/f/a/k;

    iput-object v0, p0, Lcom/a/b/f/a/j;->h:Lcom/a/b/f/a/k;

    goto :goto_0
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

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/a/b/f/a/j;->e:Lcom/a/b/f/a/i;

    iget v2, p0, Lcom/a/b/f/a/j;->c:I

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/a/b/f/a/i;->a(II)V

    :cond_0
    sget-object v0, Lcom/a/b/f/a/k;->a:Lcom/a/b/f/a/k;

    iput-object v0, p0, Lcom/a/b/f/a/j;->h:Lcom/a/b/f/a/k;

    :cond_1
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

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/a/b/f/a/j;->b:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-gez v1, :cond_4

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    sget-object v2, Lcom/a/b/f/a/k;->d:Lcom/a/b/f/a/k;

    iput-object v2, p0, Lcom/a/b/f/a/j;->h:Lcom/a/b/f/a/k;

    instance-of v2, v0, Lcom/a/b/f/ac;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/a/b/f/ac;

    iget v2, p0, Lcom/a/b/f/a/j;->c:I

    iget-object v3, p0, Lcom/a/b/f/a/j;->d:Lcom/a/b/f/ap;

    invoke-virtual {v0, v2, v3}, Lcom/a/b/f/ac;->a(ILcom/a/b/f/ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    iput-object v0, p0, Lcom/a/b/f/a/j;->f:Lcom/a/b/f/aj;

    sget-object v0, Lcom/a/b/f/a/k;->c:Lcom/a/b/f/a/k;

    iput-object v0, p0, Lcom/a/b/f/a/j;->h:Lcom/a/b/f/a/k;

    invoke-direct {p0}, Lcom/a/b/f/a/j;->c()V

    goto :goto_2

    :cond_2
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

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "insn not found in it\'s own block"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v0, Lcom/a/b/f/a/k;->a:Lcom/a/b/f/a/k;

    iput-object v0, p0, Lcom/a/b/f/a/j;->h:Lcom/a/b/f/a/k;

    invoke-direct {p0}, Lcom/a/b/f/a/j;->c()V

    goto :goto_0

    :cond_4
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

    goto :goto_1
.end method
