.class public final Landroid/support/v4/view/f;
.super Ljava/lang/Object;


# direct methods
.method public static j6(II)I
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p0

    return p0

    :cond_b
    const p1, -0x800001

    and-int/2addr p0, p1

    return p0
.end method
