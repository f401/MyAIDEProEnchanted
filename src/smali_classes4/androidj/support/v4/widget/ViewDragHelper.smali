.class public Landroidj/support/v4/widget/ViewDragHelper;
.super Ljava/lang/Object;


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroidj/support/v4/widget/ScrollerCompat;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidj/support/v4/widget/ViewDragHelper$1;

    invoke-direct {v0}, Landroidj/support/v4/widget/ViewDragHelper$1;-><init>()V

    sput-object v0, Landroidj/support/v4/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidj/support/v4/widget/ViewDragHelper$Callback;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    new-instance v0, Landroidj/support/v4/widget/ViewDragHelper$2;

    invoke-direct {v0, p0}, Landroidj/support/v4/widget/ViewDragHelper$2;-><init>(Landroidj/support/v4/widget/ViewDragHelper;)V

    iput-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parent view may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-nez p3, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iput-object p2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000  # 20.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    sget-object v0, Landroidj/support/v4/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {p1, v0}, Landroidj/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroidj/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    return-void
.end method

.method private checkNewEdgeDrag(FFII)Z
    .registers 9

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_31

    iget v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_31

    iget-object v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_31

    iget-object v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_31

    iget v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_32

    iget v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_32

    :cond_31
    :goto_31
    return v0

    :cond_32
    const/high16 v3, 0x3f000000  # 0.5f

    mul-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_49

    iget-object v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v2, p4}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v2, v1, p3

    or-int/2addr v2, p4

    aput v2, v1, p3

    goto :goto_31

    :cond_49
    iget-object v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-nez v2, :cond_31

    iget v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_31

    const/4 v0, 0x1

    goto :goto_31
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    iget-object v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v2, p1}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v2

    if-lez v2, :cond_2c

    move v2, v1

    :goto_e
    iget-object v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v3, p1}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v3

    if-lez v3, :cond_2e

    move v3, v1

    :goto_17
    if-eqz v2, :cond_30

    if-eqz v3, :cond_30

    mul-float v2, p2, p2

    mul-float v3, p3, p3

    add-float/2addr v2, v3

    iget v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    iget v4, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    :cond_2a
    move v0, v1

    goto :goto_4

    :cond_2c
    move v2, v0

    goto :goto_e

    :cond_2e
    move v3, v0

    goto :goto_17

    :cond_30
    if-eqz v2, :cond_3e

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2a

    goto :goto_4

    :cond_3e
    if-eqz v3, :cond_4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2a

    goto :goto_4
.end method

.method private clampMag(FFF)F
    .registers 7

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, p2

    if-gez v2, :cond_b

    move p3, v0

    :cond_a
    :goto_a
    return p3

    :cond_b
    cmpl-float v1, v1, p3

    if-lez v1, :cond_15

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_a

    neg-float p3, p3

    goto :goto_a

    :cond_15
    move p3, p1

    goto :goto_a
.end method

.method private clampMag(III)I
    .registers 5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_8

    const/4 p3, 0x0

    :cond_7
    :goto_7
    return p3

    :cond_8
    if-le v0, p3, :cond_e

    if-gtz p1, :cond_7

    neg-int p3, p3

    goto :goto_7

    :cond_e
    move p3, p1

    goto :goto_7
.end method

.method private clearMotionHistory()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iput v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mPointersDown:I

    goto :goto_6
.end method

.method private clearMotionHistory(I)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aput v2, v0, p1

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aput v2, v0, p1

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aput v2, v0, p1

    iget v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mPointersDown:I

    goto :goto_c
.end method

