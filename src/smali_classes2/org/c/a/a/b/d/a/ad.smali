.class public Lorg/c/a/a/b/d/a/ad;
.super Lorg/c/a/a/b/d/a/ai;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/util/List;

.field protected c:Ljava/util/List;

.field protected d:Ljava/util/List;

.field protected e:Ljava/util/List;

.field protected f:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 11

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/c/a/a/b/d/a/ai;-><init>(Lorg/c/a/a/b/d/c/d;ILjava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lorg/c/a/a/b/d/a/ad;->a:Ljava/lang/String;

    iput-object p5, p0, Lorg/c/a/a/b/d/a/ad;->b:Ljava/util/List;

    iput-object p6, p0, Lorg/c/a/a/b/d/a/ad;->c:Ljava/util/List;

    iput-object p7, p0, Lorg/c/a/a/b/d/a/ad;->d:Ljava/util/List;

    iput-object p8, p0, Lorg/c/a/a/b/d/a/ad;->e:Ljava/util/List;

    iput-object p9, p0, Lorg/c/a/a/b/d/a/ad;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/a/m;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/a/m;->a(Lorg/c/a/a/b/d/a/ad;)V

    return-void
.end method

.method public b()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/ad;->b:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/ad;->c:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/ad;->d:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/ad;->e:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/ad;->f:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ModuleDeclaration{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/a/ad;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
