.class public final Landroidx/core/widget/ListViewCompat;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canScrollList(Landroid/widget/ListView;I)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_d

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->canScrollList(I)Z

    move-result v0

    :cond_c
    :goto_c
    return v0

    :cond_d
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    if-lez p1, :cond_37

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_35

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v4, v2, :cond_c

    :cond_35
    move v0, v1

    goto :goto_c

    :cond_37
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-gtz v3, :cond_47

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v3

    if-ge v2, v3, :cond_c

    :cond_47
    move v0, v1

    goto :goto_c
.end method

.method public static scrollListBy(Landroid/widget/ListView;I)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->scrollListBy(I)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_9
.end method
