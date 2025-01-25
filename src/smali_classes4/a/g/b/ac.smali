.class public La/g/b/ac;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/b/a/f;
.implements La/b/d/a/d;
.implements La/b/g/aq;
.implements La/b/g/bg;


# instance fields
.field private final a:La/g/b/r;

.field private final b:La/g/a/v;

.field private final c:Z

.field private final d:La/g/b/ak;

.field private final e:Z

.field private final f:La/b/g/aq;

.field private g:La/b/j;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(La/g/b/r;)V
    .registers 3

    new-instance v0, La/d/a/c;

    invoke-direct {v0}, La/d/a/c;-><init>()V

    invoke-direct {p0, p1, v0}, La/g/b/ac;-><init>(La/g/b/r;La/d/a/be;)V

    return-void
.end method

.method public constructor <init>(La/g/b/r;La/d/a/be;)V
    .registers 4

    new-instance v0, La/g/a/aa;

    invoke-direct {v0, p2}, La/g/a/aa;-><init>(La/d/a/be;)V

    invoke-direct {p0, p1, p2, v0}, La/g/b/ac;-><init>(La/g/b/r;La/d/a/be;La/g/a/aa;)V

    return-void
.end method

.method public constructor <init>(La/g/b/r;La/d/a/be;La/g/a/aa;)V
    .registers 8

    const/4 v3, 0x1

    new-instance v0, La/g/a/v;

    new-instance v1, La/g/a/u;

    new-instance v2, La/d/b;

    invoke-direct {v2, p3}, La/d/b;-><init>(La/d/a/be;)V

    invoke-direct {v1, v2}, La/g/a/u;-><init>(La/d/h;)V

    invoke-direct {v0, p3, v1, v3, p3}, La/g/a/v;-><init>(La/d/a/be;La/d/f;ZLa/b/d/a/d;)V

    invoke-direct {p0, p1, v0, v3}, La/g/b/ac;-><init>(La/g/b/r;La/g/a/v;Z)V

    return-void
.end method

.method public constructor <init>(La/g/b/r;La/g/a/v;Z)V
    .registers 10

    new-instance v4, La/g/b/ak;

    const/4 v0, 0x0

    invoke-direct {v4, p2, v0}, La/g/b/ak;-><init>(La/g/a/v;Z)V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, La/g/b/ac;-><init>(La/g/b/r;La/g/a/v;ZLa/g/b/ak;Z)V

    return-void
.end method

.method public constructor <init>(La/g/b/r;La/g/a/v;ZLa/g/b/ak;Z)V
    .registers 8

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/b/f/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, La/b/f/b;-><init>(ZLa/b/g/bg;)V

    iput-object v0, p0, La/g/b/ac;->f:La/b/g/aq;

    iput-object p1, p0, La/g/b/ac;->a:La/g/b/r;

    iput-object p2, p0, La/g/b/ac;->b:La/g/a/v;

    iput-boolean p3, p0, La/g/b/ac;->c:Z

    iput-object p4, p0, La/g/b/ac;->d:La/g/b/ak;

    iput-boolean p5, p0, La/g/b/ac;->e:Z

    return-void
.end method

