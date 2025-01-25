.class public abstract Landroidj/support/v4/widget/ExploreByTouchHelper;
.super Landroidj/support/v4/view/AccessibilityDelegateCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "android.view.View"

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000

.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

.field private static final NODE_ADAPTER:Landroidj/support/v4/widget/FocusStrategy$BoundsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidj/support/v4/widget/FocusStrategy$BoundsAdapter",
            "<",
            "Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPARSE_VALUES_ADAPTER:Landroidj/support/v4/widget/FocusStrategy$CollectionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidj/support/v4/widget/FocusStrategy$CollectionAdapter",
            "<",
            "Landroidj/support/v4/util/SparseArrayCompat",
            "<",
            "Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;",
            "Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessibilityFocusedVirtualViewId:I

.field private final mHost:Landroid/view/View;

.field private mHoveredVirtualViewId:I

.field private mKeyboardFocusedVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Landroidj/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const v2, 0x7fffffff

    const/high16 v1, -0x80000000

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroidj/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    new-instance v0, Landroidj/support/v4/widget/ExploreByTouchHelper$1;

    invoke-direct {v0}, Landroidj/support/v4/widget/ExploreByTouchHelper$1;-><init>()V

    sput-object v0, Landroidj/support/v4/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroidj/support/v4/widget/FocusStrategy$BoundsAdapter;

    new-instance v0, Landroidj/support/v4/widget/ExploreByTouchHelper$2;

    invoke-direct {v0}, Landroidj/support/v4/widget/ExploreByTouchHelper$2;-><init>()V

    sput-object v0, Landroidj/support/v4/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroidj/support/v4/widget/FocusStrategy$CollectionAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x1

    const/high16 v1, -0x80000000

    invoke-direct {p0}, Landroidj/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    iput v1, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    iput v1, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    iput v1, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-nez p1, :cond_30

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    iput-object p1, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-static {p1}, Landroidj/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_4c

    invoke-static {p1, v2}, Landroidj/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_4c
    return-void
.end method

.method static synthetic access$000(Landroidj/support/v4/widget/ExploreByTouchHelper;)I
    .registers 2

    iget v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    return v0
.end method

.method static synthetic access$100(Landroidj/support/v4/widget/ExploreByTouchHelper;)I
    .registers 2

    iget v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    return v0
.end method

