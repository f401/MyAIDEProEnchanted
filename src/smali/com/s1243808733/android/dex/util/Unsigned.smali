.class public final Lcom/s1243808733/android/dex/util/Unsigned;
.super Ljava/lang/Object;
.source "Unsigned.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(II)I
    .registers 6

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    and-long/2addr p0, v2

    cmp-long v2, v0, p0

    if-gez v2, :cond_13

    const/4 p0, -0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static compare(SS)I
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const v0, 0xffff

    and-int/2addr p0, v0

    and-int/2addr p1, v0

    if-ge p0, p1, :cond_d

    const/4 p0, -0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method
