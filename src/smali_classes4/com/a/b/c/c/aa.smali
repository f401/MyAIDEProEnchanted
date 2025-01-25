.class public final Lcom/a/b/c/c/aa;
.super Lcom/a/b/c/c/aj;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/n;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/c/c/aj;-><init>(Lcom/a/b/e/c/x;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/a/b/c/c/ah;
    .registers 2

    sget-object v0, Lcom/a/b/c/c/ah;->e:Lcom/a/b/c/c/ah;

    return-object v0
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/a/b/c/c/aj;->a(Lcom/a/b/c/c/t;)V

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->j()Lcom/a/b/c/c/be;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/b/c/c/aa;->c()Lcom/a/b/e/c/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/c/n;->a()Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/be;->a(Lcom/a/b/e/d/c;)Lcom/a/b/c/c/bd;

    return-void
.end method

.method protected b(Lcom/a/b/c/c/t;)I
    .registers 4

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->j()Lcom/a/b/c/c/be;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/b/c/c/aa;->c()Lcom/a/b/e/c/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/c/n;->a()Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/be;->b(Lcom/a/b/e/d/c;)I

    move-result v0

    return v0
.end method

.method public c()Lcom/a/b/e/c/n;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/c/c/aa;->j()Lcom/a/b/e/c/x;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/n;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    const-string v0, "type_idx"

    return-object v0
.end method
