.class public Lorg/c/a/a/c/a/a/a/b/a/m;
.super Lorg/c/a/a/b/d/a/ah;

# interfaces
.implements Lorg/c/a/a/c/a/a/a/b/a/e;


# instance fields
.field protected c:Lorg/c/a/a/c/a/a/a/b/a/b;

.field protected d:Lorg/c/a/a/b/a/a;

.field protected e:Lorg/c/a/a/b/a/d;

.field protected f:I


# direct methods
.method public constructor <init>(Lorg/c/a/a/c/a/a/a/b/a/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/b/a/d;I)V
    .registers 7

    invoke-virtual {p3}, Lorg/c/a/a/b/a/d;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/c/a/a/b/d/a/ah;-><init>(Ljava/lang/String;Lorg/c/a/a/b/d/d/b;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/a/c/a/a/a/b/a/m;->f:I

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/b/a/m;->c:Lorg/c/a/a/c/a/a/a/b/a/b;

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/b/a/m;->d:Lorg/c/a/a/b/a/a;

    iput-object p3, p0, Lorg/c/a/a/c/a/a/a/b/a/m;->e:Lorg/c/a/a/b/a/d;

    iput p4, p0, Lorg/c/a/a/c/a/a/a/b/a/m;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/a/e;)V
    .registers 2

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/b;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/b/a/m;->b:Lorg/c/a/a/b/d/d/b;

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lorg/c/a/a/c/a/a/a/b/a/m;->f:I

    return-void
.end method

.method public i()Lorg/c/a/a/b/d/a/z;
    .registers 2

    invoke-static {p0}, Lorg/c/a/a/d/b;->a(Lorg/c/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/a/z;

    return-object v0
.end method

.method public j()Lorg/c/a/a/c/a/a/a/b/a/b;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/m;->c:Lorg/c/a/a/c/a/a/a/b/a/b;

    return-object v0
.end method

.method public j_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public k()Lorg/c/a/a/b/a/a;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/m;->d:Lorg/c/a/a/b/a/a;

    return-object v0
.end method

.method public l_()Lorg/c/a/a/d/c;
    .registers 2

    invoke-static {p0}, Lorg/c/a/a/d/b;->b(Lorg/c/a/a/d/a;)Lorg/c/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public o_()Lorg/c/a/a/b/d/e/l;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public q_()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/a/a/a/b/a/m;->f:I

    return v0
.end method

.method public r_()Lorg/c/a/a/b/a/d;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/a/m;->e:Lorg/c/a/a/b/a/d;

    return-object v0
.end method

.method public s_()Ljava/util/List;
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

    const-string v1, "ClassFileConstructorDeclaration{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/a/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firstLineNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/c/a/a/c/a/a/a/b/a/m;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
