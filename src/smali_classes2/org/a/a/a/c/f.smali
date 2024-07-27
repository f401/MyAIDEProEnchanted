.class public Lorg/a/a/a/c/f;
.super Ljava/lang/Object;


# static fields
.field private static a:[I


# instance fields
.field private b:[I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lorg/a/a/a/c/f;->a:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/a/a/a/c/f;->a:[I

    iput-object v0, p0, Lorg/a/a/a/c/f;->b:[I

    return-void
.end method

.method private d(I)V
    .registers 4

    const v1, 0x7ffffff7

    if-ltz p1, :cond_0

    if-le p1, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/a/a/a/c/f;->b:[I

    array-length v0, v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    :cond_2
    :goto_0
    if-lt v0, p1, :cond_4

    iget-object v1, p0, Lorg/a/a/a/c/f;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/a/c/f;->b:[I

    return-void

    :cond_3
    iget-object v0, p0, Lorg/a/a/a/c/f;->b:[I

    array-length v0, v0

    goto :goto_0

    :cond_4
    mul-int/lit8 v0, v0, 0x2

    if-ltz v0, :cond_5

    if-le v0, v1, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lorg/a/a/a/c/f;->b:[I

    array-length v0, v0

    iget v1, p0, Lorg/a/a/a/c/f;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/a/a/a/c/f;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/a/a/a/c/f;->d(I)V

    :cond_0
    iget-object v0, p0, Lorg/a/a/a/c/f;->b:[I

    iget v1, p0, Lorg/a/a/a/c/f;->c:I

    aput p1, v0, v1

    iget v0, p0, Lorg/a/a/a/c/f;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/a/a/a/c/f;->c:I

    return-void
.end method

.method public final a()Z
    .registers 2

    iget v0, p0, Lorg/a/a/a/c/f;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lorg/a/a/a/c/f;->c:I

    return v0
.end method

.method public final b(I)I
    .registers 3

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/a/a/a/c/f;->c:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/a/a/a/c/f;->b:[I

    aget v0, v0, p1

    return v0
.end method

.method public final c(I)I
    .registers 7

    invoke-virtual {p0, p1}, Lorg/a/a/a/c/f;->b(I)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/a/c/f;->b:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/a/a/a/c/f;->b:[I

    iget v4, p0, Lorg/a/a/a/c/f;->c:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/a/a/a/c/f;->b:[I

    iget v2, p0, Lorg/a/a/a/c/f;->c:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    iget v1, p0, Lorg/a/a/a/c/f;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/a/a/a/c/f;->c:I

    return v0
.end method

.method public final c()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/a/a/a/c/f;->b:[I

    iget v1, p0, Lorg/a/a/a/c/f;->c:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    iput v2, p0, Lorg/a/a/a/c/f;->c:I

    return-void
.end method

.method public final d()[I
    .registers 3

    iget v0, p0, Lorg/a/a/a/c/f;->c:I

    if-nez v0, :cond_0

    sget-object v0, Lorg/a/a/a/c/f;->a:[I

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/a/c/f;->b:[I

    iget v1, p0, Lorg/a/a/a/c/f;->c:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lorg/a/a/a/c/f;

    if-eqz v2, :cond_2

    check-cast p1, Lorg/a/a/a/c/f;

    iget v2, p0, Lorg/a/a/a/c/f;->c:I

    iget v3, p1, Lorg/a/a/a/c/f;->c:I

    if-ne v2, v3, :cond_2

    move v2, v1

    :goto_1
    iget v3, p0, Lorg/a/a/a/c/f;->c:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/a/a/a/c/f;->b:[I

    aget v3, v3, v2

    iget-object v4, p1, Lorg/a/a/a/c/f;->b:[I

    aget v4, v4, v2

    if-ne v3, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/a/a/a/c/f;->c:I

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lorg/a/a/a/c/f;->b:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/a/a/a/c/f;->d()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
