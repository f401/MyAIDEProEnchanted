.class public Landroidj/support/v4/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroidj/support/v4/view/NestedScrollingParent;
.implements Landroidj/support/v4/view/NestedScrollingChild;
.implements Landroidj/support/v4/view/ScrollingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/widget/NestedScrollView$AccessibilityDelegate;,
        Landroidj/support/v4/widget/NestedScrollView$OnScrollChangeListener;,
        Landroidj/support/v4/widget/NestedScrollView$SavedState;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DELEGATE:Landroidj/support/v4/widget/NestedScrollView$AccessibilityDelegate;

.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final SCROLLVIEW_STYLEABLE:[I

.field private static final TAG:Ljava/lang/String; = "NestedScrollView"


# instance fields
.field private mActivePointerId:I

.field private final mChildHelper:Landroidj/support/v4/view/NestedScrollingChildHelper;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroidj/support/v4/widget/EdgeEffectCompat;

.field private mEdgeGlowTop:Landroidj/support/v4/widget/EdgeEffectCompat;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLaidOut:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private mOnScrollChangeListener:Landroidj/support/v4/widget/NestedScrollView$OnScrollChangeListener;

.field private final mParentHelper:Landroidj/support/v4/view/NestedScrollingParentHelper;

.field private mSavedState:Landroidj/support/v4/widget/NestedScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScroller:Landroidj/support/v4/widget/ScrollerCompat;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroidj/support/v4/widget/NestedScrollView$AccessibilityDelegate;

    invoke-direct {v0}, Landroidj/support/v4/widget/NestedScrollView$AccessibilityDelegate;-><init>()V

    sput-object v0, Landroidj/support/v4/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Landroidj/support/v4/widget/NestedScrollView$AccessibilityDelegate;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101017a

    aput v2, v0, v1

    sput-object v0, Landroidj/support/v4/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidj/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidj/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v2, p0, Landroidj/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    iput-boolean v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    iput-boolean v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    iput-boolean v2, p0, Landroidj/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mActivePointerId:I

    new-array v0, v3, [I

    iput-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    new-array v0, v3, [I

    iput-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    invoke-direct {p0}, Landroidj/support/v4/widget/NestedScrollView;->initScrollView()V

    sget-object v0, Landroidj/support/v4/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidj/support/v4/widget/NestedScrollView;->setFillViewport(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroidj/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Landroidj/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mParentHelper:Landroidj/support/v4/view/NestedScrollingParentHelper;

    new-instance v0, Landroidj/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroidj/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mChildHelper:Landroidj/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {p0, v2}, Landroidj/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    sget-object v0, Landroidj/support/v4/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Landroidj/support/v4/widget/NestedScrollView$AccessibilityDelegate;

    invoke-static {p0, v0}, Landroidj/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidj/support/v4/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private canScroll()Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    if-ge v2, v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method private static clamp(III)I
    .registers 4

    if-ge p1, p2, :cond_4

    if-gez p0, :cond_6

    :cond_4
    const/4 p0, 0x0

    :cond_5
    :goto_5
    return p0

    :cond_6
    add-int v0, p1, p0

    if-le v0, p2, :cond_5

    sub-int p0, p2, p1

    goto :goto_5
.end method

.method private doScrollY(I)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    iget-boolean v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0, v1, p1}, Landroidj/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0, v1, p1}, Landroidj/support/v4/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_a
.end method

.method private endDrag()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Landroidj/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroidj/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidj/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidj/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    :cond_17
    return-void
.end method

.method private ensureGlows()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroidj/support/v4/widget/EdgeEffectCompat;

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroidj/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroidj/support/v4/widget/EdgeEffectCompat;

    new-instance v1, Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroidj/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroidj/support/v4/widget/EdgeEffectCompat;

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iput-object v2, p0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroidj/support/v4/widget/EdgeEffectCompat;

    iput-object v2, p0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroidj/support/v4/widget/EdgeEffectCompat;

    goto :goto_1e
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 16

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v1, 0x0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v7, v6

    move v3, v6

    :goto_e
    if-ge v7, v9, :cond_57

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v10

    if-ge p2, v10, :cond_54

    if-ge v5, p3, :cond_54

    if-ge p2, v5, :cond_2f

    if-ge v10, p3, :cond_2f

    move v2, v4

    :goto_27
    if-nez v1, :cond_31

    :goto_29
    add-int/lit8 v5, v7, 0x1

    move-object v1, v0

    move v7, v5

    move v3, v2

    goto :goto_e

    :cond_2f
    move v2, v6

    goto :goto_27

    :cond_31
    if-eqz p1, :cond_39

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    if-lt v5, v11, :cond_41

    :cond_39
    if-nez p1, :cond_4a

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v10, v5, :cond_4a

    :cond_41
    move v5, v4

    :goto_42
    if-eqz v3, :cond_4c

    if-eqz v2, :cond_54

    if-eqz v5, :cond_54

    move v2, v3

    goto :goto_29

    :cond_4a
    move v5, v6

    goto :goto_42

    :cond_4c
    if-eqz v2, :cond_50

    move v2, v4

    goto :goto_29

    :cond_50
    if-eqz v5, :cond_54

    move v2, v3

    goto :goto_29

    :cond_54
    move-object v0, v1

    move v2, v3

    goto :goto_29

    :cond_57
    return-object v1
.end method

.method private flingWithNestedDispatch(I)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_9

    if-lez p1, :cond_23

    :cond_9
    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_11

    if-gez p1, :cond_23

    :cond_11
    const/4 v0, 0x1

    :goto_12
    int-to-float v1, p1

    invoke-virtual {p0, v2, v1}, Landroidj/support/v4/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_22

    int-to-float v1, p1

    invoke-virtual {p0, v2, v1, v0}, Landroidj/support/v4/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    if-eqz v0, :cond_22

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/NestedScrollView;->fling(I)V

    :cond_22
    return-void

    :cond_23
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private getVerticalScrollFactorCompat()F
    .registers 6

    iget v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mVerticalScrollFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_34

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_26

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mVerticalScrollFactor:F

    :cond_34
    iget v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mVerticalScrollFactor:F

    return v0
.end method

.method private inChild(II)Z
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2b

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_2b

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v1, v3, v1

    if-ge p2, v1, :cond_2b

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_2b

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p1, v1, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    return v0
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_a
.end method

.method private initScrollView()V
    .registers 3

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidj/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroidj/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mMaximumVelocity:I

    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroidj/support/v4/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 5

    const/4 v1, 0x1

    if-ne p0, p1, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_17

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Landroidj/support/v4/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    goto :goto_4

    :cond_17
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_23

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidj/support/v4/widget/NestedScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_2b

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mLastMotionY:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mActivePointerId:I

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_2b
    return-void

    :cond_2c
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private recycleVelocityTracker()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_c
    return-void
.end method

.method private scrollAndFocus(III)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    add-int v5, v4, v0

    const/16 v0, 0x21

    if-ne p1, v0, :cond_26

    move v0, v1

    :goto_11
    invoke-direct {p0, v0, p2, p3}, Landroidj/support/v4/widget/NestedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_18

    move-object v3, p0

    :cond_18
    if-lt p2, v4, :cond_28

    if-gt p3, v5, :cond_28

    :goto_1c
    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v3, v0, :cond_25

    invoke-virtual {v3, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_25
    return v2

    :cond_26
    move v0, v2

    goto :goto_11

    :cond_28
    if-eqz v0, :cond_31

    sub-int v0, p2, v4

    :goto_2c
    invoke-direct {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->doScrollY(I)V

    move v2, v1

    goto :goto_1c

    :cond_31
    sub-int v0, p3, v5

    goto :goto_2c
.end method

.method private scrollToChild(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidj/support/v4/widget/NestedScrollView;->scrollBy(II)V

    :cond_16
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    if-eqz v2, :cond_10

    const/4 v0, 0x1

    :goto_8
    if-eqz v0, :cond_f

    if-eqz p2, :cond_12

    invoke-virtual {p0, v1, v2}, Landroidj/support/v4/widget/NestedScrollView;->scrollBy(II)V

    :cond_f
    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_8

    :cond_12
    invoke-virtual {p0, v1, v2}, Landroidj/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    goto :goto_f
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public arrowScroll(I)Z
    .registers 9

    const/16 v6, 0x82

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_a

    const/4 v0, 0x0

    :cond_a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getMaxScrollAmount()I

    move-result v2

    if-eqz v3, :cond_57

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Landroidj/support/v4/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_57

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v1}, Landroidj/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroidj/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    invoke-direct {p0, v1}, Landroidj/support/v4/widget/NestedScrollView;->doScrollY(I)V

    invoke-virtual {v3, p1}, Landroid/view/View;->requestFocus(I)Z

    :goto_38
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-direct {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    invoke-virtual {p0, v1}, Landroidj/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->requestFocus()Z

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    :cond_55
    const/4 v0, 0x1

    :goto_56
    return v0

    :cond_57
    const/16 v3, 0x21

    if-ne p1, v3, :cond_69

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    if-ge v3, v2, :cond_69

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    :cond_65
    :goto_65
    if-nez v2, :cond_8e

    move v0, v1

    goto :goto_56

    :cond_69
    if-ne p1, v6, :cond_65

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_65

    invoke-virtual {p0, v1}, Landroidj/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v5, v3, v4

    if-ge v5, v2, :cond_65

    sub-int v2, v3, v4

    goto :goto_65

    :cond_8e
    if-ne p1, v6, :cond_95

    move v1, v2

    :goto_91
    invoke-direct {p0, v1}, Landroidj/support/v4/widget/NestedScrollView;->doScrollY(I)V

    goto :goto_38

    :cond_95
    neg-int v1, v2

    goto :goto_91
.end method

.method public computeHorizontalScrollExtent()I
    .registers 2
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .registers 2
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .registers 2
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .registers 13

    const/4 v0, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroidj/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroidj/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v1

    iget-object v2, p0, Landroidj/support/v4/widget/NestedScrollView;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroidj/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v11

    if-ne v3, v1, :cond_22

    if-eq v4, v11, :cond_50

    :cond_22
    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v6

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getOverScrollMode()I

    move-result v2

    if-eqz v2, :cond_30

    if-ne v2, v0, :cond_51

    if-lez v6, :cond_51

    :cond_30
    move v10, v0

    :goto_31
    sub-int/2addr v1, v3

    sub-int v2, v11, v4

    move-object v0, p0

    move v7, v5

    move v8, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Landroidj/support/v4/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    if-eqz v10, :cond_50

    invoke-direct {p0}, Landroidj/support/v4/widget/NestedScrollView;->ensureGlows()V

    if-gtz v11, :cond_53

    if-lez v4, :cond_53

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroidj/support/v4/widget/EdgeEffectCompat;

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroidj/support/v4/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    :cond_50
    :goto_50
    return-void

    :cond_51
    move v10, v5

    goto :goto_31

    :cond_53
    if-lt v11, v6, :cond_50

    if-ge v4, v6, :cond_50

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroidj/support/v4/widget/EdgeEffectCompat;

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroidj/support/v4/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_50
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    add-int v2, v1, v3

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1b

    add-int/2addr v1, v4

    :cond_1b
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_28

    sub-int/2addr v2, v4

    :cond_28
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v2, :cond_50

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-le v4, v1, :cond_50

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v3, :cond_4a

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, v3, v1

    add-int/lit8 v1, v1, 0x0

    :goto_3c
    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_7

    :cond_4a
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x0

    goto :goto_3c

    :cond_50
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ge v4, v1, :cond_7

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v2, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-le v0, v3, :cond_6e

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v0

    rsub-int/lit8 v0, v0, 0x0

    :goto_64
    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_7

    :cond_6e
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v0

    rsub-int/lit8 v0, v0, 0x0

    goto :goto_64
.end method

.method public computeVerticalScrollExtent()I
    .registers 2
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .registers 3
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .registers 5
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v0, :cond_17

    move v0, v1

    :cond_16
    :goto_16
    return v0

    :cond_17
    invoke-virtual {p0, v3}, Landroidj/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int v1, v0, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-gez v2, :cond_2d

    sub-int/2addr v0, v2

    goto :goto_16

    :cond_2d
    if-le v2, v1, :cond_16

    sub-int v1, v2, v1

    add-int/2addr v0, v1

    goto :goto_16
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mChildHelper:Landroidj/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidj/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mChildHelper:Landroidj/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mChildHelper:Landroidj/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidj/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mChildHelper:Landroidj/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidj/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroidj/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_96

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroidj/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroidj/support/v4/widget/EdgeEffectCompat;

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {v5, v2, v3}, Landroidj/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    iget-object v2, p0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroidj/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_47
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4a
    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroidj/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_96

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    neg-int v4, v2

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43340000  # 180.0f

    int-to-float v4, v2

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, v2, v3}, Landroidj/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroidj/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_93
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_96
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    const/16 v0, 0x21

    const/4 v1, 0x0

    const/16 v2, 0x82

    iget-object v3, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0}, Landroidj/support/v4/widget/NestedScrollView;->canScroll()Z

    move-result v3

    if-nez v3, :cond_3a

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_76

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_24

    const/4 v0, 0x0

    :cond_24
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_38

    if-eq v0, p0, :cond_38

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    :goto_37
    return v0

    :cond_38
    move v0, v1

    goto :goto_37

    :cond_3a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_76

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_78

    move v0, v1

    goto :goto_37

    :sswitch_49
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_54

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_37

    :cond_54
    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->fullScroll(I)Z

    move-result v0

    goto :goto_37

    :sswitch_59
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-nez v0, :cond_64

    invoke-virtual {p0, v2}, Landroidj/support/v4/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_37

    :cond_64
    invoke-virtual {p0, v2}, Landroidj/support/v4/widget/NestedScrollView;->fullScroll(I)Z

    move-result v0

    goto :goto_37

    :sswitch_69
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_74

    :goto_6f
    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->pageScroll(I)Z

    move v0, v1

    goto :goto_37

    :cond_74
    move v0, v2

    goto :goto_6f

    :cond_76
    move v0, v1

    goto :goto_37

    :sswitch_data_78
    .sparse-switch
        0x13 -> :sswitch_49
        0x14 -> :sswitch_59
        0x3e -> :sswitch_69
    .end sparse-switch
.end method

.method public fling(I)V
    .registers 13

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3a

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v1

    sub-int v4, v0, v1

    invoke-virtual {p0, v3}, Landroidj/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v4, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v0 .. v10}, Landroidj/support/v4/widget/ScrollerCompat;->fling(IIIIIIIIII)V

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_3a
    return-void
.end method

.method public fullScroll(I)Z
    .registers 6

    const/4 v1, 0x0

    const/16 v0, 0x82

    if-ne p1, v0, :cond_43

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_36

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_36
    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroidj/support/v4/widget/NestedScrollView;->scrollAndFocus(III)Z

    move-result v0

    return v0

    :cond_43
    move v0, v1

    goto :goto_6
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 6

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroidj/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v1, v2

    sub-int v1, v3, v1

    if-ge v1, v0, :cond_2c

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_7

    :cond_2c
    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_7
.end method

.method public getMaxScrollAmount()I
    .registers 3

    const/high16 v0, 0x3f000000  # 0.5f

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNestedScrollAxes()I
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mParentHelper:Landroidj/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidj/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method getScrollRange()I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_22

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_22
    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 3

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_17

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_7

    :cond_17
    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_7
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mChildHelper:Landroidj/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidj/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isFillViewport()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mFillViewport:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mChildHelper:Landroidj/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidj/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 8

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, v0}, Landroidj/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroidj/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_42

    :cond_10
    :goto_10
    return v0

    :pswitch_11  #0x8
    iget-boolean v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-nez v1, :cond_10

    const/16 v1, 0x9

    invoke-static {p1, v1}, Landroidj/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_10

    invoke-direct {p0}, Landroidj/support/v4/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v2, v1

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    sub-int v2, v3, v2

    if-gez v2, :cond_3e

    move v1, v0

    :cond_33
    :goto_33
    if-eq v1, v3, :cond_10

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    const/4 v0, 0x1

    goto :goto_10

    :cond_3e
    if-gt v2, v1, :cond_33

    move v1, v2

    goto :goto_33

    :pswitch_data_42
    .packed-switch 0x8
        :pswitch_11  #00000008
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_f

    iget-boolean v2, p0, Landroidj/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_f

    :goto_e
    return v0

    :cond_f
    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_d6

    :cond_14
    :goto_14
    :pswitch_14  #0x4, 0x5
    iget-boolean v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    goto :goto_e

    :pswitch_17  #0x2
    iget v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mActivePointerId:I

    if-eq v1, v4, :cond_14

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ne v2, v4, :cond_40

    const-string v0, "NestedScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pointerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onInterceptTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_40
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Landroidj/support/v4/widget/NestedScrollView;->mLastMotionY:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, p0, Landroidj/support/v4/widget/NestedScrollView;->mTouchSlop:I

    if-le v2, v4, :cond_14

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_14

    iput-boolean v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    iput v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mLastMotionY:I

    invoke-direct {p0}, Landroidj/support/v4/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput v3, p0, Landroidj/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_14

    :pswitch_71  #0x0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v2, v1}, Landroidj/support/v4/widget/NestedScrollView;->inChild(II)Z

    move-result v2

    if-nez v2, :cond_87

    iput-boolean v3, p0, Landroidj/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Landroidj/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    goto :goto_14

    :cond_87
    iput v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mLastMotionY:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mActivePointerId:I

    invoke-direct {p0}, Landroidj/support/v4/widget/NestedScrollView;->initOrResetVelocityTracker()V

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroidj/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroidj/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_a5

    move v3, v0

    :cond_a5
    iput-boolean v3, p0, Landroidj/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    invoke-virtual {p0, v5}, Landroidj/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    goto/16 :goto_14

    :pswitch_ac  #0x1, 0x3
    iput-boolean v3, p0, Landroidj/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    iput v4, p0, Landroidj/support/v4/widget/NestedScrollView;->mActivePointerId:I

    invoke-direct {p0}, Landroidj/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroidj/support/v4/widget/ScrollerCompat;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_cc

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_cc
    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    goto/16 :goto_14

    :pswitch_d1  #0x6
    invoke-direct {p0, p1}, Landroidj/support/v4/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_14

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_71  #00000000
        :pswitch_ac  #00000001
        :pswitch_17  #00000002
        :pswitch_ac  #00000003
        :pswitch_14  #00000004
        :pswitch_14  #00000005
        :pswitch_d1  #00000006
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iput-boolean v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v0, p0}, Landroidj/support/v4/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    :cond_18
    iput-object v3, p0, Landroidj/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    iget-boolean v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    if-nez v0, :cond_5b

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mSavedState:Landroidj/support/v4/widget/NestedScrollView$SavedState;

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    iget-object v2, p0, Landroidj/support/v4/widget/NestedScrollView;->mSavedState:Landroidj/support/v4/widget/NestedScrollView$SavedState;

    iget v2, v2, Landroidj/support/v4/widget/NestedScrollView$SavedState;->scrollPosition:I

    invoke-virtual {p0, v0, v2}, Landroidj/support/v4/widget/NestedScrollView;->scrollTo(II)V

    iput-object v3, p0, Landroidj/support/v4/widget/NestedScrollView;->mSavedState:Landroidj/support/v4/widget/NestedScrollView$SavedState;

    :cond_2f
    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6a

    invoke-virtual {p0, v1}, Landroidj/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_3d
    sub-int v2, p5, p3

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    if-le v2, v0, :cond_6c

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroidj/support/v4/widget/NestedScrollView;->scrollTo(II)V

    :cond_5b
    :goto_5b
    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/widget/NestedScrollView;->scrollTo(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    return-void

    :cond_6a
    move v0, v1

    goto :goto_3d

    :cond_6c
    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    if-gez v0, :cond_5b

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/widget/NestedScrollView;->scrollTo(II)V

    goto :goto_5b
.end method

.method protected onMeasure(II)V
    .registers 8

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-boolean v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mFillViewport:Z

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-ge v0, v2, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v3, v0}, Landroidj/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x40000000  # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto :goto_7
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6

    if-nez p4, :cond_8

    float-to-int v0, p3

    invoke-direct {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->flingWithNestedDispatch(I)V

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 5

    invoke-virtual {p0, p2, p3}, Landroidj/support/v4/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p4, v0}, Landroidj/support/v4/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[I)Z

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 12

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, p5}, Landroidj/support/v4/widget/NestedScrollView;->scrollBy(II)V

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int v4, p5, v2

    const/4 v5, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroidj/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[I)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mParentHelper:Landroidj/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidj/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_14

    const/16 p1, 0x82

    :cond_6
    :goto_6
    if-nez p2, :cond_1a

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    :goto_11
    if-nez v1, :cond_23

    :cond_13
    :goto_13
    return v0

    :cond_14
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    const/16 p1, 0x21

    goto :goto_6

    :cond_1a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    goto :goto_11

    :cond_23
    invoke-direct {p0, v1}, Landroidj/support/v4/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_13
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Landroidj/support/v4/widget/NestedScrollView$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_7
    return-void

    :cond_8
    check-cast p1, Landroidj/support/v4/widget/NestedScrollView$SavedState;

    invoke-virtual {p1}, Landroidj/support/v4/widget/NestedScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object p1, p0, Landroidj/support/v4/widget/NestedScrollView;->mSavedState:Landroidj/support/v4/widget/NestedScrollView$SavedState;

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->requestLayout()V

    goto :goto_7
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    new-instance v0, Landroidj/support/v4/widget/NestedScrollView$SavedState;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    iput v1, v0, Landroidj/support/v4/widget/NestedScrollView$SavedState;->scrollPosition:I

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .registers 11

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mOnScrollChangeListener:Landroidj/support/v4/widget/NestedScrollView$OnScrollChangeListener;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mOnScrollChangeListener:Landroidj/support/v4/widget/NestedScrollView$OnScrollChangeListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroidj/support/v4/widget/NestedScrollView$OnScrollChangeListener;->onScrollChange(Landroidj/support/v4/widget/NestedScrollView;IIII)V

    :cond_11
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    if-ne p0, v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p4}, Landroidj/support/v4/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    invoke-direct {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->doScrollY(I)V

    goto :goto_b
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mParentHelper:Landroidj/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidj/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 21

    invoke-direct/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v16

    invoke-static/range {p1 .. p1}, Landroidj/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    if-nez v2, :cond_12

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroidj/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroidj/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    int-to-float v4, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    packed-switch v2, :pswitch_data_302

    :cond_20
    :goto_20
    :pswitch_20  #0x4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2f
    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->recycle()V

    const/4 v2, 0x1

    :goto_33
    return v2

    :pswitch_34  #0x0
    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3c

    const/4 v2, 0x0

    goto :goto_33

    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroidj/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_83

    const/4 v2, 0x1

    :goto_47
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_57

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_57

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_57
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroidj/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_68

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroidj/support/v4/widget/ScrollerCompat;->abortAnimation()V

    :cond_68
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mLastMotionY:I

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mActivePointerId:I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroidj/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    goto :goto_20

    :cond_83
    const/4 v2, 0x0

    goto :goto_47

    :pswitch_85  #0x2
    move-object/from16 v0, p0

    iget v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v17

    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_b8

    const-string v2, "NestedScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroidj/support/v4/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in onTouchEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :cond_b8
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mLastMotionY:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidj/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidj/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v5, v6}, Landroidj/support/v4/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v4

    if-eqz v4, :cond_fd

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidj/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int/2addr v2, v4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidj/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    iget v4, v0, Landroidj/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidj/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroidj/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    :cond_fd
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroidj/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-nez v4, :cond_2fe

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroidj/support/v4/widget/NestedScrollView;->mTouchSlop:I

    if-le v4, v5, :cond_2fe

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_117

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_117
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroidj/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-lez v2, :cond_1b1

    move-object/from16 v0, p0

    iget v4, v0, Landroidj/support/v4/widget/NestedScrollView;->mTouchSlop:I

    sub-int v4, v2, v4

    :goto_124
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v2, v2, v5

    sub-int v2, v3, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mLastMotionY:I

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->getOverScrollMode()I

    move-result v2

    if-eqz v2, :cond_14a

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b8

    if-lez v8, :cond_1b8

    :cond_14a
    const/4 v2, 0x1

    move v15, v2

    :goto_14c
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Landroidj/support/v4/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_16b

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->hasNestedScrollingParent()Z

    move-result v2

    if-nez v2, :cond_16b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    :cond_16b
    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int v11, v2, v18

    const/4 v10, 0x0

    const/4 v12, 0x0

    sub-int v13, v4, v11

    move-object/from16 v0, p0

    iget-object v14, v0, Landroidj/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Landroidj/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v2

    if-eqz v2, :cond_1bb

    move-object/from16 v0, p0

    iget v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mLastMotionY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidj/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mLastMotionY:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidj/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    iget v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidj/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    goto/16 :goto_20

    :cond_1b1
    move-object/from16 v0, p0

    iget v4, v0, Landroidj/support/v4/widget/NestedScrollView;->mTouchSlop:I

    add-int/2addr v4, v2

    goto/16 :goto_124

    :cond_1b8
    const/4 v2, 0x0

    move v15, v2

    goto :goto_14c

    :cond_1bb
    if-eqz v15, :cond_20

    invoke-direct/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->ensureGlows()V

    add-int v2, v18, v4

    if-gez v2, :cond_210

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroidj/support/v4/widget/EdgeEffectCompat;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroidj/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroidj/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1f1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroidj/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    :cond_1f1
    :goto_1f1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroidj/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroidj/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_20b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroidj/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_20

    :cond_20b
    invoke-static/range {p0 .. p0}, Landroidj/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_20

    :cond_210
    if-le v2, v8, :cond_1f1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroidj/support/v4/widget/EdgeEffectCompat;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000  # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroidj/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroidj/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1f1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroidj/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroidj/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    goto :goto_1f1

    :pswitch_243  #0x1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_270

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Landroidj/support/v4/widget/NestedScrollView;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v3, v0, Landroidj/support/v4/widget/NestedScrollView;->mActivePointerId:I

    invoke-static {v2, v3}, Landroidj/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroidj/support/v4/widget/NestedScrollView;->mMinimumVelocity:I

    if-le v3, v4, :cond_27a

    neg-int v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroidj/support/v4/widget/NestedScrollView;->flingWithNestedDispatch(I)V

    :cond_270
    :goto_270
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->endDrag()V

    goto/16 :goto_20

    :cond_27a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroidj/support/v4/widget/ScrollerCompat;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_270

    invoke-static/range {p0 .. p0}, Landroidj/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_270

    :pswitch_297  #0x3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_2bf

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2bf

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroidj/support/v4/widget/ScrollerCompat;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_2bf

    invoke-static/range {p0 .. p0}, Landroidj/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_2bf
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Landroidj/support/v4/widget/NestedScrollView;->endDrag()V

    goto/16 :goto_20

    :pswitch_2c9  #0x5
    invoke-static/range {p1 .. p1}, Landroidj/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Landroidj/support/v4/widget/NestedScrollView;->mLastMotionY:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mActivePointerId:I

    goto/16 :goto_20

    :pswitch_2e4  #0x6
    invoke-direct/range {p0 .. p1}, Landroidj/support/v4/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroidj/support/v4/widget/NestedScrollView;->mLastMotionY:I

    goto/16 :goto_20

    :cond_2fe
    move v4, v2

    goto/16 :goto_124

    nop

    :pswitch_data_302
    .packed-switch 0x0
        :pswitch_34  #00000000
        :pswitch_243  #00000001
        :pswitch_85  #00000002
        :pswitch_297  #00000003
        :pswitch_20  #00000004
        :pswitch_2c9  #00000005
        :pswitch_2e4  #00000006
    .end packed-switch
