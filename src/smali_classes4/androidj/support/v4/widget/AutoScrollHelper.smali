.class public abstract Landroidj/support/v4/widget/AutoScrollHelper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;,
        Landroidj/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;
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

.field final mScroller:Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;

.field final mTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroidj/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

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

    new-instance v0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-direct {v0}, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mScroller:Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    new-array v0, v1, [F

    fill-array-data v0, :array_80

    iput-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_88

    iput-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_90

    iput-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_98

    iput-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_a0

    iput-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    iput-object p1, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const v1, 0x44c4e000  # 1575.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x439d8000  # 315.0f

    mul-float/2addr v0, v2

    add-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p0, v2, v1}, Landroidj/support/v4/widget/AutoScrollHelper;->setMaximumVelocity(FF)Landroidj/support/v4/widget/AutoScrollHelper;

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Landroidj/support/v4/widget/AutoScrollHelper;->setMinimumVelocity(FF)Landroidj/support/v4/widget/AutoScrollHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/AutoScrollHelper;->setEdgeType(I)Landroidj/support/v4/widget/AutoScrollHelper;

    invoke-virtual {p0, v6, v6}, Landroidj/support/v4/widget/AutoScrollHelper;->setMaximumEdges(FF)Landroidj/support/v4/widget/AutoScrollHelper;

    invoke-virtual {p0, v3, v3}, Landroidj/support/v4/widget/AutoScrollHelper;->setRelativeEdges(FF)Landroidj/support/v4/widget/AutoScrollHelper;

    invoke-virtual {p0, v5, v5}, Landroidj/support/v4/widget/AutoScrollHelper;->setRelativeVelocity(FF)Landroidj/support/v4/widget/AutoScrollHelper;

    sget v0, Landroidj/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/AutoScrollHelper;->setActivationDelay(I)Landroidj/support/v4/widget/AutoScrollHelper;

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/AutoScrollHelper;->setRampUpDuration(I)Landroidj/support/v4/widget/AutoScrollHelper;

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/AutoScrollHelper;->setRampDownDuration(I)Landroidj/support/v4/widget/AutoScrollHelper;

    return-void

    :array_80
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_88
    .array-data 4
        0x7f7fffff  # Float.MAX_VALUE
        0x7f7fffff  # Float.MAX_VALUE
    .end array-data

    :array_90
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_98
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_a0
    .array-data 4
        0x7f7fffff  # Float.MAX_VALUE
        0x7f7fffff  # Float.MAX_VALUE
    .end array-data
.end method

.method private computeTargetVelocity(IFFF)F
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    aget v1, v1, p1

    iget-object v2, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    aget v2, v2, p1

    invoke-direct {p0, v1, p3, v2, p2}, Landroidj/support/v4/widget/AutoScrollHelper;->getEdgeValue(FFFF)F

    move-result v1

    cmpl-float v2, v1, v0

    if-nez v2, :cond_12

    :goto_11
    return v0

    :cond_12
    iget-object v2, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    aget v2, v2, p1

    iget-object v3, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    aget v3, v3, p1

    iget-object v4, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    aget v4, v4, p1

    mul-float/2addr v2, p4

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2a

    mul-float v0, v1, v2

    invoke-static {v0, v3, v4}, Landroidj/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    goto :goto_11

    :cond_2a
    neg-float v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0, v3, v4}, Landroidj/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    neg-float v0, v0

    goto :goto_11
.end method

.method static constrain(FFF)F
    .registers 4

    cmpl-float v0, p0, p2

    if-lez v0, :cond_6

    move p0, p2

    :cond_5
    :goto_5
    return p0

    :cond_6
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    move p0, p1

    goto :goto_5
.end method

.method static constrain(III)I
    .registers 3

    if-le p0, p2, :cond_4

    move p0, p2

    :cond_3
    :goto_3
    return p0

    :cond_4
    if-ge p0, p1, :cond_3

    move p0, p1

    goto :goto_3
.end method

.method private constrainEdgeValue(FF)F
    .registers 7

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v0, 0x0

    cmpl-float v2, p2, v0

    if-nez v2, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget v2, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    packed-switch v2, :pswitch_data_2e

    goto :goto_7

    :pswitch_e  #0x0, 0x1
    cmpg-float v2, p1, p2

    if-gez v2, :cond_7

    cmpl-float v2, p1, v0

    if-ltz v2, :cond_1b

    div-float v0, p1, p2

    sub-float v0, v1, v0

    goto :goto_7

    :cond_1b
    iget-boolean v2, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v2, :cond_7

    iget v2, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    move v0, v1

    goto :goto_7

    :pswitch_26  #0x2
    cmpg-float v1, p1, v0

    if-gez v1, :cond_7

    neg-float v0, p2

    div-float v0, p1, v0

    goto :goto_7

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_e  #00000001
        :pswitch_26  #00000002
    .end packed-switch
.end method

