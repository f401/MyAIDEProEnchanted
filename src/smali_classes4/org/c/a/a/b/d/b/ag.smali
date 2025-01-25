.class public Lorg/c/a/a/b/d/b/ag;
.super Lorg/c/a/a/b/d/b/b;


# instance fields
.field protected a:Ljava/lang/String;

.field protected c:Lorg/c/a/a/b/d/b/n;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/c/a/a/b/d/b/n;)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/c/a/a/b/d/b/b;-><init>(I)V

    iput-object p2, p0, Lorg/c/a/a/b/d/b/ag;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/c/a/a/b/d/b/ag;->c:Lorg/c/a/a/b/d/b/n;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/n;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/b/ag;->c:Lorg/c/a/a/b/d/b/n;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/b/o;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/b/o;->a(Lorg/c/a/a/b/d/b/ag;)V

    return-void
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/ag;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lorg/c/a/a/b/d/e/l;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/ag;->c:Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/n;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v0

    return-object v0
.end method

.method public g()Lorg/c/a/a/b/d/b/n;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/ag;->c:Lorg/c/a/a/b/d/b/n;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PreOperatorExpression{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/b/ag;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/b/d/b/ag;->c:Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