.end method

.method overScrollByCompat(IIIIIIIIZ)Z
    .registers 20

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getOverScrollMode()I

    move-result v4

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->computeHorizontalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    move-result v2

    if-le v1, v2, :cond_61

    const/4 v1, 0x1

    :goto_f
    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->computeVerticalScrollRange()I

    move-result v2

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->computeVerticalScrollExtent()I

    move-result v3

    if-le v2, v3, :cond_63

    const/4 v2, 0x1

    move v3, v2

    :goto_1b
    if-eqz v4, :cond_22

    const/4 v2, 0x1

    if-ne v4, v2, :cond_66

    if-eqz v1, :cond_66

    :cond_22
    const/4 v1, 0x1

    move v2, v1

    :goto_24
    if-eqz v4, :cond_2b

    const/4 v1, 0x1

    if-ne v4, v1, :cond_69

    if-eqz v3, :cond_69

    :cond_2b
    const/4 v1, 0x1

    :goto_2c
    add-int v7, p3, p1

    if-nez v2, :cond_32

    const/16 p7, 0x0

    :cond_32
    add-int v5, p4, p2

    if-nez v1, :cond_38

    const/16 p8, 0x0

    :cond_38
    move/from16 v0, p7

    neg-int v6, v0

    add-int v2, p7, p5

    move/from16 v0, p8

    neg-int v4, v0

    add-int v3, p8, p6

    if-le v7, v2, :cond_6b

    const/4 v1, 0x1

    move v9, v1

    :goto_46
    if-le v5, v3, :cond_71

    const/4 v1, 0x1

    move v8, v1

    :goto_4a
    if-eqz v8, :cond_58

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Landroidj/support/v4/widget/ScrollerCompat;->springBack(IIIIII)Z

    :cond_58
    invoke-virtual {p0, v2, v3, v9, v8}, Landroidj/support/v4/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    if-nez v9, :cond_5f

    if-eqz v8, :cond_77

    :cond_5f
    const/4 v1, 0x1

    :goto_60
    return v1

    :cond_61
    const/4 v1, 0x0

    goto :goto_f

    :cond_63
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1b

    :cond_66
    const/4 v1, 0x0

    move v2, v1

    goto :goto_24

    :cond_69
    const/4 v1, 0x0

    goto :goto_2c

    :cond_6b
    if-ge v7, v6, :cond_7d

    const/4 v1, 0x1

    move v9, v1

    move v2, v6

    goto :goto_46

    :cond_71
    if-ge v5, v4, :cond_79

    const/4 v1, 0x1

    move v8, v1

    move v3, v4

    goto :goto_4a

    :cond_77
    const/4 v1, 0x0

    goto :goto_60

    :cond_79
    const/4 v1, 0x0

    move v8, v1

    move v3, v5

    goto :goto_4a

    :cond_7d
    const/4 v1, 0x0

    move v9, v1

    move v2, v7

    goto :goto_46
