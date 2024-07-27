.class public Lorg/c/a/a/c/a/a/d/z;
.super Lorg/c/a/a/b/d/a;


# instance fields
.field protected a:Ljava/util/HashSet;

.field protected b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/c/a/a/b/d/a;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/c/a/a/d/z;->a:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/z;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/a/c/a/a/d/z;->b:Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/b/g;)V
    .registers 4

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/g;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/d/z;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/c/a/a/b/d/b/n;->a(Lorg/c/a/a/b/d/b/o;)V

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/c/a/a/b/d/b/n;->a(Lorg/c/a/a/b/d/b/o;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/ac;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/ac;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/c/a/a/b/d/b/n;->a(Lorg/c/a/a/b/d/b/o;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/ae;)V
    .registers 2

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/ai;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/ai;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/c/a/a/b/d/b/n;->a(Lorg/c/a/a/b/d/b/o;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/g;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/g;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/d/z;->a(Lorg/c/a/a/b/d/b/f;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/h;)V
    .registers 4

    iget-boolean v1, p0, Lorg/c/a/a/c/a/a/d/z;->b:Z

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/c/a/a/c/a/a/d/z;->b:Z

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/c/a/a/b/d/b/n;->a(Lorg/c/a/a/b/d/b/o;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/c/a/a/b/d/d/i;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/i;->e()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/c/a/a/b/d/b/n;->a(Lorg/c/a/a/b/d/b/o;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/j;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/j;->b()Lorg/c/a/a/b/d/a/w;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/d/z;->a(Lorg/c/a/a/b/d/a/l;)V

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/j;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/d/z;->a(Lorg/c/a/a/b/d/b/f;)V

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/j;->e()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/d/z;->a(Lorg/c/a/a/b/d/b/f;)V

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/j;->f()Lorg/c/a/a/b/d/b/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/d/z;->a(Lorg/c/a/a/b/d/b/f;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/k;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/k;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/c/a/a/b/d/b/n;->a(Lorg/c/a/a/b/d/b/o;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/l;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/l;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/c/a/a/b/d/b/n;->a(Lorg/c/a/a/b/d/b/o;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/n;)V
    .registers 4

    iget-boolean v1, p0, Lorg/c/a/a/c/a/a/d/z;->b:Z

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/n;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/c/a/a/c/a/a/d/z;->b:Z

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/n;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/c/a/a/b/d/b/n;->a(Lorg/c/a/a/b/d/b/o;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/c/a/a/b/d/d/v;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/v;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/c/a/a/b/d/b/n;->a(Lorg/c/a/a/b/d/b/o;)V

    return-void
.end method

.method public b()Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/z;->a:Ljava/util/HashSet;

    return-object v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lorg/c/a/a/c/a/a/d/z;->b:Z

    return v0
.end method
