.class Landroidj/support/v4/view/ViewCompat$KitKatViewCompatImpl;
.super Landroidj/support/v4/view/ViewCompat$JbMr2ViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KitKatViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/view/ViewCompat$JbMr2ViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityLiveRegion(Landroid/view/View;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/ViewCompatKitKat;->getAccessibilityLiveRegion(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/ViewCompatKitKat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isLaidOut(Landroid/view/View;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/ViewCompatKitKat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isLayoutDirectionResolved(Landroid/view/View;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/ViewCompatKitKat;->isLayoutDirectionResolved(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public setAccessibilityLiveRegion(Landroid/view/View;I)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/ViewCompatKitKat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/ViewCompatJB;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void
.end method