.method private clearAccessibilityFocus(I)Z
    .registers 3

    iget v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-ne v0, p1, :cond_14

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private clickKeyboardFocusedVirtualView()Z
    .registers 4

    iget v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_13

    iget v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidj/support/v4/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4

    packed-switch p1, :pswitch_data_e

    invoke-direct {p0, p1, p2}, Landroidj/support/v4/widget/ExploreByTouchHelper;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_8  #0xffffffff
    invoke-direct {p0, p2}, Landroidj/support/v4/widget/ExploreByTouchHelper;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    goto :goto_7

    nop

    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_8  #ffffffff
    .end packed-switch
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 8

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-static {v0}, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroidj/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    invoke-virtual {v1}, Landroidj/support/v4/view/accessibility/AccessibilityRecordCompat;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidj/support/v4/view/accessibility/AccessibilityRecordCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isScrollable()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroidj/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    invoke-virtual {v2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isPassword()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroidj/support/v4/view/accessibility/AccessibilityRecordCompat;->setPassword(Z)V

    invoke-virtual {v2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroidj/support/v4/view/accessibility/AccessibilityRecordCompat;->setEnabled(Z)V

    invoke-virtual {v2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroidj/support/v4/view/accessibility/AccessibilityRecordCompat;->setChecked(Z)V

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_55

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    invoke-virtual {v2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidj/support/v4/view/accessibility/AccessibilityRecordCompat;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v1, v2, p1}, Landroidj/support/v4/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v1, v0}, Landroidj/support/v4/view/ViewCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-object v0
.end method

.method private createNodeForChild(I)Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 10
    .annotation build Landroidj/support/annotation/NonNull;
    .end annotation

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    invoke-virtual {v3, v1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    const-string v0, "android.view.View"

    invoke-virtual {v3, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    sget-object v0, Landroidj/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    sget-object v0, Landroidj/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    invoke-virtual {p0, p1, v3}, Landroidj/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    invoke-virtual {v3}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_38

    invoke-virtual {v3}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_38

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    sget-object v4, Landroidj/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    invoke-virtual {v3}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v0

    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_5f

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6b

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6b
    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v3, v0, p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    iget v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-ne v0, p1, :cond_e0

    invoke-virtual {v3, v1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    const/16 v0, 0x80

    invoke-virtual {v3, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :goto_89
    iget v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-ne v0, p1, :cond_e9

    move v0, v1

    :goto_8e
    if-eqz v0, :cond_eb

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_94
    :goto_94
    invoke-virtual {v3, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    iget-object v4, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    sget-object v4, Landroidj/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_113

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    iget v0, v3, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    if-eq v0, v7, :cond_f8

    invoke-static {}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v4

    iget v0, v3, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    :goto_bc
    if-eq v0, v7, :cond_f5

    iget-object v5, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v4, v5, v7}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;I)V

    sget-object v5, Landroidj/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, v4}, Landroidj/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    iget v0, v4, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    goto :goto_bc

    :cond_e0
    invoke-virtual {v3, v2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    const/16 v0, 0x40

    invoke-virtual {v3, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_89

    :cond_e9
    move v0, v2

    goto :goto_8e

    :cond_eb
    invoke-virtual {v3}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_94

    invoke-virtual {v3, v1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_94

    :cond_f5
    invoke-virtual {v4}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    :cond_f8
    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v4, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v4, v4, v2

    iget-object v5, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v5, v5, v1

    iget-object v6, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    :cond_113
    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    iget-object v4, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_14f

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v4, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v2, v4, v2

    iget-object v4, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v4, v4, v1

    iget-object v5, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroidj/support/v4/widget/ExploreByTouchHelper;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_14f

    invoke-virtual {v3, v1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    :cond_14f
    return-object v3
.end method

.method private createNodeForHost()Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 7
    .annotation build Landroidj/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/view/View;)Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v0, v2}, Landroidj/support/v4/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v3}, Landroidj/support/v4/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    invoke-virtual {v2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v0

    if-lez v0, :cond_27

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_27

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Views cannot have both real and virtual children"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_2d
    if-ge v1, v4, :cond_42

    iget-object v5, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v5, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2d

    :cond_42
    return-object v2
.end method

.method private getAllNodes()Landroidj/support/v4/util/SparseArrayCompat;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidj/support/v4/util/SparseArrayCompat",
            "<",
            "Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1}, Landroidj/support/v4/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    new-instance v2, Landroidj/support/v4/util/SparseArrayCompat;

    invoke-direct {v2}, Landroidj/support/v4/util/SparseArrayCompat;-><init>()V

    const/4 v0, 0x0

    :goto_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1e

    invoke-direct {p0, v0}, Landroidj/support/v4/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroidj/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1e
    return-object v2
.end method

.method private getBoundsInParent(ILandroid/graphics/Rect;)V
    .registers 4

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method

.method private static guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7
    .param p0  # Landroid/view/View;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sparse-switch p1, :sswitch_data_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_15
    invoke-virtual {p2, v0, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_18
    return-object p2

    :sswitch_19
    invoke-virtual {p2, v3, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_18

    :sswitch_1d
    invoke-virtual {p2, v2, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_18

    :sswitch_21
    invoke-virtual {p2, v3, v2, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_18

    nop

    :sswitch_data_26
    .sparse-switch
        0x11 -> :sswitch_15
        0x21 -> :sswitch_19
        0x42 -> :sswitch_1d
        0x82 -> :sswitch_21
    .end sparse-switch
.end method

.method private isVisibleToUser(Landroid/graphics/Rect;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_39

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_19
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_33

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidj/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_39

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_39

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_19

    :cond_33
    if-eqz v0, :cond_37

    const/4 v0, 0x1

    goto :goto_a

    :cond_37
    move v0, v1

    goto :goto_a

    :cond_39
    move v0, v1

    goto :goto_a
.end method

.method private static keyToDirection(I)I
    .registers 2

    packed-switch p0, :pswitch_data_10

    :pswitch_3  #0x14
    const/16 v0, 0x82

    :goto_5
    return v0

    :pswitch_6  #0x15
    const/16 v0, 0x11

    goto :goto_5

    :pswitch_9  #0x13
    const/16 v0, 0x21

    goto :goto_5

    :pswitch_c  #0x16
    const/16 v0, 0x42

    goto :goto_5

    nop

    :pswitch_data_10
    .packed-switch 0x13
        :pswitch_9  #00000013
        :pswitch_3  #00000014
        :pswitch_6  #00000015
        :pswitch_c  #00000016
    .end packed-switch
.end method

.method private moveFocus(ILandroid/graphics/Rect;)Z
    .registers 11
    .param p2  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    invoke-direct {p0}, Landroidj/support/v4/widget/ExploreByTouchHelper;->getAllNodes()Landroidj/support/v4/util/SparseArrayCompat;

    move-result-object v0

    iget v1, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-ne v1, v7, :cond_18

    const/4 v3, 0x0

    :goto_d
    sparse-switch p1, :sswitch_data_6c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-virtual {v0, v1}, Landroidj/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-object v3, v1

    goto :goto_d

    :sswitch_20
    iget-object v1, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v1}, Landroidj/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v5, :cond_3b

    :goto_28
    sget-object v1, Landroidj/support/v4/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroidj/support/v4/widget/FocusStrategy$CollectionAdapter;

    sget-object v2, Landroidj/support/v4/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroidj/support/v4/widget/FocusStrategy$BoundsAdapter;

    move v4, p1

    invoke-static/range {v0 .. v6}, Landroidj/support/v4/widget/FocusStrategy;->findNextFocusInRelativeDirection(Ljava/lang/Object;Landroidj/support/v4/widget/FocusStrategy$CollectionAdapter;Landroidj/support/v4/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;IZZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    :goto_33
    if-nez v1, :cond_63

    move v0, v7

    :goto_36
    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v0

    return v0

    :cond_3b
    move v5, v6

    goto :goto_28

    :sswitch_3d
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget v1, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-eq v1, v7, :cond_57

    iget v1, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-direct {p0, v1, v4}, Landroidj/support/v4/widget/ExploreByTouchHelper;->getBoundsInParent(ILandroid/graphics/Rect;)V

    :goto_4b
    sget-object v1, Landroidj/support/v4/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroidj/support/v4/widget/FocusStrategy$CollectionAdapter;

    sget-object v2, Landroidj/support/v4/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroidj/support/v4/widget/FocusStrategy$BoundsAdapter;

    move v5, p1

    invoke-static/range {v0 .. v5}, Landroidj/support/v4/widget/FocusStrategy;->findNextFocusInAbsoluteDirection(Ljava/lang/Object;Landroidj/support/v4/widget/FocusStrategy$CollectionAdapter;Landroidj/support/v4/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    goto :goto_33

    :cond_57
    if-eqz p2, :cond_5d

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4b

    :cond_5d
    iget-object v1, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v1, p1, v4}, Landroidj/support/v4/widget/ExploreByTouchHelper;->guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_4b

    :cond_63
    invoke-virtual {v0, v1}, Landroidj/support/v4/util/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidj/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v0

    goto :goto_36

    :sswitch_data_6c
    .sparse-switch
        0x1 -> :sswitch_20
        0x2 -> :sswitch_20
        0x11 -> :sswitch_3d
        0x21 -> :sswitch_3d
        0x42 -> :sswitch_3d
        0x82 -> :sswitch_3d
    .end sparse-switch
.end method

.method private performActionForChild(IILandroid/os/Bundle;)Z
    .registers 5

    sparse-switch p2, :sswitch_data_1c

    invoke-virtual {p0, p1, p2, p3}, Landroidj/support/v4/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    :goto_7
    return v0

    :sswitch_8
    invoke-direct {p0, p1}, Landroidj/support/v4/widget/ExploreByTouchHelper;->requestAccessibilityFocus(I)Z

    move-result v0

    goto :goto_7

    :sswitch_d
    invoke-direct {p0, p1}, Landroidj/support/v4/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    move-result v0

    goto :goto_7

    :sswitch_12
    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v0

    goto :goto_7

    :sswitch_17
    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    move-result v0

    goto :goto_7

    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_17
        0x40 -> :sswitch_8
        0x80 -> :sswitch_d
    .end sparse-switch
.end method

.method private performActionForHost(ILandroid/os/Bundle;)Z
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v0, p1, p2}, Landroidj/support/v4/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private requestAccessibilityFocus(I)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v1}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget v1, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-eq v1, p1, :cond_11

    iget v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_21

    iget v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    invoke-direct {p0, v0}, Landroidj/support/v4/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    :cond_21
    iput p1, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    const/4 v0, 0x1

    goto :goto_11
.end method

.method private updateHoveredVirtualView(I)V
    .registers 4

    iget v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iget v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    iput p1, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroidj/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    goto :goto_4
.end method


# virtual methods
.method public final clearKeyboardFocusForVirtualView(I)Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-eq v1, p1, :cond_6

    :goto_5
    return v0

    :cond_6
    const/high16 v1, -0x80000000

    iput v1, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1  # Landroid/view/MotionEvent;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x1

    const/high16 v4, -0x80000000

    const/4 v0, 0x0

    iget-object v2, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v2}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_14
    :goto_14
    return v0

    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_3a

    :pswitch_1c  #0x8
    goto :goto_14

    :pswitch_1d  #0x7, 0x9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroidj/support/v4/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    move-result v2

    invoke-direct {p0, v2}, Landroidj/support/v4/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    if-eq v2, v4, :cond_14

    move v0, v1

    goto :goto_14

    :pswitch_30  #0xa
    iget v2, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-eq v2, v4, :cond_14

    invoke-direct {p0, v4}, Landroidj/support/v4/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    move v0, v1

    goto :goto_14

    nop

    :pswitch_data_3a
    .packed-switch 0x7
        :pswitch_1d  #00000007
        :pswitch_1c  #00000008
        :pswitch_1d  #00000009
        :pswitch_30  #0000000a
    .end packed-switch
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 9
    .param p1  # Landroid/view/KeyEvent;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_5a

    :cond_10
    move v0, v2

    :cond_11
    :goto_11
    return v0

    :sswitch_12
    invoke-static {p1}, Landroidj/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {v0}, Landroidj/support/v4/widget/ExploreByTouchHelper;->keyToDirection(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    move v0, v2

    move v3, v2

    :goto_22
    add-int/lit8 v2, v5, 0x1

    if-ge v3, v2, :cond_11

    invoke-direct {p0, v4, v6}, Landroidj/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_11

    add-int/lit8 v2, v3, 0x1

    move v0, v1

    move v3, v2

    goto :goto_22

    :sswitch_31
    invoke-static {p1}, Landroidj/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Landroidj/support/v4/widget/ExploreByTouchHelper;->clickKeyboardFocusedVirtualView()Z

    move v0, v1

    goto :goto_11

    :sswitch_42
    invoke-static {p1}, Landroidj/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x2

    invoke-direct {p0, v0, v6}, Landroidj/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_11

    :cond_4e
    invoke-static {p1, v1}, Landroidj/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, v1, v6}, Landroidj/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_11

    nop

    :sswitch_data_5a
    .sparse-switch
        0x13 -> :sswitch_12
        0x14 -> :sswitch_12
        0x15 -> :sswitch_12
        0x16 -> :sswitch_12
        0x17 -> :sswitch_31
        0x3d -> :sswitch_42
        0x42 -> :sswitch_31
    .end sparse-switch
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroidj/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroidj/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    if-nez v0, :cond_b

    new-instance v0, Landroidj/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    invoke-direct {v0, p0}, Landroidj/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;-><init>(Landroidj/support/v4/widget/ExploreByTouchHelper;)V

    iput-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroidj/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroidj/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    return-object v0
.end method

.method public getFocusedVirtualView()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidj/support/v4/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result v0

    return v0
.end method

.method public final getKeyboardFocusedVirtualViewId()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    return v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final invalidateRoot()V
    .registers 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    return-void
.end method

.method public final invalidateVirtualView(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    return-void
.end method

.method public final invalidateVirtualView(II)V
    .registers 6

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_22

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_22

    const/16 v1, 0x800

    invoke-direct {p0, p1, v1}, Landroidj/support/v4/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-static {v1, p2}, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    iget-object v2, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v0, v2, v1}, Landroidj/support/v4/view/ViewParentCompat;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_22
    return-void
.end method

.method obtainAccessibilityNodeInfo(I)Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3
    .annotation build Landroidj/support/annotation/NonNull;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Landroidj/support/v4/widget/ExploreByTouchHelper;->createNodeForHost()Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    :goto_7
    return-object v0

    :cond_8
    invoke-direct {p0, p1}, Landroidj/support/v4/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    goto :goto_7
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6
    .param p3  # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    iget v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_b

    iget v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    :cond_b
    if-eqz p1, :cond_10

    invoke-direct {p0, p2, p3}, Landroidj/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    :cond_10
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroidj/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, p2}, Landroidj/support/v4/widget/ExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroidj/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    invoke-virtual {p0, p2}, Landroidj/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    return-void
.end method

.method protected onPopulateNodeForHost(Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 2

    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
.end method

.method protected onVirtualViewKeyboardFocusChanged(IZ)V
    .registers 3

    return-void
.end method

.method performAction(IILandroid/os/Bundle;)Z
    .registers 5

    packed-switch p1, :pswitch_data_e

    invoke-direct {p0, p1, p2, p3}, Landroidj/support/v4/widget/ExploreByTouchHelper;->performActionForChild(IILandroid/os/Bundle;)Z

    move-result v0

    :goto_7
    return v0

    :pswitch_8  #0xffffffff
    invoke-direct {p0, p2, p3}, Landroidj/support/v4/widget/ExploreByTouchHelper;->performActionForHost(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_7

    nop

    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_8  #ffffffff
    .end packed-switch
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    iget v2, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-eq v2, p1, :cond_12

    iget v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_22

    iget v0, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    :cond_22
    iput p1, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, p1, v1}, Landroidj/support/v4/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move v0, v1

    goto :goto_12
.end method

.method public final sendEventForVirtualView(II)Z
    .registers 6

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_d

    iget-object v1, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-direct {p0, p1, p2}, Landroidj/support/v4/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v2, p0, Landroidj/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v1, v2, v0}, Landroidj/support/v4/view/ViewParentCompat;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_d
.end method
