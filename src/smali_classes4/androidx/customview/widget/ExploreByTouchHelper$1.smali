.class final Landroidx/customview/widget/ExploreByTouchHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/customview/widget/FocusStrategy$BoundsAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/widget/ExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/customview/widget/FocusStrategy$BoundsAdapter",
        "<",
        "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public obtainBounds(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroid/graphics/Rect;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3

    check-cast p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper$1;->obtainBounds(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroid/graphics/Rect;)V

    return-void
.end method
