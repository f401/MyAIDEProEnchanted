.class public Lio/fabric/sdk/android/services/common/A;
.super Ljava/lang/Object;


# direct methods
.method public static j6(I)I
    .registers 4

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-lt p0, v0, :cond_a

    const/16 v0, 0x12b

    if-gt p0, v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0x12c

    const/4 v2, 0x1

    if-lt p0, v0, :cond_14

    const/16 v0, 0x18f

    if-gt p0, v0, :cond_14

    return v2

    :cond_14
    const/16 v0, 0x190

    if-lt p0, v0, :cond_1d

    const/16 v0, 0x1f3

    if-gt p0, v0, :cond_1d

    return v1

    :cond_1d
    return v2
.end method
