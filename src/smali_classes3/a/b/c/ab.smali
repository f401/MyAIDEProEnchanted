.class public La/b/c/ab;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;


# instance fields
.field private final a:La/b/c/ae;

.field private final b:La/b/c/u;


# direct methods
.method public constructor <init>(La/b/k;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v0, v1}, La/b/c/ab;-><init>(La/b/k;ZZZ)V

    return-void
.end method

.method public constructor <init>(La/b/k;ZZZ)V
    .registers 6

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/b/c/ae;

    invoke-direct {v0, p1}, La/b/c/ae;-><init>(La/b/k;)V

    iput-object v0, p0, La/b/c/ab;->a:La/b/c/ae;

    new-instance p1, La/b/c/u;

    invoke-direct {p1, p2, p3, p4}, La/b/c/u;-><init>(ZZZ)V

    iput-object p1, p0, La/b/c/ab;->b:La/b/c/u;

    return-void
.end method

.method private a(La/b/d/c;)La/b/c/ab;
    .registers 3

    iget-object v0, p0, La/b/c/ab;->b:La/b/c/u;

    invoke-virtual {v0, p1}, La/b/c/u;->a(La/b/d/c;)V

    return-object p0
.end method


# virtual methods
.method public a()La/b/c/ab;
    .registers 2

    iget-object v0, p0, La/b/c/ab;->b:La/b/c/u;

    invoke-virtual {v0}, La/b/c/u;->b()V

    return-object p0
.end method

.method public a(I)La/b/c/ab;
    .registers 3

    iget-object v0, p0, La/b/c/ab;->b:La/b/c/u;

    invoke-virtual {v0, p1}, La/b/c/u;->a(I)V

    return-object p0
.end method

.method public a(IC)La/b/c/ab;
    .registers 3

    sparse-switch p2, :sswitch_data_1c

    invoke-virtual {p0, p1}, La/b/c/ab;->f(I)La/b/c/ab;

    move-result-object p1

    goto :goto_1b

    :sswitch_8
    invoke-virtual {p0, p1}, La/b/c/ab;->c(I)La/b/c/ab;

    move-result-object p1

    goto :goto_1b

    :sswitch_d
    invoke-virtual {p0, p1}, La/b/c/ab;->d(I)La/b/c/ab;

    move-result-object p1

    goto :goto_1b

    :sswitch_12
    invoke-virtual {p0, p1}, La/b/c/ab;->e(I)La/b/c/ab;

    move-result-object p1

    goto :goto_1b

    :sswitch_17
    invoke-virtual {p0, p1}, La/b/c/ab;->b(I)La/b/c/ab;

    move-result-object p1

    :goto_1b
    return-object p1

    :sswitch_data_1c
    .sparse-switch
        0x42 -> :sswitch_17
        0x43 -> :sswitch_17
        0x44 -> :sswitch_12
        0x46 -> :sswitch_d
        0x49 -> :sswitch_17
        0x4a -> :sswitch_8
        0x53 -> :sswitch_17
        0x5a -> :sswitch_17
    .end sparse-switch
.end method

.method public a(II)La/b/c/ab;
    .registers 5

    new-instance v0, La/b/d/b;

    const/16 v1, -0x47

    invoke-direct {v0, v1, p1, p2}, La/b/d/b;-><init>(BII)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public a(ILjava/lang/String;)La/b/c/ab;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {p0, p1, p2}, La/b/c/ab;->a(IC)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)La/b/c/ab;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, La/b/c/ab;->a(Ljava/lang/String;La/b/c;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;La/b/c;)La/b/c/ab;
    .registers 4

    iget-object v0, p0, La/b/c/ab;->a:La/b/c/ae;

    invoke-virtual {v0, p1, p2}, La/b/c/ae;->a(Ljava/lang/String;La/b/c;)I

    move-result p1

    invoke-virtual {p0, p1}, La/b/c/ab;->n(I)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/b/c/ab;
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, La/b/c/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)La/b/c/ab;
    .registers 12

    iget-object v0, p0, La/b/c/ab;->a:La/b/c/ae;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/b/c/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)I

    move-result p1

    invoke-virtual {p0, p1}, La/b/c/ab;->g(I)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 5

    iget-object v0, p0, La/b/c/ab;->b:La/b/c/u;

    invoke-virtual {v0, p1, p2, p3}, La/b/c/u;->a(La/b/c;La/b/j;La/b/a/d;)V

    return-void
.end method

.method public b()La/b/c/ab;
    .registers 3

    new-instance v0, La/b/d/k;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, La/b/d/k;-><init>(B)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object v0

    return-object v0
.end method

