.class public Lorg/c/a/a/b/c/a;
.super Lorg/c/a/a/b/b/a;

# interfaces
.implements Lorg/c/a/a/b/c/k;


# instance fields
.field protected g:Lorg/c/a/a/b/c/r;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;Lorg/c/a/a/b/c/r;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lorg/c/a/a/b/b/a;-><init>(IIIILjava/lang/String;)V

    iput-object p6, p0, Lorg/c/a/a/b/c/a;->g:Lorg/c/a/a/b/c/r;

    invoke-virtual {p6, p0}, Lorg/c/a/a/b/c/r;->a(Lorg/c/a/a/b/c/a;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/c/a/a/b/c/a;->d:I

    return-void
.end method

.method public a(Lorg/c/a/a/b/c/l;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/c/l;->a(Lorg/c/a/a/b/c/a;)V

    return-void
.end method

.method public a(Z)Z
    .registers 4

    iget v0, p0, Lorg/c/a/a/b/c/a;->d:I

    iget v1, p0, Lorg/c/a/a/b/c/a;->b:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/c/a/a/b/c/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/b/c/a;->d:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Z)Z
    .registers 4

    iget v0, p0, Lorg/c/a/a/b/c/a;->d:I

    iget v1, p0, Lorg/c/a/a/b/c/a;->a:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/c/a/a/b/c/a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/c/a/a/b/c/a;->d:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
