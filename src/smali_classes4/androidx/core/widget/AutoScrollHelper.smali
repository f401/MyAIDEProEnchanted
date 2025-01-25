.class public abstract Landroidx/core/widget/AutoScrollHelper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/AutoScrollHelper$ClampedScroller;,
        Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTIVATION_DELAY:I

.field private static final DEFAULT_EDGE_TYPE:I = 0x1

.field private static final DEFAULT_MAXIMUM_EDGE:F = 3.4028235E38f

.field private static final DEFAULT_MAXIMUM_VELOCITY_DIPS:I = 0x627

.field private static final DEFAULT_MINIMUM_VELOCITY_DIPS:I = 0x13b

.field private static final DEFAULT_RAMP_DOWN_DURATION:I = 0x1f4

.field private static final DEFAULT_RAMP_UP_DURATION:I = 0x1f4

.field private static final DEFAULT_RELATIVE_EDGE:F = 0.2f

.field private static final DEFAULT_RELATIVE_VELOCITY:F = 1.0f

.field public static final EDGE_TYPE_INSIDE:I = 0x0

.field public static final EDGE_TYPE_INSIDE_EXTEND:I = 0x1

.field public static final EDGE_TYPE_OUTSIDE:I = 0x2

.field private static final HORIZONTAL:I = 0x0

.field public static final NO_MAX:F = 3.4028235E38f

.field public static final NO_MIN:F = 0.0f

.field public static final RELATIVE_UNSPECIFIED:F = 0.0f

.field private static final VERTICAL:I = 0x1


# instance fields
.field private mActivationDelay:I

.field private mAlreadyDelayed:Z

.field mAnimating:Z

.field private final mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private mEdgeType:I

.field private mEnabled:Z

.field private mExclusive:Z

