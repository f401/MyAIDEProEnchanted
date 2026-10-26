.class public Lorg/c/a/a/b/d/b/ak;
.super Lorg/c/a/a/b/d/b/c;


# instance fields
.field protected a:Lorg/c/a/a/b/d/b/n;

.field protected d:Lorg/c/a/a/b/d/b/n;

.field protected e:Lorg/c/a/a/b/d/b/n;


# direct methods
.method public constructor <init>(ILorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/b/n;)V
    .locals 1

    invoke-static {p3, p4}, Lorg/c/a/a/b/d/b/ak;->a(Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/b/n;)Lorg/c/a/a/b/d/e/l;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/c/a/a/b/d/b/c;-><init>(ILorg/c/a/a/b/d/e/l;)V

    iput-object p2, p0, Lorg/c/a/a/b/d/b/ak;->a:Lorg/c/a/a/b/d/b/n;

    iput-object p3, p0, Lorg/c/a/a/b/d/b/ak;->d:Lorg/c/a/a/b/d/b/n;

    iput-object p4, p0, Lorg/c/a/a/b/d/b/ak;->e:Lorg/c/a/a/b/d/b/n;

    return-void
.end method

.method protected static a(Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/b/n;)Lorg/c/a/a/b/d/e/l;
    .locals 1

    instance-of v0, p0, Lorg/c/a/a/b/d/b/ad;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/n;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/c/a/a/b/d/b/n;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/n;)V
    .locals 0

    iput-object p1, p0, Lorg/c/a/a/b/d/b/ak;->a:Lorg/c/a/a/b/d/b/n;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/b/o;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/b/o;->a(Lorg/c/a/a/b/d/b/ak;)V

    return-void
.end method

.method public b()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public b(Lorg/c/a/a/b/d/b/n;)V
    .locals 0

    iput-object p1, p0, Lorg/c/a/a/b/d/b/ak;->d:Lorg/c/a/a/b/d/b/n;

    return-void
.end method

.method public c(Lorg/c/a/a/b/d/b/n;)V
    .locals 0

    iput-object p1, p0, Lorg/c/a/a/b/d/b/ak;->e:Lorg/c/a/a/b/d/b/n;

    return-void
.end method

.method public d()Lorg/c/a/a/b/d/b/n;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/d/b/ak;->a:Lorg/c/a/a/b/d/b/n;

    return-object v0
.end method

.method public g()Lorg/c/a/a/b/d/b/n;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/d/b/ak;->d:Lorg/c/a/a/b/d/b/n;

    return-object v0
.end method

.method public i()Lorg/c/a/a/b/d/b/n;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/d/b/ak;->e:Lorg/c/a/a/b/d/b/n;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TernaryOperatorExpression{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/b/ak;->a:Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/b/d/b/ak;->d:Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/b/d/b/ak;->e:Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
