.class public Lorg/c/a/a/b/a/a/w;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/c/a/a/b/a/a/w;->a:I

    iput p2, p0, Lorg/c/a/a/b/a/a/w;->b:I

    iput p3, p0, Lorg/c/a/a/b/a/a/w;->c:I

    iput p4, p0, Lorg/c/a/a/b/a/a/w;->d:I

    iput p5, p0, Lorg/c/a/a/b/a/a/w;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lorg/c/a/a/b/a/a/w;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/c/a/a/b/a/a/w;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lorg/c/a/a/b/a/a/w;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lorg/c/a/a/b/a/a/w;->e:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    check-cast p1, Lorg/c/a/a/b/a/a/w;

    iget v1, p0, Lorg/c/a/a/b/a/a/w;->b:I

    iget v2, p1, Lorg/c/a/a/b/a/a/w;->b:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/c/a/a/b/a/a/w;->c:I

    iget v2, p1, Lorg/c/a/a/b/a/a/w;->c:I

    if-eq v1, v2, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/c/a/a/b/a/a/w;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/c/a/a/b/a/a/w;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CodeException{index="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/c/a/a/b/a/a/w;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startPc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/c/a/a/b/a/a/w;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endPc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/c/a/a/b/a/a/w;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", handlerPc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/c/a/a/b/a/a/w;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", catchType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/c/a/a/b/a/a/w;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
