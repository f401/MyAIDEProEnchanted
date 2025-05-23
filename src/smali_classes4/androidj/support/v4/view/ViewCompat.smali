.class public Landroidj/support/v4/view/ViewCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/view/ViewCompat$Api24ViewCompatImpl;,
        Landroidj/support/v4/view/ViewCompat$BaseViewCompatImpl;,
        Landroidj/support/v4/view/ViewCompat$FocusDirection;,
        Landroidj/support/v4/view/ViewCompat$FocusRealDirection;,
        Landroidj/support/v4/view/ViewCompat$FocusRelativeDirection;,
        Landroidj/support/v4/view/ViewCompat$HCViewCompatImpl;,
        Landroidj/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;,
        Landroidj/support/v4/view/ViewCompat$ICSViewCompatImpl;,
        Landroidj/support/v4/view/ViewCompat$JBViewCompatImpl;,
        Landroidj/support/v4/view/ViewCompat$JbMr1ViewCompatImpl;,
        Landroidj/support/v4/view/ViewCompat$JbMr2ViewCompatImpl;,
        Landroidj/support/v4/view/ViewCompat$KitKatViewCompatImpl;,
        Landroidj/support/v4/view/ViewCompat$LollipopViewCompatImpl;,
        Landroidj/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;,
        Landroidj/support/v4/view/ViewCompat$ScrollIndicators;,
        Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_LIVE_REGION_ASSERTIVE:I = 0x2

.field public static final ACCESSIBILITY_LIVE_REGION_NONE:I = 0x0

.field public static final ACCESSIBILITY_LIVE_REGION_POLITE:I = 0x1

.field private static final FAKE_FRAME_TIME:J = 0xaL

.field static final IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

.field public static final IMPORTANT_FOR_ACCESSIBILITY_AUTO:I = 0x0

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO:I = 0x2

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS:I = 0x4

.field public static final IMPORTANT_FOR_ACCESSIBILITY_YES:I = 0x1

.field public static final LAYER_TYPE_HARDWARE:I = 0x2

.field public static final LAYER_TYPE_NONE:I = 0x0

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1

.field public static final LAYOUT_DIRECTION_INHERIT:I = 0x2

.field public static final LAYOUT_DIRECTION_LOCALE:I = 0x3

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10

.field public static final MEASURED_SIZE_MASK:I = 0xffffff

.field public static final MEASURED_STATE_MASK:I = -0x1000000

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000

.field public static final OVER_SCROLL_ALWAYS:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_NEVER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCROLL_AXIS_HORIZONTAL:I = 0x1

.field public static final SCROLL_AXIS_NONE:I = 0x0

.field public static final SCROLL_AXIS_VERTICAL:I = 0x2

.field public static final SCROLL_INDICATOR_BOTTOM:I = 0x2

.field public static final SCROLL_INDICATOR_END:I = 0x20

.field public static final SCROLL_INDICATOR_LEFT:I = 0x4

.field public static final SCROLL_INDICATOR_RIGHT:I = 0x8

.field public static final SCROLL_INDICATOR_START:I = 0x10

.field public static final SCROLL_INDICATOR_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ViewCompat"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {}, Landroidj/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v0, Landroidj/support/v4/view/ViewCompat$Api24ViewCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewCompat$Api24ViewCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    :goto_f
    return-void

    :cond_10
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1c

    new-instance v0, Landroidj/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_f

    :cond_1c
    const/16 v1, 0x15

    if-lt v0, v1, :cond_28

    new-instance v0, Landroidj/support/v4/view/ViewCompat$LollipopViewCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewCompat$LollipopViewCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_f

    :cond_28
    const/16 v1, 0x13

    if-lt v0, v1, :cond_34

    new-instance v0, Landroidj/support/v4/view/ViewCompat$KitKatViewCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewCompat$KitKatViewCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_f

    :cond_34
    const/16 v1, 0x12

    if-lt v0, v1, :cond_40

    new-instance v0, Landroidj/support/v4/view/ViewCompat$JbMr2ViewCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewCompat$JbMr2ViewCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_f

    :cond_40
    const/16 v1, 0x11

    if-lt v0, v1, :cond_4c

    new-instance v0, Landroidj/support/v4/view/ViewCompat$JbMr1ViewCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewCompat$JbMr1ViewCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_f

    :cond_4c
    const/16 v1, 0x10

    if-lt v0, v1, :cond_58

    new-instance v0, Landroidj/support/v4/view/ViewCompat$JBViewCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewCompat$JBViewCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_f

    :cond_58
    const/16 v1, 0xf

    if-lt v0, v1, :cond_64

    new-instance v0, Landroidj/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_f

    :cond_64
    const/16 v1, 0xe

    if-lt v0, v1, :cond_70

    new-instance v0, Landroidj/support/v4/view/ViewCompat$ICSViewCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewCompat$ICSViewCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_f

    :cond_70
    const/16 v1, 0xb

    if-lt v0, v1, :cond_7c

    new-instance v0, Landroidj/support/v4/view/ViewCompat$HCViewCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewCompat$HCViewCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_f

    :cond_7c
    new-instance v0, Landroidj/support/v4/view/ViewCompat$BaseViewCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/ViewCompat$BaseViewCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_f
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animate(Landroid/view/View;)Landroidj/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->animate(Landroid/view/View;)Landroidj/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    return-object v0
.end method

