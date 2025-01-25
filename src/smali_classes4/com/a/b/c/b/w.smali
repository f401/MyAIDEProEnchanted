.class public final Lcom/a/b/c/b/w;
.super Lcom/a/b/c/b/ao;


# instance fields
.field private final a:Lcom/a/b/e/b/z;


# direct methods
.method public constructor <init>(Lcom/a/b/e/b/ad;Lcom/a/b/e/b/z;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/a/b/c/b/ao;-><init>(Lcom/a/b/e/b/ad;)V

    if-nez p2, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locals == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p2, p0, Lcom/a/b/c/b/w;->a:Lcom/a/b/e/b/z;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/e/b/x;)Lcom/a/b/c/b/l;
    .registers 5

    new-instance v0, Lcom/a/b/c/b/w;

    invoke-virtual {p0}, Lcom/a/b/c/b/w;->k()Lcom/a/b/e/b/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/c/b/w;->a:Lcom/a/b/e/b/z;

    invoke-direct {v0, v1, v2}, Lcom/a/b/c/b/w;-><init>(Lcom/a/b/e/b/ad;Lcom/a/b/e/b/z;)V

    return-object v0
.end method

.method public a(Lcom/a/b/f/ag;)Lcom/a/b/c/b/l;
    .registers 5

    new-instance v0, Lcom/a/b/c/b/w;

    invoke-virtual {p0}, Lcom/a/b/c/b/w;->k()Lcom/a/b/e/b/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/c/b/w;->a:Lcom/a/b/e/b/z;

    invoke-virtual {p1, v2}, Lcom/a/b/f/ag;->a(Lcom/a/b/e/b/z;)Lcom/a/b/e/b/z;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/a/b/c/b/w;-><init>(Lcom/a/b/e/b/ad;Lcom/a/b/e/b/z;)V

    return-object v0
.end method

.method protected a(Z)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/a/b/c/b/w;->a:Lcom/a/b/e/b/z;

    invoke-virtual {v0}, Lcom/a/b/e/b/z;->d()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/c/b/w;->a:Lcom/a/b/e/b/z;

    invoke-virtual {v1}, Lcom/a/b/e/b/z;->b()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x28

    add-int/lit8 v0, v0, 0x64

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "local-snapshot"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_1b
    if-lt v0, v1, :cond_22

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    iget-object v3, p0, Lcom/a/b/c/b/w;->a:Lcom/a/b/e/b/z;

    invoke-virtual {v3, v0}, Lcom/a/b/e/b/z;->a(I)Lcom/a/b/e/b/u;

    move-result-object v3

    if-eqz v3, :cond_36

    const-string v4, "\n  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/a/b/c/b/x;->a(Lcom/a/b/e/b/u;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/w;->a:Lcom/a/b/e/b/z;

    invoke-virtual {v0}, Lcom/a/b/e/b/z;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/a/b/e/b/z;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/w;->a:Lcom/a/b/e/b/z;

    return-object v0
.end method

.method public d(I)Lcom/a/b/c/b/l;
    .registers 5

    new-instance v0, Lcom/a/b/c/b/w;

    invoke-virtual {p0}, Lcom/a/b/c/b/w;->k()Lcom/a/b/e/b/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/c/b/w;->a:Lcom/a/b/e/b/z;

    invoke-virtual {v2, p1}, Lcom/a/b/e/b/z;->b(I)Lcom/a/b/e/b/z;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/a/b/c/b/w;-><init>(Lcom/a/b/e/b/ad;Lcom/a/b/e/b/z;)V

    return-object v0
.end method
