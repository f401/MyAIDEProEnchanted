.class public final Lcom/s1243808733/android/dex/util/Unsigned;
.super Ljava/lang/Object;
.source "Unsigned.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(II)I
    .locals 6

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

.method public static compare(SS)I
    .locals 2

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
