.class public Lorg/c/a/a/b/c/u;
.super Lorg/c/a/a/b/b/h;

# interfaces
.implements Lorg/c/a/a/b/c/k;


# instance fields
.field protected g:Lorg/c/a/a/b/c/f;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lorg/c/a/a/b/b/h;-><init>(IIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/c/a/a/b/c/u;->d:I

    return-void
.end method

.method public a(Lorg/c/a/a/b/c/f;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/c/u;->g:Lorg/c/a/a/b/c/f;

    return-void
.end method

.method public a(Lorg/c/a/a/b/c/l;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/c/l;->a(Lorg/c/a/a/b/c/u;)V

    return-void
.end method

.method public a(Z)Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Lorg/c/a/a/b/c/u;->d:I

    iget v2, p0, Lorg/c/a/a/b/c/u;->b:I

    if-ge v1, v2, :cond_1d

    iget v1, p0, Lorg/c/a/a/b/c/u;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/c/a/a/b/c/u;->d:I

    if-nez p1, :cond_1c

    iget-object v1, p0, Lorg/c/a/a/b/c/u;->g:Lorg/c/a/a/b/c/f;

    invoke-virtual {v1}, Lorg/c/a/a/b/c/f;->e()I

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lorg/c/a/a/b/c/u;->g:Lorg/c/a/a/b/c/f;

    invoke-virtual {v1, v0}, Lorg/c/a/a/b/c/f;->a(I)V

    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public b(Z)Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Lorg/c/a/a/b/c/u;->d:I

    iget v2, p0, Lorg/c/a/a/b/c/u;->a:I

    if-le v1, v2, :cond_19

    iget v1, p0, Lorg/c/a/a/b/c/u;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/c/a/a/b/c/u;->d:I

    if-nez p1, :cond_18

    iget v1, p0, Lorg/c/a/a/b/c/u;->d:I

    if-ne v1, v0, :cond_18

    iget-object v1, p0, Lorg/c/a/a/b/c/u;->g:Lorg/c/a/a/b/c/f;

    invoke-virtual {v1, v0}, Lorg/c/a/a/b/c/f;->a(I)V

    :cond_18
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public h()Lorg/c/a/a/b/c/f;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/c/u;->g:Lorg/c/a/a/b/c/f;

    return-object v0
.end method
