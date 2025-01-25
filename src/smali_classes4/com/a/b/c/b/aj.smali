.class public final Lcom/a/b/c/b/aj;
.super Lcom/a/b/c/b/p;


# direct methods
.method public constructor <init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/a/b/c/b/p;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/c/b/n;)Lcom/a/b/c/b/l;
    .registers 5

    new-instance v0, Lcom/a/b/c/b/aj;

    invoke-virtual {p0}, Lcom/a/b/c/b/aj;->k()Lcom/a/b/e/b/ad;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/c/b/aj;->l()Lcom/a/b/e/b/x;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/a/b/c/b/aj;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V

    return-object v0
.end method

.method public a(Lcom/a/b/e/b/x;)Lcom/a/b/c/b/l;
    .registers 5

    new-instance v0, Lcom/a/b/c/b/aj;

    invoke-virtual {p0}, Lcom/a/b/c/b/aj;->j()Lcom/a/b/c/b/n;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/c/b/aj;->k()Lcom/a/b/e/b/ad;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/a/b/c/b/aj;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
