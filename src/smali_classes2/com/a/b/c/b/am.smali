.class public final Lcom/a/b/c/b/am;
.super Lcom/a/b/c/b/p;


# instance fields
.field private a:Lcom/a/b/c/b/h;


# direct methods
.method public constructor <init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/c/b/h;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Lcom/a/b/c/b/p;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "target == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p4, p0, Lcom/a/b/c/b/am;->a:Lcom/a/b/c/b/h;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/c/b/h;)Lcom/a/b/c/b/am;
    .registers 6

    new-instance v0, Lcom/a/b/c/b/am;

    invoke-virtual {p0}, Lcom/a/b/c/b/am;->j()Lcom/a/b/c/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/c/b/n;->g()Lcom/a/b/c/b/n;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/c/b/am;->k()Lcom/a/b/e/b/ad;

    move-result-object v2

    invoke-virtual {p0}, Lcom/a/b/c/b/am;->l()Lcom/a/b/e/b/x;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/a/b/c/b/am;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/c/b/h;)V

    return-object v0
.end method

.method public a(Lcom/a/b/c/b/n;)Lcom/a/b/c/b/l;
    .registers 6

    new-instance v0, Lcom/a/b/c/b/am;

    invoke-virtual {p0}, Lcom/a/b/c/b/am;->k()Lcom/a/b/e/b/ad;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/c/b/am;->l()Lcom/a/b/e/b/x;

    move-result-object v2

    iget-object v3, p0, Lcom/a/b/c/b/am;->a:Lcom/a/b/c/b/h;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/a/b/c/b/am;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/c/b/h;)V

    return-object v0
.end method

.method public a(Lcom/a/b/e/b/x;)Lcom/a/b/c/b/l;
    .registers 6

    new-instance v0, Lcom/a/b/c/b/am;

    invoke-virtual {p0}, Lcom/a/b/c/b/am;->j()Lcom/a/b/c/b/n;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/c/b/am;->k()Lcom/a/b/e/b/ad;

    move-result-object v2

    iget-object v3, p0, Lcom/a/b/c/b/am;->a:Lcom/a/b/c/b/h;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/a/b/c/b/am;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/c/b/h;)V

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/am;->a:Lcom/a/b/c/b/h;

    if-nez v0, :cond_0

    const-string v0, "????"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/c/b/am;->a:Lcom/a/b/c/b/h;

    invoke-virtual {v0}, Lcom/a/b/c/b/h;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Lcom/a/b/c/b/h;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/am;->a:Lcom/a/b/c/b/h;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/am;->a:Lcom/a/b/c/b/h;

    invoke-virtual {v0}, Lcom/a/b/c/b/h;->i()I

    move-result v0

    return v0
.end method

.method public e()I
    .registers 3

    iget-object v0, p0, Lcom/a/b/c/b/am;->a:Lcom/a/b/c/b/h;

    invoke-virtual {v0}, Lcom/a/b/c/b/h;->i()I

    move-result v0

    invoke-virtual {p0}, Lcom/a/b/c/b/am;->i()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public q()Z
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/c/b/am;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/c/b/am;->a:Lcom/a/b/c/b/h;

    invoke-virtual {v0}, Lcom/a/b/c/b/h;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
