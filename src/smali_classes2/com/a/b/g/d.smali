.class public final Lcom/a/b/g/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(II)I
    .registers 4

    const/4 v0, 0x1

    shl-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public static a([I)I
    .registers 2

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public static a([IIZ)V
    .registers 6

    shr-int/lit8 v0, p1, 0x5

    const/4 v1, 0x1

    and-int/lit8 v2, p1, 0x1f

    shl-int/2addr v1, v2

    if-eqz p2, :cond_0

    aget v2, p0, v0

    or-int/2addr v1, v2

    aput v1, p0, v0

    :goto_0
    return-void

    :cond_0
    xor-int/lit8 v1, v1, -0x1

    aget v2, p0, v0

    and-int/2addr v1, v2

    aput v1, p0, v0

    goto :goto_0
.end method

.method public static a([I[I)V
    .registers 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget v1, p0, v0

    aget v2, p1, v0

    or-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a([II)Z
    .registers 5

    const/4 v0, 0x1

    shr-int/lit8 v1, p1, 0x5

    aget v1, p0, v1

    and-int/lit8 v2, p1, 0x1f

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([III)Z
    .registers 4

    invoke-static {p0, p1}, Lcom/a/b/g/d;->d([II)I

    move-result v0

    if-ltz v0, :cond_0

    if-ge v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(I)[I
    .registers 2

    add-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    return-object v0
.end method

.method public static b([II)V
    .registers 5

    shr-int/lit8 v0, p1, 0x5

    const/4 v1, 0x1

    and-int/lit8 v2, p1, 0x1f

    shl-int/2addr v1, v2

    aget v2, p0, v0

    or-int/2addr v1, v2

    aput v1, p0, v0

    return-void
.end method

.method public static b([I)Z
    .registers 5

    const/4 v0, 0x0

    array-length v2, p0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    aget v3, p0, v1

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static c([I)I
    .registers 5

    const/4 v1, 0x0

    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    return v0

    :cond_0
    aget v1, p0, v2

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public static c([II)V
    .registers 5

    shr-int/lit8 v0, p1, 0x5

    const/4 v1, 0x1

    and-int/lit8 v2, p1, 0x1f

    shl-int/2addr v1, v2

    xor-int/lit8 v1, v1, -0x1

    aget v2, p0, v0

    and-int/2addr v1, v2

    aput v1, p0, v0

    return-void
.end method

.method public static d([II)I
    .registers 6

    array-length v2, p0

    and-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v1, p1, 0x5

    :goto_0
    if-lt v1, v2, :cond_0

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_0
    aget v3, p0, v1

    if-eqz v3, :cond_1

    invoke-static {v3, v0}, Lcom/a/b/g/d;->a(II)I

    move-result v0

    if-ltz v0, :cond_1

    shl-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
