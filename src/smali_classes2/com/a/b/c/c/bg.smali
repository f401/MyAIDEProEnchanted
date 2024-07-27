.class public abstract Lcom/a/b/c/c/bg;
.super Lcom/a/b/c/c/ax;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/a/b/c/c/t;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/a/b/c/c/ax;-><init>(Ljava/lang/String;Lcom/a/b/c/c/t;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/b/c/c/ag;)I
    .registers 4

    check-cast p1, Lcom/a/b/c/c/af;

    invoke-virtual {p1}, Lcom/a/b/c/c/af;->g()I

    move-result v0

    invoke-virtual {p1}, Lcom/a/b/c/c/af;->e_()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/a/b/c/c/bg;->c(I)I

    move-result v0

    return v0
.end method

.method protected abstract a()V
.end method

.method protected final a_(Lcom/a/b/g/a;)V
    .registers 6

    invoke-virtual {p0}, Lcom/a/b/c/c/bg;->f()Lcom/a/b/c/c/t;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/c/c/bg;->g()I

    move-result v2

    invoke-virtual {p0}, Lcom/a/b/c/c/bg;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/ag;

    invoke-virtual {v0, v1, p1}, Lcom/a/b/c/c/ag;->a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V

    invoke-interface {p1, v2}, Lcom/a/b/g/a;->h(I)V

    goto :goto_0
.end method

.method protected final c()V
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/c/c/bg;->f()Lcom/a/b/c/c/t;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/c/c/bg;->a()V

    invoke-virtual {p0}, Lcom/a/b/c/c/bg;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/ag;

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/ag;->a(Lcom/a/b/c/c/t;)V

    goto :goto_0
.end method

.method public final f_()I
    .registers 3

    invoke-virtual {p0}, Lcom/a/b/c/c/bg;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/ag;

    invoke-virtual {v0}, Lcom/a/b/c/c/ag;->e_()I

    move-result v0

    mul-int/2addr v0, v1

    goto :goto_0
.end method
