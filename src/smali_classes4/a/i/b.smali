.class public La/i/b;
.super La/b/f/w;

# interfaces
.implements La/b/a/a/b/f;
.implements La/b/a/a/b/g;
.implements La/b/a/d/i;
.implements La/b/g/aq;
.implements La/b/g/s;


# instance fields
.field private final a:La/i/n;

.field private b:[I

.field private c:[I

.field private final d:La/b/c/af;

.field private final e:La/b/c/l;


# direct methods
.method public constructor <init>(La/i/n;)V
    .registers 4

    const/16 v1, 0x100

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, La/i/b;->b:[I

    new-array v0, v1, [I

    iput-object v0, p0, La/i/b;->c:[I

    new-instance v0, La/b/c/af;

    invoke-direct {v0}, La/b/c/af;-><init>()V

    iput-object v0, p0, La/i/b;->d:La/b/c/af;

    new-instance v0, La/b/c/l;

    invoke-direct {v0}, La/b/c/l;-><init>()V

    iput-object v0, p0, La/i/b;->e:La/b/c/l;

    iput-object p1, p0, La/i/b;->a:La/i/n;

    return-void
.end method

.method private a([La/b/a/b;I)I
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, La/i/b;->c:[I

    array-length v1, v1

    if-ge v1, p2, :cond_a

    new-array v1, p2, [I

    iput-object v1, p0, La/i/b;->c:[I

    :cond_a
    move v2, v0

    move v1, v0

    :goto_c
    if-ge v2, p2, :cond_2b

    aget-object v3, p1, v2

    iget-object v0, p0, La/i/b;->a:La/i/n;

    invoke-virtual {v0, v3}, La/i/n;->c(La/b/o;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, La/i/b;->c:[I

    aput v1, v0, v2

    add-int/lit8 v0, v1, 0x1

    aput-object v3, p1, v1

    :goto_20
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_c

    :cond_24
    iget-object v0, p0, La/i/b;->c:[I

    const/4 v3, -0x1

    aput v3, v0, v2

    move v0, v1

    goto :goto_20

    :cond_2b
    const/4 v0, 0x0

    invoke-static {p1, v1, p2, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    return v1
.end method

.method private a([La/b/b/b;I)I
    .registers 8

    const/4 v0, 0x1

    iget-object v1, p0, La/i/b;->b:[I

    array-length v1, v1

    if-ge v1, p2, :cond_a

    new-array v1, p2, [I

    iput-object v1, p0, La/i/b;->b:[I

    :cond_a
    const/4 v2, 0x0

    move v3, v0

    move v1, v0

    :goto_d
    if-ge v3, p2, :cond_33

    iget-object v0, p0, La/i/b;->b:[I

    aput v1, v0, v3

    aget-object v4, p1, v3

    if-eqz v4, :cond_1e

    iget-object v0, p0, La/i/b;->a:La/i/n;

    invoke-virtual {v0, v4}, La/i/n;->c(La/b/o;)Z

    move-result v0

    move v2, v0

    :cond_1e
    if-eqz v2, :cond_2c

    iget-object v0, p0, La/i/b;->b:[I

    aput v1, v0, v3

    add-int/lit8 v0, v1, 0x1

    aput-object v4, p1, v1

    :goto_28
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_d

    :cond_2c
    iget-object v0, p0, La/i/b;->b:[I

    const/4 v4, -0x1

    aput v4, v0, v3

    move v0, v1

    goto :goto_28

    :cond_33
    const/4 v0, 0x0

    invoke-static {p1, v1, p2, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    return v1
.end method

.method private a([La/b/o;I)I
    .registers 7

    const/4 v0, 0x0

    move v2, v0

    move v1, v0

    :goto_3
    if-ge v2, p2, :cond_17

    aget-object v3, p1, v2

    iget-object v0, p0, La/i/b;->a:La/i/n;

    invoke-virtual {v0, v3}, La/i/n;->c(La/b/o;)Z

    move-result v0

    if-eqz v0, :cond_1e

    add-int/lit8 v0, v1, 0x1

    aput-object v3, p1, v1

    :goto_13
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_3

    :cond_17
    if-ge v1, p2, :cond_1d

    const/4 v0, 0x0

    invoke-static {p1, v1, p2, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_1d
    return v1

    :cond_1e
    move v0, v1

    goto :goto_13
.end method

.method static synthetic a(La/i/b;)La/i/n;
    .registers 2

    iget-object v0, p0, La/i/b;->a:La/i/n;

    return-object v0
.end method

.method private a([La/b/c;)[La/b/c;
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_6

    move-object p1, v0

    :cond_5
    :goto_5
    return-object p1

    :cond_6
    array-length v1, p1

    invoke-direct {p0, p1, v1}, La/i/b;->a([La/b/o;I)I

    move-result v1

    if-nez v1, :cond_f

    move-object p1, v0

    goto :goto_5

    :cond_f
    array-length v0, p1

    if-eq v1, v0, :cond_5

    new-array v0, v1, [La/b/c;

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    goto :goto_5
.end method

.method private a([La/b/b/b;[II)[Z
    .registers 8

    new-array v1, p3, [Z

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p3, :cond_17

    iget-object v2, p0, La/i/b;->a:La/i/n;

    aget v3, p2, v0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, La/i/n;->c(La/b/o;)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_17
    return-object v1
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a/a;)V
    .registers 5

    iget-object v0, p2, La/b/a/a/a;->c:[La/b/a/a/h;

    iget v1, p2, La/b/a/a/a;->b:I

    invoke-direct {p0, v0, v1}, La/i/b;->a([La/b/o;I)I

    move-result v0

    iput v0, p2, La/b/a/a/a;->b:I

    invoke-virtual {p2, p1, p0}, La/b/a/a/a;->a(La/b/c;La/b/a/a/b/g;)V

    return-void
.end method

.method public a(La/b/c;La/b/a/a/a;La/b/a/a/c;)V
    .registers 4

    invoke-virtual {p3, p1, p0}, La/b/a/a/c;->a(La/b/c;La/b/a/a/b/f;)V

    return-void
.end method

.method public a(La/b/c;La/b/a/a/a;La/b/a/a/e;)V
    .registers 6

    iget-object v0, p3, La/b/a/a/e;->b:[La/b/a/a/h;

    iget v1, p3, La/b/a/a/e;->a:I

    invoke-direct {p0, v0, v1}, La/i/b;->a([La/b/o;I)I

    move-result v0

    iput v0, p3, La/b/a/a/e;->a:I

    invoke-virtual {p3, p1, p2, p0}, La/b/a/a/e;->b(La/b/c;La/b/a/a/a;La/b/a/a/b/g;)V

    return-void
.end method

.method public a(La/b/c;La/b/a/a/a;La/b/a/a/h;)V
    .registers 4

    return-void
.end method

.method public a(La/b/c;La/b/a/a/d;)V
    .registers 5

    iget-object v0, p2, La/b/a/a/d;->d:[La/b/a/a/a;

    iget v1, p2, La/b/a/a/d;->c:I

    invoke-direct {p0, v0, v1}, La/i/b;->a([La/b/o;I)I

    move-result v0

    iput v0, p2, La/b/a/a/d;->c:I

    invoke-virtual {p2, p1, p0}, La/b/a/a/d;->a(La/b/c;La/b/a/a/b/f;)V

    return-void
.end method

.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/a/c;)V
    .registers 5

    iget-object v0, p2, La/b/a/c;->d:[La/b/a/b;

    iget v1, p2, La/b/a/c;->c:I

    invoke-direct {p0, v0, v1}, La/i/b;->a([La/b/a/b;I)I

    move-result v0

    iget v1, p2, La/b/a/c;->c:I

    if-ge v0, v1, :cond_1a

    iput v0, p2, La/b/a/c;->c:I

    iget-object v0, p0, La/i/b;->e:La/b/c/l;

    iget-object v1, p0, La/i/b;->c:[I

    invoke-virtual {v0, v1}, La/b/c/l;->a([I)V

    iget-object v0, p0, La/i/b;->e:La/b/c/l;

    invoke-interface {p1, v0}, La/b/c;->a(La/b/b/a/f;)V

    :cond_1a
    return-void
.end method

.method public a(La/b/c;La/b/a/g;)V
    .registers 5

    iget-object v0, p2, La/b/a/g;->f:La/b/j;

    if-eqz v0, :cond_14

    iget-object v0, p0, La/i/b;->a:La/i/n;

    iget-object v1, p2, La/b/a/g;->f:La/b/j;

    invoke-virtual {v0, v1}, La/i/n;->c(La/b/o;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    iput v0, p2, La/b/a/g;->d:I

    const/4 v0, 0x0

    iput-object v0, p2, La/b/a/g;->f:La/b/j;

    :cond_14
    return-void
.end method

.method public a(La/b/c;La/b/a/k;)V
    .registers 5

    iget-object v0, p2, La/b/a/k;->d:[La/b/a/l;

    iget v1, p2, La/b/a/k;->c:I

    invoke-direct {p0, v0, v1}, La/i/b;->a([La/b/o;I)I

    move-result v0

    iput v0, p2, La/b/a/k;->c:I

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/a/j;)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    iget v1, p3, La/b/a/a/j;->c:I

    if-ge v0, v1, :cond_18

    iget-object v1, p3, La/b/a/a/j;->d:[I

    iget-object v2, p3, La/b/a/a/j;->e:[[La/b/a/a/a;

    aget-object v2, v2, v0

    iget-object v3, p3, La/b/a/a/j;->d:[I

    aget v3, v3, v0

    invoke-direct {p0, v2, v3}, La/i/b;->a([La/b/o;I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    invoke-virtual {p3, p1, p2, p0}, La/b/a/a/j;->a(La/b/c;La/b/j;La/b/a/a/b/f;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 6

    iget-object v0, p3, La/b/a/d;->j:[La/b/a/a;

    iget v1, p3, La/b/a/d;->i:I

    invoke-direct {p0, v0, v1}, La/i/b;->a([La/b/o;I)I

    move-result v0

    iput v0, p3, La/b/a/d;->i:I

    invoke-virtual {p3, p1, p2, p0}, La/b/a/d;->b(La/b/c;La/b/j;La/b/a/d/i;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/p;)V
    .registers 7

    iget-object v0, p4, La/b/a/p;->d:[La/b/a/o;

    iget v1, p4, La/b/a/p;->c:I

    invoke-direct {p0, v0, v1}, La/i/b;->a([La/b/o;I)I

    move-result v0

    iput v0, p4, La/b/a/p;->c:I

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/r;)V
    .registers 7

    iget-object v0, p4, La/b/a/r;->d:[La/b/a/q;

    iget v1, p4, La/b/a/r;->c:I

    invoke-direct {p0, v0, v1}, La/i/b;->a([La/b/o;I)I

    move-result v0

    iput v0, p4, La/b/a/r;->c:I

    return-void
.end method

.method public a(La/b/e;)V
    .registers 3

    iget-object v0, p1, La/b/e;->i:[La/b/c;

    invoke-direct {p0, v0}, La/i/b;->a([La/b/c;)[La/b/c;

    move-result-object v0

    iput-object v0, p1, La/b/e;->i:[La/b/c;

    return-void
.end method

.method public a(La/b/k;)V
    .registers 6

    iget v0, p1, La/b/k;->g:I

    if-lez v0, :cond_16

    new-instance v0, La/b/c/av;

    iget-object v1, p1, La/b/k;->c:[La/b/b/b;

    iget-object v2, p1, La/b/k;->h:[I

    iget v3, p1, La/b/k;->g:I

    invoke-direct {p0, v1, v2, v3}, La/i/b;->a([La/b/b/b;[II)[Z

    move-result-object v1

    invoke-direct {v0, v1}, La/b/c/av;-><init>([Z)V

    invoke-virtual {v0, p1}, La/b/c/av;->a(La/b/k;)V

    :cond_16
    iget-object v0, p1, La/b/k;->c:[La/b/b/b;

    iget v1, p1, La/b/k;->b:I

    invoke-direct {p0, v0, v1}, La/i/b;->a([La/b/b/b;I)I

    move-result v0

    iget v1, p1, La/b/k;->i:I

    iget-object v2, p1, La/b/k;->j:[La/b/l;

    iget v3, p1, La/b/k;->i:I

    invoke-direct {p0, v2, v3}, La/i/b;->a([La/b/o;I)I

    move-result v2

    iput v2, p1, La/b/k;->i:I

    iget v2, p1, La/b/k;->i:I

    if-ge v2, v1, :cond_35

    iget v1, p1, La/b/k;->d:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, p1, La/b/k;->d:I

    :cond_35
    iget v1, p1, La/b/k;->k:I

    iget-object v2, p1, La/b/k;->l:[La/b/n;

    iget v3, p1, La/b/k;->k:I

    invoke-direct {p0, v2, v3}, La/i/b;->a([La/b/o;I)I

    move-result v2

    iput v2, p1, La/b/k;->k:I

    iget v2, p1, La/b/k;->k:I

    if-ge v2, v1, :cond_4c

    iget v1, p1, La/b/k;->d:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p1, La/b/k;->d:I

    :cond_4c
    iget-object v1, p1, La/b/k;->n:[La/b/a/a;

    iget v2, p1, La/b/k;->m:I

    invoke-direct {p0, v1, v2}, La/i/b;->a([La/b/o;I)I

    move-result v1

    iput v1, p1, La/b/k;->m:I

    invoke-virtual {p1, p0}, La/b/k;->a(La/b/g/aq;)V

    invoke-virtual {p1, p0}, La/b/k;->b(La/b/g/aq;)V

    invoke-virtual {p1, p0}, La/b/k;->a(La/b/a/d/i;)V

    iget v1, p1, La/b/k;->b:I

    if-ge v0, v1, :cond_71

    iput v0, p1, La/b/k;->b:I

    iget-object v0, p0, La/i/b;->d:La/b/c/af;

    iget-object v1, p0, La/i/b;->b:[I

    invoke-virtual {v0, v1}, La/b/c/af;->a([I)V

    iget-object v0, p0, La/i/b;->d:La/b/c/af;

    invoke-virtual {v0, p1}, La/b/c/af;->a(La/b/k;)V

    :cond_71
    new-instance v0, La/i/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/i/d;-><init>(La/i/b;La/i/c;)V

    new-instance v1, La/b/a/d/a;

    invoke-direct {v1, v0}, La/b/a/d/a;-><init>(La/b/a/d/i;)V

    invoke-virtual {p1, v1}, La/b/k;->a(La/b/g/aq;)V

    new-instance v1, La/b/a/d/a;

    invoke-direct {v1, v0}, La/b/a/d/a;-><init>(La/b/a/d/i;)V

    invoke-virtual {p1, v1}, La/b/k;->b(La/b/g/aq;)V

    invoke-virtual {p1, v0}, La/b/k;->a(La/b/a/d/i;)V

    iget-object v0, p1, La/b/k;->o:[La/b/c;

    invoke-direct {p0, v0}, La/i/b;->a([La/b/c;)[La/b/c;

    move-result-object v0

    iput-object v0, p1, La/b/k;->o:[La/b/c;

    return-void
.end method

.method public a(La/b/k;La/b/m;)V
    .registers 5

    iget-object v0, p2, La/b/m;->f:[La/b/a/a;

    iget v1, p2, La/b/m;->e:I

    invoke-direct {p0, v0, v1}, La/i/b;->a([La/b/o;I)I

    move-result v0

    iput v0, p2, La/b/m;->e:I

    invoke-virtual {p2, p1, p0}, La/b/m;->a(La/b/k;La/b/a/d/i;)V

    return-void
.end method
