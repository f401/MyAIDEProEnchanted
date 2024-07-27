.class public final Lcom/a/b/c/b/x;
.super Lcom/a/b/c/b/ao;


# instance fields
.field private final a:Lcom/a/b/e/b/u;


# direct methods
.method public constructor <init>(Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/a/b/c/b/ao;-><init>(Lcom/a/b/e/b/ad;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "local == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/a/b/c/b/x;->a:Lcom/a/b/e/b/u;

    return-void
.end method

.method public static a(Lcom/a/b/e/b/u;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/e/b/u;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/o;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/a/b/e/d/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/a/b/e/b/x;)Lcom/a/b/c/b/l;
    .registers 5

    new-instance v0, Lcom/a/b/c/b/x;

    invoke-virtual {p0}, Lcom/a/b/c/b/x;->k()Lcom/a/b/e/b/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/c/b/x;->a:Lcom/a/b/e/b/u;

    invoke-direct {v0, v1, v2}, Lcom/a/b/c/b/x;-><init>(Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;)V

    return-object v0
.end method

.method public a(Lcom/a/b/f/ag;)Lcom/a/b/c/b/l;
    .registers 5

    new-instance v0, Lcom/a/b/c/b/x;

    invoke-virtual {p0}, Lcom/a/b/c/b/x;->k()Lcom/a/b/e/b/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/c/b/x;->a:Lcom/a/b/e/b/u;

    invoke-virtual {p1, v2}, Lcom/a/b/f/ag;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/a/b/c/b/x;-><init>(Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;)V

    return-object v0
.end method

.method protected a(Z)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "local-start "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/a/b/c/b/x;->a:Lcom/a/b/e/b/u;

    invoke-static {v1}, Lcom/a/b/c/b/x;->a(Lcom/a/b/e/b/u;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/x;->a:Lcom/a/b/e/b/u;

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/a/b/e/b/u;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/x;->a:Lcom/a/b/e/b/u;

    return-object v0
.end method

.method public d(I)Lcom/a/b/c/b/l;
    .registers 5

    new-instance v0, Lcom/a/b/c/b/x;

    invoke-virtual {p0}, Lcom/a/b/c/b/x;->k()Lcom/a/b/e/b/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/c/b/x;->a:Lcom/a/b/e/b/u;

    invoke-virtual {v2, p1}, Lcom/a/b/e/b/u;->c(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/a/b/c/b/x;-><init>(Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;)V

    return-object v0
.end method
