.class public La/b/f/v;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/b/a/f;
.implements La/b/b/a/i;
.implements La/b/d/a/d;
.implements La/b/g/s;


# instance fields
.field private final a:La/b/c/v;

.field private final b:La/b/c/ag;

.field private c:Z

.field private d:La/b/c/ar;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/b/c/v;

    invoke-direct {v0}, La/b/c/v;-><init>()V

    iput-object v0, p0, La/b/f/v;->a:La/b/c/v;

    new-instance v0, La/b/c/ag;

    invoke-direct {v0}, La/b/c/ag;-><init>()V

    iput-object v0, p0, La/b/f/v;->b:La/b/c/ag;

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

.method public a(La/b/c;La/b/b/p;)V
    .registers 6

    invoke-virtual {p2}, La/b/b/p;->b()C

    move-result v1

    invoke-virtual {p2}, La/b/b/p;->c()I

    new-instance v2, La/b/c/ar;

    move-object v0, p1

    check-cast v0, La/b/k;

    invoke-direct {v2, v0}, La/b/c/ar;-><init>(La/b/k;)V

    iput-object v2, p0, La/b/f/v;->d:La/b/c/ar;

    iget-object v0, p0, La/b/f/v;->d:La/b/c/ar;

    invoke-virtual {p2}, La/b/b/p;->c()I

    move-result v2

    invoke-virtual {v0, v2}, La/b/c/ar;->U(I)La/b/c/ar;

    iget-object v0, p0, La/b/f/v;->d:La/b/c/ar;

    invoke-static {v1}, La/b/d/f;->a(C)B

    move-result v1

    invoke-virtual {v0, v1}, La/b/c/ar;->Q(I)La/b/c/ar;

    invoke-virtual {p2, p1, p0}, La/b/b/p;->a(La/b/c;La/b/b/a/i;)V

    return-void
.end method

.method public a(La/b/c;La/b/b/p;IB)V
    .registers 6

    iget-object v0, p0, La/b/f/v;->d:La/b/c/ar;

    invoke-virtual {v0}, La/b/c/ar;->D()La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0, p3}, La/b/c/ar;->U(I)La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0, p4}, La/b/c/ar;->U(I)La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0}, La/b/c/ar;->y()La/b/c/ar;

    return-void
.end method

.method public a(La/b/c;La/b/b/p;IC)V
    .registers 6

    iget-object v0, p0, La/b/f/v;->d:La/b/c/ar;

    invoke-virtual {v0}, La/b/c/ar;->D()La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0, p3}, La/b/c/ar;->U(I)La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0, p4}, La/b/c/ar;->U(I)La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0}, La/b/c/ar;->z()La/b/c/ar;

    return-void
.end method

.method public a(La/b/c;La/b/b/p;ID)V
    .registers 8

    iget-object v0, p0, La/b/f/v;->d:La/b/c/ar;

    invoke-virtual {v0}, La/b/c/ar;->D()La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0, p3}, La/b/c/ar;->U(I)La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, La/b/c/ar;->b(D)La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0}, La/b/c/ar;->x()La/b/c/ar;

    return-void
.end method

.method public a(La/b/c;La/b/b/p;IF)V
    .registers 6

    iget-object v0, p0, La/b/f/v;->d:La/b/c/ar;

    invoke-virtual {v0}, La/b/c/ar;->D()La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0, p3}, La/b/c/ar;->U(I)La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0, p4}, La/b/c/ar;->b(F)La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0}, La/b/c/ar;->w()La/b/c/ar;

    return-void
.end method

.method public a(La/b/c;La/b/b/p;II)V
    .registers 6

    iget-object v0, p0, La/b/f/v;->d:La/b/c/ar;

    invoke-virtual {v0}, La/b/c/ar;->D()La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0, p3}, La/b/c/ar;->U(I)La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0, p4}, La/b/c/ar;->U(I)La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0}, La/b/c/ar;->u()La/b/c/ar;

    return-void
.end method

