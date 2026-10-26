.class public Lorg/c/a/a/b/d/b/ai;
.super Lorg/c/a/a/b/d/b/k;


# instance fields
.field protected a:Lorg/c/a/a/b/d/b/f;


# direct methods
.method public constructor <init>(ILorg/c/a/a/b/d/e/i;Ljava/lang/String;Lorg/c/a/a/b/d/b/f;)V
    .locals 1

    sget-object v0, Lorg/c/a/a/b/d/e/k;->i:Lorg/c/a/a/b/d/e/k;

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/c/a/a/b/d/b/k;-><init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/e/i;Ljava/lang/String;)V

    iput-object p4, p0, Lorg/c/a/a/b/d/b/ai;->a:Lorg/c/a/a/b/d/b/f;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/f;)V
    .locals 0

    iput-object p1, p0, Lorg/c/a/a/b/d/b/ai;->a:Lorg/c/a/a/b/d/b/f;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/b/o;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/b/o;->a(Lorg/c/a/a/b/d/b/ai;)V

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Lorg/c/a/a/b/d/b/f;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/d/b/ai;->a:Lorg/c/a/a/b/d/b/f;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SuperConstructorInvocationExpression{call super("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/b/ai;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