.method private getEdgeValue(FFFF)F
    .registers 9

    const/4 v0, 0x0

    mul-float v1, p1, p2

    invoke-static {v1, v0, p3}, Landroidj/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v1

    invoke-direct {p0, p4, v1}, Landroidj/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v2

    sub-float v3, p2, p4

    invoke-direct {p0, v3, v1}, Landroidj/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v1

    sub-float/2addr v1, v2

    cmpg-float v2, v1, v0

    if-gez v2, :cond_27

    iget-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    neg-float v1, v1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    neg-float v0, v0

    :goto_1e
    const/high16 v1, -0x40800000  # -1.0f

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v0, v1, v2}, Landroidj/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    :cond_26
    return v0

    :cond_27
    cmpl-float v2, v1, v0

    if-lez v2, :cond_26

    iget-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_1e
.end method

.method private requestStop()V
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mScroller:Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    goto :goto_7
.end method

.method private startAnimating()V
    .registers 6

    const/4 v4, 0x1

    iget-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_c

    new-instance v0, Landroidj/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;

    invoke-direct {v0, p0}, Landroidj/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroidj/support/v4/widget/AutoScrollHelper;)V

    iput-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    :cond_c
    iput-boolean v4, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    iput-boolean v4, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    iget-boolean v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    if-nez v0, :cond_25

    iget v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    if-lez v0, :cond_25

    iget-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    iget-object v1, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroidj/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    :goto_22
    iput-boolean v4, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    return-void

    :cond_25
    iget-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_22
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

    iget-object v1, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    return v0
.end method

.method public isExclusive()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-static {p2}, Landroidj/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    packed-switch v2, :pswitch_data_5c

    :cond_e
    :goto_e
    iget-boolean v2, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_6

    :pswitch_18  #0x0
    iput-boolean v1, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    iput-boolean v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    :pswitch_1c  #0x2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, v0, v2, v3, v4}, Landroidj/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v1, v3, v4, v5}, Landroidj/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v3

    iget-object v4, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mScroller:Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v4, v2, v3}, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    iget-boolean v2, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v2, :cond_e

    invoke-virtual {p0}, Landroidj/support/v4/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-direct {p0}, Landroidj/support/v4/widget/AutoScrollHelper;->startAnimating()V

    goto :goto_e

    :pswitch_57  #0x1, 0x3
    invoke-direct {p0}, Landroidj/support/v4/widget/AutoScrollHelper;->requestStop()V

    goto :goto_e

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_57  #00000001
        :pswitch_1c  #00000002
        :pswitch_57  #00000003
    .end packed-switch
.end method

.method public abstract scrollTargetBy(II)V
.end method

.method public setActivationDelay(I)Landroidj/support/v4/widget/AutoScrollHelper;
    .registers 2

    iput p1, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    return-object p0
.end method

.method public setEdgeType(I)Landroidj/support/v4/widget/AutoScrollHelper;
    .registers 2

    iput p1, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    return-object p0
.end method

.method public setEnabled(Z)Landroidj/support/v4/widget/AutoScrollHelper;
    .registers 3

    iget-boolean v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    invoke-direct {p0}, Landroidj/support/v4/widget/AutoScrollHelper;->requestStop()V

    :cond_9
    iput-boolean p1, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    return-object p0
.end method

.method public setExclusive(Z)Landroidj/support/v4/widget/AutoScrollHelper;
    .registers 2

    iput-boolean p1, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    return-object p0
.end method

.method public setMaximumEdges(FF)Landroidj/support/v4/widget/AutoScrollHelper;
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    return-object p0
.end method

.method public setMaximumVelocity(FF)Landroidj/support/v4/widget/AutoScrollHelper;
    .registers 7

    const/high16 v3, 0x447a0000  # 1000.0f

    iget-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    return-object p0
.end method

.method public setMinimumVelocity(FF)Landroidj/support/v4/widget/AutoScrollHelper;
    .registers 7

    const/high16 v3, 0x447a0000  # 1000.0f

    iget-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    return-object p0
.end method

.method public setRampDownDuration(I)Landroidj/support/v4/widget/AutoScrollHelper;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mScroller:Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->setRampDownDuration(I)V

    return-object p0
.end method

.method public setRampUpDuration(I)Landroidj/support/v4/widget/AutoScrollHelper;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mScroller:Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->setRampUpDuration(I)V

    return-object p0
.end method

.method public setRelativeEdges(FF)Landroidj/support/v4/widget/AutoScrollHelper;
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    return-object p0
.end method

.method public setRelativeVelocity(FF)Landroidj/support/v4/widget/AutoScrollHelper;
    .registers 7

    const/high16 v3, 0x447a0000  # 1000.0f

    iget-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    return-object p0
.end method

.method shouldAnimate()Z
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/AutoScrollHelper;->mScroller:Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    move-result v1

    invoke-virtual {v0}, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    move-result v0

    if-eqz v1, :cond_12

    invoke-virtual {p0, v1}, Landroidj/support/v4/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_12
    if-eqz v0, :cond_1c

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/AutoScrollHelper;->canTargetScrollHorizontally(I)Z

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
