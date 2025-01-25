.class public final Lcom/a/b/e/b/ag;
.super Lcom/a/b/e/b/j;


# instance fields
.field private final a:Lcom/a/b/e/d/e;


# direct methods
.method public constructor <init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/a/b/e/b/j;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-virtual {p1}, Lcom/a/b/e/b/aa;->d()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_24

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

    :cond_24
    if-nez p4, :cond_2e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "catches == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    iput-object p4, p0, Lcom/a/b/e/b/ag;->a:Lcom/a/b/e/d/e;

    return-void
.end method

.method public static a(Lcom/a/b/e/d/e;)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "catch"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/a/b/e/d/e;->d_()I

    move-result v2

    const/4 v0, 0x0

    :goto_11
    if-lt v0, v2, :cond_18

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v0}, Lcom/a/b/e/d/e;->a(I)Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method


# virtual methods
.method public a(Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)Lcom/a/b/e/b/j;
    .registers 7

    new-instance v0, Lcom/a/b/e/b/ag;

    invoke-virtual {p0}, Lcom/a/b/e/b/ag;->f()Lcom/a/b/e/b/aa;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/e/b/ag;->g()Lcom/a/b/e/b/ad;

    move-result-object v2

    iget-object v3, p0, Lcom/a/b/e/b/ag;->a:Lcom/a/b/e/d/e;

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/a/b/e/b/ag;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;)V

    return-object v0
.end method

.method public a(Lcom/a/b/e/d/c;)Lcom/a/b/e/b/j;
    .registers 7

    new-instance v0, Lcom/a/b/e/b/ag;

    invoke-virtual {p0}, Lcom/a/b/e/b/ag;->f()Lcom/a/b/e/b/aa;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/e/b/ag;->g()Lcom/a/b/e/b/ad;

    move-result-object v2

    invoke-virtual {p0}, Lcom/a/b/e/b/ag;->j()Lcom/a/b/e/b/x;

    move-result-object v3

    iget-object v4, p0, Lcom/a/b/e/b/ag;->a:Lcom/a/b/e/d/e;

    invoke-interface {v4, p1}, Lcom/a/b/e/d/e;->a(Lcom/a/b/e/d/c;)Lcom/a/b/e/d/e;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a/b/e/b/ag;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/ag;->a:Lcom/a/b/e/d/e;

    invoke-static {v0}, Lcom/a/b/e/b/ag;->a(Lcom/a/b/e/d/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/b/e/b/l;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/a/b/e/b/l;->a(Lcom/a/b/e/b/ag;)V

    return-void
.end method

.method public b()Lcom/a/b/e/d/e;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/ag;->a:Lcom/a/b/e/d/e;

    return-object v0
.end method
