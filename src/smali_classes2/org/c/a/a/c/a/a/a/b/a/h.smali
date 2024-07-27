.class public Lorg/c/a/a/c/a/a/a/b/a/h;
.super Lorg/c/a/a/b/d/a/q;

# interfaces
.implements Lorg/c/a/a/c/a/a/a/b/a/k;


# instance fields
.field protected e:I


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/c/d;ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/a/d;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/c/a/a/b/d/a/q;-><init>(Lorg/c/a/a/b/d/c/d;ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/a/d;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/c/a/a/c/a/a/a/b/a/h;->b:I

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/a/d;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/b/a/h;->d:Lorg/c/a/a/b/d/a/d;

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lorg/c/a/a/c/a/a/a/b/a/h;->e:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    instance-of v2, p1, Lorg/c/a/a/c/a/a/a/b/a/h;

    if-eqz v2, :cond_1

    invoke-super {p0, p1}, Lorg/c/a/a/b/d/a/q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast p1, Lorg/c/a/a/c/a/a/a/b/a/h;

    iget v2, p0, Lorg/c/a/a/c/a/a/a/b/a/h;->e:I

    iget v3, p1, Lorg/c/a/a/c/a/a/a/b/a/h;->e:I

    if-eq v2, v3, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    invoke-super {p0}, Lorg/c/a/a/b/d/a/q;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/c/a/a/c/a/a/a/b/a/h;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public q_()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/a/a/a/b/a/h;->e:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClassFileFieldDeclaration{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/a/h;->c:Lorg/c/a/a/b/d/e/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/a/h;->d:Lorg/c/a/a/b/d/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firstLineNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/c/a/a/c/a/a/a/b/a/h;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
