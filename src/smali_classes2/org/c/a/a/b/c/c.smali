.class public Lorg/c/a/a/b/c/c;
.super Lorg/c/a/a/b/b/a;

# interfaces
.implements Lorg/c/a/a/b/c/k;


# instance fields
.field protected final g:Lorg/c/a/a/b/c/s;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;Lorg/c/a/a/b/c/s;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lorg/c/a/a/b/b/a;-><init>(IIIILjava/lang/String;)V

    iput-object p6, p0, Lorg/c/a/a/b/c/c;->g:Lorg/c/a/a/b/c/s;

    invoke-virtual {p6, p0}, Lorg/c/a/a/b/c/s;->a(Lorg/c/a/a/b/c/c;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/c/a/a/b/c/c;->d:I

    return-void
.end method

.method public a(Lorg/c/a/a/b/c/l;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/c/l;->a(Lorg/c/a/a/b/c/c;)V

    return-void
.end method

.method public a(Z)Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Lorg/c/a/a/b/c/c;->d:I

    iget v2, p0, Lorg/c/a/a/b/c/c;->b:I

    if-ge v1, v2, :cond_1

    iget v1, p0, Lorg/c/a/a/b/c/c;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/c/a/a/b/c/c;->d:I

    if-nez p1, :cond_0

    iget v1, p0, Lorg/c/a/a/b/c/c;->d:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lorg/c/a/a/b/c/c;->g:Lorg/c/a/a/b/c/s;

    invoke-virtual {v1}, Lorg/c/a/a/b/c/s;->e()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/c/a/a/b/c/c;->g:Lorg/c/a/a/b/c/s;

    iget v2, p0, Lorg/c/a/a/b/c/c;->d:I

    invoke-virtual {v1, v2}, Lorg/c/a/a/b/c/s;->a(I)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Z)Z
    .registers 4

    iget v0, p0, Lorg/c/a/a/b/c/c;->d:I

    iget v1, p0, Lorg/c/a/a/b/c/c;->a:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lorg/c/a/a/b/c/c;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/c/a/a/b/c/c;->d:I

    if-nez p1, :cond_0

    iget v0, p0, Lorg/c/a/a/b/c/c;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/c/a/a/b/c/c;->g:Lorg/c/a/a/b/c/s;

    iget v1, p0, Lorg/c/a/a/b/c/c;->d:I

    invoke-virtual {v0, v1}, Lorg/c/a/a/b/c/s;->a(I)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lorg/c/a/a/b/c/s;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/c/c;->g:Lorg/c/a/a/b/c/s;

    return-object v0
.end method
