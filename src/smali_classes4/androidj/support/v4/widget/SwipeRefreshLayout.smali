.class public Landroidj/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroidj/support/v4/view/NestedScrollingParent;
.implements Landroidj/support/v4/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;,
        Landroidj/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATE_TO_START_DURATION:I = 0xc8

.field private static final ANIMATE_TO_TRIGGER_DURATION:I = 0xc8

.field private static final CIRCLE_BG_LIGHT:I = -0x50506

.field static final CIRCLE_DIAMETER:I = 0x28
    .annotation build Landroidj/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CIRCLE_DIAMETER_LARGE:I = 0x38
    .annotation build Landroidj/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field public static final DEFAULT:I = 0x1

.field private static final DEFAULT_CIRCLE_TARGET:I = 0x40

.field private static final DRAG_RATE:F = 0.5f

.field private static final INVALID_POINTER:I = -0x1

.field public static final LARGE:I = 0x0

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_PROGRESS_ANGLE:F = 0.8f

.field private static final SCALE_DOWN_DURATION:I = 0x96

.field private static final STARTING_PROGRESS_ALPHA:I = 0x4c


# instance fields
.field private mActivePointerId:I

.field private mAlphaMaxAnimation:Landroid/view/animation/Animation;

.field private mAlphaStartAnimation:Landroid/view/animation/Animation;

.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mChildScrollUpCallback:Landroidj/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

.field private mCircleDiameter:I

.field mCircleView:Landroidj/support/v4/widget/CircleImageView;

.field private mCircleViewIndex:I

.field mCurrentTargetOffsetTop:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFrom:I

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field mListener:Landroidj/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNestedScrollInProgress:Z

.field private final mNestedScrollingChildHelper:Landroidj/support/v4/view/NestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Landroidj/support/v4/view/NestedScrollingParentHelper;

.field mNotify:Z

.field protected mOriginalOffsetTop:I

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field mRefreshing:Z

.field private mReturningToStart:Z

.field mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field mSpinnerOffsetEnd:I

.field mStartingScale:F

.field private mTarget:Landroid/view/View;

.field private mTotalDragDistance:F

.field private mTotalUnconsumed:F

.field private mTouchSlop:I

