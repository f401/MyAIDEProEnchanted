.class public Lorg/c/a/a/b/d/a/q;
.super Lorg/c/a/a/b/d/a/aa;


# instance fields
.field protected a:Lorg/c/a/a/b/d/c/d;

.field protected b:I

.field protected c:Lorg/c/a/a/b/d/e/l;

.field protected d:Lorg/c/a/a/b/d/a/d;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/c/d;ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/a/d;)V
    .registers 5

    invoke-direct {p0}, Lorg/c/a/a/b/d/a/aa;-><init>()V

    iput p2, p0, Lorg/c/a/a/b/d/a/q;->b:I

    iput-object p1, p0, Lorg/c/a/a/b/d/a/q;->a:Lorg/c/a/a/b/d/c/d;

    iput-object p3, p0, Lorg/c/a/a/b/d/a/q;->c:Lorg/c/a/a/b/d/e/l;

    iput-object p4, p0, Lorg/c/a/a/b/d/a/q;->d:Lorg/c/a/a/b/d/a/d;

    invoke-interface {p4, p0}, Lorg/c/a/a/b/d/a/d;->a(Lorg/c/a/a/b/d/a/q;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/d/a/q;->b:I

    return v0
.end method

.method public a(Lorg/c/a/a/b/d/a/m;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/a/m;->a(Lorg/c/a/a/b/d/a/q;)V

    return-void
.end method

.method public b()Lorg/c/a/a/b/d/c/d;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/q;->a:Lorg/c/a/a/b/d/c/d;

    return-object v0
.end method

.method public c()Lorg/c/a/a/b/d/e/l;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/q;->c:Lorg/c/a/a/b/d/e/l;

    return-object v0
.end method

.method public d()Lorg/c/a/a/b/d/a/d;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/q;->d:Lorg/c/a/a/b/d/a/d;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_6

    :cond_4
    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lorg/c/a/a/b/d/a/q;

    if-eqz v2, :cond_5

    check-cast p1, Lorg/c/a/a/b/d/a/q;

    iget v2, p0, Lorg/c/a/a/b/d/a/q;->b:I

    iget v3, p1, Lorg/c/a/a/b/d/a/q;->b:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lorg/c/a/a/b/d/a/q;->a:Lorg/c/a/a/b/d/c/d;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lorg/c/a/a/b/d/a/q;->a:Lorg/c/a/a/b/d/c/d;

    iget-object v3, p1, Lorg/c/a/a/b/d/a/q;->a:Lorg/c/a/a/b/d/c/d;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_20
    iget-object v2, p0, Lorg/c/a/a/b/d/a/q;->d:Lorg/c/a/a/b/d/a/d;

    iget-object v3, p1, Lorg/c/a/a/b/d/a/q;->d:Lorg/c/a/a/b/d/a/d;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/c/a/a/b/d/a/q;->c:Lorg/c/a/a/b/d/e/l;

    iget-object v3, p1, Lorg/c/a/a/b/d/a/q;->c:Lorg/c/a/a/b/d/e/l;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_5

    :cond_35
    iget-object v2, p1, Lorg/c/a/a/b/d/a/q;->a:Lorg/c/a/a/b/d/c/d;

    if-nez v2, :cond_5

    goto :goto_20
.end method

.method public hashCode()I
    .registers 3

    iget v1, p0, Lorg/c/a/a/b/d/a/q;->b:I

    iget-object v0, p0, Lorg/c/a/a/b/d/a/q;->a:Lorg/c/a/a/b/d/c/d;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/c/a/a/b/d/a/q;->a:Lorg/c/a/a/b/d/c/d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_c
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/c/a/a/b/d/a/q;->c:Lorg/c/a/a/b/d/e/l;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/c/a/a/b/d/a/q;->d:Lorg/c/a/a/b/d/a/d;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FieldDeclaration{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/a/q;->c:Lorg/c/a/a/b/d/e/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/b/d/a/q;->d:Lorg/c/a/a/b/d/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
