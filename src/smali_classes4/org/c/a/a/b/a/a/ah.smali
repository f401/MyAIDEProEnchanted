.class public Lorg/c/a/a/b/a/a/ah;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/c/a/a/b/a/a/ah;->a:I

    iput p2, p0, Lorg/c/a/a/b/a/a/ah;->b:I

    iput-object p3, p0, Lorg/c/a/a/b/a/a/ah;->c:Ljava/lang/String;

    iput-object p4, p0, Lorg/c/a/a/b/a/a/ah;->d:Ljava/lang/String;

    iput p5, p0, Lorg/c/a/a/b/a/a/ah;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/a/a/ah;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/a/a/ah;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a/ah;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a/ah;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/a/a/ah;->e:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalVariable{index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/c/a/a/b/a/a/ah;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/a/b/a/a/ah;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", descriptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/a/b/a/a/ah;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startPc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/c/a/a/b/a/a/ah;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/c/a/a/b/a/a/ah;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
