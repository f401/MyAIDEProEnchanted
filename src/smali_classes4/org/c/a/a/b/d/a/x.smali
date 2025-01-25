.class public Lorg/c/a/a/b/d/a/x;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/d/a/f;


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:I

.field protected d:Lorg/c/a/a/b/d/a/aj;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/c/a/a/b/d/a/aj;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/c/a/a/b/d/a/x;->a:I

    iput-object p2, p0, Lorg/c/a/a/b/d/a/x;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/c/a/a/b/d/a/x;->d:Lorg/c/a/a/b/d/a/aj;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/a/x;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/d/a/x;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/c/a/a/b/d/a/x;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/a/x;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/a/m;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/a/m;->a(Lorg/c/a/a/b/d/a/x;)V

    return-void
.end method

.method public b()Lorg/c/a/a/b/d/a/x;
    .registers 1

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/x;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/d/a/x;->c:I

    return v0
.end method

.method public f()Lorg/c/a/a/b/d/a/aj;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/x;->d:Lorg/c/a/a/b/d/a/aj;

    return-object v0
.end method

.method public synthetic h()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/c/a/a/b/d/a/x;->b()Lorg/c/a/a/b/d/a/x;

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

    const/4 v0, 0x0

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

    const-string v1, "LocalVariableDeclarator{name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/a/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dimension"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/c/a/a/b/d/a/x;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", variableInitializer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/b/d/a/x;->d:Lorg/c/a/a/b/d/a/aj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
