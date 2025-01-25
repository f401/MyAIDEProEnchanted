.class public abstract Lorg/c/a/a/b/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/b/e;


# instance fields
.field protected final a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected final e:I

.field protected final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/c/a/a/b/b/d;->a:I

    iput p3, p0, Lorg/c/a/a/b/b/d;->b:I

    iput p2, p0, Lorg/c/a/a/b/b/d;->d:I

    iput p2, p0, Lorg/c/a/a/b/b/d;->c:I

    iput p4, p0, Lorg/c/a/a/b/b/d;->e:I

    iput-object p5, p0, Lorg/c/a/a/b/b/d;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/b/d;->c:I

    iput v0, p0, Lorg/c/a/a/b/b/d;->d:I

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/f;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/b/f;->a(Lorg/c/a/a/b/b/d;)V

    return-void
.end method

.method public a(Z)Z
    .registers 4

    iget v0, p0, Lorg/c/a/a/b/b/d;->d:I

    iget v1, p0, Lorg/c/a/a/b/b/d;->b:I

    if-ge v0, v1, :cond_e

    iget v0, p0, Lorg/c/a/a/b/b/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/b/b/d;->d:I

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/b/d;->a:I

    return v0
.end method

.method public b(Z)Z
    .registers 4

    iget v0, p0, Lorg/c/a/a/b/b/d;->d:I

    iget v1, p0, Lorg/c/a/a/b/b/d;->a:I

    if-le v0, v1, :cond_e

    iget v0, p0, Lorg/c/a/a/b/b/d;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/c/a/a/b/b/d;->d:I

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/b/d;->b:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/b/d;->c:I

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/b/d;->d:I

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/b/d;->e:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/b/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{minimal-line-count="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/c/a/a/b/b/d;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maximal-line-count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/c/a/a/b/b/d;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", initial-line-count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/c/a/a/b/b/d;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", line-count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/c/a/a/b/b/d;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/c/a/a/b/b/d;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/c/a/a/b/b/d;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ", label=\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/c/a/a/b/b/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6d
    const-string v0, "}"

    goto :goto_64
.end method
