.class Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatStubImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/ViewParentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewParentCompatStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    return-void
.end method

.method public onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .registers 7

    instance-of v0, p1, Landroidj/support/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_b

    check-cast p1, Landroidj/support/v4/view/NestedScrollingParent;

    invoke-interface {p1, p2, p3, p4, p5}, Landroidj/support/v4/view/NestedScrollingParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .registers 6

    instance-of v0, p1, Landroidj/support/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_b

    check-cast p1, Landroidj/support/v4/view/NestedScrollingParent;

    invoke-interface {p1, p2, p3, p4}, Landroidj/support/v4/view/NestedScrollingParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .registers 7

    instance-of v0, p1, Landroidj/support/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_9

    check-cast p1, Landroidj/support/v4/view/NestedScrollingParent;

    invoke-interface {p1, p2, p3, p4, p5}, Landroidj/support/v4/view/NestedScrollingParent;->onNestedPreScroll(Landroid/view/View;II[I)V

    :cond_9
    return-void
.end method

.method public onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .registers 13

    instance-of v0, p1, Landroidj/support/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Landroidj/support/v4/view/NestedScrollingParent;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Landroidj/support/v4/view/NestedScrollingParent;->onNestedScroll(Landroid/view/View;IIII)V

    :cond_f
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 6

    instance-of v0, p1, Landroidj/support/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_9

    check-cast p1, Landroidj/support/v4/view/NestedScrollingParent;

    invoke-interface {p1, p2, p3, p4}, Landroidj/support/v4/view/NestedScrollingParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    :cond_9
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .registers 6

    instance-of v0, p1, Landroidj/support/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_b

    check-cast p1, Landroidj/support/v4/view/NestedScrollingParent;

    invoke-interface {p1, p2, p3, p4}, Landroidj/support/v4/view/NestedScrollingParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
    .registers 4

    instance-of v0, p1, Landroidj/support/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_9

    check-cast p1, Landroidj/support/v4/view/NestedScrollingParent;

    invoke-interface {p1, p2}, Landroidj/support/v4/view/NestedScrollingParent;->onStopNestedScroll(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6

    if-nez p2, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    goto :goto_3
.end method
