.class public La/g/a/j;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;


# instance fields
.field private final a:La/g/a/v;

.field private final b:Z

.field private final c:La/g/a/v;

.field private final d:La/g/b/ap;

.field private final e:La/g/a/o;

.field private final f:La/g/a/m;

.field private final g:La/g/a/p;

.field private final h:La/g/a/r;

.field private final i:La/g/a/q;

.field private final j:La/g/a/l;

.field private k:[La/d/a/ad;

.field private l:[[Z

.field private m:[[Z

.field private n:[Z

.field private o:[Z

.field private p:I


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, La/g/a/v;

    invoke-direct {v0}, La/g/a/v;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, La/g/a/j;-><init>(La/g/a/v;Z)V

    return-void
.end method

.method public constructor <init>(La/g/a/v;Z)V
    .registers 9

    const/16 v5, 0x10

    const/4 v4, 0x1

    const/16 v3, 0x1fa0

    const/4 v2, 0x0

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/g/a/v;

    new-instance v1, La/d/a/ax;

    invoke-direct {v1}, La/d/a/ax;-><init>()V

    invoke-direct {v0, v1}, La/g/a/v;-><init>(La/d/a/be;)V

    iput-object v0, p0, La/g/a/j;->c:La/g/a/v;

    new-instance v0, La/g/b/ap;

    invoke-direct {v0, v4, v4}, La/g/b/ap;-><init>(ZZ)V

    iput-object v0, p0, La/g/a/j;->d:La/g/b/ap;

    new-instance v0, La/g/a/o;

    invoke-direct {v0, p0, v2}, La/g/a/o;-><init>(La/g/a/j;La/g/a/k;)V

    iput-object v0, p0, La/g/a/j;->e:La/g/a/o;

    new-instance v0, La/g/a/m;

    invoke-direct {v0, p0, v2}, La/g/a/m;-><init>(La/g/a/j;La/g/a/k;)V

    iput-object v0, p0, La/g/a/j;->f:La/g/a/m;

    new-instance v0, La/g/a/p;

    invoke-direct {v0, p0, v2}, La/g/a/p;-><init>(La/g/a/j;La/g/a/k;)V

    iput-object v0, p0, La/g/a/j;->g:La/g/a/p;

    new-instance v0, La/g/a/r;

    invoke-direct {v0, p0, v2}, La/g/a/r;-><init>(La/g/a/j;La/g/a/k;)V

    iput-object v0, p0, La/g/a/j;->h:La/g/a/r;

    new-instance v0, La/g/a/q;

    invoke-direct {v0, p0, v2}, La/g/a/q;-><init>(La/g/a/j;La/g/a/k;)V

    iput-object v0, p0, La/g/a/j;->i:La/g/a/q;

    new-instance v0, La/g/a/l;

    invoke-direct {v0, p0, v2}, La/g/a/l;-><init>(La/g/a/j;La/g/a/k;)V

    iput-object v0, p0, La/g/a/j;->j:La/g/a/l;

    new-array v0, v3, [La/d/a/ad;

    iput-object v0, p0, La/g/a/j;->k:[La/d/a/ad;

    filled-new-array {v3, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, La/g/a/j;->l:[[Z

    filled-new-array {v3, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, La/g/a/j;->m:[[Z

    new-array v0, v3, [Z

    iput-object v0, p0, La/g/a/j;->n:[Z

    new-array v0, v3, [Z

    iput-object v0, p0, La/g/a/j;->o:[Z

    iput-object p1, p0, La/g/a/j;->a:La/g/a/v;

    iput-boolean p2, p0, La/g/a/j;->b:Z

    return-void
.end method

.method static synthetic a(La/g/a/j;)La/g/a/v;
    .registers 2

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    return-object v0
.end method

.method private a(IIII)V
    .registers 6

    invoke-virtual {p0, p3}, La/g/a/j;->b(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1, p2}, La/g/a/j;->h(II)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p3}, La/g/a/j;->h(I)V

    :cond_f
    return-void
.end method

.method private a(IILa/d/a/ad;)V
    .registers 9

    if-eqz p3, :cond_9

    invoke-virtual {p3, p1}, La/d/a/ad;->b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    if-nez p3, :cond_3b

    new-instance v0, La/d/a/ad;

    invoke-direct {v0, p1}, La/d/a/ad;-><init>(I)V

    :goto_10
    iget-object v1, p0, La/g/a/j;->c:La/g/a/v;

    invoke-virtual {v1, p1}, La/g/a/v;->h(I)La/d/k;

    move-result-object v1

    invoke-virtual {v1, p2}, La/d/k;->a(I)La/d/a/bd;

    move-result-object v1

    invoke-virtual {v1}, La/d/a/bd;->n_()La/d/a/ad;

    move-result-object v2

    invoke-virtual {v2}, La/d/a/ad;->e()I

    move-result v3

    const/4 v1, 0x0

    :goto_23
    if-ge v1, v3, :cond_8

    invoke-virtual {v2, v1}, La/d/a/ad;->c(I)Z

    move-result v4

    if-nez v4, :cond_38

    invoke-virtual {v2, v1}, La/d/a/ad;->i(I)Z

    move-result v4

    if-nez v4, :cond_38

    invoke-virtual {v2, v1}, La/d/a/ad;->a(I)I

    move-result v4

    invoke-direct {p0, v4, p2, v0}, La/g/a/j;->b(IILa/d/a/ad;)V

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_3b
    invoke-virtual {p3, p1}, La/d/a/ad;->j(I)La/d/a/ad;

    move-result-object v0

    goto :goto_10
.end method

.method private a(IIZ)V
    .registers 5

    invoke-virtual {p0, p1, p2}, La/g/a/j;->a(II)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    invoke-virtual {v0, p1}, La/g/a/v;->j(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0, p2}, La/d/j;->d(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->n_()La/d/a/ad;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, La/g/a/j;->a(La/d/a/ad;IZ)V

    :cond_17
    return-void
.end method

.method private a(ILa/d/a/ad;Z)V
    .registers 7

    if-eqz p2, :cond_19

    invoke-virtual {p2}, La/d/a/ad;->e()I

    move-result v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_19

    invoke-virtual {p2, v0}, La/d/a/ad;->a(I)I

    move-result v2

    if-eqz p3, :cond_15

    invoke-direct {p0, p1, v2, p1, v2}, La/g/a/j;->a(IIII)V

    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    invoke-direct {p0, p1, v2, v2, p1}, La/g/a/j;->a(IIII)V

    goto :goto_12

    :cond_19
    return-void
.end method

.method private a(La/b/a/d;)V
    .registers 7

    const/4 v1, 0x0

    iget v2, p1, La/b/a/d;->e:I

    iget v0, p1, La/b/a/d;->d:I

    iget v3, p1, La/b/a/d;->c:I

    iget-object v0, p0, La/g/a/j;->k:[La/d/a/ad;

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, La/j/b;->b([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/d/a/ad;

    iput-object v0, p0, La/g/a/j;->k:[La/d/a/ad;

    iget-object v0, p0, La/g/a/j;->l:[[Z

    array-length v0, v0

    if-lt v0, v2, :cond_1e

    iget-object v0, p0, La/g/a/j;->l:[[Z

    aget-object v0, v0, v1

    array-length v0, v0

    if-ge v0, v3, :cond_57

    :cond_1e
    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, La/g/a/j;->l:[[Z

    :cond_2c
    iget-object v0, p0, La/g/a/j;->m:[[Z

    array-length v0, v0

    if-lt v0, v2, :cond_38

    iget-object v0, p0, La/g/a/j;->m:[[Z

    aget-object v0, v0, v1

    array-length v0, v0

    if-ge v0, v3, :cond_64

    :cond_38
    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, La/g/a/j;->m:[[Z

    :cond_46
    iget-object v0, p0, La/g/a/j;->n:[Z

    invoke-static {v0, v2, v1}, La/j/b;->a([ZIZ)[Z

    move-result-object v0

    iput-object v0, p0, La/g/a/j;->n:[Z

    iget-object v0, p0, La/g/a/j;->o:[Z

    invoke-static {v0, v2, v1}, La/j/b;->a([ZIZ)[Z

    move-result-object v0

    iput-object v0, p0, La/g/a/j;->o:[Z

    return-void

    :cond_57
    move v0, v1

    :goto_58
    if-ge v0, v2, :cond_2c

    iget-object v4, p0, La/g/a/j;->l:[[Z

    aget-object v4, v4, v0

    invoke-static {v4, v1, v3, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    :cond_64
    move v0, v1

    :goto_65
    if-ge v0, v2, :cond_46

    iget-object v4, p0, La/g/a/j;->m:[[Z

    aget-object v4, v4, v0

    invoke-static {v4, v1, v3, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_65
.end method

.method private a(La/b/c;ILa/b/d/c;)V
    .registers 7

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    invoke-virtual {v0, p2}, La/g/a/v;->j(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0}, La/d/j;->b()I

    move-result v1

    invoke-virtual {p3, p1}, La/b/d/c;->a(La/b/c;)I

    move-result v0

    sub-int v0, v1, v0

    :goto_10
    if-ge v0, v1, :cond_19

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v2}, La/g/a/j;->a(IIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_19
    return-void
.end method

.method private a(La/d/a/ad;)V
    .registers 5

    invoke-virtual {p1}, La/d/a/ad;->e()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_11

    invoke-virtual {p1, v0}, La/d/a/ad;->a(I)I

    move-result v2

    invoke-direct {p0, v2}, La/g/a/j;->h(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method private a(La/d/a/ad;IZ)V
    .registers 7

    if-eqz p1, :cond_22

    invoke-virtual {p1}, La/d/a/ad;->e()I

    move-result v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_22

    invoke-virtual {p1, v0}, La/d/a/ad;->i(I)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {p1, v0}, La/d/a/ad;->a(I)I

    move-result v2

    invoke-direct {p0, v2, p2}, La/g/a/j;->f(II)V

    if-eqz p3, :cond_1e

    invoke-direct {p0, v2}, La/g/a/j;->h(I)V

    :cond_1b
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1e
    invoke-direct {p0, v2}, La/g/a/j;->i(I)V

    goto :goto_1b

    :cond_22
    return-void
.end method

.method static synthetic a(La/g/a/j;I)V
    .registers 2

    invoke-direct {p0, p1}, La/g/a/j;->h(I)V

    return-void
.end method

.method static synthetic a(La/g/a/j;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, La/g/a/j;->g(II)V

    return-void
.end method

.method static synthetic a(La/g/a/j;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, La/g/a/j;->c(III)V

    return-void
.end method

.method static synthetic a(La/g/a/j;IILa/d/a/ad;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, La/g/a/j;->a(IILa/d/a/ad;)V

    return-void
.end method

.method static synthetic a(La/g/a/j;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, La/g/a/j;->a(IIZ)V

    return-void
.end method

.method static synthetic a(La/g/a/j;La/b/c;ILa/b/d/c;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, La/g/a/j;->a(La/b/c;ILa/b/d/c;)V

    return-void
.end method

.method private a(La/b/d/c;)Z
    .registers 4

    iget-byte v0, p1, La/b/d/c;->c:B

    const/16 v1, 0x57

    if-eq v0, v1, :cond_c

    iget-byte v0, p1, La/b/d/c;->c:B

    const/16 v1, 0x58

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic a(La/g/a/j;La/b/d/c;)Z
    .registers 3

    invoke-direct {p0, p1}, La/g/a/j;->a(La/b/d/c;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(La/g/a/j;)La/g/b/ap;
    .registers 2

    iget-object v0, p0, La/g/a/j;->d:La/g/b/ap;

    return-object v0
.end method

.method private b(IILa/d/a/ad;)V
    .registers 5

    invoke-virtual {p0, p1}, La/g/a/j;->b(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1, p2}, La/g/a/j;->e(II)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p1}, La/g/a/j;->h(I)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-direct {p0, p1, p2, p3}, La/g/a/j;->a(IILa/d/a/ad;)V

    goto :goto_f
.end method

.method static synthetic b(La/g/a/j;I)V
    .registers 2

    invoke-direct {p0, p1}, La/g/a/j;->i(I)V

    return-void
.end method

.method static synthetic b(La/g/a/j;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, La/g/a/j;->d(II)V

    return-void
.end method

.method private c(III)V
    .registers 6

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    invoke-virtual {v0, p1}, La/g/a/v;->k(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0}, La/d/j;->b()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, La/g/a/j;->c(II)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    invoke-virtual {v0, p1}, La/g/a/v;->j(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0}, La/d/j;->b()I

    move-result v0

    sub-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, La/g/a/j;->a(IIZ)V

    :cond_24
    return-void
.end method

.method static synthetic c(La/g/a/j;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, La/g/a/j;->f(II)V

    return-void
.end method

.method static synthetic c(La/g/a/j;)[La/d/a/ad;
    .registers 2

    iget-object v0, p0, La/g/a/j;->k:[La/d/a/ad;

    return-object v0
.end method

.method private d(II)V
    .registers 7

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    invoke-virtual {v0, p1}, La/g/a/v;->h(I)La/d/k;

    move-result-object v0

    invoke-virtual {v0, p2}, La/d/k;->a(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->n_()La/d/a/ad;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, La/d/a/ad;->e()I

    move-result v2

    const/4 v0, 0x0

    :goto_15
    if-ge v0, v2, :cond_2d

    invoke-virtual {v1, v0}, La/d/a/ad;->c(I)Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-virtual {v1, v0}, La/d/a/ad;->i(I)Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-virtual {v1, v0}, La/d/a/ad;->a(I)I

    move-result v3

    invoke-direct {p0, v3}, La/g/a/j;->h(I)V

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2d
    return-void
.end method

.method private e(II)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, La/g/a/j;->c:La/g/a/v;

    invoke-virtual {v2, p1}, La/g/a/v;->h(I)La/d/k;

    move-result-object v2

    invoke-virtual {v2, p2}, La/d/k;->c(I)La/d/a/bd;

    move-result-object v2

    if-nez v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    iget-object v3, p0, La/g/a/j;->c:La/g/a/v;

    invoke-virtual {v3, p1}, La/g/a/v;->i(I)La/d/k;

    move-result-object v3

    invoke-virtual {v3, p2}, La/d/k;->c(I)La/d/a/bd;

    move-result-object v3

    invoke-virtual {v3}, La/d/a/bd;->j()I

    move-result v4

    invoke-virtual {v2}, La/d/a/bd;->j()I

    move-result v5

    if-ne v4, v5, :cond_e

    invoke-virtual {v3}, La/d/a/bd;->j()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4a

    invoke-virtual {v3}, La/d/a/bd;->l_()La/d/a/ap;

    move-result-object v4

    invoke-virtual {v4}, La/d/a/ap;->m()I

    move-result v4

    if-eq v4, v0, :cond_e

    invoke-virtual {v3}, La/d/a/bd;->l_()La/d/a/ap;

    move-result-object v3

    invoke-virtual {v3}, La/d/a/ap;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, La/d/a/bd;->l_()La/d/a/ap;

    move-result-object v2

    invoke-virtual {v2}, La/d/a/ap;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_4a
    iget-object v2, p0, La/g/a/j;->c:La/g/a/v;

    invoke-virtual {v2, p1}, La/g/a/v;->h(I)La/d/k;

    move-result-object v2

    invoke-virtual {v2, p2}, La/d/k;->a(I)La/d/a/bd;

    move-result-object v2

    invoke-virtual {v2}, La/d/a/bd;->n_()La/d/a/ad;

    move-result-object v2

    invoke-virtual {v2}, La/d/a/ad;->e()I

    move-result v3

    if-ne v3, v0, :cond_64

    invoke-virtual {v2, v1}, La/d/a/ad;->c(I)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_64
    move v0, v1

    goto :goto_e
.end method

.method private f(II)V
    .registers 5

    invoke-virtual {p0, p1, p2}, La/g/a/j;->c(II)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, La/g/a/j;->l:[[Z

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    iget v0, p0, La/g/a/j;->p:I

    if-ge v0, p1, :cond_13

    iput p1, p0, La/g/a/j;->p:I

    :cond_13
    return-void
.end method

.method private g(I)V
    .registers 3

    iget-object v0, p0, La/g/a/j;->k:[La/d/a/ad;

    aget-object v0, v0, p1

    if-eqz v0, :cond_9

    invoke-direct {p0, v0}, La/g/a/j;->a(La/d/a/ad;)V

    :cond_9
    return-void
.end method

.method private g(II)V
    .registers 5

    iget-object v0, p0, La/g/a/j;->m:[[Z

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    return-void
.end method

.method private h(I)V
    .registers 4

    invoke-virtual {p0, p1}, La/g/a/j;->b(I)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, La/g/a/j;->n:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    iget v0, p0, La/g/a/j;->p:I

    if-ge v0, p1, :cond_11

    iput p1, p0, La/g/a/j;->p:I

    :cond_11
    return-void
.end method

.method private h(II)Z
    .registers 4

    :goto_0
    if-ge p1, p2, :cond_13

    invoke-virtual {p0, p1}, La/g/a/j;->b(I)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1}, La/g/a/j;->c(I)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private i(I)V
    .registers 4

    invoke-virtual {p0, p1}, La/g/a/j;->b(I)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0, p1}, La/g/a/j;->c(I)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, La/g/a/j;->o:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    iget v0, p0, La/g/a/j;->p:I

    if-ge v0, p1, :cond_17

    iput p1, p0, La/g/a/j;->p:I

    :cond_17
    return-void
.end method


# virtual methods
.method public a(La/b/d/a/d;)La/b/d/a/d;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, La/g/a/j;->b(ZLa/b/d/a/d;)La/b/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public a(ZLa/b/d/a/d;)La/b/d/a/d;
    .registers 4

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    invoke-virtual {v0, p1, p2}, La/g/a/v;->a(ZLa/b/d/a/d;)La/b/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 7

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, La/g/a/j;->b(La/b/c;La/b/j;La/b/a/d;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    const-string v1, "Unexpected error while marking instruction usage after partial evaluation:"

    invoke-static {v1}, La/j/l;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Class       = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/j/l;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Method      = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2, p1}, La/b/j;->a(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2, p1}, La/b/j;->b(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/j/l;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Exception   = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/j/l;->a(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)Z
    .registers 3

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    invoke-virtual {v0, p1}, La/g/a/v;->a(I)Z

    move-result v0

    return v0
.end method

.method public a(II)Z
    .registers 4

    iget-object v0, p0, La/g/a/j;->m:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    return v0
.end method

.method public a(III)Z
    .registers 6

    invoke-virtual {p0, p1, p2}, La/g/a/j;->b(II)Z

    move-result v0

    invoke-virtual {p0, p1, p3}, La/g/a/j;->b(II)Z

    move-result v1

    if-nez v0, :cond_c

    if-eqz v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public a(La/d/a/ad;I)Z
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p1}, La/d/a/ad;->e()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_19

    invoke-virtual {p1, v1}, La/d/a/ad;->i(I)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {p1, v1}, La/d/a/ad;->a(I)I

    move-result v3

    invoke-virtual {p0, v3, p2}, La/g/a/j;->c(II)Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :cond_19
    return v0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public b(ZLa/b/d/a/d;)La/b/d/a/d;
    .registers 4

    new-instance v0, La/g/a/n;

    invoke-direct {v0, p0, p1, p2}, La/g/a/n;-><init>(La/g/a/j;ZLa/b/d/a/d;)V

    return-object v0
.end method

.method public b(La/b/c;La/b/j;La/b/a/d;)V
    .registers 13

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p3}, La/g/a/j;->a(La/b/a/d;)V

    iget-boolean v0, p0, La/g/a/j;->b:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    invoke-virtual {v0, p1, p2, p3}, La/g/a/v;->a(La/b/c;La/b/j;La/b/a/d;)V

    :cond_e
    iget-object v0, p0, La/g/a/j;->c:La/g/a/v;

    invoke-virtual {v0, p1, p2, p3}, La/g/a/v;->a(La/b/c;La/b/j;La/b/a/d;)V

    iget v6, p3, La/b/a/d;->e:I

    const/4 v0, -0x1

    iput v0, p0, La/g/a/j;->p:I

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    iget-object v1, p0, La/g/a/j;->e:La/g/a/o;

    invoke-virtual {v0, v1}, La/g/a/v;->a(La/b/d/a/d;)La/b/d/a/d;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/d/a/d;)V

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    iget-object v1, p0, La/g/a/j;->f:La/g/a/m;

    invoke-virtual {v0, v1}, La/g/a/v;->a(La/b/d/a/d;)La/b/d/a/d;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/d/a/d;)V

    :cond_2e
    :goto_2e
    iget v0, p0, La/g/a/j;->p:I

    if-ltz v0, :cond_6a

    iget v4, p0, La/g/a/j;->p:I

    add-int/lit8 v0, v4, -0x1

    iput v0, p0, La/g/a/j;->p:I

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    invoke-virtual {v0, v4}, La/g/a/v;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0, v4}, La/g/a/j;->b(I)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p3, La/b/a/d;->f:[B

    invoke-static {v0, v4}, La/b/d/e;->a([BI)La/b/d/c;

    move-result-object v0

    iget-object v5, p0, La/g/a/j;->g:La/g/a/p;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    invoke-direct {p0, v4}, La/g/a/j;->g(I)V

    :cond_57
    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    invoke-virtual {v0, v4}, La/g/a/v;->m(I)La/d/a/ad;

    move-result-object v0

    invoke-direct {p0, v4, v0, v8}, La/g/a/j;->a(ILa/d/a/ad;Z)V

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    invoke-virtual {v0, v4}, La/g/a/v;->l(I)La/d/a/ad;

    move-result-object v0

    invoke-direct {p0, v4, v0, v7}, La/g/a/j;->a(ILa/d/a/ad;Z)V

    goto :goto_2e

    :cond_6a
    iget-object v0, p0, La/g/a/j;->h:La/g/a/r;

    invoke-virtual {p0, v0}, La/g/a/j;->a(La/b/d/a/d;)La/b/d/a/d;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/d/a/d;)V

    add-int/lit8 v0, v6, -0x1

    iput v0, p0, La/g/a/j;->p:I

    :cond_77
    :goto_77
    iget v0, p0, La/g/a/j;->p:I

    if-ltz v0, :cond_aa

    iget v4, p0, La/g/a/j;->p:I

    add-int/lit8 v0, v4, -0x1

    iput v0, p0, La/g/a/j;->p:I

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    invoke-virtual {v0, v4}, La/g/a/v;->a(I)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p3, La/b/a/d;->f:[B

    invoke-static {v0, v4}, La/b/d/e;->a([BI)La/b/d/c;

    move-result-object v0

    iget-object v5, p0, La/g/a/j;->i:La/g/a/q;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    invoke-virtual {v0, v4}, La/g/a/v;->m(I)La/d/a/ad;

    move-result-object v0

    invoke-direct {p0, v4, v0, v8}, La/g/a/j;->a(ILa/d/a/ad;Z)V

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    invoke-virtual {v0, v4}, La/g/a/v;->l(I)La/d/a/ad;

    move-result-object v0

    invoke-direct {p0, v4, v0, v7}, La/g/a/j;->a(ILa/d/a/ad;Z)V

    goto :goto_77

    :cond_aa
    add-int/lit8 v0, v6, -0x1

    iput v0, p0, La/g/a/j;->p:I

    :cond_ae
    :goto_ae
    iget v0, p0, La/g/a/j;->p:I

    if-ltz v0, :cond_e7

    iget v4, p0, La/g/a/j;->p:I

    add-int/lit8 v0, v4, -0x1

    iput v0, p0, La/g/a/j;->p:I

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    invoke-virtual {v0, v4}, La/g/a/v;->a(I)Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-virtual {p0, v4}, La/g/a/j;->b(I)Z

    move-result v0

    if-nez v0, :cond_ae

    iget-object v0, p3, La/b/a/d;->f:[B

    invoke-static {v0, v4}, La/b/d/e;->a([BI)La/b/d/c;

    move-result-object v0

    iget-object v5, p0, La/g/a/j;->j:La/g/a/l;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    invoke-virtual {v0, v4}, La/g/a/v;->m(I)La/d/a/ad;

    move-result-object v0

    invoke-direct {p0, v4, v0, v8}, La/g/a/j;->a(ILa/d/a/ad;Z)V

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    invoke-virtual {v0, v4}, La/g/a/v;->l(I)La/d/a/ad;

    move-result-object v0

    invoke-direct {p0, v4, v0, v7}, La/g/a/j;->a(ILa/d/a/ad;Z)V

    goto :goto_ae

    :cond_e7
    return-void
.end method

.method public b(I)Z
    .registers 3

    iget-object v0, p0, La/g/a/j;->n:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public b(II)Z
    .registers 4

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    invoke-virtual {v0, p1}, La/g/a/v;->j(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0, p2}, La/d/j;->d(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->n_()La/d/a/ad;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, La/g/a/j;->a(La/d/a/ad;I)Z

    move-result v0

    return v0
.end method

.method public b(III)Z
    .registers 6

    invoke-virtual {p0, p1, p2}, La/g/a/j;->c(II)Z

    move-result v0

    invoke-virtual {p0, p1, p3}, La/g/a/j;->c(II)Z

    move-result v1

    if-nez v0, :cond_c

    if-eqz v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public c(I)Z
    .registers 3

    iget-object v0, p0, La/g/a/j;->o:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public c(II)Z
    .registers 4

    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    if-nez v0, :cond_d

    iget-object v0, p0, La/g/a/j;->l:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_f

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public d(I)La/d/j;
    .registers 3

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    invoke-virtual {v0, p1}, La/g/a/v;->j(I)La/d/j;

    move-result-object v0

    return-object v0
.end method

.method public e(I)La/d/j;
    .registers 3

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    invoke-virtual {v0, p1}, La/g/a/v;->k(I)La/d/j;

    move-result-object v0

    return-object v0
.end method

.method public f(I)La/d/a/ad;
    .registers 3

    iget-object v0, p0, La/g/a/j;->a:La/g/a/v;

    invoke-virtual {v0, p1}, La/g/a/v;->m(I)La/d/a/ad;

    move-result-object v0

    return-object v0
.end method