.field private mMaximumEdges:[F

.field private mMaximumVelocity:[F

.field private mMinimumVelocity:[F

.field mNeedsCancel:Z

.field mNeedsReset:Z

.field private mRelativeEdges:[F

.field private mRelativeVelocity:[F

.field private mRunnable:Ljava/lang/Runnable;

.field final mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

.field final mTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroidx/core/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 9

    const v6, 0x7f7fffff  # Float.MAX_VALUE

    const/high16 v5, 0x3f800000  # 1.0f

    const/high16 v4, 0x3f000000  # 0.5f

    const v3, 0x3e4ccccd  # 0.2f

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-direct {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    iput-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    new-array v0, v1, [F

    fill-array-data v0, :array_7e

    iput-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mRelativeEdges:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_86

    iput-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mMaximumEdges:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_8e

    iput-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mRelativeVelocity:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_96

    iput-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mMinimumVelocity:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_9e

    iput-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mMaximumVelocity:[F

    iput-object p1, p0, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x44c4e000  # 1575.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x439d8000  # 315.0f

    mul-float/2addr v0, v2

    add-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v1, v1

    invoke-virtual {p0, v1, v1}, Landroidx/core/widget/AutoScrollHelper;->setMaximumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;

    int-to-float v0, v0

    invoke-virtual {p0, v0, v0}, Landroidx/core/widget/AutoScrollHelper;->setMinimumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/core/widget/AutoScrollHelper;->setEdgeType(I)Landroidx/core/widget/AutoScrollHelper;

    invoke-virtual {p0, v6, v6}, Landroidx/core/widget/AutoScrollHelper;->setMaximumEdges(FF)Landroidx/core/widget/AutoScrollHelper;

    invoke-virtual {p0, v3, v3}, Landroidx/core/widget/AutoScrollHelper;->setRelativeEdges(FF)Landroidx/core/widget/AutoScrollHelper;

    invoke-virtual {p0, v5, v5}, Landroidx/core/widget/AutoScrollHelper;->setRelativeVelocity(FF)Landroidx/core/widget/AutoScrollHelper;

    sget v0, Landroidx/core/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    invoke-virtual {p0, v0}, Landroidx/core/widget/AutoScrollHelper;->setActivationDelay(I)Landroidx/core/widget/AutoScrollHelper;

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroidx/core/widget/AutoScrollHelper;->setRampUpDuration(I)Landroidx/core/widget/AutoScrollHelper;

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroidx/core/widget/AutoScrollHelper;->setRampDownDuration(I)Landroidx/core/widget/AutoScrollHelper;

    return-void

    :array_7e
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_86
    .array-data 4
        0x7f7fffff  # Float.MAX_VALUE
        0x7f7fffff  # Float.MAX_VALUE
    .end array-data

    :array_8e
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_96
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_9e
    .array-data 4
        0x7f7fffff  # Float.MAX_VALUE
        0x7f7fffff  # Float.MAX_VALUE
    .end array-data
.end method

.method private computeTargetVelocity(IFFF)F
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mRelativeEdges:[F

    aget v1, v1, p1

    iget-object v2, p0, Landroidx/core/widget/AutoScrollHelper;->mMaximumEdges:[F

    aget v2, v2, p1

    invoke-direct {p0, v1, p3, v2, p2}, Landroidx/core/widget/AutoScrollHelper;->getEdgeValue(FFFF)F

    move-result v1

    cmpl-float v2, v1, v0

    if-nez v2, :cond_12

    :goto_11
    return v0

    :cond_12
    iget-object v2, p0, Landroidx/core/widget/AutoScrollHelper;->mRelativeVelocity:[F

    aget v2, v2, p1

    iget-object v3, p0, Landroidx/core/widget/AutoScrollHelper;->mMinimumVelocity:[F

    aget v3, v3, p1

    iget-object v4, p0, Landroidx/core/widget/AutoScrollHelper;->mMaximumVelocity:[F

    aget v4, v4, p1

    mul-float/2addr v2, p4

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2a

    mul-float v0, v1, v2

    invoke-static {v0, v3, v4}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    goto :goto_11

    :cond_2a
    neg-float v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0, v3, v4}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    neg-float v0, v0

    goto :goto_11
.end method

.method static constrain(FFF)F
    .registers 4

    cmpl-float v0, p0, p2

    if-lez v0, :cond_5

    :goto_4
    return p2

    :cond_5
    cmpg-float v0, p0, p1

    if-gez v0, :cond_b

    move p2, p1

    goto :goto_4

    :cond_b
    move p2, p0

    goto :goto_4
.end method

.method static constrain(III)I
    .registers 3

    if-le p0, p2, :cond_3

    :goto_2
    return p2

    :cond_3
    if-ge p0, p1, :cond_7

    move p2, p1

    goto :goto_2

    :cond_7
    move p2, p0

    goto :goto_2
.end method

.method private constrainEdgeValue(FF)F
    .registers 7

    const/4 v3, 0x1

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v0, 0x0

    cmpl-float v2, p2, v0

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    iget v2, p0, Landroidx/core/widget/AutoScrollHelper;->mEdgeType:I

    if-eqz v2, :cond_1a

    if-eq v2, v3, :cond_1a

    const/4 v1, 0x2

    if-ne v2, v1, :cond_8

    cmpg-float v1, p1, v0

    if-gez v1, :cond_8

    neg-float v0, p2

    div-float v0, p1, v0

    goto :goto_8

    :cond_1a
    cmpg-float v2, p1, p2

    if-gez v2, :cond_8

    cmpl-float v2, p1, v0

    if-ltz v2, :cond_27

    div-float v0, p1, p2

    sub-float v0, v1, v0

    goto :goto_8

    :cond_27
    iget-boolean v2, p0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v2, :cond_8

    iget v2, p0, Landroidx/core/widget/AutoScrollHelper;->mEdgeType:I

    if-ne v2, v3, :cond_8

    move v0, v1

    goto :goto_8
.end method

.method private getEdgeValue(FFFF)F
    .registers 9

    const/4 v0, 0x0

    mul-float v1, p1, p2

    invoke-static {v1, v0, p3}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v1

    invoke-direct {p0, p4, v1}, Landroidx/core/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v2

    sub-float v3, p2, p4

    invoke-direct {p0, v3, v1}, Landroidx/core/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v1

    sub-float/2addr v1, v2

    cmpg-float v2, v1, v0

    if-gez v2, :cond_27

    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    neg-float v1, v1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    neg-float v0, v0

    :goto_1e
    const/high16 v1, -0x40800000  # -1.0f

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v0, v1, v2}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    :cond_26
    return v0

    :cond_27
    cmpl-float v2, v1, v0

    if-lez v2, :cond_26

    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_1e
.end method

.method private requestStop()V
    .registers 2

    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mNeedsReset:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    goto :goto_7
.end method

.method private startAnimating()V
    .registers 7

    const/4 v3, 0x1

    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_c

    new-instance v0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;

    invoke-direct {v0, p0}, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroidx/core/widget/AutoScrollHelper;)V

    iput-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    :cond_c
    iput-boolean v3, p0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    iput-boolean v3, p0, Landroidx/core/widget/AutoScrollHelper;->mNeedsReset:Z

    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    if-nez v0, :cond_23

    iget v0, p0, Landroidx/core/widget/AutoScrollHelper;->mActivationDelay:I

    if-lez v0, :cond_23

    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    iget-object v2, p0, Landroidx/core/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-static {v1, v2, v4, v5}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    :goto_20
    iput-boolean v3, p0, Landroidx/core/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    return-void

    :cond_23
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_20
.end method


# virtual methods
.method public abstract canTargetScrollHorizontally(I)Z
.end method

.method public abstract canTargetScrollVertically(I)Z
.end method

.method cancelTargetTouch()V
    .registers 9

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mEnabled:Z

    return v0
.end method

.method public isExclusive()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mExclusive:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroidx/core/widget/AutoScrollHelper;->mEnabled:Z

    if-nez v2, :cond_7

    :goto_6
    return v1

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_23

    if-eq v2, v0, :cond_1f

    const/4 v3, 0x2

    if-eq v2, v3, :cond_27

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1f

    :cond_15
    :goto_15
    iget-boolean v2, p0, Landroidx/core/widget/AutoScrollHelper;->mExclusive:Z

    if-eqz v2, :cond_62

    iget-boolean v2, p0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v2, :cond_62

    :goto_1d
    move v1, v0

    goto :goto_6

    :cond_1f
    invoke-direct {p0}, Landroidx/core/widget/AutoScrollHelper;->requestStop()V

    goto :goto_15

    :cond_23
    iput-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mNeedsCancel:Z

    iput-boolean v1, p0, Landroidx/core/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    :cond_27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, v1, v2, v3, v4}, Landroidx/core/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v0, v3, v4, v5}, Landroidx/core/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v3

    iget-object v4, p0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v4, v2, v3}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    iget-boolean v2, p0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v2, :cond_15

    invoke-virtual {p0}, Landroidx/core/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-direct {p0}, Landroidx/core/widget/AutoScrollHelper;->startAnimating()V

    goto :goto_15

    :cond_62
    move v0, v1

    goto :goto_1d
.end method

.method public abstract scrollTargetBy(II)V
.end method

.method public setActivationDelay(I)Landroidx/core/widget/AutoScrollHelper;
    .registers 2

    iput p1, p0, Landroidx/core/widget/AutoScrollHelper;->mActivationDelay:I

    return-object p0
.end method

.method public setEdgeType(I)Landroidx/core/widget/AutoScrollHelper;
    .registers 2

    iput p1, p0, Landroidx/core/widget/AutoScrollHelper;->mEdgeType:I

    return-object p0
.end method

.method public setEnabled(Z)Landroidx/core/widget/AutoScrollHelper;
    .registers 3

    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mEnabled:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    invoke-direct {p0}, Landroidx/core/widget/AutoScrollHelper;->requestStop()V

    :cond_9
    iput-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->mEnabled:Z

    return-object p0
.end method

.method public setExclusive(Z)Landroidx/core/widget/AutoScrollHelper;
    .registers 2

    iput-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->mExclusive:Z

    return-object p0
.end method

.method public setMaximumEdges(FF)Landroidx/core/widget/AutoScrollHelper;
    .registers 5

    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    return-object p0
.end method

.method public setMaximumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;
    .registers 7

    const/high16 v3, 0x447a0000  # 1000.0f

    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    return-object p0
.end method

.method public setMinimumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;
    .registers 7

    const/high16 v3, 0x447a0000  # 1000.0f

    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    return-object p0
.end method

.method public setRampDownDuration(I)Landroidx/core/widget/AutoScrollHelper;
    .registers 3

    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->setRampDownDuration(I)V

    return-object p0
.end method

.method public setRampUpDuration(I)Landroidx/core/widget/AutoScrollHelper;
    .registers 3

    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->setRampUpDuration(I)V

    return-object p0
.end method

.method public setRelativeEdges(FF)Landroidx/core/widget/AutoScrollHelper;
    .registers 5

    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    return-object p0
.end method

.method public setRelativeVelocity(FF)Landroidx/core/widget/AutoScrollHelper;
    .registers 7

    const/high16 v3, 0x447a0000  # 1000.0f

    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    return-object p0
.end method

.method shouldAnimate()Z
    .registers 3

    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    move-result v1

    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    move-result v0

    if-eqz v1, :cond_12

    invoke-virtual {p0, v1}, Landroidx/core/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_12
    if-eqz v0, :cond_1c

    invoke-virtual {p0, v0}, Landroidx/core/widget/AutoScrollHelper;->canTargetScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
