.class public Lorg/c/a/a/b/c/f;
.super Lorg/c/a/a/b/b/a;

# interfaces
.implements Lorg/c/a/a/b/c/k;


# instance fields
.field protected final g:Lorg/c/a/a/b/c/u;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;Lorg/c/a/a/b/c/u;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lorg/c/a/a/b/b/a;-><init>(IIIILjava/lang/String;)V

    iput-object p6, p0, Lorg/c/a/a/b/c/f;->g:Lorg/c/a/a/b/c/u;

    invoke-virtual {p6, p0}, Lorg/c/a/a/b/c/u;->a(Lorg/c/a/a/b/c/f;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/c/a/a/b/c/f;->d:I

    return-void
.end method

.method public a(Lorg/c/a/a/b/c/l;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/c/l;->a(Lorg/c/a/a/b/c/f;)V

    return-void
.end method

.method public a(Z)Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Lorg/c/a/a/b/c/f;->d:I

    iget v2, p0, Lorg/c/a/a/b/c/f;->b:I

    if-ge v1, v2, :cond_1d

    iget v1, p0, Lorg/c/a/a/b/c/f;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/c/a/a/b/c/f;->d:I

    if-nez p1, :cond_1c

    iget-object v1, p0, Lorg/c/a/a/b/c/f;->g:Lorg/c/a/a/b/c/u;

    invoke-virtual {v1}, Lorg/c/a/a/b/c/u;->e()I

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lorg/c/a/a/b/c/f;->g:Lorg/c/a/a/b/c/u;

    invoke-virtual {v1, v0}, Lorg/c/a/a/b/c/u;->a(I)V

    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public b(Z)Z
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lorg/c/a/a/b/c/f;->d:I

    iget v2, p0, Lorg/c/a/a/b/c/f;->a:I

    if-le v1, v2, :cond_19

    iget v1, p0, Lorg/c/a/a/b/c/f;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/c/a/a/b/c/f;->d:I

    if-nez p1, :cond_18

    iget v1, p0, Lorg/c/a/a/b/c/f;->d:I

    if-nez v1, :cond_18

    iget-object v1, p0, Lorg/c/a/a/b/c/f;->g:Lorg/c/a/a/b/c/u;

    invoke-virtual {v1, v0}, Lorg/c/a/a/b/c/u;->a(I)V

    :cond_18
    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method public h()Lorg/c/a/a/b/c/u;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/c/f;->g:Lorg/c/a/a/b/c/u;

    return-object v0
.end method
