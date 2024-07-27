.class public Lorg/c/a/a/b/d/b/aj;
.super Lorg/c/a/a/b/d/b/b;


# instance fields
.field protected a:Lorg/c/a/a/b/d/e/i;


# direct methods
.method public constructor <init>(ILorg/c/a/a/b/d/e/i;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/c/a/a/b/d/b/b;-><init>(I)V

    iput-object p2, p0, Lorg/c/a/a/b/d/b/aj;->a:Lorg/c/a/a/b/d/e/i;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/o;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/b/o;->a(Lorg/c/a/a/b/d/b/aj;)V

    return-void
.end method

.method public f()Lorg/c/a/a/b/d/e/l;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/aj;->a:Lorg/c/a/a/b/d/e/i;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SuperExpression{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/b/aj;->a:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
