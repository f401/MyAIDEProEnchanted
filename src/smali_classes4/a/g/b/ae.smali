.class public La/g/b/ae;
.super La/g/b/f;


# instance fields
.field private volatile b:Z

.field private volatile c:Z

.field private volatile d:Z

.field private volatile e:Z

.field private volatile f:Z

.field private volatile g:Z

.field private volatile h:Z

.field private volatile i:Z

.field private volatile j:Z

.field private volatile k:Z

.field private volatile l:La/b/c;

.field private volatile m:La/b/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, La/g/b/f;-><init>()V

    iput-boolean v0, p0, La/g/b/ae;->b:Z

    iput-boolean v0, p0, La/g/b/ae;->c:Z

    iput-boolean v0, p0, La/g/b/ae;->d:Z

    iput-boolean v0, p0, La/g/b/ae;->e:Z

    iput-boolean v0, p0, La/g/b/ae;->f:Z

    iput-boolean v0, p0, La/g/b/ae;->g:Z

    iput-boolean v0, p0, La/g/b/ae;->h:Z

    iput-boolean v0, p0, La/g/b/ae;->i:Z

    iput-boolean v0, p0, La/g/b/ae;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/b/ae;->k:Z

    return-void
.end method

.method public static e(La/b/c;)V
    .registers 2

    new-instance v0, La/g/b/ae;

    invoke-direct {v0}, La/g/b/ae;-><init>()V

    invoke-interface {p0, v0}, La/b/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static f(La/b/c;)La/g/b/ae;
    .registers 2

    invoke-interface {p0}, La/b/c;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g/b/ae;

    return-object v0
.end method


# virtual methods
.method public a(La/g/b/f;)V
    .registers 4

    iget-boolean v0, p0, La/g/b/ae;->b:Z

    invoke-virtual {p1}, La/g/b/f;->d()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, La/g/b/ae;->b:Z

    iget-boolean v0, p0, La/g/b/ae;->c:Z

    invoke-virtual {p1}, La/g/b/f;->e()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, La/g/b/ae;->c:Z

    iget-boolean v0, p0, La/g/b/ae;->d:Z

    invoke-virtual {p1}, La/g/b/f;->f()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, La/g/b/ae;->d:Z

    iget-boolean v0, p0, La/g/b/ae;->e:Z

    invoke-virtual {p1}, La/g/b/f;->g()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, La/g/b/ae;->e:Z

    iget-boolean v0, p0, La/g/b/ae;->f:Z

    invoke-virtual {p1}, La/g/b/f;->h()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, La/g/b/ae;->f:Z

    iget-boolean v0, p0, La/g/b/ae;->g:Z

    invoke-virtual {p1}, La/g/b/f;->i()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, La/g/b/ae;->g:Z

    iget-boolean v0, p0, La/g/b/ae;->h:Z

    invoke-virtual {p1}, La/g/b/f;->j()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, La/g/b/ae;->h:Z

    iget-boolean v0, p0, La/g/b/ae;->i:Z

    invoke-virtual {p1}, La/g/b/f;->k()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, La/g/b/ae;->i:Z

    iget-boolean v0, p0, La/g/b/ae;->j:Z

    invoke-virtual {p1}, La/g/b/f;->l()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, La/g/b/ae;->j:Z

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, La/g/b/ae;->f:Z

    return-void
.end method

.method public c(La/b/c;)V
    .registers 2

    iput-object p1, p0, La/g/b/ae;->l:La/b/c;

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d(La/b/c;)V
    .registers 2

    iput-object p1, p0, La/g/b/ae;->m:La/b/c;

    return-void
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, La/g/b/ae;->b:Z

    return v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, La/g/b/ae;->c:Z

    return v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, La/g/b/ae;->d:Z

    return v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, La/g/b/ae;->e:Z

    return v0
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, La/g/b/ae;->f:Z

    return v0
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, La/g/b/ae;->g:Z

    return v0
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, La/g/b/ae;->a:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, La/g/b/ae;->h:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public k()Z
    .registers 2

    iget-boolean v0, p0, La/g/b/ae;->i:Z

    return v0
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, La/g/b/ae;->j:Z

    return v0
.end method

.method public m()La/b/c;
    .registers 2

    iget-object v0, p0, La/g/b/ae;->l:La/b/c;

    return-object v0
.end method

.method public n()La/b/c;
    .registers 2

    iget-object v0, p0, La/g/b/ae;->m:La/b/c;

    return-object v0
.end method

.method public o()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/b/ae;->b:Z

    return-void
.end method

.method public p()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/b/ae;->c:Z

    return-void
.end method

.method public q()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/b/ae;->d:Z

    return-void
.end method

.method public r()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/b/ae;->e:Z

    return-void
.end method

.method public s()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/b/ae;->g:Z

    return-void
.end method

.method public t()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/b/ae;->h:Z

    return-void
.end method

.method public u()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/b/ae;->i:Z

    return-void
.end method

.method public v()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/b/ae;->j:Z

    return-void
.end method