.method private computeAxisDuration(III)I
    .registers 9

    const/high16 v4, 0x3f800000  # 1.0f

    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-direct {p0, v0}, Landroidj/support/v4/widget/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lez v3, :cond_3e

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    int-to-float v1, v3

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x447a0000  # 1000.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_37
    const/16 v1, 0x258

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_5

    :cond_3e
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p3

    div-float/2addr v0, v1

    add-float/2addr v0, v4

    const/high16 v1, 0x43800000  # 256.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_37
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .registers 14

    iget v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    float-to-int v0, v0

    iget v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Landroidj/support/v4/widget/ViewDragHelper;->clampMag(III)I

    move-result v2

    iget v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    float-to-int v0, v0

    iget v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    float-to-int v1, v1

    invoke-direct {p0, p5, v0, v1}, Landroidj/support/v4/widget/ViewDragHelper;->clampMag(III)I

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int v6, v1, v5

    add-int v7, v0, v4

    if-eqz v2, :cond_4e

    int-to-float v0, v1

    int-to-float v1, v6

    div-float/2addr v0, v1

    move v1, v0

    :goto_2e
    if-eqz v3, :cond_53

    int-to-float v0, v5

    int-to-float v4, v6

    div-float/2addr v0, v4

    :goto_33
    iget-object v4, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p2, v2, v4}, Landroidj/support/v4/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result v2

    iget-object v4, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p3, v3, v4}, Landroidj/support/v4/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result v3

    int-to-float v2, v2

    int-to-float v3, v3

    mul-float/2addr v0, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_4e
    int-to-float v0, v0

    int-to-float v1, v7

    div-float/2addr v0, v1

    move v1, v0

    goto :goto_2e

    :cond_53
    int-to-float v0, v4

    int-to-float v4, v7

    div-float/2addr v0, v4

    goto :goto_33
.end method

.method public static create(Landroid/view/ViewGroup;FLandroidj/support/v4/widget/ViewDragHelper$Callback;)Landroidj/support/v4/widget/ViewDragHelper;
    .registers 6

    invoke-static {p0, p2}, Landroidj/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidj/support/v4/widget/ViewDragHelper$Callback;)Landroidj/support/v4/widget/ViewDragHelper;

    move-result-object v0

    iget v1, v0, Landroidj/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000  # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroidj/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Landroidj/support/v4/widget/ViewDragHelper$Callback;)Landroidj/support/v4/widget/ViewDragHelper;
    .registers 4

    new-instance v0, Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroidj/support/v4/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidj/support/v4/widget/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    iput-boolean v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    iget v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v3, :cond_14

    invoke-virtual {p0, v2}, Landroidj/support/v4/widget/ViewDragHelper;->setDragState(I)V

    :cond_14
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .registers 6

    const/high16 v0, 0x3f000000  # 0.5f

    sub-float v0, p1, v0

    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L  # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private dragTo(IIII)V
    .registers 11

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-eqz p3, :cond_40

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p3}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v2

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v2, v4

    invoke-static {v0, v1}, Landroidj/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    :goto_1d
    if-eqz p4, :cond_3e

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2, p4}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v3

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v3, v5

    invoke-static {v0, v1}, Landroidj/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :goto_2e
    if-nez p3, :cond_32

    if-eqz p4, :cond_3d

    :cond_32
    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v4, v2, v4

    sub-int v5, v3, v5

    invoke-virtual/range {v0 .. v5}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_3d
    return-void

    :cond_3e
    move v3, p2

    goto :goto_2e

    :cond_40
    move v2, p1

    goto :goto_1d
.end method

