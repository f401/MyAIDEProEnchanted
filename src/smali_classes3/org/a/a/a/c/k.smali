.class public final Lorg/a/a/a/c/k;
.super Ljava/lang/Object;


# direct methods
.method public static a()I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/a/c/k;->a(I)I

    move-result v0

    return v0
.end method

.method public static a(I)I
    .locals 0

    return p0
.end method

.method public static a(II)I
    .locals 2

    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v0, p1

    shl-int/lit8 v1, v0, 0xf

    ushr-int/lit8 v0, v0, 0x11

    or-int/2addr v0, v1

    const v1, 0x1b873593

    mul-int/2addr v0, v1

    xor-int/2addr v0, p0

    shl-int/lit8 v1, v0, 0xd

    ushr-int/lit8 v0, v0, 0x13

    or-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x5

    const v1, 0x19ab949c

    sub-int/2addr v0, v1

    return v0
.end method

.method public static a(ILjava/lang/Object;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    invoke-static {p0, v0}, Lorg/a/a/a/c/k;->a(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(II)I
    .locals 2

    mul-int/lit8 v0, p1, 0x4

    xor-int/2addr v0, p0

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
.end method
