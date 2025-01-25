.class public final Lcom/a/b/e/c/n;
.super Lcom/a/b/e/c/x;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/aa;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/a/b/e/c/x;-><init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/aa;)V

    return-void
.end method

.method public static a(Lcom/a/b/e/d/c;)Lcom/a/b/e/c/n;
    .registers 4

    new-instance v0, Lcom/a/b/e/c/n;

    invoke-static {p0}, Lcom/a/b/e/c/ae;->a(Lcom/a/b/e/d/c;)Lcom/a/b/e/c/ae;

    move-result-object v1

    sget-object v2, Lcom/a/b/e/c/aa;->a:Lcom/a/b/e/c/aa;

    invoke-direct {v0, v1, v2}, Lcom/a/b/e/c/n;-><init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/aa;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/a/b/e/d/c;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/c/n;->o()Lcom/a/b/e/c/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/aa;->c()Lcom/a/b/e/d/c;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/a/b/e/c/a;)I
    .registers 4

    invoke-super {p0, p1}, Lcom/a/b/e/c/x;->b(Lcom/a/b/e/c/a;)I

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return v0

    :cond_7
    check-cast p1, Lcom/a/b/e/c/n;

    invoke-virtual {p0}, Lcom/a/b/e/c/n;->o()Lcom/a/b/e/c/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/aa;->b()Lcom/a/b/e/c/ad;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/e/c/n;->o()Lcom/a/b/e/c/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/c/aa;->b()Lcom/a/b/e/c/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/ad;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    goto :goto_6
.end method

.method public h()Ljava/lang/String;
    .registers 2

    const-string v0, "field"

    return-object v0
.end method
