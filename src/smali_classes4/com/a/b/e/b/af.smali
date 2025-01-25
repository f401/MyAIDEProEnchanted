.class public final Lcom/a/b/e/b/af;
.super Lcom/a/b/e/b/f;


# instance fields
.field private final a:Lcom/a/b/e/d/e;


# direct methods
.method public constructor <init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;Lcom/a/b/e/c/a;)V
    .registers 12

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/a/b/e/b/f;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;Lcom/a/b/e/c/a;)V

    invoke-virtual {p1}, Lcom/a/b/e/b/aa;->d()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "opcode with invalid branchingness: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/a/b/e/b/aa;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    if-nez p4, :cond_33

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "catches == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    iput-object p4, p0, Lcom/a/b/e/b/af;->a:Lcom/a/b/e/d/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)Lcom/a/b/e/b/j;
    .registers 9

    new-instance v0, Lcom/a/b/e/b/af;

    invoke-virtual {p0}, Lcom/a/b/e/b/af;->f()Lcom/a/b/e/b/aa;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/e/b/af;->g()Lcom/a/b/e/b/ad;

    move-result-object v2

    iget-object v4, p0, Lcom/a/b/e/b/af;->a:Lcom/a/b/e/d/e;

    invoke-virtual {p0}, Lcom/a/b/e/b/af;->g_()Lcom/a/b/e/c/a;

    move-result-object v5

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/a/b/e/b/af;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;Lcom/a/b/e/c/a;)V

    return-object v0
.end method

.method public a(Lcom/a/b/e/d/c;)Lcom/a/b/e/b/j;
    .registers 8

    new-instance v0, Lcom/a/b/e/b/af;

    invoke-virtual {p0}, Lcom/a/b/e/b/af;->f()Lcom/a/b/e/b/aa;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/e/b/af;->g()Lcom/a/b/e/b/ad;

    move-result-object v2

    invoke-virtual {p0}, Lcom/a/b/e/b/af;->j()Lcom/a/b/e/b/x;

    move-result-object v3

    iget-object v4, p0, Lcom/a/b/e/b/af;->a:Lcom/a/b/e/d/e;

    invoke-interface {v4, p1}, Lcom/a/b/e/d/e;->a(Lcom/a/b/e/d/c;)Lcom/a/b/e/d/e;

    move-result-object v4

    invoke-virtual {p0}, Lcom/a/b/e/b/af;->g_()Lcom/a/b/e/c/a;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/a/b/e/b/af;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;Lcom/a/b/e/c/a;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/e/b/af;->g_()Lcom/a/b/e/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/a;->d()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Lcom/a/b/e/c/ad;

    if-eqz v2, :cond_30

    check-cast v0, Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->i()Ljava/lang/String;

    move-result-object v0

    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/e/b/af;->a:Lcom/a/b/e/d/e;

    invoke-static {v1}, Lcom/a/b/e/b/ag;->a(Lcom/a/b/e/d/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_30
    move-object v0, v1

    goto :goto_12
.end method

.method public a(Lcom/a/b/e/b/l;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/a/b/e/b/l;->a(Lcom/a/b/e/b/af;)V

    return-void
.end method

.method public b()Lcom/a/b/e/d/e;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/af;->a:Lcom/a/b/e/d/e;

    return-object v0
.end method
