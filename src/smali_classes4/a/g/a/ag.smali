.class public La/g/a/ag;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/b/a/f;
.implements La/b/d/a/d;
.implements La/b/g/bg;


# instance fields
.field private final a:La/b/d/a/d;

.field private final b:La/g/a/v;

.field private final c:La/b/c/v;

.field private final d:La/b/b/a/f;

.field private e:La/b/c;

.field private f:La/b/j;

.field private g:La/b/a/d;

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, La/g/a/v;

    new-instance v1, La/d/a/ax;

    invoke-direct {v1}, La/d/a/ax;-><init>()V

    invoke-direct {v0, v1}, La/g/a/v;-><init>(La/d/a/be;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, La/g/a/ag;-><init>(La/g/a/v;La/b/d/a/d;)V

    return-void
.end method

.method public constructor <init>(La/g/a/v;La/b/d/a/d;)V
    .registers 6

    const/4 v1, 0x1

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/b/c/v;

    invoke-direct {v0, v1, v1}, La/b/c/v;-><init>(ZZ)V

    iput-object v0, p0, La/g/a/ag;->c:La/b/c/v;

    new-instance v0, La/b/g/bj;

    new-instance v1, La/b/f/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, La/b/f/b;-><init>(ZLa/b/g/bg;)V

    invoke-direct {v0, v1}, La/b/g/bj;-><init>(La/b/g/aq;)V

    iput-object v0, p0, La/g/a/ag;->d:La/b/b/a/f;

    iput-object p1, p0, La/g/a/ag;->b:La/g/a/v;

    iput-object p2, p0, La/g/a/ag;->a:La/b/d/a/d;

    return-void
.end method

.method private a(La/b/c;ILa/b/d/c;)V
    .registers 10

    const/4 v2, 0x0

    iget-object v0, p0, La/g/a/ag;->c:La/b/c/v;

    invoke-virtual {v0, p2}, La/b/c/v;->c(I)V

    iget-object v0, p0, La/g/a/ag;->a:La/b/d/a/d;

    if-eqz v0, :cond_13

    iget-object v5, p0, La/g/a/ag;->a:La/b/d/a/d;

    move-object v0, p3

    move-object v1, p1

    move-object v3, v2

    move v4, p2

    invoke-virtual/range {v0 .. v5}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    :cond_13
    return-void
.end method

.method private a(La/b/c;ILa/b/d/c;La/b/d/c;)V
    .registers 11

    const/4 v2, 0x0

    invoke-virtual {p3, p1}, La/b/d/c;->a(La/b/c;)I

    move-result v0

    invoke-virtual {p4, p1}, La/b/d/c;->a(La/b/c;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, p2, v0}, La/g/a/ag;->c(II)V

    iget-object v0, p0, La/g/a/ag;->c:La/b/c/v;

    invoke-virtual {v0, p2, p4}, La/b/c/v;->b(ILa/b/d/c;)V

    iget-object v0, p0, La/g/a/ag;->a:La/b/d/a/d;

    if-eqz v0, :cond_1f

    iget-object v5, p0, La/g/a/ag;->a:La/b/d/a/d;

    move-object v0, p3

    move-object v1, p1

    move-object v3, v2

    move v4, p2

    invoke-virtual/range {v0 .. v5}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    :cond_1f
    return-void
.end method

.method private a(La/b/c;ILa/b/d/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-string v0, "ordinal"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "()I"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x2

    new-array v0, v0, [La/b/d/c;

    const/4 v1, 0x0

    new-instance v2, La/b/d/h;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, La/b/d/h;-><init>(B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, La/b/d/h;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, La/b/d/h;-><init>(B)V

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, p3, v0}, La/g/a/ag;->a(La/b/c;ILa/b/d/c;[La/b/d/c;)V

    :cond_29
    return-void
.end method

.method private a(La/b/c;ILa/b/d/c;[La/b/d/c;)V
    .registers 11

    const/4 v2, 0x0

    iget-object v0, p0, La/g/a/ag;->c:La/b/c/v;

    invoke-virtual {v0, p2, p4}, La/b/c/v;->c(I[La/b/d/c;)V

    iget-object v0, p0, La/g/a/ag;->a:La/b/d/a/d;

    if-eqz v0, :cond_13

    iget-object v5, p0, La/g/a/ag;->a:La/b/d/a/d;

    move-object v0, p3

    move-object v1, p1

    move-object v3, v2

    move v4, p2

    invoke-virtual/range {v0 .. v5}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    :cond_13
    return-void
.end method

.method private a(La/b/c;La/b/j;La/b/a/d;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, La/g/a/ag;->a(La/b/c;La/b/j;La/b/a/d;II)V

    return-void
.end method

.method private a(La/b/c;La/b/j;La/b/a/d;II)V
    .registers 13

    const/4 v6, 0x1

    iget-object v0, p0, La/g/a/ag;->b:La/g/a/v;

    invoke-virtual {v0, p4}, La/g/a/v;->j(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0, p5}, La/d/j;->g(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->n_()La/d/a/ad;

    move-result-object v1

    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v1}, La/d/a/ad;->e()I

    move-result v2

    if-ge v0, v2, :cond_33

    invoke-virtual {v1, v0}, La/d/a/ad;->a(I)I

    move-result v2

    if-ltz v2, :cond_30

    iget-object v3, p3, La/b/a/d;->f:[B

    aget-byte v3, v3, v2

    if-ne v3, v6, :cond_30

    new-instance v3, La/b/d/h;

    invoke-direct {v3, v6}, La/b/d/h;-><init>(B)V

    new-instance v4, La/b/d/h;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, La/b/d/h;-><init>(B)V

    invoke-direct {p0, p1, v2, v3, v4}, La/g/a/ag;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_33
    return-void
.end method

.method private a(I)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, La/g/a/ag;->b:La/g/a/v;

    invoke-virtual {v1, p1}, La/g/a/v;->k(I)La/d/j;

    move-result-object v1

    invoke-virtual {v1, v0}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v1

    invoke-virtual {v1}, La/d/a/bd;->l_()La/d/a/ap;

    move-result-object v1

    invoke-virtual {v1}, La/d/a/ap;->f()La/b/c;

    move-result-object v2

    invoke-direct {p0, v2}, La/g/a/ag;->b(La/b/c;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1}, La/d/a/ap;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/b/f/i;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    const/4 v0, 0x1

    :cond_24
    return v0
.end method

.method private a(II)Z
    .registers 5

    iget-object v0, p0, La/g/a/ag;->b:La/g/a/v;

    invoke-virtual {v0, p1}, La/g/a/v;->j(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0, p2}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->l_()La/d/a/ap;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/ap;->f()La/b/c;

    move-result-object v1

    invoke-direct {p0, v1}, La/g/a/ag;->b(La/b/c;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, La/d/a/ap;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private a(La/b/c;I)Z
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, La/g/a/ag;->i:Z

    invoke-interface {p1, p2, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    iget-boolean v0, p0, La/g/a/ag;->i:Z

    return v0
.end method

.method private a(La/b/c;La/b/j;)Z
    .registers 5

    invoke-interface {p2, p1}, La/b/j;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {v0}, La/b/f/i;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    check-cast p2, La/b/n;

    iget-object v0, p2, La/b/n;->a:[La/b/c;

    if-eqz v0, :cond_24

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, La/g/a/ag;->b(La/b/c;)Z

    move-result v0

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private b(La/b/c;La/b/j;La/b/a/d;II)V
    .registers 12

    iget-object v0, p0, La/g/a/ag;->b:La/g/a/v;

    invoke-virtual {v0, p4}, La/g/a/v;->h(I)La/d/k;

    move-result-object v0

    invoke-virtual {v0, p5}, La/d/k;->a(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->n_()La/d/a/ad;

    move-result-object v1

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v1}, La/d/a/ad;->e()I

    move-result v2

    if-ge v0, v2, :cond_51

    invoke-virtual {v1, v0}, La/d/a/ad;->c(I)Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-virtual {v1, v0}, La/d/a/ad;->i(I)Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-virtual {v1, v0}, La/d/a/ad;->a(I)I

    move-result v2

    iget-object v3, p0, La/g/a/ag;->b:La/g/a/v;

    invoke-virtual {v3, v2}, La/g/a/v;->i(I)La/d/k;

    move-result-object v3

    invoke-virtual {v3, p5}, La/d/k;->c(I)La/d/a/bd;

    move-result-object v3

    invoke-virtual {v3}, La/d/a/bd;->l_()La/d/a/ap;

    move-result-object v3

    invoke-virtual {v3}, La/d/a/ap;->m()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4e

    new-instance v3, La/b/d/k;

    const/16 v4, 0x3a

    invoke-direct {v3, v4, p5}, La/b/d/k;-><init>(BI)V

    new-instance v4, La/b/d/k;

    const/16 v5, 0x36

    invoke-direct {v4, v5, p5}, La/b/d/k;-><init>(BI)V

    invoke-direct {p0, p1, v2, v3, v4}, La/g/a/ag;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    invoke-direct {p0, p1, p2, p3, v2}, La/g/a/ag;->a(La/b/c;La/b/j;La/b/a/d;I)V

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_51
    return-void
.end method

.method private b(I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La/g/a/ag;->a(II)Z

    move-result v0

    return v0
.end method

.method private b(II)Z
    .registers 6

    const/4 v0, 0x1

    iget-object v1, p0, La/g/a/ag;->b:La/g/a/v;

    invoke-virtual {v1, p1}, La/g/a/v;->j(I)La/d/j;

    move-result-object v1

    invoke-virtual {v1, p2}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v1

    invoke-virtual {v1}, La/d/a/bd;->l_()La/d/a/ap;

    move-result-object v1

    invoke-virtual {v1}, La/d/a/ap;->f()La/b/c;

    move-result-object v2

    invoke-direct {p0, v2}, La/g/a/ag;->b(La/b/c;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1}, La/d/a/ap;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/b/f/i;->g(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_24

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private b(La/b/c;)Z
    .registers 3

    if-eqz p1, :cond_a

    invoke-static {p1}, La/g/b/as;->a(La/b/c;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private c(II)V
    .registers 8

    const/16 v3, 0x58

    const/16 v4, 0x57

    packed-switch p2, :pswitch_data_48

    div-int/lit8 v0, p2, 0x2

    rem-int/lit8 v1, p2, 0x2

    add-int/2addr v0, v1

    new-array v1, v0, [La/b/d/c;

    new-instance v2, La/b/d/h;

    invoke-direct {v2, v3}, La/b/d/h;-><init>(B)V

    const/4 v0, 0x0

    :goto_14
    div-int/lit8 v3, p2, 0x2

    if-ge v0, v3, :cond_33

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :pswitch_1d  #0x1
    new-instance v0, La/b/d/h;

    invoke-direct {v0, v4}, La/b/d/h;-><init>(B)V

    iget-object v1, p0, La/g/a/ag;->c:La/b/c/v;

    invoke-virtual {v1, p1, v0}, La/b/c/v;->a(ILa/b/d/c;)V

    :goto_27
    :pswitch_27  #0x0
    return-void

    :pswitch_28  #0x2
    new-instance v0, La/b/d/h;

    invoke-direct {v0, v3}, La/b/d/h;-><init>(B)V

    iget-object v1, p0, La/g/a/ag;->c:La/b/c/v;

    invoke-virtual {v1, p1, v0}, La/b/c/v;->a(ILa/b/d/c;)V

    goto :goto_27

    :cond_33
    rem-int/lit8 v0, p2, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_41

    new-instance v0, La/b/d/h;

    invoke-direct {v0, v4}, La/b/d/h;-><init>(B)V

    div-int/lit8 v2, p2, 0x2

    aput-object v0, v1, v2

    :cond_41
    iget-object v0, p0, La/g/a/ag;->c:La/b/c/v;

    invoke-virtual {v0, p1, v1}, La/b/c/v;->b(I[La/b/d/c;)V

    goto :goto_27

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_27  #00000000
        :pswitch_1d  #00000001
        :pswitch_28  #00000002
    .end packed-switch
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/a;)V
    .registers 4

    iget-object v0, p2, La/b/b/a;->b:La/b/c;

    invoke-direct {p0, v0}, La/g/a/ag;->b(La/b/c;)Z

    move-result v0

    iput-boolean v0, p0, La/g/a/ag;->i:Z

    return-void
.end method

.method public a(La/b/c;La/b/b/b;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/r;)V
    .registers 4

    iget-object v0, p2, La/b/b/r;->b:La/b/c;

    invoke-direct {p0, v0}, La/g/a/ag;->b(La/b/c;)Z

    move-result v0

    iput-boolean v0, p0, La/g/a/ag;->i:Z

    return-void
.end method

.method public a(La/b/c;La/b/i;IIIILjava/lang/String;La/b/c;)V
    .registers 15

    const/4 v0, 0x0

    invoke-virtual {p7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, La/b/f/i;->a(C)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {p7}, La/b/f/i;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-direct {p0, p8}, La/g/a/ag;->b(La/b/c;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v1, p0, La/g/a/ag;->e:La/b/c;

    iget-object v2, p0, La/g/a/ag;->f:La/b/j;

    iget-object v3, p0, La/g/a/ag;->g:La/b/a/d;

    iget v4, p0, La/g/a/ag;->h:I

    sub-int v0, p6, p5

    add-int/lit8 v5, v0, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, La/g/a/ag;->a(La/b/c;La/b/j;La/b/a/d;II)V

    :cond_27
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 11

    invoke-static {p1}, La/g/b/as;->a(La/b/c;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p2}, La/b/j;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, La/g/a/ag;->b:La/g/a/v;

    invoke-virtual {v0, p1, p2, p3}, La/g/a/v;->a(La/b/c;La/b/j;La/b/a/d;)V

    iget v6, p3, La/b/a/d;->e:I

    iget-object v0, p0, La/g/a/ag;->c:La/b/c/v;

    invoke-virtual {v0, v6}, La/b/c/v;->a(I)V

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v6, :cond_36

    iget-object v0, p0, La/g/a/ag;->b:La/g/a/v;

    invoke-virtual {v0, v4}, La/g/a/v;->a(I)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p3, La/b/a/d;->f:[B

    invoke-static {v0, v4}, La/b/d/e;->a([BI)La/b/d/c;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_36
    iget-object v0, p0, La/g/a/ag;->c:La/b/c/v;

    invoke-virtual {v0, p1, p2, p3}, La/b/c/v;->a(La/b/c;La/b/j;La/b/a/d;)V

    goto :goto_e
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a;)V
    .registers 9

    iget-byte v0, p5, La/b/d/a;->c:B

    sparse-switch v0, :sswitch_data_52

    :cond_5
    :goto_5
    return-void

    :sswitch_6
    invoke-direct {p0, p4}, La/g/a/ag;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, La/b/d/a;

    const/16 v1, -0x61

    iget v2, p5, La/b/d/a;->a:I

    invoke-direct {v0, v1, v2}, La/b/d/a;-><init>(BI)V

    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/ag;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    goto :goto_5

    :sswitch_19
    invoke-direct {p0, p4}, La/g/a/ag;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, La/b/d/a;

    const/16 v1, -0x60

    iget v2, p5, La/b/d/a;->a:I

    invoke-direct {v0, v1, v2}, La/b/d/a;-><init>(BI)V

    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/ag;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    goto :goto_5

    :sswitch_2c
    invoke-direct {p0, p4}, La/g/a/ag;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, La/b/d/a;

    const/16 v1, -0x67

    iget v2, p5, La/b/d/a;->a:I

    invoke-direct {v0, v1, v2}, La/b/d/a;-><init>(BI)V

    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/ag;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    goto :goto_5

    :sswitch_3f
    invoke-direct {p0, p4}, La/g/a/ag;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, La/b/d/a;

    const/16 v1, -0x66

    iget v2, p5, La/b/d/a;->a:I

    invoke-direct {v0, v1, v2}, La/b/d/a;-><init>(BI)V

    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/ag;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    goto :goto_5

    :sswitch_data_52
    .sparse-switch
        -0x5b -> :sswitch_6
        -0x5a -> :sswitch_19
        -0x3a -> :sswitch_2c
        -0x39 -> :sswitch_3f
    .end sparse-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 12

    iget-byte v0, p5, La/b/d/b;->c:B

    packed-switch v0, :pswitch_data_82

    :cond_5
    :goto_5
    :pswitch_5  #0xffffffb4, 0xffffffba, 0xffffffbb, 0xffffffbc, 0xffffffbe, 0xffffffbf
    return-void

    :pswitch_6  #0xffffffb3, 0xffffffb5
    iput-object p1, p0, La/g/a/ag;->e:La/b/c;

    iput-object p2, p0, La/g/a/ag;->f:La/b/j;

    iput-object p3, p0, La/g/a/ag;->g:La/b/a/d;

    iput p4, p0, La/g/a/ag;->h:I

    iget v0, p5, La/b/d/b;->a:I

    iget-object v1, p0, La/g/a/ag;->d:La/b/b/a/f;

    invoke-interface {p1, v0, v1}, La/b/c;->a(ILa/b/b/a/f;)V

    goto :goto_5

    :pswitch_16  #0xffffffb6
    iget v0, p5, La/b/d/b;->a:I

    invoke-interface {p1, v0}, La/b/c;->i(I)Ljava/lang/String;

    move-result-object v4

    iget v0, p5, La/b/d/b;->a:I

    invoke-interface {p1, v0}, La/b/c;->j(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, La/b/f/i;->u(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p4, v0}, La/g/a/ag;->a(II)Z

    move-result v0

    if-eqz v0, :cond_33

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, La/g/a/ag;->a(La/b/c;ILa/b/d/c;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    :pswitch_33  #0xffffffb7, 0xffffffb8, 0xffffffb9
    iput-object p1, p0, La/g/a/ag;->e:La/b/c;

    iput-object p2, p0, La/g/a/ag;->f:La/b/j;

    iput-object p3, p0, La/g/a/ag;->g:La/b/a/d;

    iput p4, p0, La/g/a/ag;->h:I

    iget v0, p5, La/b/d/b;->a:I

    iget-object v1, p0, La/g/a/ag;->d:La/b/b/a/f;

    invoke-interface {p1, v0, v1}, La/b/c;->a(ILa/b/b/a/f;)V

    goto :goto_5

    :pswitch_43  #0xffffffbd
    iget v0, p5, La/b/d/b;->a:I

    invoke-direct {p0, p1, v0}, La/g/a/ag;->a(La/b/c;I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1, v0}, La/b/c;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, La/b/d/h;

    const/16 v1, -0x44

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, La/b/d/h;-><init>(BI)V

    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/ag;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    goto :goto_5

    :pswitch_62  #0xffffffc0
    invoke-direct {p0, p4}, La/g/a/ag;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p4, p5}, La/g/a/ag;->a(La/b/c;ILa/b/d/c;)V

    invoke-direct {p0, p1, p2, p3, p4}, La/g/a/ag;->a(La/b/c;La/b/j;La/b/a/d;I)V

    goto :goto_5

    :pswitch_6f  #0xffffffc1
    invoke-direct {p0, p4}, La/g/a/ag;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, La/b/d/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, La/b/d/h;-><init>(B)V

    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/ag;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    invoke-direct {p0, p1, p2, p3, p4}, La/g/a/ag;->a(La/b/c;La/b/j;La/b/a/d;I)V

    goto :goto_5

    :pswitch_data_82
    .packed-switch -0x4d
        :pswitch_6  #ffffffb3
        :pswitch_5  #ffffffb4
        :pswitch_6  #ffffffb5
        :pswitch_16  #ffffffb6
        :pswitch_33  #ffffffb7
        :pswitch_33  #ffffffb8
        :pswitch_33  #ffffffb9
        :pswitch_5  #ffffffba
        :pswitch_5  #ffffffbb
        :pswitch_5  #ffffffbc
        :pswitch_43  #ffffffbd
        :pswitch_5  #ffffffbe
        :pswitch_5  #ffffffbf
        :pswitch_62  #ffffffc0
        :pswitch_6f  #ffffffc1
    .end packed-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/h;)V
    .registers 8

    iget-byte v0, p5, La/b/d/h;->c:B

    sparse-switch v0, :sswitch_data_40

    :cond_5
    :goto_5
    return-void

    :sswitch_6
    invoke-direct {p0, p4}, La/g/a/ag;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, La/b/d/h;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, La/b/d/h;-><init>(B)V

    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/ag;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    goto :goto_5

    :sswitch_17
    const/4 v0, 0x2

    invoke-direct {p0, p4, v0}, La/g/a/ag;->b(II)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, La/b/d/h;

    const/16 v1, 0x4f

    invoke-direct {v0, v1}, La/b/d/h;-><init>(B)V

    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/ag;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    invoke-direct {p0, p1, p2, p3, p4}, La/g/a/ag;->a(La/b/c;La/b/j;La/b/a/d;I)V

    goto :goto_5

    :sswitch_2c
    invoke-direct {p0, p1, p2}, La/g/a/ag;->a(La/b/c;La/b/j;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, La/b/d/h;

    const/16 v1, -0x54

    invoke-direct {v0, v1}, La/b/d/h;-><init>(B)V

    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/ag;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    invoke-direct {p0, p1, p2, p3, p4}, La/g/a/ag;->a(La/b/c;La/b/j;La/b/a/d;I)V

    goto :goto_5

    :sswitch_data_40
    .sparse-switch
        -0x50 -> :sswitch_2c
        0x32 -> :sswitch_6
        0x53 -> :sswitch_17
    .end sparse-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/i;)V
    .registers 6

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/k;)V
    .registers 12

    iget v5, p5, La/b/d/k;->b:I

    iget-byte v0, p5, La/b/d/k;->c:B

    sparse-switch v0, :sswitch_data_3e

    :cond_7
    :goto_7
    return-void

    :sswitch_8
    invoke-direct {p0, p4}, La/g/a/ag;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, La/b/d/k;

    const/16 v1, 0x15

    invoke-direct {v0, v1, v5}, La/b/d/k;-><init>(BI)V

    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/ag;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, La/g/a/ag;->b(La/b/c;La/b/j;La/b/a/d;II)V

    goto :goto_7

    :sswitch_21
    iget-object v0, p0, La/g/a/ag;->b:La/g/a/v;

    invoke-virtual {v0, p4}, La/g/a/v;->d(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p4}, La/g/a/ag;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, La/b/d/k;

    const/16 v1, 0x36

    invoke-direct {v0, v1, v5}, La/b/d/k;-><init>(BI)V

    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/ag;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    invoke-direct {p0, p1, p2, p3, p4}, La/g/a/ag;->a(La/b/c;La/b/j;La/b/a/d;I)V

    goto :goto_7

    nop

    :sswitch_data_3e
    .sparse-switch
        0x19 -> :sswitch_8
        0x2a -> :sswitch_8
        0x2b -> :sswitch_8
        0x2c -> :sswitch_8
        0x2d -> :sswitch_8
        0x3a -> :sswitch_21
        0x4b -> :sswitch_21
        0x4c -> :sswitch_21
        0x4d -> :sswitch_21
        0x4e -> :sswitch_21
    .end sparse-switch
.end method
