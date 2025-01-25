.class Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/NestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegate"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_35

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-static {p2, v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v0

    invoke-static {p2, v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V

    return-void

    :cond_35
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_34

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-lez v1, :cond_29

    const/16 v1, 0x2000

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_29
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_34

    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_34
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_8
    return v0

    :cond_9
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_13

    move v0, v1

    goto :goto_8

    :cond_13
    const/16 v2, 0x1000

    if-eq p2, v2, :cond_41

    const/16 v2, 0x2000

    if-eq p2, v2, :cond_1d

    move v0, v1

    goto :goto_8

    :cond_1d
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v5

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    sub-int v2, v5, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v3

    if-eq v2, v3, :cond_3f

    invoke-virtual {p1, v1, v2}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(II)V

    goto :goto_8

    :cond_3f
    move v0, v1

    goto :goto_8

    :cond_41
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v5

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    add-int/2addr v2, v5

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v3

    if-eq v2, v3, :cond_66

    invoke-virtual {p1, v1, v2}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(II)V

    goto :goto_8

    :cond_66
    move v0, v1

    goto :goto_8
.end method
