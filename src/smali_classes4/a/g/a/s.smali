.class public La/g/a/s;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/a/d/l;
.implements La/b/d/a/d;


# instance fields
.field private final a:La/g/a/v;

.field private final b:Z

.field private final c:La/g/a/i;

.field private final d:Z

.field private e:[J

.field private f:[J

.field private g:[J

.field private h:Z

.field private i:J


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, La/g/a/aa;

    new-instance v1, La/d/a/c;

    invoke-direct {v1}, La/d/a/c;-><init>()V

    invoke-direct {v0, v1}, La/g/a/aa;-><init>(La/d/a/be;)V

    invoke-direct {p0, v0}, La/g/a/s;-><init>(La/g/a/aa;)V

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

    invoke-direct {p0, v0, v3}, La/g/a/s;-><init>(La/g/a/v;Z)V

    return-void
.end method

.method private constructor <init>(La/g/a/v;Z)V
    .registers 5

    new-instance v0, La/g/a/i;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, La/g/a/i;-><init>(La/g/a/v;Z)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, La/g/a/s;-><init>(La/g/a/v;ZLa/g/a/i;Z)V

    return-void
.end method

.method public constructor <init>(La/g/a/v;ZLa/g/a/i;Z)V
    .registers 7

    const/16 v1, 0x1fa0

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-array v0, v1, [J

    iput-object v0, p0, La/g/a/s;->e:[J

    new-array v0, v1, [J

    iput-object v0, p0, La/g/a/s;->f:[J

    new-array v0, v1, [J

    iput-object v0, p0, La/g/a/s;->g:[J

    iput-object p1, p0, La/g/a/s;->a:La/g/a/v;

    iput-boolean p2, p0, La/g/a/s;->b:Z

    iput-object p3, p0, La/g/a/s;->c:La/g/a/i;

    iput-boolean p4, p0, La/g/a/s;->d:Z

    return-void
.end method

.method private a(La/d/a/ad;)J
    .registers 8

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, La/d/a/ad;->e()I

    move-result v3

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_15

    iget-object v4, p0, La/g/a/s;->e:[J

    invoke-virtual {p1, v2}, La/d/a/ad;->a(I)I

    move-result v5

    aget-wide v4, v4, v5

    or-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    return-wide v0
.end method


# virtual methods
.method public a(IIZ)V
    .registers 12

    const-wide/16 v4, 0x1

    const/16 v0, 0x40

    if-ge p2, v0, :cond_10

    if-eqz p3, :cond_11

    iget-object v0, p0, La/g/a/s;->e:[J

    aget-wide v2, v0, p1

    shl-long/2addr v4, p2

    or-long/2addr v2, v4

    aput-wide v2, v0, p1

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, La/g/a/s;->e:[J

    aget-wide v2, v0, p1

    shl-long/2addr v4, p2

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    aput-wide v2, v0, p1

    goto :goto_10
.end method

.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 12

    iget v3, p3, La/b/a/d;->e:I

    iget v0, p3, La/b/a/d;->d:I

    iget-object v1, p0, La/g/a/s;->e:[J

    const-wide/16 v4, 0x0

    invoke-static {v1, v3, v4, v5}, La/j/b;->a([JIJ)[J

    move-result-object v1

    iput-object v1, p0, La/g/a/s;->e:[J

    iget-object v1, p0, La/g/a/s;->f:[J

    const-wide/16 v4, 0x0

    invoke-static {v1, v3, v4, v5}, La/j/b;->a([JIJ)[J

    move-result-object v1

    iput-object v1, p0, La/g/a/s;->f:[J

    iget-object v1, p0, La/g/a/s;->g:[J

    const-wide/16 v4, 0x0

    invoke-static {v1, v3, v4, v5}, La/j/b;->a([JIJ)[J

    move-result-object v1

    iput-object v1, p0, La/g/a/s;->g:[J

    iget-boolean v1, p0, La/g/a/s;->b:Z

    if-eqz v1, :cond_2b

    iget-object v1, p0, La/g/a/s;->a:La/g/a/v;

    invoke-virtual {v1, p1, p2, p3}, La/g/a/v;->a(La/b/c;La/b/j;La/b/a/d;)V

    :cond_2b
    iget-boolean v1, p0, La/g/a/s;->d:Z

    if-eqz v1, :cond_34

    iget-object v1, p0, La/g/a/s;->c:La/g/a/i;

    invoke-virtual {v1, p1, p2, p3}, La/g/a/i;->a(La/b/c;La/b/j;La/b/a/d;)V

    :cond_34
    const/16 v1, 0x40

    if-le v0, v1, :cond_3a

    const/16 v0, 0x40

    :cond_3a
    const/4 v1, 0x0

    iput-boolean v1, p0, La/g/a/s;->h:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, La/g/a/s;->i:J

    add-int/lit8 v1, v3, -0x1

    :goto_43
    if-ltz v1, :cond_a0

    iget-object v2, p0, La/g/a/s;->a:La/g/a/v;

    invoke-virtual {v2, v1}, La/g/a/v;->a(I)Z

    move-result v2

    if-eqz v2, :cond_9d

    iget-object v2, p0, La/g/a/s;->a:La/g/a/v;

    invoke-virtual {v2, v1}, La/g/a/v;->m(I)La/d/a/ad;

    move-result-object v2

    if-eqz v2, :cond_5b

    invoke-direct {p0, v2}, La/g/a/s;->a(La/d/a/ad;)J

    move-result-wide v4

    iput-wide v4, p0, La/g/a/s;->i:J

    :cond_5b
    iget-wide v4, p0, La/g/a/s;->i:J

    iget-object v2, p0, La/g/a/s;->f:[J

    aget-wide v6, v2, v1

    or-long/2addr v4, v6

    iput-wide v4, p0, La/g/a/s;->i:J

    iget-object v2, p0, La/g/a/s;->f:[J

    iget-wide v4, p0, La/g/a/s;->i:J

    aput-wide v4, v2, v1

    invoke-virtual {p3, p1, p2, v1, p0}, La/b/a/d;->a(La/b/c;La/b/j;ILa/b/d/a/d;)V

    iget-wide v4, p0, La/g/a/s;->i:J

    iget-object v2, p0, La/g/a/s;->e:[J

    aget-wide v6, v2, v1

    or-long/2addr v4, v6

    iput-wide v4, p0, La/g/a/s;->i:J

    iget-object v2, p0, La/g/a/s;->e:[J

    aget-wide v4, v2, v1

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    iget-wide v6, p0, La/g/a/s;->i:J

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_9d

    iget-object v2, p0, La/g/a/s;->e:[J

    iget-wide v4, p0, La/g/a/s;->i:J

    aput-wide v4, v2, v1

    iget-object v2, p0, La/g/a/s;->a:La/g/a/v;

    invoke-virtual {v2, v1}, La/g/a/v;->l(I)La/d/a/ad;

    move-result-object v2

    if-eqz v2, :cond_9d

    invoke-virtual {v2}, La/d/a/ad;->f()I

    move-result v2

    if-ge v1, v2, :cond_9d

    const/4 v2, 0x1

    iput-boolean v2, p0, La/g/a/s;->h:Z

    :cond_9d
    add-int/lit8 v1, v1, -0x1

    goto :goto_43

    :cond_a0
    invoke-virtual {p3, p1, p2, p0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/a/d/l;)V

    iget-boolean v1, p0, La/g/a/s;->h:Z

    if-nez v1, :cond_3a

    const/4 v1, 0x0

    :goto_a8
    if-ge v1, v3, :cond_10b

    iget-object v2, p0, La/g/a/s;->a:La/g/a/v;

    invoke-virtual {v2, v1}, La/g/a/v;->a(I)Z

    move-result v2

    if-eqz v2, :cond_108

    const/4 v2, 0x0

    :goto_b3
    if-ge v2, v0, :cond_108

    invoke-virtual {p0, v1, v2}, La/g/a/s;->a(II)Z

    move-result v4

    if-eqz v4, :cond_dd

    iget-object v4, p0, La/g/a/s;->a:La/g/a/v;

    invoke-virtual {v4, v1}, La/g/a/v;->h(I)La/d/k;

    move-result-object v4

    invoke-virtual {v4, v2}, La/d/k;->c(I)La/d/a/bd;

    move-result-object v4

    if-eqz v4, :cond_dd

    invoke-virtual {v4}, La/d/a/bd;->b()Z

    move-result v4

    if-eqz v4, :cond_dd

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v2, v4}, La/g/a/s;->c(IIZ)V

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x1

    invoke-virtual {p0, v1, v4, v5}, La/g/a/s;->a(IIZ)V

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x1

    invoke-virtual {p0, v1, v4, v5}, La/g/a/s;->c(IIZ)V

    :cond_dd
    invoke-virtual {p0, v1, v2}, La/g/a/s;->b(II)Z

    move-result v4

    if-eqz v4, :cond_105

    iget-object v4, p0, La/g/a/s;->a:La/g/a/v;

    invoke-virtual {v4, v1}, La/g/a/v;->i(I)La/d/k;

    move-result-object v4

    invoke-virtual {v4, v2}, La/d/k;->c(I)La/d/a/bd;

    move-result-object v4

    if-eqz v4, :cond_105

    invoke-virtual {v4}, La/d/a/bd;->b()Z

    move-result v4

    if-eqz v4, :cond_105

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v2, v4}, La/g/a/s;->c(IIZ)V

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x1

    invoke-virtual {p0, v1, v4, v5}, La/g/a/s;->b(IIZ)V

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x1

    invoke-virtual {p0, v1, v4, v5}, La/g/a/s;->c(IIZ)V

    :cond_105
    add-int/lit8 v2, v2, 0x1

    goto :goto_b3

    :cond_108
    add-int/lit8 v1, v1, 0x1

    goto :goto_a8

    :cond_10b
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 10

    iget-object v0, p0, La/g/a/s;->c:La/g/a/i;

    invoke-virtual {v0}, La/g/a/i;->b()I

    move-result v0

    if-ne p4, v0, :cond_f

    iget-wide v0, p0, La/g/a/s;->i:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, La/g/a/s;->i:J

    :cond_f
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/k;)V
    .registers 12

    iget v0, p5, La/b/d/k;->b:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_15

    const-wide/16 v2, 0x1

    shl-long v0, v2, v0

    invoke-virtual {p5}, La/b/d/k;->g()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-wide v2, p0, La/g/a/s;->i:J

    or-long/2addr v0, v2

    iput-wide v0, p0, La/g/a/s;->i:J

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-wide v2, p0, La/g/a/s;->i:J

    const-wide/16 v4, -0x1

    xor-long/2addr v4, v0

    and-long/2addr v2, v4

    iput-wide v2, p0, La/g/a/s;->i:J

    iget-object v2, p0, La/g/a/s;->f:[J

    aget-wide v4, v2, p4

    or-long/2addr v0, v4

    aput-wide v0, v2, p4

    goto :goto_15
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/h;)V
    .registers 15

    const-wide/16 v8, 0x0

    iget-object v0, p0, La/g/a/s;->e:[J

    iget v1, p4, La/b/a/h;->c:I

    aget-wide v2, v0, v1

    cmp-long v0, v2, v8

    if-eqz v0, :cond_3f

    iget v0, p4, La/b/a/h;->a:I

    iget v1, p4, La/b/a/h;->b:I

    :goto_10
    if-ge v0, v1, :cond_3f

    iget-object v4, p0, La/g/a/s;->a:La/g/a/v;

    invoke-virtual {v4, v0}, La/g/a/v;->a(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    iget-object v4, p0, La/g/a/s;->e:[J

    aget-wide v4, v4, v0

    iget-object v6, p0, La/g/a/s;->f:[J

    aget-wide v6, v6, v0

    and-long/2addr v4, v6

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v4, v2

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3c

    iget-object v4, p0, La/g/a/s;->e:[J

    aget-wide v6, v4, v0

    or-long/2addr v6, v2

    aput-wide v6, v4, v0

    iget-object v4, p0, La/g/a/s;->f:[J

    aget-wide v6, v4, v0

    or-long/2addr v6, v2

    aput-wide v6, v4, v0

    const/4 v4, 0x1

    iput-boolean v4, p0, La/g/a/s;->h:Z

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_3f
    return-void
.end method

.method public a(I)Z
    .registers 3

    iget-object v0, p0, La/g/a/s;->a:La/g/a/v;

    invoke-virtual {v0, p1}, La/g/a/v;->a(I)Z

    move-result v0

    return v0
.end method

.method public a(II)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x40

    if-lt p2, v2, :cond_14

    iget-object v2, p0, La/g/a/s;->a:La/g/a/v;

    invoke-virtual {v2, p1}, La/g/a/v;->h(I)La/d/k;

    move-result-object v2

    invoke-virtual {v2, p2}, La/d/k;->c(I)La/d/a/bd;

    move-result-object v2

    if-eqz v2, :cond_13

    :cond_12
    move v0, v1

    :cond_13
    :goto_13
    return v0

    :cond_14
    iget-object v2, p0, La/g/a/s;->e:[J

    aget-wide v2, v2, p1

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    goto :goto_13
.end method

.method public b(IIZ)V
    .registers 12

    const-wide/16 v4, 0x1

    const/16 v0, 0x40

    if-ge p2, v0, :cond_10

    if-eqz p3, :cond_11

    iget-object v0, p0, La/g/a/s;->f:[J

    aget-wide v2, v0, p1

    shl-long/2addr v4, p2

    or-long/2addr v2, v4

    aput-wide v2, v0, p1

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, La/g/a/s;->f:[J

    aget-wide v2, v0, p1

    shl-long/2addr v4, p2

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    aput-wide v2, v0, p1

    goto :goto_10
.end method

.method public b(II)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x40

    if-lt p2, v2, :cond_14

    iget-object v2, p0, La/g/a/s;->a:La/g/a/v;

    invoke-virtual {v2, p1}, La/g/a/v;->i(I)La/d/k;

    move-result-object v2

    invoke-virtual {v2, p2}, La/d/k;->c(I)La/d/a/bd;

    move-result-object v2

    if-eqz v2, :cond_13

    :cond_12
    move v0, v1

    :cond_13
    :goto_13
    return v0

    :cond_14
    iget-object v2, p0, La/g/a/s;->f:[J

    aget-wide v2, v2, p1

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    goto :goto_13
.end method

.method public c(IIZ)V
    .registers 12

    const-wide/16 v4, 0x1

    const/16 v0, 0x40

    if-ge p2, v0, :cond_10

    if-eqz p3, :cond_11

    iget-object v0, p0, La/g/a/s;->g:[J

    aget-wide v2, v0, p1

    shl-long/2addr v4, p2

    or-long/2addr v2, v4

    aput-wide v2, v0, p1

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, La/g/a/s;->g:[J

    aget-wide v2, v0, p1

    shl-long/2addr v4, p2

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    aput-wide v2, v0, p1

    goto :goto_10
.end method

.method public c(II)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/16 v2, 0x40

    if-lt p2, v2, :cond_25

    iget-object v2, p0, La/g/a/s;->a:La/g/a/v;

    invoke-virtual {v2, p1}, La/g/a/v;->h(I)La/d/k;

    move-result-object v2

    invoke-virtual {v2, p2}, La/d/k;->c(I)La/d/a/bd;

    move-result-object v2

    if-eqz v2, :cond_23

    iget-object v2, p0, La/g/a/s;->a:La/g/a/v;

    invoke-virtual {v2, p1}, La/g/a/v;->h(I)La/d/k;

    move-result-object v2

    invoke-virtual {v2, p2}, La/d/k;->c(I)La/d/a/bd;

    move-result-object v2

    invoke-virtual {v2}, La/d/a/bd;->b()Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_22
    :goto_22
    return v0

    :cond_23
    move v0, v1

    goto :goto_22

    :cond_25
    iget-object v2, p0, La/g/a/s;->g:[J

    aget-wide v2, v2, p1

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_22

    move v0, v1

    goto :goto_22
.end method