.field mUsingCustomStart:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroidj/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidj/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Landroidj/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidj/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v2, 0x2

    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    new-array v0, v2, [I

    iput-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mParentScrollConsumed:[I

    new-array v0, v2, [I

    iput-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    iput v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    iput v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    new-instance v0, Landroidj/support/v4/widget/SwipeRefreshLayout$1;

    invoke-direct {v0, p0}, Landroidj/support/v4/widget/SwipeRefreshLayout$1;-><init>(Landroidj/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Landroidj/support/v4/widget/SwipeRefreshLayout$6;

    invoke-direct {v0, p0}, Landroidj/support/v4/widget/SwipeRefreshLayout$6;-><init>(Landroidj/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    new-instance v0, Landroidj/support/v4/widget/SwipeRefreshLayout$7;

    invoke-direct {v0, p0}, Landroidj/support/v4/widget/SwipeRefreshLayout$7;-><init>(Landroidj/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    invoke-virtual {p0, v3}, Landroidj/support/v4/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000  # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x42200000  # 40.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    invoke-direct {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->createProgressView()V

    invoke-static {p0, v4}, Landroidj/support/v4/view/ViewCompat;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42800000  # 64.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    int-to-float v0, v0

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    new-instance v0, Landroidj/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Landroidj/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidj/support/v4/view/NestedScrollingParentHelper;

    new-instance v0, Landroidj/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroidj/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidj/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {p0, v4}, Landroidj/support/v4/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    neg-int v0, v0

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->moveToStart(F)V

    sget-object v0, Landroidj/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 7

    iput p1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_1c

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroidj/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1c
    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroidj/support/v4/widget/CircleImageView;->clearAnimation()V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 7

    iget-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Landroidj/support/v4/widget/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    :goto_7
    return-void

    :cond_8
    iput p1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_24

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroidj/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_24
    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroidj/support/v4/widget/CircleImageView;->clearAnimation()V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7
.end method

.method private createProgressView()V
    .registers 4

    const v2, -0x50506

    new-instance v0, Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroidj/support/v4/widget/CircleImageView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    new-instance v0, Landroidj/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroidj/support/v4/widget/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v2}, Landroidj/support/v4/widget/MaterialProgressDrawable;->setBackgroundColor(I)V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/CircleImageView;->setVisibility(I)V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private ensureTarget()V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_19

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_19

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    iput-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    :cond_19
    return-void

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private finishSpinner(F)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d

    invoke-direct {p0, v3, v3}, Landroidj/support/v4/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    :goto_c
    return-void

    :cond_d
    iput-boolean v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v1, v1}, Landroidj/support/v4/widget/MaterialProgressDrawable;->setStartEndTrim(FF)V

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-nez v1, :cond_1e

    new-instance v0, Landroidj/support/v4/widget/SwipeRefreshLayout$5;

    invoke-direct {v0, p0}, Landroidj/support/v4/widget/SwipeRefreshLayout$5;-><init>(Landroidj/support/v4/widget/SwipeRefreshLayout;)V

    :cond_1e
    iget v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    invoke-direct {p0, v1, v0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v2}, Landroidj/support/v4/widget/MaterialProgressDrawable;->showArrow(Z)V

    goto :goto_c
.end method

.method private isAlphaUsedForScale()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isAnimationRunning(Landroid/view/animation/Animation;)Z
    .registers 3

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private moveSpinner(F)V
    .registers 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/high16 v6, 0x40800000  # 4.0f

    const v13, 0x3f4ccccd  # 0.8f

    const/4 v12, 0x0

    const/high16 v11, 0x40000000  # 2.0f

    const/high16 v10, 0x3f800000  # 1.0f

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/MaterialProgressDrawable;->showArrow(Z)V

    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL  # 0.4

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v0, v2

    const/high16 v2, 0x40a00000  # 5.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x40400000  # 3.0f

    div-float v2, v0, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    iget-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v0, :cond_d7

    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget v5, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    :goto_41
    sub-float/2addr v3, v4

    mul-float v4, v0, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v0

    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float v4, v3, v6

    float-to-double v4, v4

    div-float/2addr v3, v6

    float-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L  # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-float v3, v4

    mul-float/2addr v3, v11

    iget v4, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    mul-float v5, v0, v3

    mul-float/2addr v5, v11

    mul-float/2addr v0, v1

    add-float/2addr v0, v5

    float-to-int v0, v0

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroidj/support/v4/widget/CircleImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_71

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroidj/support/v4/widget/CircleImageView;->setVisibility(I)V

    :cond_71
    iget-boolean v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-nez v1, :cond_7f

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-static {v1, v10}, Landroidj/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-static {v1, v10}, Landroidj/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    :cond_7f
    iget-boolean v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v1, :cond_8e

    iget v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    div-float v1, p1, v1

    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    :cond_8e
    iget v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_dc

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1}, Landroidj/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v1

    const/16 v5, 0x4c

    if-le v1, v5, :cond_a9

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, v1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_a9

    invoke-direct {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->startProgressAlphaStartAnimation()V

    :cond_a9
    :goto_a9
    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    mul-float v5, v2, v13

    invoke-static {v13, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v1, v12, v5}, Landroidj/support/v4/widget/MaterialProgressDrawable;->setStartEndTrim(FF)V

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v1, v5}, Landroidj/support/v4/widget/MaterialProgressDrawable;->setArrowScale(F)V

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    const v5, 0x3ecccccd  # 0.4f

    mul-float/2addr v2, v5

    const/high16 v5, 0x3e800000  # 0.25f

    sub-float/2addr v2, v5

    mul-float/2addr v3, v11

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000  # 0.5f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroidj/support/v4/widget/MaterialProgressDrawable;->setProgressRotation(F)V

    add-int/2addr v0, v4

    iget v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    return-void

    :cond_d7
    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    int-to-float v0, v0

    goto/16 :goto_41

    :cond_dc
    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1}, Landroidj/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v1

    const/16 v5, 0xff

    if-ge v1, v5, :cond_a9

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, v1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_a9

    invoke-direct {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->startProgressAlphaMaxAnimation()V

    goto :goto_a9
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-static {p1}, Landroidj/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_15

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    :cond_15
    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private setColorViewAlpha(I)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroidj/support/v4/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroidj/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    return-void
.end method

.method private setRefreshing(ZZ)V
    .registers 5

    iget-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_16

    iput-boolean p2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    invoke-direct {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    iput-boolean p1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    iget-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eqz v0, :cond_17

    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_16
.end method

.method private startAlphaAnimation(II)Landroid/view/animation/Animation;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v1, :cond_c

    invoke-direct {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v1

    if-eqz v1, :cond_c

    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Landroidj/support/v4/widget/SwipeRefreshLayout$4;

    invoke-direct {v1, p0, p1, p2}, Landroidj/support/v4/widget/SwipeRefreshLayout$4;-><init>(Landroidj/support/v4/widget/SwipeRefreshLayout;II)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v2, v0}, Landroidj/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroidj/support/v4/widget/CircleImageView;->clearAnimation()V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v1

    goto :goto_b
.end method

.method private startDragging(F)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    sub-float v0, p1, v0

    iget v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21

    iget-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_21

    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    iget v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    :cond_21
    return-void
.end method

.method private startProgressAlphaMaxAnimation()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroidj/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private startProgressAlphaStartAnimation()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroidj/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iput p1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    invoke-direct {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroidj/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    :goto_11
    new-instance v0, Landroidj/support/v4/widget/SwipeRefreshLayout$8;

    invoke-direct {v0, p0}, Landroidj/support/v4/widget/SwipeRefreshLayout$8;-><init>(Landroidj/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz p2, :cond_26

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroidj/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_26
    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroidj/support/v4/widget/CircleImageView;->clearAnimation()V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_33
    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-static {v0}, Landroidj/support/v4/view/ViewCompat;->getScaleX(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    goto :goto_11
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/CircleImageView;->setVisibility(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    :cond_13
    new-instance v0, Landroidj/support/v4/widget/SwipeRefreshLayout$2;

    invoke-direct {v0, p0}, Landroidj/support/v4/widget/SwipeRefreshLayout$2;-><init>(Landroidj/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz p1, :cond_29

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroidj/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_29
    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroidj/support/v4/widget/CircleImageView;->clearAnimation()V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .registers 6

    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroidj/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroidj/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-interface {v0, p0, v1}, Landroidj/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;->canChildScrollUp(Landroidj/support/v4/widget/SwipeRefreshLayout;Landroid/view/View;)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_50

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3c

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_3a

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    if-ge v3, v0, :cond_3c

    :cond_3a
    move v0, v1

    goto :goto_f

    :cond_3c
    move v0, v2

    goto :goto_f

    :cond_3e
    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-static {v0, v4}, Landroidj/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_57

    :cond_4e
    move v0, v1

    goto :goto_f

    :cond_50
    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-static {v0, v4}, Landroidj/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    goto :goto_f

    :cond_57
    move v0, v2

    goto :goto_f
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidj/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidj/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidj/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidj/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidj/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidj/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidj/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 4

    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    if-gez v0, :cond_5

    :cond_4
    :goto_4
    return p2

    :cond_5
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_c

    iget p2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    goto :goto_4

    :cond_c
    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    if-lt p2, v0, :cond_4

    add-int/lit8 p2, p2, 0x1

    goto :goto_4
.end method

.method public getNestedScrollAxes()I
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidj/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidj/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getProgressCircleDiameter()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    return v0
.end method

.method public getProgressViewEndOffset()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    return v0
.end method

.method public getProgressViewStartOffset()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidj/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidj/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidj/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidj/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isRefreshing()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    return v0
.end method

.method moveToStart(F)V
    .registers 5

    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    iget v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroidj/support/v4/widget/CircleImageView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->reset()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v3, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    invoke-static {p1}, Landroidj/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    iget-boolean v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v2, :cond_11

    if-nez v1, :cond_11

    iput-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    :cond_11
    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-boolean v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v2, :cond_29

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v2

    if-nez v2, :cond_29

    iget-boolean v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v2, :cond_29

    iget-boolean v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v2, :cond_2a

    :cond_29
    :goto_29
    return v0

    :cond_2a
    packed-switch v1, :pswitch_data_7a

    :goto_2d
    :pswitch_2d  #0x4, 0x5
    iget-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    goto :goto_29

    :pswitch_30  #0x0
    iget v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget-object v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v2}, Landroidj/support/v4/widget/CircleImageView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidj/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    iput-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    iget v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v1, :cond_29

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    goto :goto_2d

    :pswitch_54  #0x2
    iget v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    if-ne v1, v3, :cond_60

    sget-object v1, Landroidj/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_60
    iget v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v1, :cond_29

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-direct {p0, v0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->startDragging(F)V

    goto :goto_2d

    :pswitch_70  #0x6
    invoke-direct {p0, p1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_2d

    :pswitch_74  #0x1, 0x3
    iput-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    iput v3, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_2d

    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_30  #00000000
        :pswitch_74  #00000001
        :pswitch_54  #00000002
        :pswitch_74  #00000003
        :pswitch_2d  #00000004
        :pswitch_2d  #00000005
        :pswitch_70  #00000006
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 13

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v2, :cond_16

    invoke-direct {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    :cond_16
    iget-object v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v3

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/view/View;->layout(IIII)V

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroidj/support/v4/widget/CircleImageView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v2}, Landroidj/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    div-int/lit8 v4, v0, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroidj/support/v4/widget/CircleImageView;->layout(IIII)V

    goto :goto_e
.end method

.method public onMeasure(II)V
    .registers 8

    const/high16 v4, 0x40000000  # 2.0f

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_c

    invoke-direct {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    :cond_c
    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    iget v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/widget/CircleImageView;->measure(II)V

    const/4 v0, -0x1

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    const/4 v0, 0x0

    :goto_4f
    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_10

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    if-ne v1, v2, :cond_60

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    goto :goto_10

    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6

    invoke-virtual {p0, p2, p3, p4}, Landroidj/support/v4/widget/SwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 5

    invoke-virtual {p0, p2, p3}, Landroidj/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 11

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-lez p3, :cond_20

    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_20

    int-to-float v0, p3

    iget v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5d

    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    float-to-int v0, v0

    sub-int v0, p3, v0

    aput v0, p4, v4

    iput v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    :goto_1b
    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->moveSpinner(F)V

    :cond_20
    iget-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v0, :cond_3d

    if-lez p3, :cond_3d

    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3d

    aget v0, p4, v4

    sub-int v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_3d

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/CircleImageView;->setVisibility(I)V

    :cond_3d
    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mParentScrollConsumed:[I

    aget v1, p4, v5

    sub-int v1, p2, v1

    aget v2, p4, v4

    sub-int v2, p3, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Landroidj/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_5c

    aget v1, p4, v5

    aget v2, v0, v5

    add-int/2addr v1, v2

    aput v1, p4, v5

    aget v1, p4, v4

    aget v0, v0, v4

    add-int/2addr v0, v1

    aput v0, p4, v4

    :cond_5c
    return-void

    :cond_5d
    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    aput p3, p4, v4

    goto :goto_1b
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 12

    iget-object v5, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroidj/support/v4/widget/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/2addr v0, p5

    if-gez v0, :cond_27

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v1

    if-nez v1, :cond_27

    iget v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->moveSpinner(F)V

    :cond_27
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidj/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidj/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    and-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    const/4 v0, 0x0

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v0, :cond_14

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidj/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidj/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_16

    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->finishSpinner(F)V

    iput v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    :cond_16
    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->stopNestedScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const/high16 v3, 0x3f000000  # 0.5f

    const/4 v0, 0x0

    invoke-static {p1}, Landroidj/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    iget-boolean v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v2, :cond_f

    if-nez v1, :cond_f

    iput-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    :cond_f
    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_27

    iget-boolean v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v2, :cond_27

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v2

    if-nez v2, :cond_27

    iget-boolean v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v2, :cond_27

    iget-boolean v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v2, :cond_28

    :cond_27
    :goto_27
    :pswitch_27  #0x3
    return v0

    :cond_28
    packed-switch v1, :pswitch_data_9c

    :cond_2b
    :goto_2b
    :pswitch_2b  #0x4
    const/4 v0, 0x1

    goto :goto_27

    :pswitch_2d  #0x0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    iput-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    goto :goto_2b

    :pswitch_36  #0x2
    iget v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_46

    sget-object v1, Landroidj/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_46
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-direct {p0, v1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->startDragging(F)V

    iget-boolean v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_2b

    iget v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_27

    invoke-direct {p0, v1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->moveSpinner(F)V

    goto :goto_2b

    :pswitch_5e  #0x5
    invoke-static {p1}, Landroidj/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    if-gez v1, :cond_6c

    sget-object v1, Landroidj/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_6c
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_2b

    :pswitch_73  #0x6
    invoke-direct {p0, p1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_2b

    :pswitch_77  #0x1
    iget v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_87

    sget-object v1, Landroidj/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_87
    iget-boolean v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_98

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    iput-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    invoke-direct {p0, v1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->finishSpinner(F)V

    :cond_98
    const/4 v1, -0x1

    iput v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_27

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_2d  #00000000
        :pswitch_77  #00000001
        :pswitch_36  #00000002
        :pswitch_27  #00000003
        :pswitch_2b  #00000004
        :pswitch_5e  #00000005
        :pswitch_73  #00000006
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_c

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_18

    :cond_c
    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-static {v0}, Landroidj/support/v4/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_19

    :cond_18
    :goto_18
    return-void

    :cond_19
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_18
.end method

.method reset()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroidj/support/v4/widget/CircleImageView;->clearAnimation()V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroidj/support/v4/widget/MaterialProgressDrawable;->stop()V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/CircleImageView;->setVisibility(I)V

    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    iget-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    :goto_1e
    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroidj/support/v4/widget/CircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return-void

    :cond_27
    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    goto :goto_1e
.end method

.method setAnimationProgress(F)V
    .registers 3

    invoke-direct {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v0

    if-eqz v0, :cond_e

    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-static {v0, p1}, Landroidj/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-static {v0, p1}, Landroidj/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    goto :goto_d
.end method

.method public varargs setColorScheme([I)V
    .registers 2
    .param p1  # [I
        .annotation build Landroidj/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .registers 3
    .param p1  # [I
        .annotation build Landroidj/support/annotation/ColorInt;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroidj/support/v4/widget/MaterialProgressDrawable;->setColorSchemeColors([I)V

    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .registers 6
    .param p1  # [I
        .annotation build Landroidj/support/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    array-length v0, p1

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_8
    array-length v3, p1

    if-ge v0, v3, :cond_16

    aget v3, p1, v0

    invoke-static {v1, v3}, Landroidj/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    invoke-virtual {p0, v2}, Landroidj/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .registers 3

    int-to-float v0, p1

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-nez p1, :cond_8

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->reset()V

    :cond_8
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidj/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidj/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnChildScrollUpCallback(Landroidj/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;)V
    .registers 2
    .param p1  # Landroidj/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroidj/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    return-void
.end method

.method public setOnRefreshListener(Landroidj/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mListener:Landroidj/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .registers 3
    .param p1  # I
        .annotation build Landroidj/support/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroidj/support/v4/widget/CircleImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroidj/support/v4/widget/MaterialProgressDrawable;->setBackgroundColor(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .registers 3
    .param p1  # I
        .annotation build Landroidj/support/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidj/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .registers 4

    iput p2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iput-boolean p1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroidj/support/v4/widget/CircleImageView;->invalidate()V

    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .registers 5

    iput-boolean p1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    iput p2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iput p3, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    return-void
.end method

.method public setRefreshing(Z)V
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_24

    iget-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_24

    iput-boolean p1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    iget-boolean v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v0, :cond_21

    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    add-int/2addr v0, v1

    :goto_12
    iget v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    iput-boolean v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_20
    return-void

    :cond_21
    iget v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    goto :goto_12

    :cond_24
    invoke-direct {p0, p1, v2}, Landroidj/support/v4/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_20
.end method

.method public setSize(I)V
    .registers 4

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez p1, :cond_2b

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000  # 56.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    :goto_18
    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroidj/support/v4/widget/MaterialProgressDrawable;->updateSizes(I)V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_2b
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42200000  # 40.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    goto :goto_18
.end method

.method setTargetOffsetTopAndBottom(IZ)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroidj/support/v4/widget/CircleImageView;->bringToFront()V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-static {v0, p1}, Landroidj/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroidj/support/v4/widget/CircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    if-eqz p2, :cond_1d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1d

    invoke-virtual {p0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->invalidate()V

    :cond_1d
    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidj/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidj/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 6

    new-instance v0, Landroidj/support/v4/widget/SwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Landroidj/support/v4/widget/SwipeRefreshLayout$3;-><init>(Landroidj/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroidj/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroidj/support/v4/widget/CircleImageView;->clearAnimation()V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public stopNestedScroll()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidj/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidj/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method
