.class Landroidj/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;
.super Landroidj/support/v4/view/accessibility/AccessibilityNodeProviderCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/ExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyNodeProvider"
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/widget/ExploreByTouchHelper;


# direct methods
.method constructor <init>(Landroidj/support/v4/widget/ExploreByTouchHelper;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidj/support/v4/widget/ExploreByTouchHelper;

    invoke-direct {p0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeProviderCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidj/support/v4/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1}, Landroidj/support/v4/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    invoke-static {v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public findFocus(I)Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidj/support/v4/widget/ExploreByTouchHelper;

    invoke-static {v0}, Landroidj/support/v4/widget/ExploreByTouchHelper;->access$000(Landroidj/support/v4/widget/ExploreByTouchHelper;)I

    move-result v0

    :goto_9
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_16

    const/4 v0, 0x0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidj/support/v4/widget/ExploreByTouchHelper;

    invoke-static {v0}, Landroidj/support/v4/widget/ExploreByTouchHelper;->access$100(Landroidj/support/v4/widget/ExploreByTouchHelper;)I

    move-result v0

    goto :goto_9

    :cond_16
    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->createAccessibilityNodeInfo(I)Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    goto :goto_e
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidj/support/v4/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidj/support/v4/widget/ExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
