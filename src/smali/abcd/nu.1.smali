.class public final Labcd/nu;
.super Ljava/lang/Object;


# direct methods
.method public static j6(II)I
    .registers 8

    const-wide v4, 0xffffffffL

    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    int-to-long v0, p0

    and-long/2addr v0, v4

    int-to-long v2, p1

    and-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static j6(SS)I
    .registers 4

    const v1, 0xffff

    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    and-int v0, p0, v1

    and-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
