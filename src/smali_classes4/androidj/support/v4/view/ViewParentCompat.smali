.class public final Landroidj/support/v4/view/ViewParentCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatICSImpl;,
        Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;,
        Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatKitKatImpl;,
        Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatLollipopImpl;,
        Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatStubImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    new-instance v0, Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatLollipopImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatLollipopImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewParentCompat;->IMPL:Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    :goto_d
    return-void

    :cond_e
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1a

    new-instance v0, Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatKitKatImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatKitKatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewParentCompat;->IMPL:Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    goto :goto_d

    :cond_1a
    const/16 v1, 0xe

    if-lt v0, v1, :cond_26

    new-instance v0, Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatICSImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatICSImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewParentCompat;->IMPL:Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    goto :goto_d

    :cond_26
    new-instance v0, Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatStubImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatStubImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewParentCompat;->IMPL:Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    sget-object v0, Landroidj/support/v4/view/ViewParentCompat;->IMPL:Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public static onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .registers 11

    sget-object v0, Landroidj/support/v4/view/ViewParentCompat;->IMPL:Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public static onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .registers 5

    sget-object v0, Landroidj/support/v4/view/ViewParentCompat;->IMPL:Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public static onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .registers 11

    sget-object v0, Landroidj/support/v4/view/ViewParentCompat;->IMPL:Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    return-void
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .registers 13

    sget-object v0, Landroidj/support/v4/view/ViewParentCompat;->IMPL:Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    return-void
.end method

.method public static onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    sget-object v0, Landroidj/support/v4/view/ViewParentCompat;->IMPL:Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public static onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    sget-object v0, Landroidj/support/v4/view/ViewParentCompat;->IMPL:Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewParentCompat;->IMPL:Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V

    return-void
.end method

.method public static requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    sget-object v0, Landroidj/support/v4/view/ViewParentCompat;->IMPL:Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroidj/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
