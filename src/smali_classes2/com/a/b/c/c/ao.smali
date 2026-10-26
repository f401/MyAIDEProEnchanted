.class public final Lcom/a/b/c/c/ao;
.super Lcom/a/b/c/c/aj;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/b/c/c/aj;-><init>(Lcom/a/b/e/c/x;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/a/b/c/c/ah;
    .locals 1

    sget-object v0, Lcom/a/b/c/c/ah;->f:Lcom/a/b/c/c/ah;

    return-object v0
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/a/b/c/c/aj;->a(Lcom/a/b/c/c/t;)V

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->k()Lcom/a/b/c/c/aw;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/b/c/c/ao;->c()Lcom/a/b/e/c/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/c/f;->i()Lcom/a/b/e/d/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/aw;->a(Lcom/a/b/e/d/a;)Lcom/a/b/c/c/av;

    return-void
.end method

.method protected b(Lcom/a/b/c/c/t;)I
    .locals 2

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->k()Lcom/a/b/c/c/aw;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/b/c/c/ao;->c()Lcom/a/b/e/c/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/c/f;->i()Lcom/a/b/e/d/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/aw;->b(Lcom/a/b/e/d/a;)I

    move-result v0

    return v0
.end method

.method public c()Lcom/a/b/e/c/f;
    .locals 1

    invoke-virtual {p0}, Lcom/a/b/c/c/ao;->j()Lcom/a/b/e/c/x;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/f;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "proto_idx"

    return-object v0
.end method
