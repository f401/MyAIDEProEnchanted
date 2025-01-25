.class public Lorg/c/a/a/c/a/a/d/o;
.super Lorg/c/a/a/b/d/a;


# static fields
.field static final b:Z


# instance fields
.field final a:Lorg/c/a/a/c/a/a/d/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/c/a/a/d/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/c/a/a/c/a/a/d/o;->b:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected constructor <init>(Lorg/c/a/a/c/a/a/d/j;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/d/o;->a:Lorg/c/a/a/c/a/a/d/j;

    invoke-direct {p0}, Lorg/c/a/a/b/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lorg/c/a/a/b/d/b/n;)Lorg/c/a/a/b/d/b/n;
    .registers 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-ne v0, v1, :cond_9a

    move-object v5, p1

    check-cast v5, Lorg/c/a/a/c/a/a/a/b/b/b;

    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/o;->a:Lorg/c/a/a/c/a/a/d/j;

    iget-object v0, v0, Lorg/c/a/a/c/a/a/d/j;->d:Lorg/c/a/a/d/c;

    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/a/b/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/c/a/a/d/c;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    new-instance v0, Lorg/c/a/a/b/d/b/q;

    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/a/b/b/b;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v1

    new-instance v2, Lorg/c/a/a/b/d/b/ae;

    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/a/b/b/b;->e()I

    move-result v3

    iget-object v4, p0, Lorg/c/a/a/c/a/a/d/o;->a:Lorg/c/a/a/c/a/a/d/j;

    iget-object v4, v4, Lorg/c/a/a/c/a/a/d/j;->c:Lorg/c/a/a/b/d/e/i;

    invoke-direct {v2, v3, v4}, Lorg/c/a/a/b/d/b/ae;-><init>(ILorg/c/a/a/b/d/e/i;)V

    iget-object v3, p0, Lorg/c/a/a/c/a/a/d/o;->a:Lorg/c/a/a/c/a/a/d/j;

    iget-object v3, v3, Lorg/c/a/a/c/a/a/d/j;->c:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v3}, Lorg/c/a/a/b/d/e/i;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/a/b/b/b;->d()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/a/b/b/b;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v5

    invoke-interface {v5}, Lorg/c/a/a/b/d/e/l;->e()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/d/b/q;-><init>(Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_48
    return-object v0

    :cond_49
    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/a/b/b/b;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a5

    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/a/b/b/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "this$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/a/b/b/b;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/a/b/d/e/l;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/d/o;->a:Lorg/c/a/a/c/a/a/d/j;

    iget-object v1, v1, Lorg/c/a/a/c/a/a/d/j;->c:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/e/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    new-instance v0, Lorg/c/a/a/b/d/b/q;

    iget-object v1, p0, Lorg/c/a/a/c/a/a/d/o;->a:Lorg/c/a/a/c/a/a/d/j;

    iget-object v1, v1, Lorg/c/a/a/c/a/a/d/j;->c:Lorg/c/a/a/b/d/e/i;

    new-instance v2, Lorg/c/a/a/b/d/b/ae;

    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/a/b/b/b;->e()I

    move-result v3

    iget-object v4, p0, Lorg/c/a/a/c/a/a/d/o;->a:Lorg/c/a/a/c/a/a/d/j;

    iget-object v4, v4, Lorg/c/a/a/c/a/a/d/j;->c:Lorg/c/a/a/b/d/e/i;

    invoke-direct {v2, v3, v4}, Lorg/c/a/a/b/d/b/ae;-><init>(ILorg/c/a/a/b/d/e/i;)V

    iget-object v3, p0, Lorg/c/a/a/c/a/a/d/o;->a:Lorg/c/a/a/c/a/a/d/j;

    iget-object v3, v3, Lorg/c/a/a/c/a/a/d/j;->c:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v3}, Lorg/c/a/a/b/d/e/i;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "this"

    iget-object v5, p0, Lorg/c/a/a/c/a/a/d/o;->a:Lorg/c/a/a/c/a/a/d/j;

    iget-object v5, v5, Lorg/c/a/a/c/a/a/d/j;->c:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v5}, Lorg/c/a/a/b/d/e/i;->e()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/d/b/q;-><init>(Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    :cond_9a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/c/a/a/b/d/b/q;

    if-ne v0, v1, :cond_a5

    invoke-virtual {p1, p0}, Lorg/c/a/a/b/d/b/n;->a(Lorg/c/a/a/b/d/b/o;)V

    :cond_a5
    move-object v0, p1

    goto :goto_48
.end method

.method public a(Lorg/c/a/a/b/d/a/ac;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/a/ac;->g()Lorg/c/a/a/b/d/d/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/d/o;->a(Lorg/c/a/a/b/d/d/b;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/a/ah;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/a/ah;->g()Lorg/c/a/a/b/d/d/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/d/o;->a(Lorg/c/a/a/b/d/d/b;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/a/i;)V
    .registers 3

    check-cast p1, Lorg/c/a/a/c/a/a/a/b/a/b;

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/b/a/b;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/d/o;->e(Ljava/util/List;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/b/ab;)V
    .registers 4

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/ab;->j()Lorg/c/a/a/b/d/b/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/d/o;->a(Lorg/c/a/a/b/d/b/f;)V

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/ab;->l()Lorg/c/a/a/b/d/a/i;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/ab;->l()Lorg/c/a/a/b/d/a/i;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/a/b;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_22

    :cond_21
    return-void

    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/e;

    invoke-interface {v0}, Lorg/c/a/a/c/a/a/a/b/a/e;->g()Lorg/c/a/a/b/d/d/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/d/o;->a(Lorg/c/a/a/b/d/d/b;)V

    goto :goto_1b
.end method

.method public a(Lorg/c/a/a/b/d/b/ai;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/ai;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/ai;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/a/b/d/b/f;->j_()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/ai;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/a/b/d/b/f;->l_()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/d/o;->a(Lorg/c/a/a/d/c;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/ai;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/a/b/d/b/f;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/n;

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/d/o;->a(Lorg/c/a/a/b/d/b/n;)Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/d/b/ai;->a(Lorg/c/a/a/b/d/b/f;)V

    goto :goto_1b
.end method

.method public a(Lorg/c/a/a/b/d/b/j;)V
    .registers 5

    sget-boolean v0, Lorg/c/a/a/c/a/a/d/o;->b:Z

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/j;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/j;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/a/b/d/b/f;->j_()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/j;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/a/b/d/b/f;->l_()Lorg/c/a/a/d/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/c/a/a/d/c;->remove(I)Ljava/lang/Object;

    sget-boolean v1, Lorg/c/a/a/c/a/a/d/o;->b:Z

    if-nez v1, :cond_36

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->size()I

    move-result v1

    if-gtz v1, :cond_36

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_36
    invoke-virtual {v0}, Lorg/c/a/a/d/c;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4b

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/n;

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/d/o;->a(Lorg/c/a/a/b/d/b/n;)Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/d/b/j;->a(Lorg/c/a/a/b/d/b/f;)V

    :goto_4a
    return-void

    :cond_4b
    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/d/o;->a(Lorg/c/a/a/d/c;)V

    goto :goto_4a

    :cond_4f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/d/b/j;->a(Lorg/c/a/a/b/d/b/f;)V

    goto :goto_4a
.end method

.method public a(Lorg/c/a/a/b/d/b/q;)V
    .registers 8

    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/o;->a:Lorg/c/a/a/c/a/a/d/j;

    iget-object v0, v0, Lorg/c/a/a/c/a/a/d/j;->d:Lorg/c/a/a/d/c;

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/q;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/c/a/a/d/c;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/q;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/d/b/q;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/d/b/q;->a(Lorg/c/a/a/b/d/b/n;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/q;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/q;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/c/a/a/b/d/b/q;

    if-ne v0, v1, :cond_82

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/q;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/c/a/a/b/d/b/q;

    invoke-virtual {v3}, Lorg/c/a/a/b/d/b/q;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "this$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v3}, Lorg/c/a/a/b/d/b/q;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/d/o;->a:Lorg/c/a/a/c/a/a/d/j;

    iget-object v1, v1, Lorg/c/a/a/c/a/a/d/j;->c:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/e/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lorg/c/a/a/b/d/b/q;

    iget-object v1, p0, Lorg/c/a/a/c/a/a/d/o;->a:Lorg/c/a/a/c/a/a/d/j;

    iget-object v1, v1, Lorg/c/a/a/c/a/a/d/j;->c:Lorg/c/a/a/b/d/e/i;

    new-instance v2, Lorg/c/a/a/b/d/b/ae;

    invoke-virtual {v3}, Lorg/c/a/a/b/d/b/q;->e()I

    move-result v3

    iget-object v4, p0, Lorg/c/a/a/c/a/a/d/o;->a:Lorg/c/a/a/c/a/a/d/j;

    iget-object v4, v4, Lorg/c/a/a/c/a/a/d/j;->c:Lorg/c/a/a/b/d/e/i;

    invoke-direct {v2, v3, v4}, Lorg/c/a/a/b/d/b/ae;-><init>(ILorg/c/a/a/b/d/e/i;)V

    iget-object v3, p0, Lorg/c/a/a/c/a/a/d/o;->a:Lorg/c/a/a/c/a/a/d/j;

    iget-object v3, v3, Lorg/c/a/a/c/a/a/d/j;->c:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v3}, Lorg/c/a/a/b/d/e/i;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "this"

    iget-object v5, p0, Lorg/c/a/a/c/a/a/d/o;->a:Lorg/c/a/a/c/a/a/d/j;

    iget-object v5, v5, Lorg/c/a/a/c/a/a/d/j;->c:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v5}, Lorg/c/a/a/b/d/e/i;->e()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/d/b/q;-><init>(Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/d/b/q;->a(Lorg/c/a/a/b/d/b/n;)V

    goto :goto_1e

    :cond_82
    const-class v1, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-ne v0, v1, :cond_e2

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/q;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/b/b/b;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/b/b/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "this$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/b/b/b;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/a/b/d/e/l;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/d/o;->a:Lorg/c/a/a/c/a/a/d/j;

    iget-object v1, v1, Lorg/c/a/a/c/a/a/d/j;->c:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/e/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lorg/c/a/a/b/d/b/q;

    iget-object v1, p0, Lorg/c/a/a/c/a/a/d/o;->a:Lorg/c/a/a/c/a/a/d/j;

    iget-object v1, v1, Lorg/c/a/a/c/a/a/d/j;->c:Lorg/c/a/a/b/d/e/i;

    new-instance v2, Lorg/c/a/a/b/d/b/ae;

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/b/b/b;->e()I

    move-result v3

    iget-object v4, p0, Lorg/c/a/a/c/a/a/d/o;->a:Lorg/c/a/a/c/a/a/d/j;

    iget-object v4, v4, Lorg/c/a/a/c/a/a/d/j;->c:Lorg/c/a/a/b/d/e/i;

    invoke-direct {v2, v3, v4}, Lorg/c/a/a/b/d/b/ae;-><init>(ILorg/c/a/a/b/d/e/i;)V

    iget-object v3, p0, Lorg/c/a/a/c/a/a/d/o;->a:Lorg/c/a/a/c/a/a/d/j;

    iget-object v3, v3, Lorg/c/a/a/c/a/a/d/j;->c:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v3}, Lorg/c/a/a/b/d/e/i;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "this"

    iget-object v5, p0, Lorg/c/a/a/c/a/a/d/o;->a:Lorg/c/a/a/c/a/a/d/j;

    iget-object v5, v5, Lorg/c/a/a/c/a/a/d/j;->c:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v5}, Lorg/c/a/a/b/d/e/i;->e()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/d/b/q;-><init>(Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/d/b/q;->a(Lorg/c/a/a/b/d/b/n;)V

    goto/16 :goto_1e

    :cond_e2
    const-class v1, Lorg/c/a/a/b/d/b/al;

    if-ne v0, v1, :cond_1e

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/q;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "this$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/q;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/a/b/d/e/l;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/d/o;->a:Lorg/c/a/a/c/a/a/d/j;

    iget-object v1, v1, Lorg/c/a/a/c/a/a/d/j;->c:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/e/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lorg/c/a/a/b/d/b/ae;

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/q;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v1

    iget-object v2, p0, Lorg/c/a/a/c/a/a/d/o;->a:Lorg/c/a/a/c/a/a/d/j;

    iget-object v2, v2, Lorg/c/a/a/c/a/a/d/j;->c:Lorg/c/a/a/b/d/e/i;

    invoke-direct {v0, v1, v2}, Lorg/c/a/a/b/d/b/ae;-><init>(ILorg/c/a/a/b/d/e/i;)V

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/d/b/q;->a(Lorg/c/a/a/b/d/b/n;)V

    const-string v0, "this"

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/d/b/q;->a(Ljava/lang/String;)V

    goto/16 :goto_1e
.end method

.method protected a(Lorg/c/a/a/d/c;)V
    .registers 4

    invoke-virtual {p1}, Lorg/c/a/a/d/c;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/n;

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/d/o;->a(Lorg/c/a/a/b/d/b/n;)Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_4
.end method
