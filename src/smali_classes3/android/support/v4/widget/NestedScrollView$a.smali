.class Landroid/support/v4/widget/NestedScrollView$a;
.super Landroid/support/v4/view/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/NestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/view/c;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/c;->DW(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    check-cast p1, Landroid/support/v4/widget/NestedScrollView;

    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    invoke-static {p2, v0}, Labcd/C;->j6(Landroid/view/accessibility/AccessibilityRecord;I)V

    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result p1

    invoke-static {p2, p1}, Labcd/C;->DW(Landroid/view/accessibility/AccessibilityRecord;I)V

    return-void
.end method

.method public j6(Landroid/view/View;Labcd/A;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/c;->j6(Landroid/view/View;Labcd/A;)V

    check-cast p1, Landroid/support/v4/widget/NestedScrollView;

    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Labcd/A;->j6(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_34

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Labcd/A;->VH(Z)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    if-lez v1, :cond_29

    const/16 v1, 0x2000

    invoke-virtual {p2, v1}, Labcd/A;->j6(I)V

    :cond_29
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    if-ge p1, v0, :cond_34

    const/16 p1, 0x1000

    invoke-virtual {p2, p1}, Labcd/A;->j6(I)V

    :cond_34
    return-void
.end method

.method public j6(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 8

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/c;->j6(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_8

    return v0

    :cond_8
    check-cast p1, Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_12

    return v1

    :cond_12
    const/16 p3, 0x1000

    if-eq p2, p3, :cond_3d

    const/16 p3, 0x2000

    if-eq p2, p3, :cond_1b

    return v1

    :cond_1b
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    sub-int/2addr p2, p3

    sub-int/2addr p2, v2

    sub-int/2addr v3, p2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p3

    if-eq p2, p3, :cond_3c

    invoke-virtual {p1, v1, p2}, Landroid/support/v4/widget/NestedScrollView;->DW(II)V

    return v0

    :cond_3c
    return v1

    :cond_3d
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    sub-int/2addr p2, p3

    sub-int/2addr p2, v2

    add-int/2addr v3, p2

    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result p2

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p3

    if-eq p2, p3, :cond_62

    invoke-virtual {p1, v1, p2}, Landroid/support/v4/widget/NestedScrollView;->DW(II)V

    return v0

    :cond_62
    return v1
.end method
