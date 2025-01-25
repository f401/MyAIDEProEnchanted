.class public final Lcom/a/b/f/ap;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private final h:I

.field private final i:Z

.field private j:[Lcom/a/b/f/an;

.field private k:[Ljava/util/ArrayList;

.field private l:[Ljava/util/List;

.field private m:Z


# direct methods
.method private constructor <init>(Lcom/a/b/e/b/ab;IZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/a/b/f/ap;->h:I

    iput-boolean p3, p0, Lcom/a/b/f/ap;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/b/f/ap;->m:Z

    invoke-virtual {p1}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/d;->j()I

    move-result v0

    iput v0, p0, Lcom/a/b/f/ap;->g:I

    invoke-virtual {p1}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/d;->e()I

    move-result v0

    iput v0, p0, Lcom/a/b/f/ap;->d:I

    iget v0, p0, Lcom/a/b/f/ap;->d:I

    iput v0, p0, Lcom/a/b/f/ap;->e:I

    return-void
.end method

.method private static a(Lcom/a/b/f/aj;)Lcom/a/b/f/an;
    .registers 7

    new-instance v0, Lcom/a/b/f/z;

    new-instance v1, Lcom/a/b/e/b/s;

    sget-object v2, Lcom/a/b/e/b/ac;->s:Lcom/a/b/e/b/aa;

    sget-object v3, Lcom/a/b/e/b/ad;->a:Lcom/a/b/e/b/ad;

    const/4 v4, 0x0

    sget-object v5, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-direct {v0, v1, p0}, Lcom/a/b/f/z;-><init>(Lcom/a/b/e/b/j;Lcom/a/b/f/aj;)V

    return-object v0
.end method

.method public static a(Lcom/a/b/e/b/ab;IZ)Lcom/a/b/f/ap;
    .registers 4

    new-instance v0, Lcom/a/b/f/ap;

    invoke-direct {v0, p0, p1, p2}, Lcom/a/b/f/ap;-><init>(Lcom/a/b/e/b/ab;IZ)V

    invoke-direct {v0, p0}, Lcom/a/b/f/ap;->a(Lcom/a/b/e/b/ab;)V

    return-object v0
.end method

.method static a(Lcom/a/b/e/b/d;Lcom/a/b/g/n;)Ljava/util/BitSet;
    .registers 6

    new-instance v1, Ljava/util/BitSet;

    invoke-virtual {p0}, Lcom/a/b/e/b/d;->d_()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/a/b/g/n;->b()I

    move-result v2

    :goto_e
    if-lt v0, v2, :cond_11

    return-object v1

    :cond_11
    invoke-virtual {p1, v0}, Lcom/a/b/g/n;->b(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/a/b/e/b/d;->c(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method private a(Lcom/a/b/e/b/ab;)V
    .registers 6

    invoke-virtual {p1}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/d;->d_()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    add-int/lit8 v2, v1, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/f/ap;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_12
    if-lt v0, v1, :cond_36

    invoke-virtual {p1}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/e/b/ab;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/b/e/b/d;->c(I)I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/ap;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->p()Lcom/a/b/f/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/f/aj;->e()I

    move-result v0

    iput v0, p0, Lcom/a/b/f/ap;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/b/f/ap;->c:I

    return-void

    :cond_36
    invoke-static {p1, v0, p0}, Lcom/a/b/f/aj;->a(Lcom/a/b/e/b/ab;ILcom/a/b/f/ap;)Lcom/a/b/f/aj;

    move-result-object v2

    iget-object v3, p0, Lcom/a/b/f/ap;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method static synthetic a(Lcom/a/b/f/ap;)[Lcom/a/b/f/an;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/ap;->j:[Lcom/a/b/f/an;

    return-object v0
.end method

.method public static b(Lcom/a/b/e/b/d;Lcom/a/b/g/n;)Lcom/a/b/g/n;
    .registers 6

    new-instance v1, Lcom/a/b/g/n;

    invoke-virtual {p1}, Lcom/a/b/g/n;->b()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/a/b/g/n;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/a/b/g/n;->b()I

    move-result v2

    :goto_e
    if-lt v0, v2, :cond_11

    return-object v1

    :cond_11
    invoke-virtual {p1, v0}, Lcom/a/b/g/n;->b(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/a/b/e/b/d;->c(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/a/b/g/n;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method private b(Lcom/a/b/f/an;Lcom/a/b/e/b/x;)V
    .registers 7

    if-nez p2, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p2}, Lcom/a/b/e/b/x;->d_()I

    move-result v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/a/b/f/ap;->k:[Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->g()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "use not found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method static synthetic b(Lcom/a/b/f/ap;)[Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/ap;->k:[Ljava/util/ArrayList;

    return-object v0
.end method

.method private p()V
    .registers 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/a/b/f/ap;->m:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No use list in back mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget v0, p0, Lcom/a/b/f/ap;->d:I

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/a/b/f/ap;->k:[Ljava/util/ArrayList;

    move v0, v1

    :goto_14
    iget v2, p0, Lcom/a/b/f/ap;->d:I

    if-lt v0, v2, :cond_2b

    new-instance v0, Lcom/a/b/f/ar;

    invoke-direct {v0, p0}, Lcom/a/b/f/ar;-><init>(Lcom/a/b/f/ap;)V

    invoke-virtual {p0, v0}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/ao;)V

    iget v0, p0, Lcom/a/b/f/ap;->d:I

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lcom/a/b/f/ap;->l:[Ljava/util/List;

    :goto_26
    iget v0, p0, Lcom/a/b/f/ap;->d:I

    if-lt v1, v0, :cond_37

    return-void

    :cond_2b
    iget-object v2, p0, Lcom/a/b/f/ap;->k:[Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_37
    iget-object v0, p0, Lcom/a/b/f/ap;->l:[Ljava/util/List;

    iget-object v2, p0, Lcom/a/b/f/ap;->k:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_26
.end method


# virtual methods
.method public a(I)I
    .registers 3

    if-gez p1, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/a/b/f/ap;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->f()I

    move-result v0

    goto :goto_3
.end method

.method a()V
    .registers 4

    iget v0, p0, Lcom/a/b/f/ap;->c:I

    if-ltz v0, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "must be called at most once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/a/b/f/ap;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/a/b/f/ap;->c:I

    iget v0, p0, Lcom/a/b/f/ap;->c:I

    iget v1, p0, Lcom/a/b/f/ap;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/b/f/ap;->g:I

    new-instance v2, Lcom/a/b/f/aj;

    invoke-direct {v2, v0, v1, p0}, Lcom/a/b/f/aj;-><init>(IILcom/a/b/f/ap;)V

    iget-object v0, p0, Lcom/a/b/f/ap;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/b/f/ap;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-virtual {v2}, Lcom/a/b/f/aj;->h()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/a/b/f/ap;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/a/b/f/ap;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/b/f/ap;->c:I

    iget v0, p0, Lcom/a/b/f/ap;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/b/f/ap;->g:I

    :cond_4c
    return-void

    :cond_4d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v0, v2}, Lcom/a/b/f/aj;->c(Lcom/a/b/f/aj;)V

    goto :goto_2c
.end method

.method public a(Lcom/a/b/f/ag;)V
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p1}, Lcom/a/b/f/ag;->a()I

    move-result v0

    iput v0, p0, Lcom/a/b/f/ap;->d:I

    iget v0, p0, Lcom/a/b/f/ap;->d:I

    iput v0, p0, Lcom/a/b/f/ap;->e:I

    return-void

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0, p1}, Lcom/a/b/f/an;->b(Lcom/a/b/f/ag;)V

    goto :goto_27
.end method

.method public a(Lcom/a/b/f/al;)V
    .registers 8

    new-instance v3, Ljava/util/BitSet;

    invoke-virtual {p0}, Lcom/a/b/f/ap;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/BitSet;-><init>(I)V

    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    invoke-virtual {p0}, Lcom/a/b/f/ap;->d()Lcom/a/b/f/aj;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_19
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v0

    if-gtz v0, :cond_20

    return-void

    :cond_20
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->a()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0}, Lcom/a/b/f/aj;->e()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_3b
    if-gez v2, :cond_49

    invoke-virtual {v0}, Lcom/a/b/f/aj;->e()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/a/b/f/al;->a(Lcom/a/b/f/aj;Lcom/a/b/f/aj;)V

    goto :goto_19

    :cond_49
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/f/aj;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_3b
.end method

.method a(Lcom/a/b/f/an;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/an;Lcom/a/b/e/b/x;)V

    invoke-virtual {p0, p1, v0}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/an;Lcom/a/b/e/b/u;)V

    return-void
.end method

.method a(Lcom/a/b/f/an;Lcom/a/b/e/b/u;)V
    .registers 6

    iget-object v0, p0, Lcom/a/b/f/ap;->j:[Lcom/a/b/f/an;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/ap;->j:[Lcom/a/b/f/an;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_10
    invoke-virtual {p1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    iget-object v2, p0, Lcom/a/b/f/ap;->j:[Lcom/a/b/f/an;

    aget-object v1, v2, v1

    if-eqz v1, :cond_28

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Duplicate add of insn"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    iget-object v1, p0, Lcom/a/b/f/ap;->j:[Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    aput-object p1, v1, v0

    goto :goto_4
.end method

.method a(Lcom/a/b/f/an;Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)V
    .registers 6

    iget-object v0, p0, Lcom/a/b/f/ap;->k:[Ljava/util/ArrayList;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/ap;->k:[Ljava/util/ArrayList;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_12
    invoke-virtual {p3}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/f/ap;->k:[Ljava/util/ArrayList;

    array-length v1, v1

    if-gt v1, v0, :cond_1f

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/f/ap;->k:[Ljava/util/ArrayList;

    goto :goto_4

    :cond_1f
    iget-object v1, p0, Lcom/a/b/f/ap;->k:[Ljava/util/ArrayList;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method a(Lcom/a/b/f/an;Lcom/a/b/e/b/x;)V
    .registers 8

    iget-object v0, p0, Lcom/a/b/f/ap;->k:[Ljava/util/ArrayList;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    if-eqz p2, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/a/b/f/ap;->b(Lcom/a/b/f/an;Lcom/a/b/e/b/x;)V

    :cond_a
    invoke-virtual {p1}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/x;->d_()I

    move-result v2

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v2, :cond_4

    invoke-virtual {v1, v0}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->g()I

    move-result v3

    iget-object v4, p0, Lcom/a/b/f/ap;->k:[Ljava/util/ArrayList;

    aget-object v3, v4, v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public a(Lcom/a/b/f/ao;)V
    .registers 4

    iget-object v0, p0, Lcom/a/b/f/ap;->a:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v0, p1}, Lcom/a/b/f/aj;->a(Lcom/a/b/f/ao;)V

    goto :goto_6
.end method

.method public a(Ljava/util/Set;)V
    .registers 10

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/f/an;->p()Lcom/a/b/f/aj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_21
    if-gez v3, :cond_74

    :goto_23
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_87

    move-object v0, v2

    :goto_2a
    invoke-virtual {p0}, Lcom/a/b/f/ap;->f()Lcom/a/b/f/aj;

    move-result-object v3

    if-eq v5, v3, :cond_5

    if-eqz v1, :cond_47

    invoke-virtual {v0}, Lcom/a/b/f/an;->f()Lcom/a/b/e/b/j;

    move-result-object v1

    if-eqz v1, :cond_47

    invoke-virtual {v0}, Lcom/a/b/f/an;->f()Lcom/a/b/e/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    :cond_47
    new-instance v0, Lcom/a/b/e/b/s;

    sget-object v1, Lcom/a/b/e/b/ac;->s:Lcom/a/b/e/b/aa;

    sget-object v3, Lcom/a/b/e/b/ad;->a:Lcom/a/b/e/b/ad;

    sget-object v7, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {v0, v1, v3, v2, v7}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-static {v0, v5}, Lcom/a/b/f/an;->a(Lcom/a/b/e/b/j;Lcom/a/b/f/aj;)Lcom/a/b/f/an;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/a/b/f/aj;->i()Ljava/util/BitSet;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_62
    if-ltz v0, :cond_5

    invoke-virtual {v5}, Lcom/a/b/f/aj;->k()I

    move-result v3

    if-eq v0, v3, :cond_6d

    invoke-virtual {v5, v0}, Lcom/a/b/f/aj;->b(I)V

    :cond_6d
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_62

    :cond_74
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/f/an;

    if-ne v0, v1, :cond_83

    invoke-virtual {p0, v1}, Lcom/a/b/f/ap;->b(Lcom/a/b/f/an;)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_23

    :cond_83
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_21

    :cond_87
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    goto :goto_2a
.end method

.method public a(ZLcom/a/b/f/al;)V
    .registers 10

    new-instance v5, Ljava/util/BitSet;

    iget-object v0, p0, Lcom/a/b/f/ap;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/BitSet;-><init>(I)V

    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lcom/a/b/f/ap;->f()Lcom/a/b/f/aj;

    move-result-object v0

    :goto_16
    if-nez v0, :cond_1e

    :cond_18
    return-void

    :cond_19
    invoke-virtual {p0}, Lcom/a/b/f/ap;->d()Lcom/a/b/f/aj;

    move-result-object v0

    goto :goto_16

    :cond_1e
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :cond_25
    :goto_25
    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_18

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->e()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_25

    if-eqz p1, :cond_5b

    invoke-virtual {v0}, Lcom/a/b/f/aj;->h()Ljava/util/BitSet;

    move-result-object v2

    move-object v3, v2

    :goto_48
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    move v4, v2

    :goto_4e
    if-gez v4, :cond_61

    invoke-virtual {v0}, Lcom/a/b/f/aj;->e()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->set(I)V

    invoke-interface {p2, v0, v1}, Lcom/a/b/f/al;->a(Lcom/a/b/f/aj;Lcom/a/b/f/aj;)V

    goto :goto_25

    :cond_5b
    invoke-virtual {v0}, Lcom/a/b/f/aj;->i()Ljava/util/BitSet;

    move-result-object v2

    move-object v3, v2

    goto :goto_48

    :cond_61
    invoke-virtual {v6, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/a/b/f/ap;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/b/f/aj;

    invoke-virtual {v6, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    move v4, v2

    goto :goto_4e
.end method

.method public a(Lcom/a/b/e/b/u;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/b/f/ap;->c(I)Lcom/a/b/f/an;

    move-result-object v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_d
    return v0

    :cond_e
    invoke-virtual {v0}, Lcom/a/b/f/an;->g()Lcom/a/b/e/b/u;

    move-result-object v0

    if-eqz v0, :cond_16

    move v0, v2

    goto :goto_d

    :cond_16
    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/b/f/ap;->d(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v1

    goto :goto_d

    :cond_2a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/f/an;->f()Lcom/a/b/e/b/j;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->a()I

    move-result v0

    const/16 v4, 0x36

    if-ne v0, v4, :cond_22

    move v0, v2

    goto :goto_d
.end method

.method public b(I)I
    .registers 5

    iget v0, p0, Lcom/a/b/f/ap;->e:I

    iget v1, p0, Lcom/a/b/f/ap;->f:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/a/b/f/ap;->f:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/a/b/f/ap;->f:I

    iget v1, p0, Lcom/a/b/f/ap;->d:I

    add-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/a/b/f/ap;->d:I

    return v0
.end method

.method public b()Lcom/a/b/f/aj;
    .registers 4

    iget-object v0, p0, Lcom/a/b/f/ap;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/a/b/f/ap;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/b/f/ap;->g:I

    new-instance v2, Lcom/a/b/f/aj;

    invoke-direct {v2, v0, v1, p0}, Lcom/a/b/f/aj;-><init>(IILcom/a/b/f/ap;)V

    invoke-virtual {v2}, Lcom/a/b/f/aj;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/aj;)Lcom/a/b/f/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/b/f/ap;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method b(Lcom/a/b/f/an;)V
    .registers 5

    iget-object v0, p0, Lcom/a/b/f/ap;->k:[Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/a/b/f/an;->b()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/a/b/f/ap;->b(Lcom/a/b/f/an;Lcom/a/b/e/b/x;)V

    :cond_b
    invoke-virtual {p1}, Lcom/a/b/f/an;->o()Lcom/a/b/e/b/u;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/f/ap;->j:[Lcom/a/b/f/an;

    if-eqz v1, :cond_1e

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/a/b/f/ap;->j:[Lcom/a/b/f/an;

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_1e
    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/a/b/f/ap;->b:I

    return v0
.end method

.method public c(I)Lcom/a/b/f/an;
    .registers 4

    iget-boolean v0, p0, Lcom/a/b/f/ap;->m:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No def list in back mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/a/b/f/ap;->j:[Lcom/a/b/f/an;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/a/b/f/ap;->j:[Lcom/a/b/f/an;

    aget-object v0, v0, p1

    :goto_14
    return-object v0

    :cond_15
    invoke-virtual {p0}, Lcom/a/b/f/ap;->g()I

    move-result v0

    new-array v0, v0, [Lcom/a/b/f/an;

    iput-object v0, p0, Lcom/a/b/f/ap;->j:[Lcom/a/b/f/an;

    new-instance v0, Lcom/a/b/f/aq;

    invoke-direct {v0, p0}, Lcom/a/b/f/aq;-><init>(Lcom/a/b/f/ap;)V

    invoke-virtual {p0, v0}, Lcom/a/b/f/ap;->a(Lcom/a/b/f/ao;)V

    iget-object v0, p0, Lcom/a/b/f/ap;->j:[Lcom/a/b/f/an;

    aget-object v0, v0, p1

    goto :goto_14
.end method

.method public d()Lcom/a/b/f/aj;
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/ap;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/a/b/f/ap;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    return-object v0
.end method

.method public d(I)Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/ap;->l:[Ljava/util/List;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/a/b/f/ap;->p()V

    :cond_7
    iget-object v0, p0, Lcom/a/b/f/ap;->l:[Ljava/util/List;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/a/b/f/ap;->c:I

    return v0
.end method

.method e(I)V
    .registers 3

    iput p1, p0, Lcom/a/b/f/ap;->d:I

    iget v0, p0, Lcom/a/b/f/ap;->d:I

    iput v0, p0, Lcom/a/b/f/ap;->e:I

    invoke-virtual {p0}, Lcom/a/b/f/ap;->l()V

    return-void
.end method

.method public f()Lcom/a/b/f/aj;
    .registers 3

    iget v0, p0, Lcom/a/b/f/ap;->c:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/a/b/f/ap;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/a/b/f/ap;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    goto :goto_5
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/a/b/f/ap;->d:I

    return v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/a/b/f/ap;->h:I

    return v0
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/b/f/ap;->f:I

    return-void
.end method

.method public j()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/ap;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public k()Ljava/util/BitSet;
    .registers 5

    iget-object v0, p0, Lcom/a/b/f/ap;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v0}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {p0}, Lcom/a/b/f/ap;->d()Lcom/a/b/f/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/f/aj;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    :goto_1b
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_24

    return-object v2

    :cond_24
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    iget-object v3, p0, Lcom/a/b/f/ap;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v0}, Lcom/a/b/f/aj;->i()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    goto :goto_1b
.end method

.method public l()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/f/ap;->j:[Lcom/a/b/f/an;

    iput-object v0, p0, Lcom/a/b/f/ap;->k:[Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/a/b/f/ap;->l:[Ljava/util/List;

    return-void
.end method

.method public m()[Ljava/util/ArrayList;
    .registers 5

    iget-object v0, p0, Lcom/a/b/f/ap;->k:[Ljava/util/ArrayList;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/a/b/f/ap;->p()V

    :cond_7
    iget v0, p0, Lcom/a/b/f/ap;->d:I

    new-array v1, v0, [Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_c
    iget v2, p0, Lcom/a/b/f/ap;->d:I

    if-lt v0, v2, :cond_11

    return-object v1

    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/a/b/f/ap;->k:[Ljava/util/ArrayList;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public n()I
    .registers 3

    iget v0, p0, Lcom/a/b/f/ap;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/a/b/f/ap;->d:I

    iget v1, p0, Lcom/a/b/f/ap;->d:I

    iput v1, p0, Lcom/a/b/f/ap;->e:I

    invoke-virtual {p0}, Lcom/a/b/f/ap;->l()V

    return v0
.end method

.method public o()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/b/f/ap;->m:Z

    iput-object v1, p0, Lcom/a/b/f/ap;->k:[Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/a/b/f/ap;->j:[Lcom/a/b/f/an;

    return-void
.end method
