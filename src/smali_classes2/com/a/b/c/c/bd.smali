.class public final Lcom/a/b/c/c/bd;
.super Lcom/a/b/c/c/ae;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/ae;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/c/c/ae;-><init>(Lcom/a/b/e/c/ae;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/a/b/c/c/ah;
    .registers 2

    sget-object v0, Lcom/a/b/c/c/ah;->c:Lcom/a/b/c/c/ah;

    return-object v0
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 4

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->g()Lcom/a/b/c/c/bc;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/b/c/c/bd;->e()Lcom/a/b/e/c/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/c/ae;->j()Lcom/a/b/e/c/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/bc;->a(Lcom/a/b/e/c/ad;)Lcom/a/b/c/c/bb;

    return-void
.end method

.method public a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 8

    invoke-virtual {p0}, Lcom/a/b/c/c/bd;->e()Lcom/a/b/e/c/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/ae;->j()Lcom/a/b/e/c/ad;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->g()Lcom/a/b/c/c/bc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/b/c/c/bc;->b(Lcom/a/b/e/c/ad;)I

    move-result v1

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/c/c/bd;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    const/4 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  descriptor_idx: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v1}, Lcom/a/b/g/a;->d(I)V

    return-void
.end method

.method public e_()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method