.method public static a(La/b/j;)J
    .registers 3

    invoke-static {p0}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/q;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method private a(La/b/c;La/b/j;II)V
    .registers 8

    iget-object v0, p0, La/g/b/ac;->b:La/g/a/v;

    invoke-virtual {v0, p3}, La/g/a/v;->j(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0, p4}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->j()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_25

    invoke-virtual {v0}, La/d/a/bd;->l_()La/d/a/ap;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/ap;->m()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_25

    invoke-direct {p0, p1, p2, v0}, La/g/b/ac;->a(La/b/c;La/b/j;La/d/a/ap;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-direct {p0, p2, v0}, La/g/b/ac;->b(La/b/j;La/d/a/ap;)V

    :cond_25
    return-void
.end method

.method private a(La/b/j;II)V
    .registers 7

    iget-object v0, p0, La/g/b/ac;->b:La/g/a/v;

    invoke-virtual {v0, p2}, La/g/a/v;->j(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0, p3}, La/d/j;->c(I)La/d/a/bd;

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

    invoke-direct {p0, p1, v0}, La/g/b/ac;->a(La/b/j;La/d/a/ap;)V

    :cond_1f
    return-void
.end method

.method private a(La/b/j;J)V
    .registers 12

    invoke-static {p1}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v1

    invoke-virtual {v1}, La/g/b/q;->w()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    xor-long/2addr v4, v2

    and-long/2addr v4, p2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_29

    instance-of v0, v1, La/g/b/ai;

    if-eqz v0, :cond_29

    move-object v0, v1

    check-cast v0, La/g/b/ai;

    invoke-virtual {v0, p2, p3}, La/g/b/ai;->b(J)V

    invoke-virtual {v1}, La/g/b/q;->w()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    iget-object v0, p0, La/g/b/ac;->a:La/g/b/r;

    invoke-virtual {v0}, La/g/b/r;->a()V

    :cond_29
    return-void
.end method

.method private a(La/b/j;La/d/a/ap;)V
    .registers 7

    check-cast p2, La/d/a/av;

    invoke-virtual {p2}, La/d/a/av;->s()La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->n_()La/d/a/ad;

    move-result-object v1

    invoke-virtual {v1}, La/d/a/ad;->e()I

    move-result v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_21

    invoke-virtual {v1, v0}, La/d/a/ad;->c(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v1, v0}, La/d/a/ad;->d(I)I

    move-result v3

    invoke-direct {p0, p1, v3}, La/g/b/ac;->d(La/b/j;I)V

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_21
    return-void
.end method

.method private a(La/b/c;La/b/j;La/d/a/ap;)Z
    .registers 7

    invoke-interface {p2, p1}, La/b/j;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    instance-of v0, p2, La/b/n;

    if-eqz v0, :cond_22

    check-cast p2, La/b/n;

    iget-object v0, p2, La/b/n;->a:[La/b/c;

    :goto_10
    if-eqz v0, :cond_18

    invoke-static {v1}, La/b/f/i;->j(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-virtual {p3, v1, v0}, La/d/a/ap;->a(Ljava/lang/String;La/b/c;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2d

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    check-cast p2, La/b/h;

    iget-object v0, p2, La/b/h;->a:[La/b/c;

    goto :goto_10

    :cond_27
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    goto :goto_19

    :cond_2d
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static a(La/b/j;I)Z
    .registers 3

    invoke-static {p0}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v0

    invoke-virtual {v0, p1}, La/g/b/q;->b(I)Z

    move-result v0

    return v0
.end method

.method public static b(La/b/j;)J
    .registers 3

    invoke-static {p0}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/q;->z()J

    move-result-wide v0

    return-wide v0
.end method

.method private b(La/b/j;II)V
    .registers 7

    iget-object v0, p0, La/g/b/ac;->b:La/g/a/v;

    invoke-virtual {v0, p2}, La/g/a/v;->j(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0, p3}, La/d/j;->c(I)La/d/a/bd;

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

    invoke-direct {p0, p1, v0}, La/g/b/ac;->c(La/b/j;La/d/a/ap;)V

    :cond_1f
    return-void
.end method

.method private b(La/b/j;J)V
    .registers 12

    invoke-static {p1}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v1

    invoke-virtual {v1}, La/g/b/q;->z()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    xor-long/2addr v4, v2

    and-long/2addr v4, p2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_29

    instance-of v0, v1, La/g/b/ai;

    if-eqz v0, :cond_29

    move-object v0, v1

    check-cast v0, La/g/b/ai;

    invoke-virtual {v0, p2, p3}, La/g/b/ai;->d(J)V

    invoke-virtual {v1}, La/g/b/q;->z()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    iget-object v0, p0, La/g/b/ac;->a:La/g/b/r;

    invoke-virtual {v0}, La/g/b/r;->a()V

    :cond_29
    return-void
.end method

.method private b(La/b/j;La/d/a/ap;)V
    .registers 7

    check-cast p2, La/d/a/av;

    invoke-virtual {p2}, La/d/a/av;->s()La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->n_()La/d/a/ad;

    move-result-object v1

    invoke-virtual {v1}, La/d/a/ad;->e()I

    move-result v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_3b

    invoke-virtual {v1, v0}, La/d/a/ad;->c(I)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v1, v0}, La/d/a/ad;->d(I)I

    move-result v3

    invoke-direct {p0, p1, v3}, La/g/b/ac;->e(La/b/j;I)V

    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_21
    invoke-virtual {v1, v0}, La/d/a/ad;->f(I)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-direct {p0, p1}, La/g/b/ac;->g(La/b/j;)V

    goto :goto_1e

    :cond_2b
    invoke-virtual {v1, v0}, La/d/a/ad;->g(I)Z

    move-result v3

    if-nez v3, :cond_37

    invoke-virtual {v1, v0}, La/d/a/ad;->i(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    :cond_37
    invoke-direct {p0, p1}, La/g/b/ac;->f(La/b/j;)V

    goto :goto_1e

    :cond_3b
    return-void
.end method

.method public static b(La/b/j;I)Z
    .registers 3

    invoke-static {p0}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v0

    invoke-virtual {v0, p1}, La/g/b/q;->e(I)Z

    move-result v0

    return v0
.end method

.method private c(La/b/j;J)V
    .registers 12

    invoke-static {p1}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v1

    invoke-virtual {v1}, La/g/b/q;->x()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    xor-long/2addr v4, v2

    and-long/2addr v4, p2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_29

    instance-of v0, v1, La/g/b/ai;

    if-eqz v0, :cond_29

    move-object v0, v1

    check-cast v0, La/g/b/ai;

    invoke-virtual {v0, p2, p3}, La/g/b/ai;->c(J)V

    invoke-virtual {v1}, La/g/b/q;->x()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    iget-object v0, p0, La/g/b/ac;->a:La/g/b/r;

    invoke-virtual {v0}, La/g/b/r;->a()V

    :cond_29
    return-void
.end method

.method private c(La/b/j;La/d/a/ap;)V
    .registers 9

    check-cast p2, La/d/a/av;

    invoke-virtual {p2}, La/d/a/av;->s()La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->n_()La/d/a/ad;

    move-result-object v1

    invoke-virtual {v1}, La/d/a/ad;->e()I

    move-result v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_38

    invoke-virtual {v1, v0}, La/d/a/ad;->c(I)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v1, v0}, La/d/a/ad;->d(I)I

    move-result v3

    invoke-direct {p0, p1, v3}, La/g/b/ac;->f(La/b/j;I)V

    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_21
    invoke-virtual {v1, v0}, La/d/a/ad;->g(I)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {v1, v0}, La/d/a/ad;->i(I)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-static {p1}, La/g/b/ac;->a(La/b/j;)J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, La/g/b/ac;->c(La/b/j;J)V

    invoke-direct {p0, p1}, La/g/b/ac;->h(La/b/j;)V

    goto :goto_1e

    :cond_38
    return-void
.end method

.method public static c(La/b/j;)Z
    .registers 2

    invoke-static {p0}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/q;->A()Z

    move-result v0

    return v0
.end method

.method public static c(La/b/j;I)Z
    .registers 3

    invoke-static {p0}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v0

    invoke-virtual {v0, p1}, La/g/b/q;->c(I)Z

    move-result v0

    return v0
.end method

.method private d(La/b/j;I)V
    .registers 5

    invoke-static {p1}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v1

    invoke-virtual {v1, p2}, La/g/b/q;->b(I)Z

    move-result v0

    if-nez v0, :cond_1f

    instance-of v0, v1, La/g/b/ai;

    if-eqz v0, :cond_1f

    move-object v0, v1

    check-cast v0, La/g/b/ai;

    invoke-virtual {v0, p2}, La/g/b/ai;->j(I)V

    invoke-virtual {v1, p2}, La/g/b/q;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, La/g/b/ac;->a:La/g/b/r;

    invoke-virtual {v0}, La/g/b/r;->a()V

    :cond_1f
    return-void
.end method

.method public static d(La/b/j;)Z
    .registers 2

    invoke-static {p0}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/q;->B()Z

    move-result v0

    return v0
.end method

.method private e(La/b/j;I)V
    .registers 5

    invoke-static {p1}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v1

    invoke-virtual {v1, p2}, La/g/b/q;->e(I)Z

    move-result v0

    if-nez v0, :cond_1f

    instance-of v0, v1, La/g/b/ai;

    if-eqz v0, :cond_1f

    move-object v0, v1

    check-cast v0, La/g/b/ai;

    invoke-virtual {v0, p2}, La/g/b/ai;->l(I)V

    invoke-virtual {v1, p2}, La/g/b/q;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, La/g/b/ac;->a:La/g/b/r;

    invoke-virtual {v0}, La/g/b/r;->a()V

    :cond_1f
    return-void
.end method

.method public static e(La/b/j;)Z
    .registers 2

    invoke-static {p0}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/q;->y()Z

    move-result v0

    return v0
.end method

.method private f(La/b/j;)V
    .registers 4

    invoke-static {p1}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v1

    invoke-virtual {v1}, La/g/b/q;->A()Z

    move-result v0

    if-nez v0, :cond_1f

    instance-of v0, v1, La/g/b/ai;

    if-eqz v0, :cond_1f

    move-object v0, v1

    check-cast v0, La/g/b/ai;

    invoke-virtual {v0}, La/g/b/ai;->Q()V

    invoke-virtual {v1}, La/g/b/q;->A()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, La/g/b/ac;->a:La/g/b/r;

    invoke-virtual {v0}, La/g/b/r;->a()V

    :cond_1f
    return-void
.end method

.method private f(La/b/j;I)V
    .registers 5

    invoke-static {p1}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v1

    invoke-virtual {v1, p2}, La/g/b/q;->c(I)Z

    move-result v0

    if-nez v0, :cond_1f

    instance-of v0, v1, La/g/b/ai;

    if-eqz v0, :cond_1f

    move-object v0, v1

    check-cast v0, La/g/b/ai;

    invoke-virtual {v0, p2}, La/g/b/ai;->k(I)V

    invoke-virtual {v1, p2}, La/g/b/q;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, La/g/b/ac;->a:La/g/b/r;

    invoke-virtual {v0}, La/g/b/r;->a()V

    :cond_1f
    return-void
.end method

.method private g(La/b/j;)V
    .registers 4

    invoke-static {p1}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v1

    invoke-virtual {v1}, La/g/b/q;->B()Z

    move-result v0

    if-nez v0, :cond_1f

    instance-of v0, v1, La/g/b/ai;

    if-eqz v0, :cond_1f

    move-object v0, v1

    check-cast v0, La/g/b/ai;

    invoke-virtual {v0}, La/g/b/ai;->R()V

    invoke-virtual {v1}, La/g/b/q;->B()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, La/g/b/ac;->a:La/g/b/r;

    invoke-virtual {v0}, La/g/b/r;->a()V

    :cond_1f
    return-void
.end method

.method private h(La/b/j;)V
    .registers 4

    invoke-static {p1}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v1

    invoke-virtual {v1}, La/g/b/q;->y()Z

    move-result v0

    if-nez v0, :cond_1f

    instance-of v0, v1, La/g/b/ai;

    if-eqz v0, :cond_1f

    move-object v0, v1

    check-cast v0, La/g/b/ai;

    invoke-virtual {v0}, La/g/b/ai;->P()V

    invoke-virtual {v1}, La/g/b/q;->y()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, La/g/b/ac;->a:La/g/b/r;

    invoke-virtual {v0}, La/g/b/r;->a()V

    :cond_1f
    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/a;)V
    .registers 4

    iget-object v0, p2, La/b/b/a;->b:La/b/c;

    if-eqz v0, :cond_a

    invoke-static {p1, v0}, La/g/b/am;->a(La/b/c;La/b/c;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_a
    iget-object v0, p0, La/g/b/ac;->g:La/b/j;

    invoke-direct {p0, v0}, La/g/b/ac;->h(La/b/j;)V

    :cond_f
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

.method public a(La/b/c;La/b/b/h;)V
    .registers 4

    iget-object v0, p0, La/g/b/ac;->g:La/b/j;

    invoke-direct {p0, v0}, La/g/b/ac;->h(La/b/j;)V

    return-void
.end method

.method public a(La/b/c;La/b/b/q;)V
    .registers 7

    iget-object v0, p2, La/b/b/q;->e:La/b/i;

    check-cast v0, La/b/j;

    if-eqz v0, :cond_14

    invoke-static {v0}, La/g/b/ac;->e(La/b/j;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p2, La/b/b/q;->c:La/b/c;

    invoke-static {p1, v1, v0}, La/g/b/am;->a(La/b/c;La/b/c;La/b/i;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_14
    iget-object v1, p0, La/g/b/ac;->g:La/b/j;

    invoke-direct {p0, v1}, La/g/b/ac;->h(La/b/j;)V

    :cond_19
    if-nez v0, :cond_36

    const/4 v0, 0x0

    :goto_1c
    iget v1, p0, La/g/b/ac;->i:I

    if-ge v0, v1, :cond_4f

    iget v1, p0, La/g/b/ac;->i:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, La/g/b/ac;->g:La/b/j;

    iget v3, p0, La/g/b/ac;->h:I

    invoke-direct {p0, v2, v3, v1}, La/g/b/ac;->a(La/b/j;II)V

    iget-object v2, p0, La/g/b/ac;->g:La/b/j;

    iget v3, p0, La/g/b/ac;->h:I

    invoke-direct {p0, v2, v3, v1}, La/g/b/ac;->b(La/b/j;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_36
    iget-object v0, p0, La/g/b/ac;->d:La/g/b/ak;

    iget v1, p0, La/g/b/ac;->h:I

    invoke-virtual {v0, v1}, La/g/b/ak;->a(I)Z

    move-result v0

    iput-boolean v0, p0, La/g/b/ac;->j:Z

    iget-object v0, p0, La/g/b/ac;->d:La/g/b/ak;

    iget v1, p0, La/g/b/ac;->h:I

    invoke-virtual {v0, v1}, La/g/b/ak;->c(I)Z

    move-result v0

    iput-boolean v0, p0, La/g/b/ac;->k:Z

    iget-object v0, p0, La/g/b/ac;->f:La/b/g/aq;

    invoke-virtual {p2, v0}, La/b/b/q;->a(La/b/g/aq;)V

    :cond_4f
    return-void
.end method

.method public a(La/b/c;La/b/b/r;)V
    .registers 4

    iget-object v0, p2, La/b/b/r;->b:La/b/c;

    if-eqz v0, :cond_a

    invoke-static {p1, v0}, La/g/b/am;->a(La/b/c;La/b/c;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_a
    iget-object v0, p0, La/g/b/ac;->g:La/b/j;

    invoke-direct {p0, v0}, La/g/b/ac;->h(La/b/j;)V

    :cond_f
    return-void
.end method

.method public a(La/b/c;La/b/i;IIIILjava/lang/String;La/b/c;)V
    .registers 12

    const/4 v0, 0x0

    invoke-virtual {p7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, La/b/f/i;->a(C)Z

    move-result v0

    if-nez v0, :cond_43

    check-cast p2, La/b/j;

    invoke-static {p2, p3}, La/g/b/ac;->a(La/b/j;I)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {p2, p3}, La/g/b/ac;->b(La/b/j;I)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-boolean v0, p0, La/g/b/ac;->j:Z

    if-eqz v0, :cond_28

    :cond_1d
    iget-object v0, p0, La/g/b/ac;->g:La/b/j;

    iget v1, p0, La/g/b/ac;->h:I

    sub-int v2, p6, p5

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v1, v2}, La/g/b/ac;->a(La/b/j;II)V

    :cond_28
    invoke-static {p2, p3}, La/g/b/ac;->c(La/b/j;I)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {p2, p3}, La/g/b/ac;->b(La/b/j;I)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-boolean v0, p0, La/g/b/ac;->k:Z

    if-eqz v0, :cond_43

    :cond_38
    iget-object v0, p0, La/g/b/ac;->g:La/b/j;

    iget v1, p0, La/g/b/ac;->h:I

    sub-int v2, p6, p5

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v1, v2}, La/g/b/ac;->b(La/b/j;II)V

    :cond_43
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 5

    iget-boolean v0, p0, La/g/b/ac;->c:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, La/g/b/ac;->b:La/g/a/v;

    invoke-virtual {v0, p1, p2, p3}, La/g/a/v;->a(La/b/c;La/b/j;La/b/a/d;)V

    :cond_9
    iget-boolean v0, p0, La/g/b/ac;->e:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, La/g/b/ac;->d:La/g/b/ak;

    invoke-virtual {v0, p1, p2, p3}, La/g/b/ak;->a(La/b/c;La/b/j;La/b/a/d;)V

    :cond_12
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 8

    const/4 v1, 0x0

    iget-byte v0, p5, La/b/d/b;->c:B

    sparse-switch v0, :sswitch_data_36

    :goto_6
    return-void

    :sswitch_7
    iput-object p2, p0, La/g/b/ac;->g:La/b/j;

    iput p4, p0, La/g/b/ac;->h:I

    iget v0, p5, La/b/d/b;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    goto :goto_6

    :sswitch_11
    invoke-direct {p0, p2}, La/g/b/ac;->h(La/b/j;)V

    invoke-direct {p0, p2, p4, v1}, La/g/b/ac;->a(La/b/j;II)V

    goto :goto_6

    :sswitch_18
    invoke-virtual {p5, p1}, La/b/d/b;->a(La/b/c;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p2, p4, v0}, La/g/b/ac;->b(La/b/j;II)V

    invoke-direct {p0, p2, p4, v1}, La/g/b/ac;->a(La/b/j;II)V

    goto :goto_6

    :sswitch_25
    iput-object p2, p0, La/g/b/ac;->g:La/b/j;

    iput p4, p0, La/g/b/ac;->h:I

    invoke-virtual {p5, p1}, La/b/d/b;->a(La/b/c;)I

    move-result v0

    iput v0, p0, La/g/b/ac;->i:I

    iget v0, p5, La/b/d/b;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    goto :goto_6

    nop

    :sswitch_data_36
    .sparse-switch
        -0x4e -> :sswitch_7
        -0x4d -> :sswitch_11
        -0x4b -> :sswitch_18
        -0x4a -> :sswitch_25
        -0x49 -> :sswitch_25
        -0x48 -> :sswitch_25
        -0x47 -> :sswitch_25
        -0x46 -> :sswitch_25
        -0x45 -> :sswitch_7
        -0x43 -> :sswitch_7
        -0x3b -> :sswitch_7
        0x12 -> :sswitch_7
        0x13 -> :sswitch_7
    .end sparse-switch
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

    invoke-direct {p0, p2, p4, v0}, La/g/b/ac;->b(La/b/j;II)V

    invoke-direct {p0, p2, p4, v1}, La/g/b/ac;->a(La/b/j;II)V

    goto :goto_6

    :sswitch_14
    invoke-virtual {p5, p1}, La/b/d/h;->a(La/b/c;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p2, p4, v0}, La/g/b/ac;->b(La/b/j;II)V

    goto :goto_6

    :sswitch_1e
    invoke-direct {p0, p1, p2, p4, v1}, La/g/b/ac;->a(La/b/c;La/b/j;II)V

    goto :goto_6

    :sswitch_22
    invoke-direct {p0, p2, p4, v1}, La/g/b/ac;->a(La/b/j;II)V

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

.method public a(La/b/k;La/b/n;)V
    .registers 7

    const-wide/16 v2, -0x1

    invoke-virtual {p2}, La/b/n;->a()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_16

    invoke-direct {p0, p2, v2, v3}, La/g/b/ac;->c(La/b/j;J)V

    invoke-direct {p0, p2, v2, v3}, La/g/b/ac;->a(La/b/j;J)V

    invoke-direct {p0, p2, v2, v3}, La/g/b/ac;->b(La/b/j;J)V

    invoke-direct {p0, p2}, La/g/b/ac;->h(La/b/j;)V

    :cond_16
    return-void
.end method
