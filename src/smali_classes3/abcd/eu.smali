.class public final Labcd/eu;
.super Ljava/lang/Object;


# direct methods
.method public static DW(Labcd/St;)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_2
    invoke-interface {p0}, Labcd/St;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v3, v2, 0x7f

    mul-int/lit8 v4, v1, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_18

    const/4 v4, 0x5

    if-lt v1, v4, :cond_2

    :cond_18
    if-eq v2, v3, :cond_1b

    return v0

    :cond_1b
    new-instance p0, Labcd/Ut;

    const-string v0, "invalid LEB128 sequence"

    invoke-direct {p0, v0}, Labcd/Ut;-><init>(Ljava/lang/String;)V

    goto :goto_24

    :goto_23
    throw p0

    :goto_24
    goto :goto_23
.end method

.method public static DW(Labcd/Tt;I)V
    .registers 3

    :goto_0
    ushr-int/lit8 v0, p1, 0x7

    and-int/lit8 p1, p1, 0x7f

    if-eqz v0, :cond_e

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Labcd/Tt;->writeByte(I)V

    move p1, v0

    goto :goto_0

    :cond_e
    int-to-byte p1, p1

    invoke-interface {p0, p1}, Labcd/Tt;->writeByte(I)V

    return-void
.end method

.method public static j6(I)I
    .registers 2

    shr-int/lit8 p0, p0, 0x7

    const/4 v0, 0x0

    :goto_3
    if-eqz p0, :cond_a

    shr-int/lit8 p0, p0, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static j6(Labcd/St;)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :cond_4
    invoke-interface {p0}, Labcd/St;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v4, v3, 0x7f

    mul-int/lit8 v5, v1, 0x7

    shl-int/2addr v4, v5

    or-int/2addr v0, v4

    shl-int/lit8 v2, v2, 0x7

    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1c

    const/4 v5, 0x5

    if-lt v1, v5, :cond_4

    :cond_1c
    if-eq v3, v4, :cond_25

    shr-int/lit8 p0, v2, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_24

    or-int/2addr v0, v2

    :cond_24
    return v0

    :cond_25
    new-instance p0, Labcd/Ut;

    const-string v0, "invalid LEB128 sequence"

    invoke-direct {p0, v0}, Labcd/Ut;-><init>(Ljava/lang/String;)V

    goto :goto_2e

    :goto_2d
    throw p0

    :goto_2e
    goto :goto_2d
.end method

.method public static j6(Labcd/Tt;I)V
    .registers 9

    shr-int/lit8 v0, p1, 0x7

    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_b

    :cond_a
    const/4 v1, -0x1

    :goto_b
    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_d
    move v6, v0

    move v0, p1

    move p1, v6

    if-eqz v4, :cond_2f

    if-ne p1, v1, :cond_1e

    and-int/lit8 v4, p1, 0x1

    shr-int/lit8 v5, v0, 0x6

    and-int/2addr v5, v3

    if-eq v4, v5, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v4, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v4, 0x1

    :goto_1f
    if-eqz v4, :cond_24

    const/16 v5, 0x80

    goto :goto_25

    :cond_24
    const/4 v5, 0x0

    :goto_25
    and-int/lit8 v0, v0, 0x7f

    or-int/2addr v0, v5

    int-to-byte v0, v0

    invoke-interface {p0, v0}, Labcd/Tt;->writeByte(I)V

    shr-int/lit8 v0, p1, 0x7

    goto :goto_d

    :cond_2f
    return-void
.end method
