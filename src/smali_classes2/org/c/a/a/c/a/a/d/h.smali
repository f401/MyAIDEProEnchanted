.class public Lorg/c/a/a/c/a/a/d/h;
.super Lorg/c/a/a/b/d/a;


# instance fields
.field protected a:Lorg/c/a/a/d/c;

.field protected b:I

.field protected c:I

.field protected d:Lorg/c/a/a/b/d/b/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/c/a/a/b/d/a;-><init>()V

    new-instance v0, Lorg/c/a/a/d/c;

    invoke-direct {v0}, Lorg/c/a/a/d/c;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/c/a/a/d/h;->a:Lorg/c/a/a/d/c;

    return-void
.end method


# virtual methods
.method public a()Lorg/c/a/a/d/c;
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/h;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/h;->a:Lorg/c/a/a/d/c;

    sget-object v1, Lorg/c/a/a/c/a/a/d/i;->a:Lorg/c/a/a/c/a/a/d/i;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    new-instance v0, Lorg/c/a/a/d/c;

    iget-object v1, p0, Lorg/c/a/a/c/a/a/d/h;->a:Lorg/c/a/a/d/c;

    invoke-direct {v0, v1}, Lorg/c/a/a/d/c;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public a(Lorg/c/a/a/b/d/a/ac;)V
    .registers 4

    invoke-virtual {p1}, Lorg/c/a/a/b/d/a/ac;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x9

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/c/a/a/b/d/a/ac;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "values"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/b/d/a/ac;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "valueOf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    check-cast p1, Lorg/c/a/a/c/a/a/a/b/a/l;

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/b/a/l;->a()I

    move-result v0

    or-int/lit16 v0, v0, 0x1000

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/b/a/l;->a(I)V

    :cond_1
    return-void
.end method

.method public a(Lorg/c/a/a/b/d/a/ah;)V
    .registers 2

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/a/i;)V
    .registers 3

    check-cast p1, Lorg/c/a/a/c/a/a/a/b/a/b;

    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/h;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->clear()V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/b/a/b;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/d/h;->e(Ljava/util/List;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/b/a/b;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/d/h;->e(Ljava/util/List;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/a/k;)V
    .registers 7

    const/16 v4, 0x1000

    const/4 v3, 0x0

    check-cast p1, Lorg/c/a/a/c/a/a/a/b/a/d;

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/b/a/d;->g()Lorg/c/a/a/b/d/d/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/c/a/a/b/d/d/u;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/b/a/d;->g()Lorg/c/a/a/b/d/d/b;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/u;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/u;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v4}, Lorg/c/a/a/c/a/a/a/b/a/d;->a(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/b/a/d;->p_()Lorg/c/a/a/b/d/a/e;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/a/u;

    const/4 v2, 0x2

    invoke-virtual {v1, v3, v2}, Lorg/c/a/a/b/d/a/u;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v0, v3}, Lorg/c/a/a/b/d/d/u;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lorg/c/a/a/c/a/a/a/b/a/d;->a(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v4}, Lorg/c/a/a/c/a/a/a/b/a/d;->a(I)V

    goto :goto_0
.end method

.method public a(Lorg/c/a/a/b/d/a/q;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/a/q;->a()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    check-cast p1, Lorg/c/a/a/c/a/a/a/b/a/h;

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/b/a/h;->d()Lorg/c/a/a/b/d/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/c/a/a/b/d/a/d;->a(Lorg/c/a/a/b/d/a/m;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/b/a/h;->a()I

    move-result v0

    or-int/lit16 v0, v0, 0x1000

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/b/a/h;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lorg/c/a/a/b/d/a/r;)V
    .registers 8

    invoke-virtual {p1}, Lorg/c/a/a/b/d/a/r;->g()Lorg/c/a/a/b/d/a/aj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/d/h;->a(Lorg/c/a/a/b/d/a/l;)V

    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/h;->a:Lorg/c/a/a/d/c;

    new-instance v1, Lorg/c/a/a/c/a/a/a/b/a/g;

    iget v2, p0, Lorg/c/a/a/c/a/a/d/h;->b:I

    invoke-virtual {p1}, Lorg/c/a/a/b/d/a/r;->e()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lorg/c/a/a/c/a/a/d/h;->c:I

    iget-object v5, p0, Lorg/c/a/a/c/a/a/d/h;->d:Lorg/c/a/a/b/d/b/f;

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/c/a/a/c/a/a/a/b/a/g;-><init>(ILjava/lang/String;ILorg/c/a/a/b/d/b/f;)V

    invoke-virtual {v0, v1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/b/ab;)V
    .registers 6

    const/4 v3, 0x2

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/ab;->j()Lorg/c/a/a/b/d/b/f;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/c/a/a/b/d/b/p;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/b/t;

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/ab;->e()I

    move-result v2

    iput v2, p0, Lorg/c/a/a/c/a/a/d/h;->b:I

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/t;->d()I

    move-result v1

    iput v1, p0, Lorg/c/a/a/c/a/a/d/h;->c:I

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/p;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/a/c/a/a/d/h;->d:Lorg/c/a/a/b/d/b/f;

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/c/a/a/b/d/b/p;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lorg/c/a/a/c/a/a/d/h;->d:Lorg/c/a/a/b/d/b/f;

    goto :goto_0
.end method
