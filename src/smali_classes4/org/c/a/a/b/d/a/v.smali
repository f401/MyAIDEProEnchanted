.class public Lorg/c/a/a/b/d/a/v;
.super Lorg/c/a/a/b/d/a/ai;


# instance fields
.field protected b:Lorg/c/a/a/b/d/e/f;

.field protected c:Lorg/c/a/a/b/d/e/d;

.field protected d:Lorg/c/a/a/b/d/a/i;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/c/d;ILjava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/f;Lorg/c/a/a/b/d/e/d;Lorg/c/a/a/b/d/a/i;)V
    .registers 8

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/c/a/a/b/d/a/ai;-><init>(Lorg/c/a/a/b/d/c/d;ILjava/lang/String;Ljava/lang/String;)V

    iput-object p5, p0, Lorg/c/a/a/b/d/a/v;->b:Lorg/c/a/a/b/d/e/f;

    iput-object p6, p0, Lorg/c/a/a/b/d/a/v;->c:Lorg/c/a/a/b/d/e/d;

    iput-object p7, p0, Lorg/c/a/a/b/d/a/v;->d:Lorg/c/a/a/b/d/a/i;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/a/m;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/a/m;->a(Lorg/c/a/a/b/d/a/v;)V

    return-void
.end method

.method public b()Lorg/c/a/a/b/d/e/f;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/v;->b:Lorg/c/a/a/b/d/e/f;

    return-object v0
.end method

.method public e()Lorg/c/a/a/b/d/a/i;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/v;->d:Lorg/c/a/a/b/d/a/i;

    return-object v0
.end method

.method public n_()Lorg/c/a/a/b/d/e/d;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/v;->c:Lorg/c/a/a/b/d/e/d;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InterfaceDeclaration{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/a/v;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