.method public b(I)La/b/c/ab;
    .registers 4

    new-instance v0, La/b/d/k;

    const/16 v1, 0x15

    invoke-direct {v0, v1, p1}, La/b/d/k;-><init>(BI)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)La/b/c/ab;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, La/b/c/ab;->b(Ljava/lang/String;La/b/c;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;La/b/c;)La/b/c/ab;
    .registers 4

    iget-object v0, p0, La/b/c/ab;->a:La/b/c/ae;

    invoke-virtual {v0, p1, p2}, La/b/c/ae;->a(Ljava/lang/String;La/b/c;)I

    move-result p1

    invoke-virtual {p0, p1}, La/b/c/ab;->o(I)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/b/c/ab;
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, La/b/c/ab;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)La/b/c/ab;
    .registers 12

    iget-object v0, p0, La/b/c/ab;->a:La/b/c/ae;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/b/c/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)I

    move-result p1

    invoke-virtual {p0, p1}, La/b/c/ab;->h(I)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public c()La/b/c/ab;
    .registers 3

    new-instance v0, La/b/d/h;

    const/16 v1, 0x59

    invoke-direct {v0, v1}, La/b/d/h;-><init>(B)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object v0

    return-object v0
.end method

.method public c(I)La/b/c/ab;
    .registers 4

    new-instance v0, La/b/d/k;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p1}, La/b/d/k;-><init>(BI)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)La/b/c/ab;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    sparse-switch p1, :sswitch_data_26

    invoke-virtual {p0}, La/b/c/ab;->h()La/b/c/ab;

    move-result-object p1

    goto :goto_25

    :sswitch_d
    invoke-virtual {p0}, La/b/c/ab;->i()La/b/c/ab;

    move-result-object p1

    goto :goto_25

    :sswitch_12
    invoke-virtual {p0}, La/b/c/ab;->e()La/b/c/ab;

    move-result-object p1

    goto :goto_25

    :sswitch_17
    invoke-virtual {p0}, La/b/c/ab;->f()La/b/c/ab;

    move-result-object p1

    goto :goto_25

    :sswitch_1c
    invoke-virtual {p0}, La/b/c/ab;->g()La/b/c/ab;

    move-result-object p1

    goto :goto_25

    :sswitch_21
    invoke-virtual {p0}, La/b/c/ab;->d()La/b/c/ab;

    move-result-object p1

    :goto_25
    return-object p1

    :sswitch_data_26
    .sparse-switch
        0x42 -> :sswitch_21
        0x43 -> :sswitch_21
        0x44 -> :sswitch_1c
        0x46 -> :sswitch_17
        0x49 -> :sswitch_21
        0x4a -> :sswitch_12
        0x53 -> :sswitch_21
        0x56 -> :sswitch_d
        0x5a -> :sswitch_21
    .end sparse-switch
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/b/c/ab;
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, La/b/c/ab;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)La/b/c/ab;
    .registers 12

    iget-object v0, p0, La/b/c/ab;->a:La/b/c/ae;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/b/c/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)I

    move-result p1

    invoke-virtual {p0, p1}, La/b/c/ab;->i(I)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public d()La/b/c/ab;
    .registers 3

    new-instance v0, La/b/d/h;

    const/16 v1, -0x54

    invoke-direct {v0, v1}, La/b/d/h;-><init>(B)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object v0

    return-object v0
.end method

.method public d(I)La/b/c/ab;
    .registers 4

    new-instance v0, La/b/d/k;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p1}, La/b/d/k;-><init>(BI)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/b/c/ab;
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, La/b/c/ab;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)La/b/c/ab;
    .registers 12

    iget-object v0, p0, La/b/c/ab;->a:La/b/c/ae;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/b/c/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)I

    move-result p1

    invoke-virtual {p0, p1}, La/b/c/ab;->j(I)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public e()La/b/c/ab;
    .registers 3

    new-instance v0, La/b/d/h;

    const/16 v1, -0x53

    invoke-direct {v0, v1}, La/b/d/h;-><init>(B)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object v0

    return-object v0
.end method

.method public e(I)La/b/c/ab;
    .registers 4

    new-instance v0, La/b/d/k;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p1}, La/b/d/k;-><init>(BI)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/b/c/ab;
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, La/b/c/ab;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)La/b/c/ab;
    .registers 12

    iget-object v0, p0, La/b/c/ab;->a:La/b/c/ae;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/b/c/ae;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)I

    move-result p1

    invoke-virtual {p0, p1}, La/b/c/ab;->k(I)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public f()La/b/c/ab;
    .registers 3

    new-instance v0, La/b/d/h;

    const/16 v1, -0x52

    invoke-direct {v0, v1}, La/b/d/h;-><init>(B)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object v0

    return-object v0
