.class final Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$1;
.super Landroid/view/View$AccessibilityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/view/AccessibilityDelegateCompatIcs;->newAccessibilityDelegateBridge(Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final val$bridge:Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;


# direct methods
.method constructor <init>(Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;)V
    .locals 0

    iput-object p1, p0, Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    iget-object v0, p0, Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {v0, p1, p2, p3}, Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
