.class public final Lcom/a/b/e/b/ae;
.super Lcom/a/b/e/b/j;


# instance fields
.field private final a:Lcom/a/b/g/n;


# direct methods
.method public constructor <init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;Lcom/a/b/g/n;)V
    .registers 8

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/b/e/b/j;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-virtual {p1}, Lcom/a/b/e/b/aa;->d()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus branchingness"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    if-nez p5, :cond_1c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cases == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iput-object p5, p0, Lcom/a/b/e/b/ae;->a:Lcom/a/b/g/n;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)Lcom/a/b/e/b/j;
    .registers 9

    new-instance v0, Lcom/a/b/e/b/ae;

    invoke-virtual {p0}, Lcom/a/b/e/b/ae;->f()Lcom/a/b/e/b/aa;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/e/b/ae;->g()Lcom/a/b/e/b/ad;

    move-result-object v2

    iget-object v5, p0, Lcom/a/b/e/b/ae;->a:Lcom/a/b/g/n;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/a/b/e/b/ae;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;Lcom/a/b/g/n;)V

    return-object v0
.end method

.method public a(Lcom/a/b/e/d/c;)Lcom/a/b/e/b/j;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/ae;->a:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/b/e/b/l;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/a/b/e/b/l;->a(Lcom/a/b/e/b/ae;)V

    return-void
.end method

.method public a(Lcom/a/b/e/b/j;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/a/b/e/d/e;
    .registers 2

    sget-object v0, Lcom/a/b/e/d/b;->a:Lcom/a/b/e/d/b;

    return-object v0
.end method

.method public c()Lcom/a/b/g/n;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/ae;->a:Lcom/a/b/g/n;

    return-object v0
.end method
