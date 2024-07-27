.class public Lorg/c/a/a/b/d/c/a;
.super Lorg/c/a/a/b/d/c/b;

# interfaces
.implements Lorg/c/a/a/b/d/c/g;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/c/b;)V
    .registers 5

    invoke-virtual {p1}, Lorg/c/a/a/b/d/c/b;->d()Lorg/c/a/a/b/d/e/i;

    move-result-object v0

    invoke-virtual {p1}, Lorg/c/a/a/b/d/c/b;->e()Lorg/c/a/a/b/d/c/g;

    move-result-object v1

    invoke-virtual {p1}, Lorg/c/a/a/b/d/c/b;->f()Lorg/c/a/a/b/d/c/f;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/c/a/a/b/d/c/b;-><init>(Lorg/c/a/a/b/d/e/i;Lorg/c/a/a/b/d/c/g;Lorg/c/a/a/b/d/c/f;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/c/o;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/c/o;->a(Lorg/c/a/a/b/d/c/a;)V

    return-void
.end method

.method public b()Lorg/c/a/a/b/d/c/g;
    .registers 1

    return-object p0
.end method

.method public synthetic h()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/c/a/a/b/d/c/a;->b()Lorg/c/a/a/b/d/c/g;

    move-result-object v0

    return-object v0
.end method

.method public j_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public l_()Lorg/c/a/a/d/c;
    .registers 2

    invoke-static {p0}, Lorg/c/a/a/d/b;->b(Lorg/c/a/a/d/a;)Lorg/c/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnnotationElementValue{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/c/a;->a:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", elementValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/b/d/c/a;->b:Lorg/c/a/a/b/d/c/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", elementValuePairs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/b/d/c/a;->c:Lorg/c/a/a/b/d/c/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
