.class public La/g/b/ak;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/b/a/f;
.implements La/b/d/a/d;


# instance fields
.field private a:[Z

.field private b:[Z

.field private c:[Z

.field private d:[Z

.field private final e:La/g/a/v;

.field private final f:Z

.field private g:La/b/j;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, La/g/a/aa;

    new-instance v1, La/d/a/c;

    invoke-direct {v1}, La/d/a/c;-><init>()V

    invoke-direct {v0, v1}, La/g/a/aa;-><init>(La/d/a/be;)V

    invoke-direct {p0, v0}, La/g/b/ak;-><init>(La/g/a/aa;)V

    return-void
.end method

.method private constructor <init>(La/g/a/aa;)V
    .registers 6

    const/4 v3, 0x1

    new-instance v0, La/g/a/v;

    new-instance v1, La/g/a/u;

    new-instance v2, La/d/b;

    invoke-direct {v2, p1}, La/d/b;-><init>(La/d/a/be;)V

    invoke-direct {v1, v2}, La/g/a/u;-><init>(La/d/h;)V

    invoke-direct {v0, p1, v1, v3, p1}, La/g/a/v;-><init>(La/d/a/be;La/d/f;ZLa/b/d/a/d;)V

    invoke-direct {p0, v0, v3}, La/g/b/ak;-><init>(La/g/a/v;Z)V

    return-void
.end method

.method public constructor <init>(La/g/a/v;Z)V
    .registers 5

    const/16 v1, 0x1fa0

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-array v0, v1, [Z

    iput-object v0, p0, La/g/b/ak;->a:[Z

    new-array v0, v1, [Z

    iput-object v0, p0, La/g/b/ak;->b:[Z

    new-array v0, v1, [Z

    iput-object v0, p0, La/g/b/ak;->c:[Z

    new-array v0, v1, [Z

    iput-object v0, p0, La/g/b/ak;->d:[Z

    iput-object p1, p0, La/g/b/ak;->e:La/g/a/v;

    iput-boolean p2, p0, La/g/b/ak;->f:Z

    return-void
.end method

.method private a(II)V
    .registers 6

    iget-object v0, p0, La/g/b/ak;->e:La/g/a/v;

    invoke-virtual {v0, p1}, La/g/a/v;->j(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0, p2}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->j()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1f

    invoke-virtual {v0}, La/d/a/bd;->l_()La/d/a/ap;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/ap;->m()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1f

    invoke-direct {p0, v0}, La/g/b/ak;->a(La/d/a/ap;)V

    :cond_1f
    return-void
.end method

.method private a(La/d/a/ap;)V
    .registers 8

    check-cast p1, La/d/a/av;

    invoke-virtual {p1}, La/d/a/av;->s()La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->n_()La/d/a/ad;

    move-result-object v1

    invoke-virtual {v1}, La/d/a/ad;->e()I

    move-result v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_23

    invoke-virtual {v1, v0}, La/d/a/ad;->c(I)Z

    move-result v3

    if-nez v3, :cond_20

    iget-object v3, p0, La/g/b/ak;->a:[Z

    invoke-virtual {v1, v0}, La/d/a/ad;->a(I)I

    move-result v4

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_23
    return-void
.end method

.method private b(II)V
    .registers 6

    iget-object v0, p0, La/g/b/ak;->e:La/g/a/v;

    invoke-virtual {v0, p1}, La/g/a/v;->j(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0, p2}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->l_()La/d/a/ap;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/ap;->m()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_18

    invoke-direct {p0, v0}, La/g/b/ak;->b(La/d/a/ap;)V

    :cond_18
    return-void
.end method

.method private b(La/d/a/ap;)V
    .registers 8

    check-cast p1, La/d/a/av;

    invoke-virtual {p1}, La/d/a/av;->s()La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->n_()La/d/a/ad;

    move-result-object v1

    invoke-virtual {v1}, La/d/a/ad;->e()I

    move-result v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_23

    invoke-virtual {v1, v0}, La/d/a/ad;->c(I)Z

    move-result v3

    if-nez v3, :cond_20

    iget-object v3, p0, La/g/b/ak;->b:[Z

    invoke-virtual {v1, v0}, La/d/a/ad;->a(I)I

    move-result v4

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_23
    return-void
.end method

.method private c(II)V
    .registers 6

    iget-object v0, p0, La/g/b/ak;->e:La/g/a/v;

    invoke-virtual {v0, p1}, La/g/a/v;->j(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0, p2}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->l_()La/d/a/ap;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/ap;->m()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_18

    invoke-direct {p0, v0}, La/g/b/ak;->c(La/d/a/ap;)V

    :cond_18
    return-void
.end method

.method private c(La/d/a/ap;)V
    .registers 8

    check-cast p1, La/d/a/av;

    invoke-virtual {p1}, La/d/a/av;->s()La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->n_()La/d/a/ad;

    move-result-object v1

    invoke-virtual {v1}, La/d/a/ad;->e()I

    move-result v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_23

    invoke-virtual {v1, v0}, La/d/a/ad;->c(I)Z

    move-result v3

    if-nez v3, :cond_20

    iget-object v3, p0, La/g/b/ak;->c:[Z

    invoke-virtual {v1, v0}, La/d/a/ad;->a(I)I

    move-result v4

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_23
    return-void
.end method

.method private d(I)V
    .registers 4

    iget-object v0, p0, La/g/b/ak;->d:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/b;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/d;)V
    .registers 4

    iget v0, p2, La/b/b/d;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    return-void
.end method

.method public a(La/b/c;La/b/b/q;)V
    .registers 8

    iget-object v0, p2, La/b/b/q;->e:La/b/i;

    check-cast v0, La/b/j;

    const/4 v1, 0x0

    :goto_5
    iget v2, p0, La/g/b/ak;->i:I

    if-ge v1, v2, :cond_3e

    iget v2, p0, La/g/b/ak;->i:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, La/g/b/ak;->e:La/g/a/v;

    iget v4, p0, La/g/b/ak;->h:I

    invoke-virtual {v3, v4}, La/g/a/v;->j(I)La/d/j;

    move-result-object v3

    invoke-virtual {v3, v2}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v3

    invoke-virtual {v3}, La/d/a/bd;->j()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3b

    if-eqz v0, :cond_29

    invoke-static {v0, v1}, La/g/b/ac;->a(La/b/j;I)Z

    move-result v3

    if-eqz v3, :cond_2e

    :cond_29
    iget v3, p0, La/g/b/ak;->h:I

    invoke-direct {p0, v3, v2}, La/g/b/ak;->a(II)V

    :cond_2e
    if-eqz v0, :cond_36

    invoke-static {v0, v1}, La/g/b/ac;->c(La/b/j;I)Z

    move-result v3

    if-eqz v3, :cond_3b

    :cond_36
    iget v3, p0, La/g/b/ak;->h:I

    invoke-direct {p0, v3, v2}, La/g/b/ak;->c(II)V

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3e
    invoke-virtual {p2, p1}, La/b/b/q;->c(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/b/f/i;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_5a

    invoke-static {v1}, La/b/f/i;->j(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_54

    invoke-static {v1}, La/b/f/i;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    :cond_54
    invoke-static {v0}, La/g/b/ac;->d(La/b/j;)Z

    move-result v0

    if-eqz v0, :cond_5f

    :cond_5a
    iget v0, p0, La/g/b/ak;->h:I

    invoke-direct {p0, v0}, La/g/b/ak;->d(I)V

    :cond_5f
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 7

    const/4 v2, 0x0

    iget-boolean v0, p0, La/g/b/ak;->f:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, La/g/b/ak;->e:La/g/a/v;

    invoke-virtual {v0, p1, p2, p3}, La/g/a/v;->a(La/b/c;La/b/j;La/b/a/d;)V

    :cond_a
    iget v0, p3, La/b/a/d;->e:I

    iget-object v1, p0, La/g/b/ak;->a:[Z

    invoke-static {v1, v0, v2}, La/j/b;->a([ZIZ)[Z

    move-result-object v1

    iput-object v1, p0, La/g/b/ak;->a:[Z

    iget-object v1, p0, La/g/b/ak;->b:[Z

    invoke-static {v1, v0, v2}, La/j/b;->a([ZIZ)[Z

    move-result-object v1

    iput-object v1, p0, La/g/b/ak;->b:[Z

    iget-object v1, p0, La/g/b/ak;->c:[Z

    invoke-static {v1, v0, v2}, La/j/b;->a([ZIZ)[Z

    move-result-object v1

    iput-object v1, p0, La/g/b/ak;->c:[Z

    iget-object v1, p0, La/g/b/ak;->d:[Z

    invoke-static {v1, v0, v2}, La/j/b;->a([ZIZ)[Z

    move-result-object v0

    iput-object v0, p0, La/g/b/ak;->d:[Z

    iget-object v0, p0, La/g/b/ak;->e:La/g/a/v;

    invoke-virtual {v0, p0}, La/g/a/v;->a(La/b/d/a/d;)La/b/d/a/d;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/d/a/d;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 8

    const/4 v1, 0x0

    iget-byte v0, p5, La/b/d/b;->c:B

    packed-switch v0, :pswitch_data_2c

    :goto_6
    return-void

    :pswitch_7  #0xffffffb2, 0xffffffb4
    invoke-direct {p0, p4}, La/g/b/ak;->d(I)V

    goto :goto_6

    :pswitch_b  #0xffffffb3
    invoke-direct {p0, p4, v1}, La/g/b/ak;->a(II)V

    goto :goto_6

    :pswitch_f  #0xffffffb5
    invoke-virtual {p5, p1}, La/b/d/b;->a(La/b/c;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p4, v0}, La/g/b/ak;->c(II)V

    invoke-direct {p0, p4, v1}, La/g/b/ak;->a(II)V

    goto :goto_6

    :pswitch_1c  #0xffffffb6, 0xffffffb7, 0xffffffb8, 0xffffffb9
    iput-object p2, p0, La/g/b/ak;->g:La/b/j;

    iput p4, p0, La/g/b/ak;->h:I

    invoke-virtual {p5, p1}, La/b/d/b;->a(La/b/c;)I

    move-result v0

    iput v0, p0, La/g/b/ak;->i:I

    iget v0, p5, La/b/d/b;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    goto :goto_6

    :pswitch_data_2c
    .packed-switch -0x4e
        :pswitch_7  #ffffffb2
        :pswitch_b  #ffffffb3
        :pswitch_7  #ffffffb4
        :pswitch_f  #ffffffb5
        :pswitch_1c  #ffffffb6
        :pswitch_1c  #ffffffb7
        :pswitch_1c  #ffffffb8
        :pswitch_1c  #ffffffb9
    .end packed-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/h;)V
    .registers 8

    const/4 v1, 0x0

    iget-byte v0, p5, La/b/d/h;->c:B

    sparse-switch v0, :sswitch_data_26

    :goto_6
    return-void

    :sswitch_7
    invoke-virtual {p5, p1}, La/b/d/h;->a(La/b/c;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p4, v0}, La/g/b/ak;->c(II)V

    invoke-direct {p0, p4, v1}, La/g/b/ak;->a(II)V

    goto :goto_6

    :sswitch_14
    invoke-virtual {p5, p1}, La/b/d/h;->a(La/b/c;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p4, v0}, La/g/b/ak;->c(II)V

    goto :goto_6

    :sswitch_1e
    invoke-direct {p0, p4, v1}, La/g/b/ak;->b(II)V

    goto :goto_6

    :sswitch_22
    invoke-direct {p0, p4, v1}, La/g/b/ak;->a(II)V

    goto :goto_6

    :sswitch_data_26
    .sparse-switch
        -0x50 -> :sswitch_1e
        -0x41 -> :sswitch_22
        0x4f -> :sswitch_14
        0x50 -> :sswitch_14
        0x51 -> :sswitch_14
        0x52 -> :sswitch_14
        0x53 -> :sswitch_7
        0x54 -> :sswitch_14
        0x55 -> :sswitch_14
        0x56 -> :sswitch_14
    .end sparse-switch
.end method

.method public a(I)Z
    .registers 3

    iget-object v0, p0, La/g/b/ak;->a:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public b(I)Z
    .registers 3

    iget-object v0, p0, La/g/b/ak;->b:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public c(I)Z
    .registers 3

    iget-object v0, p0, La/g/b/ak;->c:[Z

    aget-boolean v0, v0, p1

    return v0
.end method
