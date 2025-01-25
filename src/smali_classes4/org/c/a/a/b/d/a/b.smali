.class public Lorg/c/a/a/b/d/a/b;
.super Lorg/c/a/a/b/d/a/ai;


# instance fields
.field protected a:Lorg/c/a/a/b/d/a/d;

.field protected b:Lorg/c/a/a/b/d/a/i;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/c/d;ILjava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/a/d;Lorg/c/a/a/b/d/a/i;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/c/a/a/b/d/a/ai;-><init>(Lorg/c/a/a/b/d/c/d;ILjava/lang/String;Ljava/lang/String;)V

    iput-object p5, p0, Lorg/c/a/a/b/d/a/b;->a:Lorg/c/a/a/b/d/a/d;

    iput-object p6, p0, Lorg/c/a/a/b/d/a/b;->b:Lorg/c/a/a/b/d/a/i;

    return-void
.end method


# virtual methods
.method public a()Lorg/c/a/a/b/d/a/d;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/b;->a:Lorg/c/a/a/b/d/a/d;

    return-object v0
.end method

.method public a(Lorg/c/a/a/b/d/a/m;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/a/m;->a(Lorg/c/a/a/b/d/a/b;)V

    return-void
.end method

.method public b()Lorg/c/a/a/b/d/a/i;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/b;->b:Lorg/c/a/a/b/d/a/i;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnnotationDeclaration{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/a/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