.method private ensureMotionHistorySizeForId(I)V
    .registers 12

    const/4 v9, 0x0

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v0, v0

    if-gt v0, p1, :cond_70

    :cond_a
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [F

    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [F

    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [F

    add-int/lit8 v3, p1, 0x1

    new-array v3, v3, [F

    add-int/lit8 v4, p1, 0x1

    new-array v4, v4, [I

    add-int/lit8 v5, p1, 0x1

    new-array v5, v5, [I

    add-int/lit8 v6, p1, 0x1

    new-array v6, v6, [I

    iget-object v7, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_62

    iget-object v7, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    iget-object v8, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    iget-object v8, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroidj/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    iget-object v8, p0, Landroidj/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroidj/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    iget-object v8, p0, Landroidj/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    iget-object v8, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v8, v8

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroidj/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    iget-object v8, p0, Landroidj/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v8, v8

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroidj/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    iget-object v8, p0, Landroidj/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v8, v8

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_62
    iput-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    iput-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    iput-object v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    iput-object v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    iput-object v4, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    iput-object v5, p0, Landroidj/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    iput-object v6, p0, Landroidj/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    :cond_70
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .registers 15

    const/4 v0, 0x0

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v2, p1, v7

    sub-int v3, p2, v6

    if-nez v2, :cond_1e

    if-nez v3, :cond_1e

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroidj/support/v4/widget/ScrollerCompat;->abortAnimation()V

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/ViewDragHelper;->setDragState(I)V

    :goto_1d
    return v0

    :cond_1e
    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroidj/support/v4/widget/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v9

    iget-object v4, p0, Landroidj/support/v4/widget/ViewDragHelper;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    move v5, v7

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroidj/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/ViewDragHelper;->setDragState(I)V

    const/4 v0, 0x1

    goto :goto_1d
.end method

.method private getEdgesTouched(II)I
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1a

    or-int/lit8 v0, v0, 0x4

    :cond_1a
    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_27

    or-int/lit8 v0, v0, 0x2

    :cond_27
    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_34

    or-int/lit8 v0, v0, 0x8

    :cond_34
    return v0
.end method

.method private isValidPointerForActionMove(I)Z
    .registers 5

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "ViewDragHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because ACTION_DOWN was not received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "for this pointer before ACTION_MOVE. It likely happened because "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x1

    goto :goto_31
.end method

.method private releaseViewForPointerUp()V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    invoke-static {v0, v1}, Landroidj/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    iget v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    iget v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    invoke-direct {p0, v0, v1, v2}, Landroidj/support/v4/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v0

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    invoke-static {v1, v2}, Landroidj/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    iget v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    iget v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    invoke-direct {p0, v1, v2, v3}, Landroidj/support/v4/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidj/support/v4/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .registers 7

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroidj/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_32

    :goto_7
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Landroidj/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_10

    or-int/lit8 v0, v0, 0x4

    :cond_10
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Landroidj/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_19

    or-int/lit8 v0, v0, 0x2

    :cond_19
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Landroidj/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_23

    or-int/lit8 v0, v0, 0x8

    :cond_23
    if-eqz v0, :cond_31

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, v0, p3}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    :cond_31
    return-void

    :cond_32
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private saveInitialMotion(FFI)V
    .registers 7

    invoke-direct {p0, p3}, Landroidj/support/v4/widget/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Landroidj/support/v4/widget/ViewDragHelper;->getEdgesTouched(II)I

    move-result v1

    aput v1, v0, p3

    iget v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_25

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-direct {p0, v2}, Landroidj/support/v4/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v3

    if-nez v3, :cond_14

    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_14
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Landroidj/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    iget-object v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    aput v4, v3, v2

    goto :goto_11

    :cond_25
    return-void
.end method


# virtual methods
.method public abort()V
    .registers 7

    invoke-virtual {p0}, Landroidj/support/v4/widget/ViewDragHelper;->cancel()V

    iget v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidj/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v4

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidj/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v5

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidj/support/v4/widget/ScrollerCompat;->abortAnimation()V

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidj/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v2

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidj/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v4, v2, v4

    sub-int v5, v3, v5

    invoke-virtual/range {v0 .. v5}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/ViewDragHelper;->setDragState(I)V

    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
    .registers 18

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5c

    move-object v7, p1

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    :goto_16
    if-ltz v8, :cond_5c

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_58

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_58

    add-int v0, p6, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_58

    add-int v0, p6, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_58

    const/4 v2, 0x1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v5, v0, v3

    add-int v0, p6, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v6, v0, v3

    move-object v0, p0

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroidj/support/v4/widget/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v0, 0x1

    :goto_57
    return v0

    :cond_58
    add-int/lit8 v0, v8, -0x1

    move v8, v0

    goto :goto_16

    :cond_5c
    if-eqz p2, :cond_6e

    neg-int v0, p3

    invoke-static {p1, v0}, Landroidj/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_6c

    neg-int v0, p4

    invoke-static {p1, v0}, Landroidj/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_6e

    :cond_6c
    const/4 v0, 0x1

    goto :goto_57

    :cond_6e
    const/4 v0, 0x0

    goto :goto_57
.end method

.method public cancel()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    invoke-direct {p0}, Landroidj/support/v4/widget/ViewDragHelper;->clearMotionHistory()V

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_12
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iput-object p1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    iput p2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/ViewDragHelper;->setDragState(I)V

    return-void
.end method

.method public checkTouchSlop(I)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v2, v1

    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_e

    invoke-virtual {p0, p1, v1}, Landroidj/support/v4/widget/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v0, 0x1

    :cond_e
    return v0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public checkTouchSlop(II)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2}, Landroidj/support/v4/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    and-int/lit8 v2, p1, 0x1

    if-ne v2, v1, :cond_3b

    move v3, v1

    :goto_e
    and-int/lit8 v2, p1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3d

    move v2, v1

    :goto_14
    iget-object v4, p0, Landroidj/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    aget v4, v4, p2

    iget-object v5, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v5, v5, p2

    sub-float/2addr v4, v5

    iget-object v5, p0, Landroidj/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    aget v5, v5, p2

    iget-object v6, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    aget v6, v6, p2

    sub-float/2addr v5, v6

    if-eqz v3, :cond_3f

    if-eqz v2, :cond_3f

    mul-float v2, v4, v4

    mul-float v3, v5, v5

    add-float/2addr v2, v3

    iget v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    iget v4, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    :cond_39
    move v0, v1

    goto :goto_8

    :cond_3b
    move v3, v0

    goto :goto_e

    :cond_3d
    move v2, v0

    goto :goto_14

    :cond_3f
    if-eqz v3, :cond_4d

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_39

    goto :goto_8

    :cond_4d
    if-eqz v2, :cond_8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_39

    goto :goto_8
.end method

.method public continueSettling(Z)Z
    .registers 11

    const/4 v8, 0x2

    const/4 v6, 0x0

    iget v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v8, :cond_64

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidj/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v7

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidj/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v2

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidj/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v4, v2, v0

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    if-eqz v4, :cond_2f

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-static {v0, v4}, Landroidj/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    :cond_2f
    if-eqz v5, :cond_36

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-static {v0, v5}, Landroidj/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_36
    if-nez v4, :cond_3a

    if-eqz v5, :cond_41

    :cond_3a
    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_41
    if-eqz v7, :cond_70

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidj/support/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v0

    if-ne v2, v0, :cond_70

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidj/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v0

    if-ne v3, v0, :cond_70

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidj/support/v4/widget/ScrollerCompat;->abortAnimation()V

    move v0, v6

    :goto_59
    if-nez v0, :cond_64

    if-eqz p1, :cond_6a

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_64
    :goto_64
    iget v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v8, :cond_6e

    const/4 v0, 0x1

    :goto_69
    return v0

    :cond_6a
    invoke-virtual {p0, v6}, Landroidj/support/v4/widget/ViewDragHelper;->setDragState(I)V

    goto :goto_64

    :cond_6e
    move v0, v6

    goto :goto_69

    :cond_70
    move v0, v7

    goto :goto_59
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_34

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v2, v1}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_30

    :goto_2f
    return-object v0

    :cond_30
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_34
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public flingCapturedView(IIII)V
    .registers 14

    iget-boolean v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mScroller:Landroidj/support/v4/widget/ScrollerCompat;

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Landroidj/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    invoke-static {v3, v4}, Landroidj/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroidj/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Landroidj/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    invoke-static {v4, v5}, Landroidj/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v4

    float-to-int v4, v4

    move v5, p1

    move v6, p3

    move v7, p2

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Landroidj/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/ViewDragHelper;->setDragState(I)V

    return-void
.end method

.method public getActivePointerId()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object v0
.end method

.method public getEdgeSize()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    return v0
.end method

.method public getMinVelocity()F
    .registers 2

    iget v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    return v0
.end method

.method public getTouchSlop()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Landroidj/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public isEdgeTouched(I)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v2, v1

    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_e

    invoke-virtual {p0, p1, v1}, Landroidj/support/v4/widget/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v0, 0x1

    :cond_e
    return v0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public isEdgeTouched(II)Z
    .registers 4

    invoke-virtual {p0, p2}, Landroidj/support/v4/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, p2

    and-int/2addr v0, p1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isPointerDown(I)Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mPointersDown:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .registers 11

    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x1

    invoke-static {p1}, Landroidj/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-static {p1}, Landroidj/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v3

    if-nez v2, :cond_11

    invoke-virtual {p0}, Landroidj/support/v4/widget/ViewDragHelper;->cancel()V

    :cond_11
    iget-object v4, p0, Landroidj/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1b

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroidj/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1b
    iget-object v4, p0, Landroidj/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v2, :pswitch_data_16e

    :cond_23
    :goto_23
    :pswitch_23  #0x4
    return-void

    :pswitch_24  #0x0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {p0, v3, v4}, Landroidj/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0}, Landroidj/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    invoke-virtual {p0, v3, v0}, Landroidj/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v1, v1, v0

    iget v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_23

    iget-object v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    iget v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_23

    :pswitch_4e  #0x5
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Landroidj/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    iget v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mDragState:I

    if-nez v3, :cond_7c

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroidj/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroidj/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v1, v1, v0

    iget v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_23

    iget-object v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    iget v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_23

    :cond_7c
    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroidj/support/v4/widget/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroidj/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto :goto_23

    :pswitch_8a  #0x2
    iget v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mDragState:I

    if-ne v1, v8, :cond_ca

    iget v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    invoke-direct {p0, v0}, Landroidj/support/v4/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v0

    if-eqz v0, :cond_23

    iget v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget-object v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    iget v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    iget v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v2, v3, v1, v0}, Landroidj/support/v4/widget/ViewDragHelper;->dragTo(IIII)V

    invoke-direct {p0, p1}, Landroidj/support/v4/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_23

    :cond_ca
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    :goto_ce
    if-ge v0, v1, :cond_f8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-direct {p0, v2}, Landroidj/support/v4/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v3

    if-nez v3, :cond_dd

    :cond_da
    add-int/lit8 v0, v0, 0x1

    goto :goto_ce

    :cond_dd
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v5, v5, v2

    sub-float v5, v3, v5

    iget-object v6, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    aget v6, v6, v2

    sub-float v6, v4, v6

    invoke-direct {p0, v5, v6, v2}, Landroidj/support/v4/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    iget v7, p0, Landroidj/support/v4/widget/ViewDragHelper;->mDragState:I

    if-ne v7, v8, :cond_fd

    :cond_f8
    :goto_f8
    invoke-direct {p0, p1}, Landroidj/support/v4/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_23

    :cond_fd
    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Landroidj/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v5, v6}, Landroidj/support/v4/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_da

    invoke-virtual {p0, v3, v2}, Landroidj/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_da

    goto :goto_f8

    :pswitch_110  #0x6
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mDragState:I

    if-ne v3, v8, :cond_14e

    iget v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v2, v3, :cond_14e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    :goto_120
    if-ge v0, v3, :cond_16b

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget v5, p0, Landroidj/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v4, v5, :cond_12d

    :cond_12a
    add-int/lit8 v0, v0, 0x1

    goto :goto_120

    :cond_12d
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Landroidj/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v5, v6, :cond_12a

    iget-object v5, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v5, v4}, Landroidj/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_12a

    iget v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    :goto_149
    if-ne v0, v1, :cond_14e

    invoke-direct {p0}, Landroidj/support/v4/widget/ViewDragHelper;->releaseViewForPointerUp()V

    :cond_14e
    invoke-direct {p0, v2}, Landroidj/support/v4/widget/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_23

    :pswitch_153  #0x1
    iget v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v8, :cond_15a

    invoke-direct {p0}, Landroidj/support/v4/widget/ViewDragHelper;->releaseViewForPointerUp()V

    :cond_15a
    invoke-virtual {p0}, Landroidj/support/v4/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_23

    :pswitch_15f  #0x3
    iget v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v8, :cond_166

    invoke-direct {p0, v5, v5}, Landroidj/support/v4/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    :cond_166
    invoke-virtual {p0}, Landroidj/support/v4/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_23

    :cond_16b
    move v0, v1

    goto :goto_149

    nop

    :pswitch_data_16e
    .packed-switch 0x0
        :pswitch_24  #00000000
        :pswitch_153  #00000001
        :pswitch_8a  #00000002
        :pswitch_15f  #00000003
        :pswitch_23  #00000004
        :pswitch_4e  #00000005
        :pswitch_110  #00000006
    .end packed-switch
.end method

.method setDragState(I)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_19

    iput p1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mDragState:I

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    iget v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mDragState:I

    if-nez v0, :cond_19

    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    :cond_19
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .registers 2

    iput p1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    return-void
.end method

.method public setMinVelocity(F)V
    .registers 2

    iput p1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .registers 6

    iget-boolean v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    invoke-static {v0, v1}, Landroidj/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    invoke-static {v1, v2}, Landroidj/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroidj/support/v4/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15

    invoke-static {p1}, Landroidj/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1}, Landroidj/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroidj/support/v4/widget/ViewDragHelper;->cancel()V

    :cond_d
    iget-object v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_17

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_17
    iget-object v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v0, :pswitch_data_130

    :cond_1f
    :goto_1f
    :pswitch_1f  #0x4
    iget v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12d

    const/4 v0, 0x1

    :goto_25
    return v0

    :pswitch_26  #0x0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroidj/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v0, v1, :cond_48

    iget v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_48

    invoke-virtual {p0, v0, v2}, Landroidj/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    :cond_48
    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, v2

    iget v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1f

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    iget v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v0, v3

    invoke-virtual {v1, v0, v2}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_1f

    :pswitch_5a  #0x5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-direct {p0, v2, v1, v0}, Landroidj/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    iget v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mDragState:I

    if-nez v3, :cond_7f

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v1, v1, v0

    iget v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    iget v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_1f

    :cond_7f
    iget v3, p0, Landroidj/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1f

    float-to-int v2, v2

    float-to-int v1, v1

    invoke-virtual {p0, v2, v1}, Landroidj/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v1, v2, :cond_1f

    invoke-virtual {p0, v1, v0}, Landroidj/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto :goto_1f

    :pswitch_92  #0x2
    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_a0
    if-ge v1, v2, :cond_107

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-direct {p0, v3}, Landroidj/support/v4/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v0

    if-nez v0, :cond_b0

    :cond_ac
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a0

    :cond_b0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v5, v5, v3

    sub-float v5, v0, v5

    iget-object v6, p0, Landroidj/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    aget v6, v6, v3

    sub-float v6, v4, v6

    float-to-int v0, v0

    float-to-int v4, v4

    invoke-virtual {p0, v0, v4}, Landroidj/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_10c

    invoke-direct {p0, v4, v5, v6}, Landroidj/support/v4/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_10c

    const/4 v0, 0x1

    :goto_d3
    if-eqz v0, :cond_10e

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    float-to-int v8, v5

    iget-object v9, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    add-int/2addr v8, v7

    float-to-int v10, v5

    invoke-virtual {v9, v4, v8, v10}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    float-to-int v10, v6

    iget-object v11, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    add-int/2addr v10, v9

    float-to-int v12, v6

    invoke-virtual {v11, v4, v10, v12}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v10

    iget-object v11, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v11, v4}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v11

    iget-object v12, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v12, v4}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v12

    if-eqz v11, :cond_101

    if-lez v11, :cond_10e

    if-ne v8, v7, :cond_10e

    :cond_101
    if-eqz v12, :cond_107

    if-lez v12, :cond_10e

    if-ne v10, v9, :cond_10e

    :cond_107
    :goto_107
    invoke-direct {p0, p1}, Landroidj/support/v4/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_1f

    :cond_10c
    const/4 v0, 0x0

    goto :goto_d3

    :cond_10e
    invoke-direct {p0, v5, v6, v3}, Landroidj/support/v4/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    iget v5, p0, Landroidj/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_107

    if-eqz v0, :cond_ac

    invoke-virtual {p0, v4, v3}, Landroidj/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_ac

    goto :goto_107

    :pswitch_11f  #0x6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroidj/support/v4/widget/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_1f

    :pswitch_128  #0x1, 0x3
    invoke-virtual {p0}, Landroidj/support/v4/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_1f

    :cond_12d
    const/4 v0, 0x0

    goto/16 :goto_25

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_26  #00000000
        :pswitch_128  #00000001
        :pswitch_92  #00000002
        :pswitch_128  #00000003
        :pswitch_1f  #00000004
        :pswitch_5a  #00000005
        :pswitch_11f  #00000006
    .end packed-switch
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .registers 6

    const/4 v1, 0x0

    iput-object p1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Landroidj/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    invoke-direct {p0, p2, p3, v1, v1}, Landroidj/support/v4/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    if-nez v0, :cond_17

    iget v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mDragState:I

    if-nez v1, :cond_17

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    iput-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    :cond_17
    return v0
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne p1, v1, :cond_a

    iget v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v1, p2, :cond_a

    :goto_9
    return v0

    :cond_a
    if-eqz p1, :cond_1a

    iget-object v1, p0, Landroidj/support/v4/widget/ViewDragHelper;->mCallback:Landroidj/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, p1, p2}, Landroidj/support/v4/widget/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    iput p2, p0, Landroidj/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {p0, p1, p2}, Landroidj/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    goto :goto_9

    :cond_1a
    const/4 v0, 0x0

    goto :goto_9
.end method
