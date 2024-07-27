.class public Lorg/c/a/a/b/d/b/aa;
.super Lorg/c/a/a/b/d/b/c;


# instance fields
.field protected a:Lorg/c/a/a/b/d/b/f;


# direct methods
.method public constructor <init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/f;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/c/a/a/b/d/b/c;-><init>(ILorg/c/a/a/b/d/e/l;)V

    iput-object p3, p0, Lorg/c/a/a/b/d/b/aa;->a:Lorg/c/a/a/b/d/b/f;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/f;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/b/aa;->a:Lorg/c/a/a/b/d/b/f;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/b/o;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/b/o;->a(Lorg/c/a/a/b/d/b/aa;)V

    return-void
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public d()Lorg/c/a/a/b/d/b/f;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/aa;->a:Lorg/c/a/a/b/d/b/f;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NewArray{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/b/aa;->c:Lorg/c/a/a/b/d/e/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
