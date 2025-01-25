.class public Lorg/c/a/a/b/d/b/u;
.super Lorg/c/a/a/b/d/b/a;


# instance fields
.field protected d:Lorg/c/a/a/b/d/e/l;

.field protected e:Ljava/util/List;


# direct methods
.method public constructor <init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/e/l;Ljava/util/List;Lorg/c/a/a/b/d/d/b;)V
    .registers 6

    invoke-direct {p0, p1, p2, p5}, Lorg/c/a/a/b/d/b/a;-><init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/d/b;)V

    iput-object p3, p0, Lorg/c/a/a/b/d/b/u;->d:Lorg/c/a/a/b/d/e/l;

    iput-object p4, p0, Lorg/c/a/a/b/d/b/u;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/o;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/b/o;->a(Lorg/c/a/a/b/d/b/u;)V

    return-void
.end method

.method public g()Lorg/c/a/a/b/d/e/l;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/u;->d:Lorg/c/a/a/b/d/e/l;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/u;->e:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LambdaIdentifiersExpression{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/b/u;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/b/d/b/u;->a:Lorg/c/a/a/b/d/d/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
