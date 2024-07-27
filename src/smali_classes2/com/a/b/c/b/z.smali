.class public final Lcom/a/b/c/b/z;
.super Lcom/a/b/c/b/an;


# direct methods
.method public constructor <init>(Lcom/a/b/e/b/ad;)V
    .registers 3

    sget-object v0, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {p0, p1, v0}, Lcom/a/b/c/b/an;-><init>(Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/c/b/z;->i()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public a(Lcom/a/b/e/b/x;)Lcom/a/b/c/b/l;
    .registers 4

    new-instance v0, Lcom/a/b/c/b/z;

    invoke-virtual {p0}, Lcom/a/b/c/b/z;->k()Lcom/a/b/e/b/ad;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/c/b/z;-><init>(Lcom/a/b/e/b/ad;)V

    return-object v0
.end method

.method protected a(Z)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/a/b/c/b/z;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "nop // spacer"

    goto :goto_0
.end method

.method public a(Lcom/a/b/g/a;)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/a/b/c/b/z;->a()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1, v1}, Lcom/a/b/c/b/r;->a(II)S

    move-result v0

    invoke-interface {p1, v0}, Lcom/a/b/g/a;->c(I)V

    :cond_0
    return-void
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