.method public a(La/b/c;La/b/b/p;IJ)V
    .registers 8

    iget-object v0, p0, La/b/f/v;->d:La/b/c/ar;

    invoke-virtual {v0}, La/b/c/ar;->D()La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0, p3}, La/b/c/ar;->U(I)La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, La/b/c/ar;->b(J)La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0}, La/b/c/ar;->v()La/b/c/ar;

    return-void
.end method

.method public a(La/b/c;La/b/b/p;IS)V
    .registers 6

    iget-object v0, p0, La/b/f/v;->d:La/b/c/ar;

    invoke-virtual {v0}, La/b/c/ar;->D()La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0, p3}, La/b/c/ar;->U(I)La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0, p4}, La/b/c/ar;->U(I)La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0}, La/b/c/ar;->A()La/b/c/ar;

    return-void
.end method

.method public a(La/b/c;La/b/b/p;IZ)V
    .registers 7

    iget-object v0, p0, La/b/f/v;->d:La/b/c/ar;

    invoke-virtual {v0}, La/b/c/ar;->D()La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0, p3}, La/b/c/ar;->U(I)La/b/c/ar;

    move-result-object v1

    if-eqz p4, :cond_15

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v1, v0}, La/b/c/ar;->a(I)La/b/c/ar;

    move-result-object v0

    invoke-virtual {v0}, La/b/c/ar;->y()La/b/c/ar;

    return-void

    :cond_15
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 6

    iget-object v0, p0, La/b/f/v;->a:La/b/c/v;

    iget v1, p3, La/b/a/d;->e:I

    invoke-virtual {v0, v1}, La/b/c/v;->a(I)V

    invoke-virtual {p3, p1, p2, p0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/d/a/d;)V

    iget-object v0, p0, La/b/f/v;->a:La/b/c/v;

    invoke-virtual {v0}, La/b/c/v;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, La/b/f/v;->a:La/b/c/v;

    invoke-virtual {v0, p1, p2, p3}, La/b/c/v;->a(La/b/c;La/b/j;La/b/a/d;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, La/b/f/v;->c:Z

    :cond_1a
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 8

    const/4 v0, 0x0

    iput-object v0, p0, La/b/f/v;->d:La/b/c/ar;

    iget v0, p5, La/b/d/b;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    iget-object v0, p0, La/b/f/v;->d:La/b/c/ar;

    if-eqz v0, :cond_1a

    iget-object v0, p0, La/b/f/v;->a:La/b/c/v;

    iget-object v1, p0, La/b/f/v;->d:La/b/c/ar;

    invoke-virtual {v1}, La/b/c/ar;->c()[La/b/d/c;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, La/b/c/v;->c(I[La/b/d/c;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, La/b/f/v;->c:Z

    :cond_1a
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method

.method public a(La/b/k;)V
    .registers 5

    new-instance v0, La/b/b/a/d;

    invoke-direct {v0}, La/b/b/a/d;-><init>()V

    new-instance v1, La/b/b/a/e;

    const/16 v2, 0x15

    invoke-direct {v1, v2, v0}, La/b/b/a/e;-><init>(ILa/b/b/a/f;)V

    invoke-virtual {p1, v1}, La/b/k;->a(La/b/b/a/f;)V

    invoke-virtual {v0}, La/b/b/a/d;->a()I

    move-result v0

    if-lez v0, :cond_29

    const/4 v0, 0x0

    iput-boolean v0, p0, La/b/f/v;->c:Z

    new-instance v0, La/b/a/d/a;

    invoke-direct {v0, p0}, La/b/a/d/a;-><init>(La/b/a/d/i;)V

    invoke-virtual {p1, v0}, La/b/k;->b(La/b/g/aq;)V

    iget-boolean v0, p0, La/b/f/v;->c:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, La/b/f/v;->b:La/b/c/ag;

    invoke-virtual {p1, v0}, La/b/k;->a(La/b/g/s;)V

    :cond_29
    return-void
.end method
