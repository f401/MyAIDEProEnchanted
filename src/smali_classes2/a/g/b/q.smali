.class public La/g/b/q;
.super Ljava/lang/Object;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Z

.field protected d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, La/g/b/q;->a:Z

    iput-boolean v0, p0, La/g/b/q;->b:Z

    iput-boolean v0, p0, La/g/b/q;->c:Z

    iput-boolean v0, p0, La/g/b/q;->d:Z

    return-void
.end method

.method public static a(La/b/j;)La/g/b/q;
    .registers 2

    invoke-static {p0}, La/b/f/u;->a(La/b/i;)La/b/i;

    move-result-object v0

    invoke-interface {v0}, La/b/i;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g/b/q;

    return-object v0
.end method

.method public static a(La/b/c;La/b/j;)V
    .registers 4

    invoke-static {p1}, La/b/f/u;->a(La/b/i;)La/b/i;

    move-result-object v0

    new-instance v1, La/g/b/q;

    invoke-direct {v1}, La/g/b/q;-><init>()V

    invoke-interface {v0, v1}, La/b/i;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public A()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public B()Z
    .registers 2

    iget-boolean v0, p0, La/g/b/q;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public C()La/d/a/bd;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public a(I)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/b/q;->a:Z

    iput-boolean v0, p0, La/g/b/q;->b:Z

    iput-boolean v0, p0, La/g/b/q;->c:Z

    return-void
.end method

.method public b(I)Z
    .registers 3

    iget-boolean v0, p0, La/g/b/q;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, La/g/b/q;->a:Z

    return v0
.end method

.method public c(I)Z
    .registers 3

    iget-boolean v0, p0, La/g/b/q;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, La/g/b/q;->b:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)La/d/a/bd;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/b/q;->b:Z

    iput-boolean v0, p0, La/g/b/q;->c:Z

    return-void
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, La/g/b/q;->b:Z

    return v0
.end method

.method public e(I)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/b/q;->c:Z

    return-void
.end method

.method public g()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/b/q;->d:Z

    return-void
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, La/g/b/q;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public k()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public l()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public m()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public n()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public o()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public p()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public q()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public r()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public s()I
    .registers 2

    const v0, 0x7fffffff

    return v0
.end method

.method public t()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public u()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public v()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public w()J
    .registers 3

    iget-boolean v0, p0, La/g/b/q;->c:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public x()J
    .registers 3

    iget-boolean v0, p0, La/g/b/q;->a:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v0, p0, La/g/b/q;->b:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public y()Z
    .registers 2

    iget-boolean v0, p0, La/g/b/q;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method
