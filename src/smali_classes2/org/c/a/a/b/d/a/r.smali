.class public Lorg/c/a/a/b/d/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/d/a/d;


# instance fields
.field protected a:Lorg/c/a/a/b/d/a/q;

.field protected b:Ljava/lang/String;

.field protected c:I

.field protected d:Lorg/c/a/a/b/d/a/aj;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/c/a/a/b/d/a/aj;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/a/r;->b:Ljava/lang/String;

    iput-object p2, p0, Lorg/c/a/a/b/d/a/r;->d:Lorg/c/a/a/b/d/a/aj;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/a/aj;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/a/r;->d:Lorg/c/a/a/b/d/a/aj;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/a/m;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/a/m;->a(Lorg/c/a/a/b/d/a/r;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/a/q;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/a/r;->a:Lorg/c/a/a/b/d/a/q;

    return-void
.end method

.method public b()Lorg/c/a/a/b/d/a/r;
    .registers 1

    return-object p0
.end method

.method public d()Lorg/c/a/a/b/d/a/q;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/r;->a:Lorg/c/a/a/b/d/a/q;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/r;->b:Ljava/lang/String;

    return-object v0
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
    instance-of v2, p1, Lorg/c/a/a/b/d/a/r;

    if-eqz v2, :cond_1

    check-cast p1, Lorg/c/a/a/b/d/a/r;

    iget v2, p0, Lorg/c/a/a/b/d/a/r;->c:I

    iget v3, p1, Lorg/c/a/a/b/d/a/r;->c:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/c/a/a/b/d/a/r;->b:Ljava/lang/String;

    iget-object v3, p1, Lorg/c/a/a/b/d/a/r;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/c/a/a/b/d/a/r;->d:Lorg/c/a/a/b/d/a/aj;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/c/a/a/b/d/a/r;->d:Lorg/c/a/a/b/d/a/aj;

    iget-object v3, p1, Lorg/c/a/a/b/d/a/r;->d:Lorg/c/a/a/b/d/a/aj;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lorg/c/a/a/b/d/a/r;->d:Lorg/c/a/a/b/d/a/aj;

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/d/a/r;->c:I

    return v0
.end method

.method public g()Lorg/c/a/a/b/d/a/aj;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/r;->d:Lorg/c/a/a/b/d/a/aj;

    return-object v0
.end method

.method public synthetic h()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/c/a/a/b/d/a/r;->b()Lorg/c/a/a/b/d/a/r;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lorg/c/a/a/b/d/a/r;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget v2, p0, Lorg/c/a/a/b/d/a/r;->c:I

    iget-object v0, p0, Lorg/c/a/a/b/d/a/r;->d:Lorg/c/a/a/b/d/a/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/a/b/d/a/r;->d:Lorg/c/a/a/b/d/a/aj;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    const-string v1, "FieldDeclarator{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/a/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
