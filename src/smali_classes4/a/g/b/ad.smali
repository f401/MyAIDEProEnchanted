.class public La/g/b/ad;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/d/a/d;
.implements La/b/g/aq;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:La/g/a/v;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, La/g/b/ad;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, La/g/b/ad;-><init>(ZZZ)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .registers 5

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/g/a/v;

    invoke-direct {v0}, La/g/a/v;-><init>()V

    iput-object v0, p0, La/g/b/ad;->d:La/g/a/v;

    iput-boolean p1, p0, La/g/b/ad;->a:Z

    iput-boolean p2, p0, La/g/b/ad;->b:Z

    iput-boolean p3, p0, La/g/b/ad;->c:Z

    return-void
.end method

.method public static a(La/b/j;)I
    .registers 2

    invoke-static {p0}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/q;->t()I

    move-result v0

    return v0
.end method

.method public static a(La/b/j;I)V
    .registers 3

    invoke-static {p0}, La/g/b/ai;->b(La/b/j;)La/g/b/ai;

    move-result-object v0

    invoke-virtual {v0, p1}, La/g/b/ai;->g(I)V

    return-void
.end method

.method private static a(La/b/j;J)V
    .registers 4

    invoke-static {p0}, La/g/b/ai;->b(La/b/j;)La/g/b/ai;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, La/g/b/ai;->a(J)V

    return-void
.end method

.method public static b(La/b/j;)Z
    .registers 2

    invoke-static {p0}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/q;->u()Z

    move-result v0

    return v0
.end method

.method public static b(La/b/j;I)Z
    .registers 3

    invoke-static {p0}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v0

    invoke-virtual {v0, p1}, La/g/b/q;->a(I)Z

    move-result v0

    return v0
.end method

.method public static c(La/b/j;)J
    .registers 3

    invoke-static {p0}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/q;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method private static c(La/b/j;I)V
    .registers 3

    invoke-static {p0}, La/g/b/ai;->b(La/b/j;)La/g/b/ai;

    move-result-object v0

    invoke-virtual {v0, p1}, La/g/b/ai;->f(I)V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 5

    iget-object v0, p0, La/g/b/ad;->d:La/g/a/v;

    invoke-virtual {v0, p1, p2, p3}, La/g/a/v;->a(La/b/c;La/b/j;La/b/a/d;)V

    invoke-virtual {p3, p1, p2, p0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/d/a/d;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/k;)V
    .registers 10

    const/4 v3, 0x2

    iget-object v0, p0, La/g/b/ad;->d:La/g/a/v;

    invoke-virtual {v0, p4}, La/g/a/v;->a(I)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p5}, La/b/d/k;->g()Z

    move-result v0

    if-eqz v0, :cond_42

    iget v0, p5, La/b/d/k;->b:I

    iget v1, p3, La/b/a/d;->d:I

    if-ge v0, v1, :cond_42

    iget-object v1, p0, La/g/b/ad;->d:La/g/a/v;

    invoke-virtual {v1, p4}, La/g/a/v;->h(I)La/d/k;

    move-result-object v1

    invoke-virtual {v1, v0}, La/d/k;->a(I)La/d/a/bd;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {v1}, La/d/a/bd;->n_()La/d/a/ad;

    move-result-object v1

    const/high16 v2, 0x1000000

    or-int/2addr v2, v0

    invoke-virtual {v1, v2}, La/d/a/ad;->b(I)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-static {p2, v0}, La/g/b/ad;->a(La/b/j;I)V

    invoke-virtual {p5, p1}, La/b/d/k;->a(La/b/c;)I

    move-result v1

    if-eq v1, v3, :cond_3d

    invoke-virtual {p5, p1}, La/b/d/k;->b(La/b/c;)I

    move-result v1

    if-ne v1, v3, :cond_42

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0}, La/g/b/ad;->a(La/b/j;I)V

    :cond_42
    return-void
.end method

.method public a(La/b/e;La/b/h;)V
    .registers 5

    invoke-virtual {p1, p2}, La/b/e;->a(La/b/j;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 v0, -0x1

    invoke-static {p2, v0, v1}, La/g/b/ad;->a(La/b/j;J)V

    :cond_b
    return-void
.end method

.method public a(La/b/k;La/b/n;)V
    .registers 10

    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    invoke-virtual {p2, p1}, La/b/n;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, La/b/n;->a()I

    move-result v1

    invoke-static {v0, v1}, La/b/f/i;->c(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_33

    invoke-virtual {p2}, La/b/n;->a()I

    move-result v5

    iget-boolean v0, p0, La/g/b/ad;->a:Z

    if-eqz v0, :cond_20

    and-int/lit8 v0, v5, 0x8

    if-nez v0, :cond_20

    invoke-static {p2, v6}, La/g/b/ad;->a(La/b/j;I)V

    :cond_20
    iget-boolean v0, p0, La/g/b/ad;->b:Z

    if-eqz v0, :cond_2c

    and-int/lit8 v0, v5, 0x8

    if-eqz v0, :cond_37

    move-wide v0, v2

    :goto_29
    invoke-static {p2, v0, v1}, La/g/b/ad;->a(La/b/j;J)V

    :cond_2c
    and-int/lit16 v0, v5, 0x100

    if-eqz v0, :cond_3a

    invoke-static {p2, v2, v3}, La/g/b/ad;->a(La/b/j;J)V

    :cond_33
    :goto_33
    invoke-static {p2, v4}, La/g/b/ad;->c(La/b/j;I)V

    return-void

    :cond_37
    const-wide/16 v0, -0x2

    goto :goto_29

    :cond_3a
    and-int/lit16 v0, v5, 0x400

    if-eqz v0, :cond_42

    invoke-static {p2, v6}, La/g/b/ad;->a(La/b/j;I)V

    goto :goto_33

    :cond_42
    and-int/lit8 v0, v5, 0x8

    if-nez v0, :cond_5f

    and-int/lit8 v0, v5, 0x20

    if-nez v0, :cond_5c

    invoke-virtual {p1, p2}, La/b/k;->a(La/b/j;)Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-virtual {p2, p1}, La/b/n;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    :cond_5c
    invoke-static {p2, v6}, La/g/b/ad;->a(La/b/j;I)V

    :cond_5f
    iget-boolean v0, p0, La/g/b/ad;->c:Z

    if-eqz v0, :cond_33

    invoke-virtual {p2, p1, p0}, La/b/n;->a(La/b/k;La/b/a/d/i;)V

    goto :goto_33
.end method