.end method

.method public f(I)La/b/c/ab;
    .registers 4

    new-instance v0, La/b/d/k;

    const/16 v1, 0x19

    invoke-direct {v0, v1, p1}, La/b/d/k;-><init>(BI)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/b/c/ab;
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, La/b/c/ab;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)La/b/c/ab;
    .registers 12

    iget-object v0, p0, La/b/c/ab;->a:La/b/c/ae;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/b/c/ae;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)I

    move-result p1

    invoke-virtual {p0, p1}, La/b/c/ab;->l(I)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public g()La/b/c/ab;
    .registers 3

    new-instance v0, La/b/d/h;

    const/16 v1, -0x51

    invoke-direct {v0, v1}, La/b/d/h;-><init>(B)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object v0

    return-object v0
.end method

.method public g(I)La/b/c/ab;
    .registers 4

    new-instance v0, La/b/d/b;

    const/16 v1, -0x4e

    invoke-direct {v0, v1, p1}, La/b/d/b;-><init>(BI)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/b/c/ab;
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, La/b/c/ab;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)La/b/c/ab;
    .registers 12

    iget-object v0, p0, La/b/c/ab;->a:La/b/c/ae;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/b/c/ae;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)I

    move-result p1

    invoke-virtual {p0, p1}, La/b/c/ab;->m(I)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public h()La/b/c/ab;
    .registers 3

    new-instance v0, La/b/d/h;

    const/16 v1, -0x50

    invoke-direct {v0, v1}, La/b/d/h;-><init>(B)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object v0

    return-object v0
.end method

.method public h(I)La/b/c/ab;
    .registers 4

    new-instance v0, La/b/d/b;

    const/16 v1, -0x4d

    invoke-direct {v0, v1, p1}, La/b/d/b;-><init>(BI)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)La/b/c/ab;
    .registers 12

    iget-object v0, p0, La/b/c/ab;->a:La/b/c/ae;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/b/c/ae;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)I

    move-result p1

    invoke-virtual {p0, p1}, La/b/c/ab;->m(I)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public i()La/b/c/ab;
    .registers 3

    new-instance v0, La/b/d/h;

    const/16 v1, -0x4f

    invoke-direct {v0, v1}, La/b/d/h;-><init>(B)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object v0

    return-object v0
.end method

.method public i(I)La/b/c/ab;
    .registers 4

    new-instance v0, La/b/d/b;

    const/16 v1, -0x4c

    invoke-direct {v0, v1, p1}, La/b/d/b;-><init>(BI)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)La/b/c/ab;
    .registers 13

    const/4 v0, 0x0

    invoke-static {p3, v0}, La/b/f/i;->b(Ljava/lang/String;Z)I

    move-result v0

    iget-object v1, p0, La/b/c/ab;->a:La/b/c/ae;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, La/b/c/ae;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)I

    move-result p1

    shl-int/lit8 p2, v0, 0x8

    invoke-virtual {p0, p1, p2}, La/b/c/ab;->a(II)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public j(I)La/b/c/ab;
    .registers 4

    new-instance v0, La/b/d/b;

    const/16 v1, -0x4b

    invoke-direct {v0, v1, p1}, La/b/d/b;-><init>(BI)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public k(I)La/b/c/ab;
    .registers 4

    new-instance v0, La/b/d/b;

    const/16 v1, -0x4a

    invoke-direct {v0, v1, p1}, La/b/d/b;-><init>(BI)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public l(I)La/b/c/ab;
    .registers 4

    new-instance v0, La/b/d/b;

    const/16 v1, -0x49

    invoke-direct {v0, v1, p1}, La/b/d/b;-><init>(BI)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public m(I)La/b/c/ab;
    .registers 4

    new-instance v0, La/b/d/b;

    const/16 v1, -0x48

    invoke-direct {v0, v1, p1}, La/b/d/b;-><init>(BI)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public n(I)La/b/c/ab;
    .registers 4

    new-instance v0, La/b/d/b;

    const/16 v1, -0x45

    invoke-direct {v0, v1, p1}, La/b/d/b;-><init>(BI)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method

.method public o(I)La/b/c/ab;
    .registers 4

    new-instance v0, La/b/d/b;

    const/16 v1, -0x40

    invoke-direct {v0, v1, p1}, La/b/d/b;-><init>(BI)V

    invoke-direct {p0, v0}, La/b/c/ab;->a(La/b/d/c;)La/b/c/ab;

    move-result-object p1

    return-object p1
.end method
