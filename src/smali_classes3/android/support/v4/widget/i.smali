.class public final Landroid/support/v4/widget/i;
.super Ljava/lang/Object;


# direct methods
.method public static j6(Landroid/widget/ListView;I)Z
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->canScrollList(I)Z

    move-result p0

    return p0

    :cond_b
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    return v1

    :cond_13
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    const/4 v3, 0x1

    if-lez p1, :cond_38

    add-int/lit8 p1, v0, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lt v2, v0, :cond_36

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    if-le p1, v0, :cond_37

    :cond_36
    const/4 v1, 0x1

    :cond_37
    return v1

    :cond_38
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-gtz v2, :cond_48

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result p0

    if-ge p1, p0, :cond_49

    :cond_48
    const/4 v1, 0x1

    :cond_49
    return v1
.end method
