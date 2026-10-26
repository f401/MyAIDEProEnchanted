.class public final Lcom/a/b/d/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Z
    .locals 3

    const/4 v1, -0x1

    const/4 v0, 0x1

    if-ge p0, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eq p0, v1, :cond_1

    and-int/lit16 v1, p0, 0xff

    if-eqz v1, :cond_1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_1

    const v1, 0xff00

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    goto :goto_0
.end method
