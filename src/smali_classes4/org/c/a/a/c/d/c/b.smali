.class public abstract Lorg/c/a/a/c/d/c/b;
.super Lorg/c/a/a/c/d/c/a;


# instance fields
.field protected d:[I

.field protected e:I

.field protected f:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/c/a/a/c/d/c/a;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/c/a/a/c/d/c/b;->d:[I

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/d/c/b;->d:[I

    aget v0, v0, p1

    return v0
.end method

.method public a()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/a/c/d/c/b;->e:I

    iput v1, p0, Lorg/c/a/a/c/d/c/b;->b:I

    iput v0, p0, Lorg/c/a/a/c/d/c/b;->c:I

    iput-boolean v1, p0, Lorg/c/a/a/c/d/c/b;->f:Z

    return-void
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/d/c/b;->e:I

    return v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lorg/c/a/a/c/d/c/b;->f:Z

    return v0
.end method

.method protected g()V
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Lorg/c/a/a/c/d/c/b;->e:I

    iget-object v1, p0, Lorg/c/a/a/c/d/c/b;->d:[I

    array-length v1, v1

    if-ne v0, v1, :cond_17

    iget v0, p0, Lorg/c/a/a/c/d/c/b;->e:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/c/a/a/c/d/c/b;->d:[I

    iget v2, p0, Lorg/c/a/a/c/d/c/b;->e:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/c/a/a/c/d/c/b;->d:[I

    :cond_17
    iget-object v0, p0, Lorg/c/a/a/c/d/c/b;->d:[I

    iget v1, p0, Lorg/c/a/a/c/d/c/b;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/c/a/a/c/d/c/b;->e:I

    iget v2, p0, Lorg/c/a/a/c/d/c/b;->c:I

    aput v2, v0, v1

    return-void
.end method
