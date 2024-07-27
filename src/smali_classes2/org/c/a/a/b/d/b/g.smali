.class public Lorg/c/a/a/b/d/b/g;
.super Lorg/c/a/a/b/d/b/c;


# instance fields
.field protected a:Lorg/c/a/a/b/d/b/n;

.field protected d:Ljava/lang/String;

.field protected e:Lorg/c/a/a/b/d/b/n;

.field protected f:I


# direct methods
.method public constructor <init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Ljava/lang/String;Lorg/c/a/a/b/d/b/n;I)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lorg/c/a/a/b/d/b/c;-><init>(ILorg/c/a/a/b/d/e/l;)V

    iput-object p4, p0, Lorg/c/a/a/b/d/b/g;->d:Ljava/lang/String;

    iput-object p3, p0, Lorg/c/a/a/b/d/b/g;->a:Lorg/c/a/a/b/d/b/n;

    iput-object p5, p0, Lorg/c/a/a/b/d/b/g;->e:Lorg/c/a/a/b/d/b/n;

    iput p6, p0, Lorg/c/a/a/b/d/b/g;->f:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/b/g;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/b/n;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/b/g;->a:Lorg/c/a/a/b/d/b/n;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/b/o;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/b/o;->a(Lorg/c/a/a/b/d/b/g;)V

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/d/b/g;->f:I

    return v0
.end method

.method public b(Lorg/c/a/a/b/d/b/n;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/b/g;->e:Lorg/c/a/a/b/d/b/n;

    return-void
.end method

.method public d()Lorg/c/a/a/b/d/b/n;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/g;->a:Lorg/c/a/a/b/d/b/n;

    return-object v0
.end method

.method public g()Lorg/c/a/a/b/d/b/n;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/g;->a:Lorg/c/a/a/b/d/b/n;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lorg/c/a/a/b/d/b/n;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/g;->e:Lorg/c/a/a/b/d/b/n;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BinaryOperatorExpression{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/b/g;->a:Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/b/d/b/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/b/d/b/g;->e:Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