.end method

.method public pageScroll(I)Z
    .registers 6

    const/4 v1, 0x0

    const/16 v0, 0x82

    if-ne p1, v0, :cond_4b

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    if-eqz v0, :cond_4d

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_35

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v1, v3, :cond_35

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    :cond_35
    :goto_35
    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroidj/support/v4/widget/NestedScrollView;->scrollAndFocus(III)Z

    move-result v0

    return v0

    :cond_4b
    move v0, v1

    goto :goto_6

    :cond_4d
    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_35

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_35
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    iget-boolean v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_b

    invoke-direct {p0, p2}, Landroidj/support/v4/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    :goto_7
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_b
    iput-object p2, p0, Landroidj/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_7
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0, p2, p3}, Landroidj/support/v4/widget/NestedScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-direct {p0}, Landroidj/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .registers 7

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_46

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroidj/support/v4/widget/NestedScrollView;->clamp(III)I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p2, v2, v0}, Landroidj/support/v4/widget/NestedScrollView;->clamp(III)I

    move-result v0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v2

    if-ne v1, v2, :cond_43

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    if-eq v0, v2, :cond_46

    :cond_43
    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_46
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_9

    iput-boolean p1, p0, Landroidj/support/v4/widget/NestedScrollView;->mFillViewport:Z

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mChildHelper:Landroidj/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidj/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnScrollChangeListener(Landroidj/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/widget/NestedScrollView;->mOnScrollChangeListener:Landroidj/support/v4/widget/NestedScrollView$OnScrollChangeListener;

    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidj/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidj/support/v4/widget/NestedScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_53

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0, v4}, Landroidj/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    sub-int v0, v3, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    add-int v2, v1, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Landroidj/support/v4/widget/NestedScrollView;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    sub-int/2addr v0, v1

    invoke-virtual {v2, v3, v1, v4, v0}, Landroidj/support/v4/widget/ScrollerCompat;->startScroll(IIII)V

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :goto_4c
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mLastScroll:J

    goto :goto_7

    :cond_53
    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidj/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidj/support/v4/widget/ScrollerCompat;->abortAnimation()V

    :cond_60
    invoke-virtual {p0, p1, p2}, Landroidj/support/v4/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_4c
.end method

.method public final smoothScrollTo(II)V
    .registers 5

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroidj/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mChildHelper:Landroidj/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidj/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/widget/NestedScrollView;->mChildHelper:Landroidj/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidj/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method
