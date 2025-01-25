.class public final Labcd/pq;
.super Ljava/lang/Object;


# direct methods
.method public static DW(I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ge p0, v1, :cond_5

    return v0

    :cond_5
    const/4 v2, 0x1

    if-ne p0, v1, :cond_9

    return v2

    :cond_9
    and-int/lit16 v1, p0, 0xff

    if-eqz v1, :cond_1a

    const/16 v3, 0xff

    if-ne v1, v3, :cond_12

    goto :goto_1a

    :cond_12
    const v1, 0xff00

    and-int/2addr p0, v1

    if-nez p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    :cond_1a
    :goto_1a
    return v2
.end method

.method public static j6(I)Z
    .registers 2

    const/16 v0, 0xff

    if-lt p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method
