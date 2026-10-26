.class public Lorg/c/a/a/b/d/b/r;
.super Lorg/c/a/a/b/d/b/c;


# instance fields
.field protected a:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    sget-object v0, Lorg/c/a/a/b/d/e/k;->e:Lorg/c/a/a/b/d/e/k;

    invoke-direct {p0, v0}, Lorg/c/a/a/b/d/b/c;-><init>(Lorg/c/a/a/b/d/e/l;)V

    iput p1, p0, Lorg/c/a/a/b/d/b/r;->a:F

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    sget-object v0, Lorg/c/a/a/b/d/e/k;->e:Lorg/c/a/a/b/d/e/k;

    invoke-direct {p0, p1, v0}, Lorg/c/a/a/b/d/b/c;-><init>(ILorg/c/a/a/b/d/e/l;)V

    iput p2, p0, Lorg/c/a/a/b/d/b/r;->a:F

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/o;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/b/o;->a(Lorg/c/a/a/b/d/b/r;)V

    return-void
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lorg/c/a/a/b/d/b/r;->a:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FloatConstantExpression{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/c/a/a/b/d/b/r;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
