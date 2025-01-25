.class public final Lcom/a/b/c/c/bf;
.super Lcom/a/b/c/c/at;


# instance fields
.field private final a:Lcom/a/b/e/d/e;


# direct methods
.method public constructor <init>(Lcom/a/b/e/d/e;)V
    .registers 4

    const/4 v0, 0x4

    invoke-interface {p1}, Lcom/a/b/e/d/e;->d_()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/a/b/c/c/at;-><init>(II)V

    iput-object p1, p0, Lcom/a/b/c/c/bf;->a:Lcom/a/b/e/d/e;

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/b/c/c/at;)I
    .registers 4

    iget-object v0, p0, Lcom/a/b/c/c/bf;->a:Lcom/a/b/e/d/e;

    check-cast p1, Lcom/a/b/c/c/bf;

    iget-object v1, p1, Lcom/a/b/c/c/bf;->a:Lcom/a/b/e/d/e;

    invoke-static {v0, v1}, Lcom/a/b/e/d/b;->b(Lcom/a/b/e/d/e;Lcom/a/b/e/d/e;)I

    move-result v0

    return v0
.end method

.method public a()Lcom/a/b/c/c/ah;
    .registers 2

    sget-object v0, Lcom/a/b/c/c/ah;->k:Lcom/a/b/c/c/ah;

    return-object v0
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 6

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->j()Lcom/a/b/c/c/be;

    move-result-object v1

    iget-object v0, p0, Lcom/a/b/c/c/bf;->a:Lcom/a/b/e/d/e;

    invoke-interface {v0}, Lcom/a/b/e/d/e;->d_()I

    move-result v2

    const/4 v0, 0x0

    :goto_b
    if-lt v0, v2, :cond_e

    return-void

    :cond_e
    iget-object v3, p0, Lcom/a/b/c/c/bf;->a:Lcom/a/b/e/d/e;

    invoke-interface {v3, v0}, Lcom/a/b/e/d/e;->a(I)Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/a/b/c/c/be;->a(Lcom/a/b/e/d/c;)Lcom/a/b/c/c/bd;

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method protected a_(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 12

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->j()Lcom/a/b/c/c/be;

    move-result-object v2

    iget-object v1, p0, Lcom/a/b/c/c/bf;->a:Lcom/a/b/e/d/e;

    invoke-interface {v1}, Lcom/a/b/e/d/e;->d_()I

    move-result v3

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v1

    if-eqz v1, :cond_45

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/c/c/bf;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " type_list"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    const/4 v1, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v4}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    move v1, v0

    :goto_43
    if-lt v1, v3, :cond_4b

    :cond_45
    invoke-interface {p2, v3}, Lcom/a/b/g/a;->d(I)V

    :goto_48
    if-lt v0, v3, :cond_7d

    return-void

    :cond_4b
    iget-object v4, p0, Lcom/a/b/c/c/bf;->a:Lcom/a/b/e/d/e;

    invoke-interface {v4, v1}, Lcom/a/b/e/d/e;->a(I)Lcom/a/b/e/d/c;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/a/b/c/c/be;->b(Lcom/a/b/e/d/c;)I

    move-result v5

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " // "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v6, v4}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :cond_7d
    iget-object v1, p0, Lcom/a/b/c/c/bf;->a:Lcom/a/b/e/d/e;

    invoke-interface {v1, v0}, Lcom/a/b/e/d/e;->a(I)Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/a/b/c/c/be;->b(Lcom/a/b/e/d/c;)I

    move-result v1

    invoke-interface {p2, v1}, Lcom/a/b/g/a;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_48
.end method

.method public b()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lcom/a/b/e/d/e;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/bf;->a:Lcom/a/b/e/d/e;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/bf;->a:Lcom/a/b/e/d/e;

    invoke-static {v0}, Lcom/a/b/e/d/b;->b(Lcom/a/b/e/d/e;)I

    move-result v0

    return v0
.end method
