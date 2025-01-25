.class public Lorg/c/a/a/c/a/a/a/b/b/b;
.super Lorg/c/a/a/b/d/b/w;

# interfaces
.implements Lorg/c/a/a/c/a/a/a/c/g;


# instance fields
.field protected d:Lorg/c/a/a/c/a/a/a/c/a;


# direct methods
.method public constructor <init>(ILorg/c/a/a/c/a/a/a/c/a;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/c/a/a/b/d/b/w;-><init>(ILorg/c/a/a/b/d/e/l;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/b/b/b;->d:Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {p2, p0}, Lorg/c/a/a/c/a/a/a/c/a;->a(Lorg/c/a/a/c/a/a/a/c/g;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/c/a/a/a/c/a;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/b/b/b;->d:Lorg/c/a/a/c/a/a/a/c/a;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/b/b;->d:Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lorg/c/a/a/b/d/e/l;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/b/b;->d:Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v0

    return-object v0
.end method

.method public g()Lorg/c/a/a/c/a/a/a/c/a;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/b/b;->d:Lorg/c/a/a/c/a/a/a/c/a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClassFileLocalVariableReferenceExpression{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/b/b;->d:Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/b/b;->d:Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->g()Ljava/lang/String;

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
