.class public final Landroidx/core/view/MarginLayoutParamsCompat;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 4

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_11

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getLayoutDirection()I

    move-result v1

    :goto_b
    if-eqz v1, :cond_13

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    :goto_10
    return v0

    :cond_11
    move v1, v0

    goto :goto_b

    :cond_13
    move v0, v1

    goto :goto_10
.end method

.method public static getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_a
.end method

.method public static getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_a
.end method

.method public static isMarginRelative(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static resolveLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    :cond_9
    return-void
.end method

.method public static setLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setLayoutDirection(I)V

    :cond_9
    return-void
.end method

.method public static setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_9
    return-void

    :cond_a
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_9
.end method

.method public static setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_9
    return-void

    :cond_a
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_9
.end method
