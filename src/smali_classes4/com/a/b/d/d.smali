.class public final Lcom/a/b/d/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Z
    .registers 5

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p0, v2, :cond_7

    :cond_5
    move v0, v1

    :cond_6
    :goto_6
    return v0

    :cond_7
    if-eq p0, v2, :cond_6

    and-int/lit16 v2, p0, 0xff

    if-eqz v2, :cond_6

    const/16 v3, 0xff

    if-eq v2, v3, :cond_6

    const v2, 0xff00

    and-int/2addr v2, p0

    if-nez v2, :cond_5

    goto :goto_6
.end method
