.class public La/b/f/p;
.super La/b/f/w;

# interfaces
.implements La/b/b/a/f;
.implements La/b/d/a/d;


# instance fields
.field protected final a:[La/b/b/b;

.field protected final b:[La/b/d/c;

.field protected c:La/b/b/b;

.field protected d:Z

.field private e:Z

.field private f:I

.field private final g:[I

.field private h:I

.field private final i:[I

.field private final j:[J

.field private final k:[I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>([La/b/b/b;[La/b/d/c;)V
    .registers 4

    invoke-direct {p0}, La/b/f/w;-><init>()V

    const/16 v0, 0x15

    new-array v0, v0, [I

    iput-object v0, p0, La/b/f/p;->i:[I

    iput-object p1, p0, La/b/f/p;->a:[La/b/b/b;

    iput-object p2, p0, La/b/f/p;->b:[La/b/d/c;

    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, La/b/f/p;->g:[I

    array-length v0, p1

    add-int/lit8 v0, v0, 0x3f

    div-int/lit8 v0, v0, 0x40

    new-array v0, v0, [J

    iput-object v0, p0, La/b/f/p;->j:[J

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, La/b/f/p;->k:[I

    return-void
.end method

.method private a(ZLa/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_32

    iget-object v2, p0, La/b/f/p;->g:[I

    iget v3, p0, La/b/f/p;->f:I

    aput p5, v2, v3

    iget v2, p0, La/b/f/p;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, La/b/f/p;->f:I

    iget v2, p0, La/b/f/p;->f:I

    iget-object v3, p0, La/b/f/p;->b:[La/b/d/c;

    array-length v3, v3

    if-ne v2, v3, :cond_30

    :goto_17
    iput-boolean v0, p0, La/b/f/p;->e:Z

    iget-boolean v0, p0, La/b/f/p;->e:Z

    if-eqz v0, :cond_2f

    iget-boolean v6, p0, La/b/f/p;->e:Z

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, La/b/f/p;->b(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)Z

    move-result v0

    and-int/2addr v0, v6

    iput-boolean v0, p0, La/b/f/p;->e:Z

    invoke-virtual {p0}, La/b/f/p;->a()V

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    move v0, v1

    goto :goto_17

    :cond_32
    iput-boolean v1, p0, La/b/f/p;->e:Z

    iget v2, p0, La/b/f/p;->f:I

    if-ne v2, v0, :cond_39

    move v1, v0

    :cond_39
    invoke-virtual {p0}, La/b/f/p;->a()V

    if-eqz v1, :cond_2f

    move-object v0, p6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    goto :goto_2f
.end method

.method private c(II)V
    .registers 5

    iget-object v0, p0, La/b/f/p;->i:[I

    aput p2, v0, p1

    iget v0, p0, La/b/f/p;->h:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, La/b/f/p;->h:I

    return-void
.end method

.method private d(II)V
    .registers 9

    iget-object v0, p0, La/b/f/p;->k:[I

    aput p2, v0, p1

    iget-object v0, p0, La/b/f/p;->j:[J

    div-int/lit8 v1, p1, 0x40

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    return-void
.end method

.method private e(I)Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, La/b/f/p;->h:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private f(I)Z
    .registers 6

    iget-object v0, p0, La/b/f/p;->j:[J

    div-int/lit8 v1, p1, 0x40

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public a(I)I
    .registers 3

    iget-object v0, p0, La/b/f/p;->g:[I

    aget v0, v0, p1

    return v0
.end method

.method public a(II)I
    .registers 5

    const/high16 v0, 0x40000000  # 2.0f

    sub-int v0, p2, v0

    if-gez v0, :cond_7

    :goto_6
    return p2

    :cond_7
    iget-object v1, p0, La/b/f/p;->i:[I

    aget v0, v1, v0

    sub-int p2, v0, p1

    goto :goto_6
.end method

.method public a()V
    .registers 5

    const/4 v1, 0x0

    iput v1, p0, La/b/f/p;->f:I

    iput v1, p0, La/b/f/p;->h:I

    iget-object v0, p0, La/b/f/p;->j:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iget v0, p0, La/b/f/p;->l:I

    iput v0, p0, La/b/f/p;->m:I

    iput v1, p0, La/b/f/p;->l:I

    return-void
.end method

.method public a(La/b/c;La/b/b/a;)V
    .registers 5

    iget-object v0, p0, La/b/f/p;->c:La/b/b/b;

    check-cast v0, La/b/b/a;

    iget v1, p2, La/b/b/a;->a:I

    iget v0, v0, La/b/b/a;->a:I

    invoke-virtual {p0, p1, v1, v0}, La/b/f/p;->a(La/b/c;II)Z

    move-result v0

    iput-boolean v0, p0, La/b/f/p;->d:Z

    return-void
.end method

.method public a(La/b/c;La/b/b/c;)V
    .registers 7

    iget-object v0, p0, La/b/f/p;->c:La/b/b/b;

    check-cast v0, La/b/b/c;

    invoke-virtual {p2}, La/b/b/c;->b()D

    move-result-wide v2

    invoke-virtual {v0}, La/b/b/c;->b()D

    move-result-wide v0

    cmpl-double v0, v2, v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_11
    iput-boolean v0, p0, La/b/f/p;->d:Z

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public a(La/b/c;La/b/b/e;)V
    .registers 5

    iget-object v0, p0, La/b/f/p;->c:La/b/b/b;

    check-cast v0, La/b/b/e;

    invoke-virtual {p2}, La/b/b/e;->b()F

    move-result v1

    invoke-virtual {v0}, La/b/b/e;->b()F

    move-result v0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_11
    iput-boolean v0, p0, La/b/f/p;->d:Z

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public a(La/b/c;La/b/b/f;)V
    .registers 5

    iget-object v0, p0, La/b/f/p;->c:La/b/b/b;

    check-cast v0, La/b/b/f;

    invoke-virtual {p2}, La/b/b/f;->b()I

    move-result v1

    invoke-virtual {v0}, La/b/b/f;->b()I

    move-result v0

    if-ne v1, v0, :cond_12

    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, p0, La/b/f/p;->d:Z

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public a(La/b/c;La/b/b/h;)V
    .registers 6

    iget-object v0, p0, La/b/f/p;->c:La/b/b/b;

    check-cast v0, La/b/b/h;

    invoke-virtual {p2}, La/b/b/h;->b()I

    move-result v1

    invoke-virtual {v0}, La/b/b/h;->b()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, La/b/f/p;->a(La/b/c;II)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p2}, La/b/b/h;->c()I

    move-result v1

    invoke-virtual {v0}, La/b/b/h;->c()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, La/b/f/p;->a(La/b/c;II)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_21
    iput-boolean v0, p0, La/b/f/p;->d:Z

    return-void

    :cond_24
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public a(La/b/c;La/b/b/i;)V
    .registers 7

    iget-object v0, p0, La/b/f/p;->c:La/b/b/b;

    check-cast v0, La/b/b/i;

    invoke-virtual {p2}, La/b/b/i;->b()J

    move-result-wide v2

    invoke-virtual {v0}, La/b/b/i;->b()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_11
    iput-boolean v0, p0, La/b/f/p;->d:Z

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public a(La/b/c;La/b/b/j;)V
    .registers 6

    iget-object v0, p0, La/b/f/p;->c:La/b/b/b;

    check-cast v0, La/b/b/j;

    invoke-virtual {p2}, La/b/b/j;->b()I

    move-result v1

    invoke-virtual {v0}, La/b/b/j;->b()I

    move-result v2

    invoke-virtual {p0, v1, v2}, La/b/f/p;->b(II)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p2}, La/b/b/j;->c()I

    move-result v1

    invoke-virtual {v0}, La/b/b/j;->c()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, La/b/f/p;->a(La/b/c;II)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_21
    iput-boolean v0, p0, La/b/f/p;->d:Z

    return-void

    :cond_24
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public a(La/b/c;La/b/b/k;)V
    .registers 5

    iget-object v0, p0, La/b/f/p;->c:La/b/b/b;

    check-cast v0, La/b/b/k;

    iget v1, p2, La/b/b/k;->a:I

    iget v0, v0, La/b/b/k;->a:I

    invoke-virtual {p0, p1, v1, v0}, La/b/f/p;->a(La/b/c;II)Z

    move-result v0

    iput-boolean v0, p0, La/b/f/p;->d:Z

    return-void
.end method

.method public a(La/b/c;La/b/b/n;)V
    .registers 6

    iget-object v0, p0, La/b/f/p;->c:La/b/b/b;

    check-cast v0, La/b/b/n;

    iget v1, p2, La/b/b/n;->a:I

    iget v2, v0, La/b/b/n;->a:I

    invoke-virtual {p0, p1, v1, v2}, La/b/f/p;->a(La/b/c;II)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget v1, p2, La/b/b/n;->b:I

    iget v0, v0, La/b/b/n;->b:I

    invoke-virtual {p0, p1, v1, v0}, La/b/f/p;->a(La/b/c;II)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_19
    iput-boolean v0, p0, La/b/f/p;->d:Z

    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public a(La/b/c;La/b/b/p;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(La/b/c;La/b/b/r;)V
    .registers 5

    iget-object v0, p0, La/b/f/p;->c:La/b/b/b;

    check-cast v0, La/b/b/r;

    iget v1, p2, La/b/b/r;->a:I

    iget v0, v0, La/b/b/r;->a:I

    invoke-virtual {p0, p1, v1, v0}, La/b/f/p;->a(La/b/c;II)Z

    move-result v0

    iput-boolean v0, p0, La/b/f/p;->d:Z

    return-void
.end method

.method public a(La/b/c;La/b/b/s;)V
    .registers 5

    iget-object v0, p0, La/b/f/p;->c:La/b/b/b;

    check-cast v0, La/b/b/s;

    invoke-virtual {p2}, La/b/b/s;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, La/b/b/s;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, La/b/f/p;->d:Z

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a;)V
    .registers 13

    iget-object v0, p0, La/b/f/p;->b:[La/b/d/c;

    iget v1, p0, La/b/f/p;->f:I

    aget-object v0, v0, v1

    invoke-virtual {p0, p5, v0}, La/b/f/p;->a(La/b/d/c;La/b/d/c;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget v1, p5, La/b/d/a;->a:I

    check-cast v0, La/b/d/a;

    iget v0, v0, La/b/d/a;->a:I

    invoke-virtual {p0, p4, v1, v0}, La/b/f/p;->a(III)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v1, 0x1

    :goto_19
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, La/b/f/p;->a(ZLa/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V

    return-void

    :cond_23
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 13

    iget-object v0, p0, La/b/f/p;->b:[La/b/d/c;

    iget v1, p0, La/b/f/p;->f:I

    aget-object v1, v0, v1

    invoke-virtual {p0, p5, v1}, La/b/f/p;->a(La/b/d/c;La/b/d/c;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget v2, p5, La/b/d/b;->a:I

    move-object v0, v1

    check-cast v0, La/b/d/b;

    iget v0, v0, La/b/d/b;->a:I

    invoke-virtual {p0, p1, v2, v0}, La/b/f/p;->a(La/b/c;II)Z

    move-result v0

    if-eqz v0, :cond_30

    iget v0, p5, La/b/d/b;->b:I

    check-cast v1, La/b/d/b;

    iget v1, v1, La/b/d/b;->b:I

    invoke-virtual {p0, v0, v1}, La/b/f/p;->b(II)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v1, 0x1

    :goto_26
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, La/b/f/p;->a(ZLa/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V

    return-void

    :cond_30
    const/4 v1, 0x0

    goto :goto_26
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/g;)V
    .registers 13

    iget-object v0, p0, La/b/f/p;->b:[La/b/d/c;

    iget v1, p0, La/b/f/p;->f:I

    aget-object v1, v0, v1

    invoke-virtual {p0, p5, v1}, La/b/f/p;->a(La/b/d/c;La/b/d/c;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget v2, p5, La/b/d/g;->b:I

    move-object v0, v1

    check-cast v0, La/b/d/g;

    iget v0, v0, La/b/d/g;->b:I

    invoke-virtual {p0, p4, v2, v0}, La/b/f/p;->a(III)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v2, p5, La/b/d/g;->a:[I

    move-object v0, v1

    check-cast v0, La/b/d/g;

    iget-object v0, v0, La/b/d/g;->a:[I

    invoke-virtual {p0, v2, v0}, La/b/f/p;->a([I[I)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p5, La/b/d/g;->d:[I

    check-cast v1, La/b/d/g;

    iget-object v1, v1, La/b/d/g;->d:[I

    invoke-virtual {p0, p4, v0, v1}, La/b/f/p;->a(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v1, 0x1

    :goto_33
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, La/b/f/p;->a(ZLa/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V

    return-void

    :cond_3d
    const/4 v1, 0x0

    goto :goto_33
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/h;)V
    .registers 13

    iget-object v0, p0, La/b/f/p;->b:[La/b/d/c;

    iget v1, p0, La/b/f/p;->f:I

    aget-object v0, v0, v1

    invoke-virtual {p0, p5, v0}, La/b/f/p;->a(La/b/d/c;La/b/d/c;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget v1, p5, La/b/d/h;->a:I

    check-cast v0, La/b/d/h;

    iget v0, v0, La/b/d/h;->a:I

    invoke-virtual {p0, v1, v0}, La/b/f/p;->b(II)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v1, 0x1

    :goto_19
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, La/b/f/p;->a(ZLa/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V

    return-void

    :cond_23
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/j;)V
    .registers 13

    iget-object v0, p0, La/b/f/p;->b:[La/b/d/c;

    iget v1, p0, La/b/f/p;->f:I

    aget-object v1, v0, v1

    invoke-virtual {p0, p5, v1}, La/b/f/p;->a(La/b/d/c;La/b/d/c;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget v2, p5, La/b/d/j;->b:I

    move-object v0, v1

    check-cast v0, La/b/d/j;

    iget v0, v0, La/b/d/j;->b:I

    invoke-virtual {p0, p4, v2, v0}, La/b/f/p;->a(III)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget v2, p5, La/b/d/j;->a:I

    move-object v0, v1

    check-cast v0, La/b/d/j;

    iget v0, v0, La/b/d/j;->a:I

    invoke-virtual {p0, v2, v0}, La/b/f/p;->b(II)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget v2, p5, La/b/d/j;->e:I

    move-object v0, v1

    check-cast v0, La/b/d/j;

    iget v0, v0, La/b/d/j;->e:I

    invoke-virtual {p0, v2, v0}, La/b/f/p;->b(II)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p5, La/b/d/j;->d:[I

    check-cast v1, La/b/d/j;

    iget-object v1, v1, La/b/d/j;->d:[I

    invoke-virtual {p0, p4, v0, v1}, La/b/f/p;->a(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v1, 0x1

    :goto_40
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, La/b/f/p;->a(ZLa/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V

    return-void

    :cond_4a
    const/4 v1, 0x0

    goto :goto_40
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/k;)V
    .registers 13

    iget-object v0, p0, La/b/f/p;->b:[La/b/d/c;

    iget v1, p0, La/b/f/p;->f:I

    aget-object v1, v0, v1

    invoke-virtual {p0, p5, v1}, La/b/f/p;->a(La/b/d/c;La/b/d/c;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget v2, p5, La/b/d/k;->b:I

    move-object v0, v1

    check-cast v0, La/b/d/k;

    iget v0, v0, La/b/d/k;->b:I

    invoke-virtual {p0, v2, v0}, La/b/f/p;->b(II)Z

    move-result v0

    if-eqz v0, :cond_30

    iget v0, p5, La/b/d/k;->d:I

    check-cast v1, La/b/d/k;

    iget v1, v1, La/b/d/k;->d:I

    invoke-virtual {p0, v0, v1}, La/b/f/p;->b(II)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v1, 0x1

    :goto_26
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, La/b/f/p;->a(ZLa/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V

    return-void

    :cond_30
    const/4 v1, 0x0

    goto :goto_26
.end method

.method protected a(III)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000  # 2.0f

    sub-int v2, p3, v2

    if-gez v2, :cond_c

    if-ne p2, p3, :cond_b

    :cond_a
    move v0, v1

    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-direct {p0, v2}, La/b/f/p;->e(I)Z

    move-result v3

    if-nez v3, :cond_19

    add-int v0, p1, p2

    invoke-direct {p0, v2, v0}, La/b/f/p;->c(II)V

    move v0, v1

    goto :goto_b

    :cond_19
    iget-object v3, p0, La/b/f/p;->i:[I

    aget v2, v3, v2

    add-int v3, p1, p2

    if-eq v2, v3, :cond_a

    goto :goto_b
.end method

.method protected a(I[I[I)Z
    .registers 8

    const/4 v0, 0x0

    array-length v1, p2

    array-length v2, p3

    if-eq v1, v2, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    move v1, v0

    :goto_7
    array-length v2, p2

    if-ge v1, v2, :cond_17

    aget v2, p2, v1

    aget v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, La/b/f/p;->a(III)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    const/4 v0, 0x1

    goto :goto_5
.end method

.method protected a(La/b/c;II)Z
    .registers 7

    const/high16 v2, 0x40000000  # 2.0f

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-lt p3, v2, :cond_14

    sub-int v0, p3, v2

    shl-int v0, v1, v0

    iget v1, p0, La/b/f/p;->l:I

    or-int/2addr v0, v1

    iput v0, p0, La/b/f/p;->l:I

    invoke-virtual {p0, p2, p3}, La/b/f/p;->b(II)Z

    move-result v0

    :cond_13
    :goto_13
    return v0

    :cond_14
    invoke-direct {p0, p3}, La/b/f/p;->f(I)Z

    move-result v2

    if-nez v2, :cond_3b

    iput-boolean v0, p0, La/b/f/p;->d:Z

    iget-object v0, p0, La/b/f/p;->a:[La/b/b/b;

    aget-object v0, v0, p3

    iput-object v0, p0, La/b/f/p;->c:La/b/b/b;

    invoke-interface {p1, p2}, La/b/c;->b(I)I

    move-result v0

    iget-object v1, p0, La/b/f/p;->c:La/b/b/b;

    invoke-virtual {v1}, La/b/b/b;->a()I

    move-result v1

    if-ne v0, v1, :cond_38

    invoke-interface {p1, p2, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    iget-boolean v0, p0, La/b/f/p;->d:Z

    if-eqz v0, :cond_38

    invoke-direct {p0, p3, p2}, La/b/f/p;->d(II)V

    :cond_38
    iget-boolean v0, p0, La/b/f/p;->d:Z

    goto :goto_13

    :cond_3b
    iget-object v2, p0, La/b/f/p;->k:[I

    aget v2, v2, p3

    if-ne v2, p2, :cond_13

    move v0, v1

    goto :goto_13
.end method

.method protected a(La/b/d/c;La/b/d/c;)Z
    .registers 5

    iget-byte v0, p1, La/b/d/c;->c:B

    iget-byte v1, p2, La/b/d/c;->c:B

    if-eq v0, v1, :cond_e

    invoke-virtual {p1}, La/b/d/c;->b()B

    move-result v0

    iget-byte v1, p2, La/b/d/c;->c:B

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected a([I[I)Z
    .registers 7

    const/4 v0, 0x0

    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    move v1, v0

    :goto_7
    array-length v2, p1

    if-ge v1, v2, :cond_17

    aget v2, p1, v1

    aget v3, p2, v1

    invoke-virtual {p0, v2, v3}, La/b/f/p;->b(II)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public a(I[I)[I
    .registers 6

    array-length v0, p2

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_4
    array-length v2, p2

    if-ge v0, v2, :cond_12

    aget v2, p2, v0

    invoke-virtual {p0, p1, v2}, La/b/f/p;->a(II)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    return-object v1
.end method

.method public a([I)[I
    .registers 5

    array-length v0, p1

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_12

    aget v2, p1, v0

    invoke-virtual {p0, v2}, La/b/f/p;->c(I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    return-object v1
.end method

.method public b(La/b/c;La/b/b/q;)V
    .registers 6

    iget-object v0, p0, La/b/f/p;->c:La/b/b/b;

    check-cast v0, La/b/b/q;

    invoke-virtual {p2}, La/b/b/q;->b()I

    move-result v1

    invoke-virtual {v0}, La/b/b/q;->b()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, La/b/f/p;->a(La/b/c;II)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p2}, La/b/b/q;->c()I

    move-result v1

    invoke-virtual {v0}, La/b/b/q;->c()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, La/b/f/p;->a(La/b/c;II)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_21
    iput-boolean v0, p0, La/b/f/p;->d:Z

    return-void

    :cond_24
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, La/b/f/p;->e:Z

    return v0
.end method

.method public b(I)Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, La/b/f/p;->m:I

    const/high16 v2, 0x40000000  # 2.0f

    sub-int v2, p1, v2

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_d

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected b(II)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000  # 2.0f

    sub-int v2, p2, v2

    if-gez v2, :cond_c

    if-ne p1, p2, :cond_b

    :cond_a
    move v0, v1

    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-direct {p0, v2}, La/b/f/p;->e(I)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-direct {p0, v2, p1}, La/b/f/p;->c(II)V

    move v0, v1

    goto :goto_b

    :cond_17
    iget-object v3, p0, La/b/f/p;->i:[I

    aget v2, v3, v2

    if-eq v2, p1, :cond_a

    goto :goto_b
.end method

.method protected b(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)Z
    .registers 7

    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, La/b/f/p;->b:[La/b/d/c;

    array-length v0, v0

    return v0
.end method

.method public c(I)I
    .registers 4

    const/high16 v0, 0x40000000  # 2.0f

    sub-int v0, p1, v0

    if-gez v0, :cond_7

    :goto_6
    return p1

    :cond_7
    iget-object v1, p0, La/b/f/p;->i:[I

    aget p1, v1, v0

    goto :goto_6
.end method

.method public d(I)I
    .registers 4

    const/high16 v0, 0x40000000  # 2.0f

    sub-int v0, p1, v0

    if-gez v0, :cond_b

    iget-object v0, p0, La/b/f/p;->k:[I

    aget v0, v0, p1

    :goto_a
    return v0

    :cond_b
    iget-object v1, p0, La/b/f/p;->i:[I

    aget v0, v1, v0

    goto :goto_a
.end method
