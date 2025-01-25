.class Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/GestureDetectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GestureDetectorCompatImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESS:I = 0x2

.field private static final SHOW_PRESS:I = 0x1

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field mCurrentDownEvent:Landroid/view/MotionEvent;

.field mDeferConfirmSingleTap:Z

.field mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->LONGPRESS_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1b

    new-instance v0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;-><init>(Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;Landroid/os/Handler;)V

    iput-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    :goto_c
    iput-object p2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_17

    check-cast p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, p2}, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :cond_17
    invoke-direct {p0, p1}, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->init(Landroid/content/Context;)V

    return-void

    :cond_1b
    new-instance v0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;

    invoke-direct {v0, p0}, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;-><init>(Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)V

    iput-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    goto :goto_c
.end method

.method private cancel()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput-boolean v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    iput-boolean v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    iput-boolean v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    iput-boolean v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    iput-boolean v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    iget-boolean v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    if-eqz v0, :cond_2b

    iput-boolean v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    :cond_2b
    return-void
.end method

.method private cancelTaps()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    iput-boolean v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    iput-boolean v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    iput-boolean v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    iget-boolean v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    if-eqz v0, :cond_21

    iput-boolean v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    :cond_21
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OnGestureListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    mul-int v0, v1, v1

    iput v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    mul-int v0, v2, v2

    iput v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapSlopSquare:I

    return-void
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget v1, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gtz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    mul-int/2addr v1, v1

    mul-int/2addr v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapSlopSquare:I

    if-ge v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method dispatchLongPress()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public isLongpressEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15

    const/4 v6, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v8, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_13

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_13
    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v0, v9, 0xff

    const/4 v1, 0x6

    if-ne v0, v1, :cond_32

    move v7, v8

    :goto_1e
    if-eqz v7, :cond_34

    invoke-static {p1}, Landroidj/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    :goto_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    move v5, v3

    move v1, v6

    move v2, v6

    :goto_2b
    if-ge v5, v4, :cond_41

    if-ne v0, v5, :cond_36

    :goto_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_32
    move v7, v3

    goto :goto_1e

    :cond_34
    const/4 v0, -0x1

    goto :goto_24

    :cond_36
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    add-float/2addr v1, v10

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    add-float/2addr v2, v10

    goto :goto_2f

    :cond_41
    if-eqz v7, :cond_50

    add-int/lit8 v0, v4, -0x1

    :goto_45
    int-to-float v5, v0

    div-float/2addr v1, v5

    int-to-float v0, v0

    div-float/2addr v2, v0

    and-int/lit16 v0, v9, 0xff

    packed-switch v0, :pswitch_data_258

    move v0, v3

    :cond_4f
    :goto_4f
    return v0

    :cond_50
    move v0, v4

    goto :goto_45

    :pswitch_52  #0x5
    iput v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    iput v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    iput v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    iput v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    invoke-direct {p0}, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->cancelTaps()V

    move v0, v3

    goto :goto_4f

    :pswitch_5f  #0x6
    iput v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    iput v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    iput v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    iput v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-static {p1}, Landroidj/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget-object v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v2, v0}, Landroidj/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    iget-object v5, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v5, v0}, Landroidj/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v5

    move v0, v3

    :goto_86
    if-ge v0, v4, :cond_255

    if-ne v0, v1, :cond_8d

    :cond_8a
    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    :cond_8d
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iget-object v8, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v8, v7}, Landroidj/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v8

    iget-object v9, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v9, v7}, Landroidj/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v7

    mul-float/2addr v7, v5

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    cmpg-float v7, v7, v6

    if-gez v7, :cond_8a

    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    move v0, v3

    goto :goto_4f

    :pswitch_ab  #0x0
    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_140

    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_bc

    iget-object v4, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->removeMessages(I)V

    :cond_bc
    iget-object v4, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_138

    iget-object v4, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_138

    if-eqz v0, :cond_138

    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iget-object v4, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v0, v4, p1}, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_138

    iput-boolean v8, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v4, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v4}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    iget-object v4, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v4, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v0, v4

    :goto_e3
    iput v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    iput v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    iput v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    iput v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    iget-object v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_f4

    iget-object v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_f4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iput-boolean v8, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    iput-boolean v8, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    iput-boolean v8, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    iput-boolean v3, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    iput-boolean v3, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    iget-boolean v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    if-eqz v1, :cond_120

    iget-object v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sget v4, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sget v4, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->LONGPRESS_TIMEOUT:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v12, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_120
    iget-object v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sget v4, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    iget-object v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    goto/16 :goto_4f

    :cond_138
    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    sget v4, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v4

    invoke-virtual {v0, v11, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_140
    move v0, v3

    goto :goto_e3

    :pswitch_142  #0x2
    iget-boolean v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    if-nez v0, :cond_255

    iget v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    sub-float/2addr v0, v1

    iget v4, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    sub-float/2addr v4, v2

    iget-boolean v5, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    if-eqz v5, :cond_15a

    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    goto/16 :goto_4f

    :cond_15a
    iget-boolean v5, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    if-eqz v5, :cond_194

    iget v5, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    sub-float v5, v1, v5

    float-to-int v5, v5

    iget v6, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    sub-float v6, v2, v6

    float-to-int v6, v6

    mul-int/2addr v5, v5

    mul-int/2addr v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    if-le v5, v6, :cond_252

    iget-object v6, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v7, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v6, v7, p1, v0, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    iput v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    iput v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    iput-boolean v3, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    iget-object v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v12}, Landroid/os/Handler;->removeMessages(I)V

    :goto_18c
    iget v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    if-le v5, v1, :cond_4f

    iput-boolean v3, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_4f

    :cond_194
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f800000  # 1.0f

    cmpl-float v5, v5, v6

    if-gez v5, :cond_1a8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f800000  # 1.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_255

    :cond_1a8
    iget-object v3, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v5, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v3, v5, p1, v0, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    iput v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    iput v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    goto/16 :goto_4f

    :pswitch_1b6  #0x1
    iput-boolean v3, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iget-boolean v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    if-eqz v0, :cond_1ef

    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    :cond_1c8
    :goto_1c8
    iget-object v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_1d1

    iget-object v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_1d1
    iput-object v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    iget-object v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1df

    iget-object v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1df
    iput-boolean v3, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    iput-boolean v3, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    iget-object v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v12}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_4f

    :cond_1ef
    iget-boolean v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    if-eqz v0, :cond_1fc

    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    move v0, v3

    goto :goto_1c8

    :cond_1fc
    iget-boolean v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    if-eqz v0, :cond_214

    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-boolean v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    if-eqz v2, :cond_1c8

    iget-object v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v2, :cond_1c8

    iget-object v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v2, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_1c8

    :cond_214
    iget-object v0, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/16 v4, 0x3e8

    iget v5, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-static {v0, v2}, Landroidj/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v4

    invoke-static {v0, v2}, Landroidj/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_240

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_24f

    :cond_240
    iget-object v2, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v5, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v5, p1, v0, v4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_1c8

    :pswitch_249  #0x3
    invoke-direct {p0}, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->cancel()V

    move v0, v3

    goto/16 :goto_4f

    :cond_24f
    move v0, v3

    goto/16 :goto_1c8

    :cond_252
    move v0, v3

    goto/16 :goto_18c

    :cond_255
    :pswitch_255  #0x4
    move v0, v3

    goto/16 :goto_4f

    :pswitch_data_258
    .packed-switch 0x0
        :pswitch_ab  #00000000
        :pswitch_1b6  #00000001
        :pswitch_142  #00000002
        :pswitch_249  #00000003
        :pswitch_255  #00000004
        :pswitch_52  #00000005
        :pswitch_5f  #00000006
    .end packed-switch
.end method

.method public setIsLongpressEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-void
.end method
