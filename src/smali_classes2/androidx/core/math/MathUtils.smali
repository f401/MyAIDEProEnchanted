.class public Landroidx/core/math/MathUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(DDD)D
    .locals 2

    cmpg-double v0, p0, p2

    if-gez v0, :cond_1

    move-wide p4, p2

    :cond_0
    :goto_0
    return-wide p4

    :cond_1
    cmpl-double v0, p0, p4

    if-gtz v0, :cond_0

    move-wide p4, p0

    goto :goto_0
.end method

.method public static clamp(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    :cond_0
    :goto_0
    return p2

    :cond_1
    cmpl-float v0, p0, p2

    if-gtz v0, :cond_0

    move p2, p0

    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0

    if-ge p0, p1, :cond_1

    move p2, p1

    :cond_0
    :goto_0
    return p2

    :cond_1
    if-gt p0, p2, :cond_0

    move p2, p0

    goto :goto_0
.end method
