.class public final Labcd/OP;
.super Ljava/lang/Object;


# direct methods
.method public static DW([B)I
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_c

    return v1

    :cond_c
    mul-int/lit16 v1, v1, 0x101

    aget-byte v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_7
.end method

.method public static j6([C)I
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_c

    return v1

    :cond_c
    mul-int/lit16 v1, v1, 0x101

    aget-char v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_7
.end method

.method public static j6([B[B)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_1e

    if-nez p1, :cond_a

    goto :goto_1e

    :cond_a
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_f

    return v1

    :cond_f
    const/4 v2, 0x0

    :goto_10
    array-length v3, p0

    if-ne v2, v3, :cond_14

    return v0

    :cond_14
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_1b

    return v1

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1e
    :goto_1e
    return v1
.end method

.method public static j6([C[C)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_1e

    if-nez p1, :cond_a

    goto :goto_1e

    :cond_a
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_f

    return v1

    :cond_f
    const/4 v2, 0x0

    :goto_10
    array-length v3, p0

    if-ne v2, v3, :cond_14

    return v0

    :cond_14
    aget-char v3, p0, v2

    aget-char v4, p1, v2

    if-eq v3, v4, :cond_1b

    return v1

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1e
    :goto_1e
    return v1
.end method

.method public static j6([B)[B
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
