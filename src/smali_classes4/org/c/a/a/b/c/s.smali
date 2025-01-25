.class public Lorg/c/a/a/b/c/s;
.super Lorg/c/a/a/b/b/h;

# interfaces
.implements Lorg/c/a/a/b/c/k;


# instance fields
.field protected g:Lorg/c/a/a/b/c/c;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lorg/c/a/a/b/b/h;-><init>(IIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/c/a/a/b/c/s;->d:I

    return-void
.end method

.method a(Lorg/c/a/a/b/c/c;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/c/s;->g:Lorg/c/a/a/b/c/c;

    return-void
.end method

.method public a(Lorg/c/a/a/b/c/l;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/c/l;->a(Lorg/c/a/a/b/c/s;)V

    return-void
.end method

.method public a(Z)Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Lorg/c/a/a/b/c/s;->d:I

    iget v2, p0, Lorg/c/a/a/b/c/s;->b:I

    if-ge v1, v2, :cond_23

    iget v1, p0, Lorg/c/a/a/b/c/s;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/c/a/a/b/c/s;->d:I

    if-nez p1, :cond_22

    iget v1, p0, Lorg/c/a/a/b/c/s;->d:I

    if-ne v1, v0, :cond_22

    iget-object v1, p0, Lorg/c/a/a/b/c/s;->g:Lorg/c/a/a/b/c/c;

    invoke-virtual {v1}, Lorg/c/a/a/b/c/c;->e()I

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lorg/c/a/a/b/c/s;->g:Lorg/c/a/a/b/c/c;

    iget v2, p0, Lorg/c/a/a/b/c/s;->d:I

    invoke-virtual {v1, v2}, Lorg/c/a/a/b/c/c;->a(I)V

    :cond_22
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public b(Z)Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Lorg/c/a/a/b/c/s;->d:I

    iget v2, p0, Lorg/c/a/a/b/c/s;->a:I

    if-le v1, v2, :cond_1b

    iget v1, p0, Lorg/c/a/a/b/c/s;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/c/a/a/b/c/s;->d:I

    if-nez p1, :cond_1a

    iget v1, p0, Lorg/c/a/a/b/c/s;->d:I

    if-ne v1, v0, :cond_1a

    iget-object v1, p0, Lorg/c/a/a/b/c/s;->g:Lorg/c/a/a/b/c/c;

    iget v2, p0, Lorg/c/a/a/b/c/s;->d:I

    invoke-virtual {v1, v2}, Lorg/c/a/a/b/c/c;->a(I)V

    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method