.method public static canScrollHorizontally(Landroid/view/View;I)Z
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static canScrollVertically(Landroid/view/View;I)Z
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static combineMeasuredStates(II)I
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->combineMeasuredStates(II)I

    move-result v0

    return v0
.end method

.method public static dispatchApplyWindowInsets(Landroid/view/View;Landroidj/support/v4/view/WindowInsetsCompat;)Landroidj/support/v4/view/WindowInsetsCompat;
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->dispatchApplyWindowInsets(Landroid/view/View;Landroidj/support/v4/view/WindowInsetsCompat;)Landroidj/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public static dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->dispatchFinishTemporaryDetach(Landroid/view/View;)V

    return-void
.end method

.method public static dispatchNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->dispatchNestedFling(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public static dispatchNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->dispatchNestedPreFling(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .registers 11

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z

    move-result v0

    return v0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .registers 13

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    move-result v0

    return v0
.end method

.method public static dispatchStartTemporaryDetach(Landroid/view/View;)V
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->dispatchStartTemporaryDetach(Landroid/view/View;)V

    return-void
.end method

.method public static getAccessibilityLiveRegion(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getAccessibilityLiveRegion(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getAccessibilityNodeProvider(Landroid/view/View;)Landroidj/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getAccessibilityNodeProvider(Landroid/view/View;)Landroidj/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v0

    return-object v0
.end method

.method public static getAlpha(Landroid/view/View;)F
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getAlpha(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplay(Landroid/view/View;)Landroid/view/Display;
    .registers 2
    .param p0  # Landroid/view/View;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static getElevation(Landroid/view/View;)F
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getFitsSystemWindows(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static getImportantForAccessibility(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getLabelFor(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getLabelFor(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getLayerType(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getLayerType(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getLayoutDirection(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;
    .registers 2
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public static getMeasuredHeightAndState(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getMeasuredHeightAndState(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getMeasuredState(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getMeasuredWidthAndState(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getMinimumHeight(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getMinimumWidth(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getOverScrollMode(Landroid/view/View;)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    return v0
.end method

.method public static getPaddingEnd(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getPaddingEnd(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getPaddingStart(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public static getPivotX(Landroid/view/View;)F
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getPivotX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getPivotY(Landroid/view/View;)F
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getPivotY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getRotation(Landroid/view/View;)F
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getRotation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getRotationX(Landroid/view/View;)F
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getRotationX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getRotationY(Landroid/view/View;)F
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getRotationY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getScaleX(Landroid/view/View;)F
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getScaleX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getScaleY(Landroid/view/View;)F
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getScaleY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getScrollIndicators(Landroid/view/View;)I
    .registers 2
    .param p0  # Landroid/view/View;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getScrollIndicators(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTranslationX(Landroid/view/View;)F
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getTranslationX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getTranslationY(Landroid/view/View;)F
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getTranslationY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getTranslationZ(Landroid/view/View;)F
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getWindowSystemUiVisibility(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getX(Landroid/view/View;)F
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getY(Landroid/view/View;)F
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getZ(Landroid/view/View;)F
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->getZ(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static hasAccessibilityDelegate(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->hasNestedScrollingParent(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static hasOnClickListeners(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->hasOnClickListeners(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static hasOverlappingRendering(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static hasTransientState(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isAttachedToWindow(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isImportantForAccessibility(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->isImportantForAccessibility(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isInLayout(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->isInLayout(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isLaidOut(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isLayoutDirectionResolved(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->isLayoutDirectionResolved(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isNestedScrollingEnabled(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isOpaque(Landroid/view/View;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public static isPaddingRelative(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->isPaddingRelative(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static jumpDrawablesToCurrentState(Landroid/view/View;)V
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->jumpDrawablesToCurrentState(Landroid/view/View;)V

    return-void
.end method

.method public static offsetLeftAndRight(Landroid/view/View;I)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->offsetLeftAndRight(Landroid/view/View;I)V

    return-void
.end method

.method public static offsetTopAndBottom(Landroid/view/View;I)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->offsetTopAndBottom(Landroid/view/View;I)V

    return-void
.end method

.method public static onApplyWindowInsets(Landroid/view/View;Landroidj/support/v4/view/WindowInsetsCompat;)Landroidj/support/v4/view/WindowInsetsCompat;
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->onApplyWindowInsets(Landroid/view/View;Landroidj/support/v4/view/WindowInsetsCompat;)Landroidj/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public static onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public static onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 4

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .registers 11

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    return-void
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 6

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static requestApplyInsets(Landroid/view/View;)V
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method public static resolveSizeAndState(III)I
    .registers 4

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->resolveSizeAndState(III)I

    move-result v0

    return v0
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;Landroidj/support/v4/view/AccessibilityDelegateCompat;)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setAccessibilityDelegate(Landroid/view/View;Landroidj/support/v4/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public static setAccessibilityLiveRegion(Landroid/view/View;I)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    return-void
.end method

.method public static setActivated(Landroid/view/View;Z)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setActivated(Landroid/view/View;Z)V

    return-void
.end method

.method public static setAlpha(Landroid/view/View;F)V
    .registers 3
    .param p1  # F
        .annotation build Landroidj/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public static setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static setElevation(Landroid/view/View;F)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public static setFitsSystemWindows(Landroid/view/View;Z)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setFitsSystemWindows(Landroid/view/View;Z)V

    return-void
.end method

.method public static setHasTransientState(Landroid/view/View;Z)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setHasTransientState(Landroid/view/View;Z)V

    return-void
.end method

.method public static setImportantForAccessibility(Landroid/view/View;I)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void
.end method

.method public static setLabelFor(Landroid/view/View;I)V
    .registers 3
    .param p1  # I
        .annotation build Landroidj/support/annotation/IdRes;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setLabelFor(Landroid/view/View;I)V

    return-void
.end method

.method public static setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 4

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    return-void
.end method

.method public static setLayoutDirection(Landroid/view/View;I)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setLayoutDirection(Landroid/view/View;I)V

    return-void
.end method

.method public static setNestedScrollingEnabled(Landroid/view/View;Z)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public static setOnApplyWindowInsetsListener(Landroid/view/View;Landroidj/support/v4/view/OnApplyWindowInsetsListener;)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidj/support/v4/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static setOverScrollMode(Landroid/view/View;I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    return-void
.end method

.method public static setPaddingRelative(Landroid/view/View;IIII)V
    .registers 11

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method

.method public static setPivotX(Landroid/view/View;F)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setPivotX(Landroid/view/View;F)V

    return-void
.end method

.method public static setPivotY(Landroid/view/View;F)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setPivotY(Landroid/view/View;F)V

    return-void
.end method

.method public static setPointerIcon(Landroid/view/View;Landroidj/support/v4/view/PointerIconCompat;)V
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setPointerIcon(Landroid/view/View;Landroidj/support/v4/view/PointerIconCompat;)V

    return-void
.end method

.method public static setRotation(Landroid/view/View;F)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setRotation(Landroid/view/View;F)V

    return-void
.end method

.method public static setRotationX(Landroid/view/View;F)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setRotationX(Landroid/view/View;F)V

    return-void
.end method

.method public static setRotationY(Landroid/view/View;F)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setRotationY(Landroid/view/View;F)V

    return-void
.end method

.method public static setSaveFromParentEnabled(Landroid/view/View;Z)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setSaveFromParentEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public static setScaleX(Landroid/view/View;F)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setScaleX(Landroid/view/View;F)V

    return-void
.end method

.method public static setScaleY(Landroid/view/View;F)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setScaleY(Landroid/view/View;F)V

    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;I)V
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setScrollIndicators(Landroid/view/View;I)V

    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;II)V
    .registers 4
    .param p0  # Landroid/view/View;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setScrollIndicators(Landroid/view/View;II)V

    return-void
.end method

.method public static setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static setTranslationX(Landroid/view/View;F)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setTranslationX(Landroid/view/View;F)V

    return-void
.end method

.method public static setTranslationY(Landroid/view/View;F)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setTranslationY(Landroid/view/View;F)V

    return-void
.end method

.method public static setTranslationZ(Landroid/view/View;F)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setTranslationZ(Landroid/view/View;F)V

    return-void
.end method

.method public static setX(Landroid/view/View;F)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setX(Landroid/view/View;F)V

    return-void
.end method

.method public static setY(Landroid/view/View;F)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setY(Landroid/view/View;F)V

    return-void
.end method

.method public static setZ(Landroid/view/View;F)V
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->setZ(Landroid/view/View;F)V

    return-void
.end method

.method public static startNestedScroll(Landroid/view/View;I)Z
    .registers 3

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->startNestedScroll(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static stopNestedScroll(Landroid/view/View;)V
    .registers 2

    sget-object v0, Landroidj/support/v4/view/ViewCompat;->IMPL:Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/ViewCompat$ViewCompatImpl;->stopNestedScroll(Landroid/view/View;)V

    return-void
.end method
