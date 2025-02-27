.class Landroidj/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;
.super Landroidj/support/v4/view/AccessibilityDelegateCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityDelegate"
.end annotation


# instance fields
.field private final mTmpRect:Landroid/graphics/Rect;

.field final this$0:Landroidj/support/v4/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Landroidj/support/v4/widget/SlidingPaneLayout;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    invoke-direct {p0}, Landroidj/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method private copyNodeInfoNoChildren(Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isVisibleToUser()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    invoke-virtual {p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    invoke-virtual {p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    invoke-virtual {p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    invoke-virtual {p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocused()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    invoke-virtual {p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isAccessibilityFocused()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    invoke-virtual {p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    invoke-virtual {p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isLongClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setLongClickable(Z)V

    invoke-virtual {p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    invoke-virtual {p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getMovementGranularities()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setMovementGranularities(I)V

    return-void
.end method


# virtual methods
.method public filter(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0, p1}, Landroidj/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroidj/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroidj/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 7

    invoke-static {p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroidj/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    invoke-direct {p0, p2, v0}, Landroidj/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;->copyNodeInfoNoChildren(Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    invoke-virtual {v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    const-class v0, Landroidj/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;)V

    invoke-static {p1}, Landroidj/support/v4/view/ViewCompat;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_26

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    :cond_26
    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_2d
    if-ge v0, v1, :cond_4b

    iget-object v2, p0, Landroidj/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v2, v0}, Landroidj/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidj/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;->filter(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_48

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_48

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidj/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    invoke-virtual {p2, v2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;)V

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_4b
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    invoke-virtual {p0, p2}, Landroidj/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;->filter(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0, p1, p2, p3}, Landroidj/support/v4/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
