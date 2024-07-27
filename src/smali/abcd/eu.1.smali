.class public final Labcd/eu;
.super Ljava/lang/Object;


# direct methods
.method public static DW(Labcd/St;)I
    .registers 7

    const/16 v5, 0x80

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    invoke-interface {p0}, Labcd/St;->readByte()B

    move-result v1

    and-int/lit16 v3, v1, 0xff

    and-int/lit8 v1, v3, 0x7f

    mul-int/lit8 v4, v2, 0x7

    shl-int/2addr v1, v4

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    and-int/lit16 v2, v3, 0x80

    if-ne v2, v5, :cond_0

    const/4 v3, 0x5

    if-lt v1, v3, :cond_2

    :cond_0
    if-eq v2, v5, :cond_1

    return v0

    :cond_1
    new-instance v0, Labcd/Ut;

    const-string v1, "invalid LEB128 sequence"

    invoke-direct {v0, v1}, Labcd/Ut;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v2, v1

    goto :goto_0
.end method

.method public static DW(Labcd/Tt;I)V
    .registers 4

    :goto_0
    ushr-int/lit8 v0, p1, 0x7

    if-eqz v0, :cond_0

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-interface {p0, v1}, Labcd/Tt;->writeByte(I)V

    move p1, v0

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    int-to-byte v0, v0

    invoke-interface {p0, v0}, Labcd/Tt;->writeByte(I)V

    return-void
.end method

.method public static j6(I)I
    .registers 3

    shr-int/lit8 v1, p0, 0x7

    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_0

    shr-int/lit8 v1, v1, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static j6(Labcd/St;)I
    .registers 8

    const/16 v6, 0x80

    const/4 v1, 0x0

    const/4 v3, -0x1

    move v0, v1

    move v2, v1

    :goto_0
    invoke-interface {p0}, Labcd/St;->readByte()B

    move-result v1

    and-int/lit16 v4, v1, 0xff

    and-int/lit8 v1, v4, 0x7f

    mul-int/lit8 v5, v2, 0x7

    shl-int/2addr v1, v5

    or-int/2addr v0, v1

    shl-int/lit8 v3, v3, 0x7

    add-int/lit8 v1, v2, 0x1

    and-int/lit16 v2, v4, 0x80

    if-ne v2, v6, :cond_0

    const/4 v4, 0x5

    if-lt v1, v4, :cond_3

    :cond_0
    if-eq v2, v6, :cond_2

    shr-int/lit8 v1, v3, 0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    or-int/2addr v0, v3

    :cond_1
    return v0

    :cond_2
    new-instance v0, Labcd/Ut;

    const-string v1, "invalid LEB128 sequence"

    invoke-direct {v0, v1}, Labcd/Ut;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method public static j6(Labcd/Tt;I)V
    .registers 9

    const/4 v4, 0x1

    const/4 v1, 0x0

    shr-int/lit8 v5, p1, 0x7

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    move v3, v4

    :goto_1
    if-eqz v3, :cond_4

    if-ne v5, v0, :cond_0

    and-int/lit8 v2, v5, 0x1

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x1

    if-eq v2, v3, :cond_2

    :cond_0
    move v3, v4

    :goto_2
    if-eqz v3, :cond_3

    const/16 v2, 0x80

    :goto_3
    and-int/lit8 v6, p1, 0x7f

    or-int/2addr v2, v6

    int-to-byte v2, v2

    invoke-interface {p0, v2}, Labcd/Tt;->writeByte(I)V

    shr-int/lit8 v2, v5, 0x7

    move p1, v5

    move v5, v2

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    return-void
.end method
