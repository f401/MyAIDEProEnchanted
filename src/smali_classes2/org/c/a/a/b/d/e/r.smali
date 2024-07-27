.class public Lorg/c/a/a/b/d/e/r;
.super Lorg/c/a/a/b/d/e/q;


# instance fields
.field protected b:Lorg/c/a/a/b/d/e/o;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/c/a/a/b/d/e/o;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/c/a/a/b/d/e/q;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/c/a/a/b/d/e/r;->b:Lorg/c/a/a/b/d/e/o;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/e/u;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/e/u;->a(Lorg/c/a/a/b/d/e/r;)V

    return-void
.end method

.method public e()Lorg/c/a/a/b/d/e/o;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/e/r;->b:Lorg/c/a/a/b/d/e/o;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TypeParameter{identifier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/e/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typeBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/b/d/e/r;->b:Lorg/c/a/a/b/d/e/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
