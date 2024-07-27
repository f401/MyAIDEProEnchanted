.class public La/g/a/i;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/d/a/d;


# instance fields
.field private final a:La/g/a/v;

.field private final b:Z

.field private c:I

.field private d:[I

.field private e:[La/d/a/ad;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, La/g/a/aa;

    new-instance v1, La/d/a/c;

    invoke-direct {v1}, La/d/a/c;-><init>()V

    invoke-direct {v0, v1}, La/g/a/aa;-><init>(La/d/a/be;)V

    invoke-direct {p0, v0}, La/g/a/i;-><init>(La/g/a/aa;)V

    return-void
.end method

.method private constructor <init>(La/g/a/aa;)V
    .registers 6

    const/4 v3, 0x1

    new-instance v0, La/g/a/v;

    new-instance v1, La/g/a/z;

    new-instance v2, La/d/b;

    invoke-direct {v2, p1}, La/d/b;-><init>(La/d/a/be;)V

    invoke-direct {v1, v2}, La/g/a/z;-><init>(La/d/h;)V

    invoke-direct {v0, p1, v1, v3, p1}, La/g/a/v;-><init>(La/d/a/be;La/d/f;ZLa/b/d/a/d;)V

    invoke-direct {p0, v0, v3}, La/g/a/i;-><init>(La/g/a/v;Z)V

    return-void
.end method

.method public constructor <init>(La/g/a/v;Z)V
    .registers 5

    const/16 v1, 0x1fa0

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, La/g/a/i;->d:[I

    new-array v0, v1, [La/d/a/ad;

    iput-object v0, p0, La/g/a/i;->e:[La/d/a/ad;

    iput-object p1, p0, La/g/a/i;->a:La/g/a/v;

    iput-boolean p2, p0, La/g/a/i;->b:Z

    return-void
.end method

.method private a(I)La/d/a/ad;
    .registers 3

    iget-object v0, p0, La/g/a/i;->a:La/g/a/v;

    invoke-virtual {v0, p1}, La/g/a/v;->k(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0}, La/d/j;->b()I

    move-result v0

    invoke-direct {p0, p1, v0}, La/g/a/i;->a(II)La/d/a/ad;

    move-result-object v0

    return-object v0
.end method

.method private a(II)La/d/a/ad;
    .registers 4

    iget-object v0, p0, La/g/a/i;->a:La/g/a/v;

    invoke-virtual {v0, p1}, La/g/a/v;->j(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0, p2}, La/d/j;->b(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->l_()La/d/a/ap;

    move-result-object v0

    check-cast v0, La/d/a/av;

    invoke-virtual {v0}, La/d/a/av;->s()La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->n_()La/d/a/ad;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 12

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget v4, p3, La/b/a/d;->e:I

    iput v2, p0, La/g/a/i;->c:I

    iget-object v0, p0, La/g/a/i;->d:[I

    invoke-static {v0, v4, v2}, La/j/b;->b([III)[I

    move-result-object v0

    iput-object v0, p0, La/g/a/i;->d:[I

    iget-object v0, p0, La/g/a/i;->e:[La/d/a/ad;

    const/4 v2, 0x0

    invoke-static {v0, v4, v2}, La/j/b;->b([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/d/a/ad;

    iput-object v0, p0, La/g/a/i;->e:[La/d/a/ad;

    iget-boolean v0, p0, La/g/a/i;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/g/a/i;->a:La/g/a/v;

    invoke-virtual {v0, p1, p2, p3}, La/g/a/v;->a(La/b/c;La/b/j;La/b/a/d;)V

    :cond_0
    invoke-interface {p2, p1}, La/b/j;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<init>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, La/d/a/ad;

    const/high16 v2, 0x1000000

    invoke-direct {v0, v2}, La/d/a/ad;-><init>(I)V

    :goto_0
    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_9

    iget-object v2, p0, La/g/a/i;->a:La/g/a/v;

    invoke-virtual {v2, v3}, La/g/a/v;->a(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, La/g/a/i;->a:La/g/a/v;

    invoke-virtual {v2, v3}, La/g/a/v;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, La/d/a/ad;->a:La/d/a/ad;

    :cond_1
    iget-object v2, p0, La/g/a/i;->e:[La/d/a/ad;

    aget-object v2, v2, v3

    if-eqz v2, :cond_4

    iget-object v0, p0, La/g/a/i;->e:[La/d/a/ad;

    aget-object v0, v0, v3

    :goto_2
    iget-object v2, p0, La/g/a/i;->a:La/g/a/v;

    invoke-virtual {v2, v3}, La/g/a/v;->f(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v3}, La/d/a/ad;->j(I)La/d/a/ad;

    move-result-object v2

    :goto_3
    iget-object v0, p0, La/g/a/i;->a:La/g/a/v;

    invoke-virtual {v0, v3}, La/g/a/v;->m(I)La/d/a/ad;

    move-result-object v5

    if-eqz v5, :cond_b

    move v0, v1

    :goto_4
    invoke-virtual {v5}, La/d/a/ad;->e()I

    move-result v6

    if-ge v0, v6, :cond_7

    invoke-virtual {v5, v0}, La/d/a/ad;->a(I)I

    move-result v6

    if-le v6, v3, :cond_2

    iget-object v7, p0, La/g/a/i;->e:[La/d/a/ad;

    aput-object v2, v7, v6

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    sget-object v0, La/d/a/ad;->a:La/d/a/ad;

    goto :goto_0

    :cond_4
    iget-object v2, p0, La/g/a/i;->e:[La/d/a/ad;

    aput-object v0, v2, v3

    goto :goto_2

    :cond_5
    iget-object v2, p0, La/g/a/i;->a:La/g/a/v;

    invoke-virtual {v2, v3}, La/g/a/v;->g(I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0, v3}, La/g/a/i;->a(I)La/d/a/ad;

    move-result-object v2

    invoke-virtual {v2, v1}, La/d/a/ad;->a(I)I

    move-result v5

    invoke-virtual {v2, v1}, La/d/a/ad;->c(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iput v3, p0, La/g/a/i;->c:I

    :goto_5
    invoke-virtual {v0, v5}, La/d/a/ad;->k(I)La/d/a/ad;

    move-result-object v2

    goto :goto_3

    :cond_6
    iget-object v2, p0, La/g/a/i;->d:[I

    aput v3, v2, v5

    goto :goto_5

    :cond_7
    sget-object v0, La/d/a/ad;->a:La/d/a/ad;

    :cond_8
    :goto_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_9
    return-void

    :cond_a
    move-object v2, v0

    goto :goto_3

    :cond_b
    move-object v0, v2

    goto :goto_6
.end method

.method public a()Z
    .registers 3

    iget v0, p0, La/g/a/i;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILa/d/a/ad;)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, La/g/a/i;->e:[La/d/a/ad;

    aget-object v1, v1, p1

    invoke-virtual {p2, v0}, La/d/a/ad;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, La/d/a/ad;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, La/g/a/i;->c:I

    return v0
.end method
