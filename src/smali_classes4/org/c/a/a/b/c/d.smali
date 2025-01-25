.class public Lorg/c/a/a/b/c/d;
.super Lorg/c/a/a/b/c/c;

# interfaces
.implements Lorg/c/a/a/b/c/k;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;Lorg/c/a/a/b/c/s;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lorg/c/a/a/b/c/c;-><init>(IIIILjava/lang/String;Lorg/c/a/a/b/c/s;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/c/l;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/c/l;->a(Lorg/c/a/a/b/c/d;)V

    return-void
.end method

.method public a(Z)Z
    .registers 4

    iget v0, p0, Lorg/c/a/a/b/c/d;->d:I

    iget v1, p0, Lorg/c/a/a/b/c/d;->b:I

    if-ge v0, v1, :cond_e

    iget v0, p0, Lorg/c/a/a/b/c/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/b/c/d;->d:I

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b(Z)Z
    .registers 4

    iget v0, p0, Lorg/c/a/a/b/c/d;->d:I

    iget v1, p0, Lorg/c/a/a/b/c/d;->a:I

    if-le v0, v1, :cond_e

    iget v0, p0, Lorg/c/a/a/b/c/d;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/c/a/a/b/c/d;->d:I

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
