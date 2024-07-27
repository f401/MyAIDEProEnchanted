.class public final Labcd/pq;
.super Ljava/lang/Object;


# direct methods
.method public static DW(I)Z
    .registers 5

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x1

    if-ge p0, v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p0, v2, :cond_0

    and-int/lit16 v2, p0, 0xff

    if-eqz v2, :cond_0

    const/16 v3, 0xff

    if-eq v2, v3, :cond_0

    const v2, 0xff00

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static j6(I)Z
    .registers 2

    const/16 v0, 0xff

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
