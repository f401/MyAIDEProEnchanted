.class public Lorg/c/a/a/b/c/r;
.super Lorg/c/a/a/b/b/h;

# interfaces
.implements Lorg/c/a/a/b/c/k;


# instance fields
.field protected g:Lorg/c/a/a/b/c/a;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lorg/c/a/a/b/b/h;-><init>(IIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/c/a;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/c/r;->g:Lorg/c/a/a/b/c/a;

    return-void
.end method

.method public a(Lorg/c/a/a/b/c/l;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/c/l;->a(Lorg/c/a/a/b/c/r;)V

    return-void
.end method

.method public a(Z)Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Lorg/c/a/a/b/c/r;->d:I

    iget v2, p0, Lorg/c/a/a/b/c/r;->b:I

    if-ge v1, v2, :cond_1

    iget v1, p0, Lorg/c/a/a/b/c/r;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/c/a/a/b/c/r;->d:I

    if-nez p1, :cond_0

    iget v1, p0, Lorg/c/a/a/b/c/r;->d:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lorg/c/a/a/b/c/r;->g:Lorg/c/a/a/b/c/a;

    invoke-virtual {v1}, Lorg/c/a/a/b/c/a;->e()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/c/a/a/b/c/r;->g:Lorg/c/a/a/b/c/a;

    iget v2, p0, Lorg/c/a/a/b/c/r;->d:I

    invoke-virtual {v1, v2}, Lorg/c/a/a/b/c/a;->a(I)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Z)Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Lorg/c/a/a/b/c/r;->d:I

    iget v2, p0, Lorg/c/a/a/b/c/r;->a:I

    if-le v1, v2, :cond_1

    iget v1, p0, Lorg/c/a/a/b/c/r;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/c/a/a/b/c/r;->d:I

    if-nez p1, :cond_0

    iget v1, p0, Lorg/c/a/a/b/c/r;->d:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lorg/c/a/a/b/c/r;->g:Lorg/c/a/a/b/c/a;

    iget v2, p0, Lorg/c/a/a/b/c/r;->d:I

    invoke-virtual {v1, v2}, Lorg/c/a/a/b/c/a;->a(I)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
