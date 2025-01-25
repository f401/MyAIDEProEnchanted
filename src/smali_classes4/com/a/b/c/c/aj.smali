.class public abstract Lcom/a/b/c/c/aj;
.super Lcom/a/b/c/c/ae;


# instance fields
.field private final a:Lcom/a/b/e/c/x;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/x;)V
    .registers 3

    invoke-virtual {p1}, Lcom/a/b/e/c/x;->n()Lcom/a/b/e/c/ae;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/b/c/c/ae;-><init>(Lcom/a/b/e/c/ae;)V

    iput-object p1, p0, Lcom/a/b/c/c/aj;->a:Lcom/a/b/e/c/x;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/c/c/t;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/a/b/c/c/ae;->a(Lcom/a/b/c/c/t;)V

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->g()Lcom/a/b/c/c/bc;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/b/c/c/aj;->j()Lcom/a/b/e/c/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/c/x;->o()Lcom/a/b/e/c/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/c/aa;->a()Lcom/a/b/e/c/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/bc;->a(Lcom/a/b/e/c/ad;)Lcom/a/b/c/c/bb;

    return-void
.end method

.method public final a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 12

    const/4 v8, 0x0

    const/4 v7, 0x2

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->j()Lcom/a/b/c/c/be;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->g()Lcom/a/b/c/c/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/c/c/aj;->a:Lcom/a/b/e/c/x;

    invoke-virtual {v2}, Lcom/a/b/e/c/x;->o()Lcom/a/b/e/c/aa;

    move-result-object v2

    invoke-virtual {p0}, Lcom/a/b/c/c/aj;->e()Lcom/a/b/e/c/ae;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/a/b/c/c/be;->b(Lcom/a/b/e/c/ae;)I

    move-result v0

    invoke-virtual {v2}, Lcom/a/b/e/c/aa;->a()Lcom/a/b/e/c/ad;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/b/c/c/bc;->b(Lcom/a/b/e/c/ad;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/a/b/c/c/aj;->b(Lcom/a/b/c/c/t;)I

    move-result v2

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v3

    if-eqz v3, :cond_a6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/c/c/aj;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/a/b/c/c/aj;->a:Lcom/a/b/e/c/x;

    invoke-virtual {v4}, Lcom/a/b/e/c/x;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v8, v3}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  class_idx: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v7, v3}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    const-string v3, "  %-10s %s"

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/c/c/aj;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    invoke-static {v2}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v7, v3}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  name_idx:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_a6
    invoke-interface {p2, v0}, Lcom/a/b/g/a;->c(I)V

    invoke-interface {p2, v2}, Lcom/a/b/g/a;->c(I)V

    invoke-interface {p2, v1}, Lcom/a/b/g/a;->d(I)V

    return-void
.end method

.method protected abstract b(Lcom/a/b/c/c/t;)I
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method public e_()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public final j()Lcom/a/b/e/c/x;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/aj;->a:Lcom/a/b/e/c/x;

    return-object v0
.end method
