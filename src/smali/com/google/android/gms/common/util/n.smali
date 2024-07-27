.class public Lcom/google/android/gms/common/util/n;
.super Ljava/lang/Object;


# direct methods
.method public static j6([BIII)I
    .registers 11

    const v6, 0x1b873593

    const/4 v0, 0x0

    const v5, -0x3361d2af    # -8.2930312E7f

    and-int/lit8 v1, p2, -0x4

    add-int v2, v1, p1

    move v1, p3

    :goto_0
    if-ge p1, v2, :cond_0

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    mul-int/2addr v3, v5

    shl-int/lit8 v4, v3, 0xf

    ushr-int/lit8 v3, v3, 0x11

    or-int/2addr v3, v4

    mul-int/2addr v3, v6

    xor-int/2addr v1, v3

    ushr-int/lit8 v3, v1, 0x13

    shl-int/lit8 v1, v1, 0xd

    or-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x5

    const v3, 0x19ab949c

    sub-int/2addr v1, v3

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    and-int/lit8 v3, p2, 0x3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v0, 0x3

    if-eq v3, v0, :cond_1

    move v0, v1

    :goto_1
    xor-int/2addr v0, p2

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    const v1, -0x7a143595

    mul-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    const v1, -0x3d4d51cb

    mul-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0

    :cond_1
    add-int/lit8 v0, v2, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    :cond_2
    add-int/lit8 v3, v2, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    :cond_3
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    mul-int/2addr v0, v5

    ushr-int/lit8 v2, v0, 0x11

    shl-int/lit8 v0, v0, 0xf

    or-int/2addr v0, v2

    mul-int/2addr v0, v6

    xor-int/2addr v0, v1

    goto :goto_1
.end method
