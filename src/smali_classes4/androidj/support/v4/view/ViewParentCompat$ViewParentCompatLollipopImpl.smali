.class Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatLollipopImpl;
.super Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatKitKatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/ViewParentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewParentCompatLollipopImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatKitKatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .registers 7

    invoke-static {p1, p2, p3, p4, p5}, Landroidj/support/v4/view/ViewParentCompatLollipop;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .registers 6

    invoke-static {p1, p2, p3, p4}, Landroidj/support/v4/view/ViewParentCompatLollipop;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .registers 6

    invoke-static {p1, p2, p3, p4, p5}, Landroidj/support/v4/view/ViewParentCompatLollipop;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .registers 7

    invoke-static/range {p1 .. p6}, Landroidj/support/v4/view/ViewParentCompatLollipop;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    invoke-static {p1, p2, p3, p4}, Landroidj/support/v4/view/ViewParentCompatLollipop;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .registers 6

    invoke-static {p1, p2, p3, p4}, Landroidj/support/v4/view/ViewParentCompatLollipop;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/ViewParentCompatLollipop;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V

    return-void
.end method
