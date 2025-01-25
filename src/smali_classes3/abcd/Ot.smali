.class public final Labcd/Ot;
.super Ljava/lang/Object;


# direct methods
.method public static DW([I)I
    .registers 1

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public static DW([II)I
    .registers 5

    array-length v0, p0

    and-int/lit8 v1, p1, 0x1f

    shr-int/lit8 p1, p1, 0x5

    :goto_5
    if-ge p1, v0, :cond_19

    aget v2, p0, p1

    if-eqz v2, :cond_15

    invoke-static {v2, v1}, Labcd/Ot;->j6(II)I

    move-result v1

    if-ltz v1, :cond_15

    shl-int/lit8 p0, p1, 0x5

    add-int/2addr p0, v1

    return p0

    :cond_15
    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    goto :goto_5

    :cond_19
    const/4 p0, -0x1

    return p0
.end method

.method public static FH([I)Z
    .registers 5

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_d

    aget v3, p0, v2

    if-eqz v3, :cond_a

    return v1

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method public static FH([II)Z
    .registers 3

    shr-int/lit8 v0, p1, 0x5

    aget p0, p0, v0

    and-int/lit8 p1, p1, 0x1f

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static Hw([II)V
    .registers 4

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    aget v1, p0, v0

    or-int/2addr p1, v1

    aput p1, p0, v0

    return-void
.end method

.method public static j6(II)I
    .registers 3

    const/4 v0, 0x1

    shl-int p1, v0, p1

    sub-int/2addr p1, v0

    const/4 v0, -0x1

    xor-int/2addr p1, v0

    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_10

    goto :goto_11

    :cond_10
    move v0, p0

    :goto_11
    return v0
.end method

.method public static j6([I)I
    .registers 5

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v1, v0, :cond_f

    aget v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    return v2
.end method

.method public static j6([II)V
    .registers 4

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    xor-int/lit8 p1, p1, -0x1

    aget v1, p0, v0

    and-int/2addr p1, v1

    aput p1, p0, v0

    return-void
.end method

.method public static j6([IIZ)V
    .registers 5

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    if-eqz p2, :cond_f

    aget p2, p0, v0

    or-int/2addr p1, p2

    aput p1, p0, v0

    goto :goto_16

    :cond_f
    xor-int/lit8 p1, p1, -0x1

    aget p2, p0, v0

    and-int/2addr p1, p2

    aput p1, p0, v0

    :goto_16
    return-void
.end method

.method public static j6([I[I)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_e

    aget v1, p0, v0

    aget v2, p1, v0

    or-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public static j6([III)Z
    .registers 3

    invoke-static {p0, p1}, Labcd/Ot;->DW([II)I

    move-result p0

    if-ltz p0, :cond_a

    if-ge p0, p2, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static j6(I)[I
    .registers 1

    add-int/lit8 p0, p0, 0x1f

    shr-int/lit8 p0, p0, 0x5

    new-array p0, p0, [I

    return-object p0
.end method
