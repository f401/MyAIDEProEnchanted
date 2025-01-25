.class public Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;
.super Landroid/widget/FrameLayout;
.source "EdgeDragLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$CancelAnimController;,
        Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragListener;,
        Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;,
        Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$FinishAnimController;
    }
.end annotation


# static fields
.field static final ANIM_TIME:J = 0x12cL


# instance fields
.field EDGE_WIDTH:I

.field MIN_DIS:I

.field dragEnable:Z

.field mBlurBg:Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;

.field mCancelAnim:Landroid/animation/ValueAnimator;

.field mCurrentOffsetX:I

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDragListener:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragListener;

.field mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

.field mFinishAnim:Landroid/animation/ValueAnimator;

.field mFirstPointId:I

.field mHasSetBlurBg:Z

.field mHintView:Lorg/voiddog/dragbackactivity/ui/DragBackHintView;

.field mStartPoint:Landroid/graphics/Point;

.field mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const/16 p1, 0x8

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->MIN_DIS:I

    .line 31
    const/16 p1, 0x32

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->EDGE_WIDTH:I

    .line 34
    new-instance p1, Landroid/graphics/Point;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mStartPoint:Landroid/graphics/Point;

    .line 36
    sget-object p1, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragCancel:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    .line 44
    const/4 p1, -0x1

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mFirstPointId:I

    .line 46
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 52
    iput-boolean v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHasSetBlurBg:Z

    .line 53
    iput v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCurrentOffsetX:I

    .line 55
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->dragEnable:Z

    .line 59
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/16 p1, 0x8

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->MIN_DIS:I

    .line 31
    const/16 p1, 0x32

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->EDGE_WIDTH:I

    .line 34
    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mStartPoint:Landroid/graphics/Point;

    .line 36
    sget-object p1, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragCancel:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    .line 44
    const/4 p1, -0x1

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mFirstPointId:I

    .line 46
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 52
    iput-boolean p2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHasSetBlurBg:Z

    .line 53
    iput p2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCurrentOffsetX:I

    .line 55
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->dragEnable:Z

    .line 64
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/16 p1, 0x8

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->MIN_DIS:I

    .line 31
    const/16 p1, 0x32

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->EDGE_WIDTH:I

    .line 34
    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mStartPoint:Landroid/graphics/Point;

    .line 36
    sget-object p1, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragCancel:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    .line 44
    const/4 p1, -0x1

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mFirstPointId:I

    .line 46
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 52
    iput-boolean p2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHasSetBlurBg:Z

    .line 53
    iput p2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCurrentOffsetX:I

    .line 55
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->dragEnable:Z

    .line 69
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->init()V

    return-void
.end method


# virtual methods
.method dispatchDragEvent(I)V
    .registers 3

    .line 322
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragListener:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragListener;

    if-eqz v0, :cond_7

    .line 323
    invoke-interface {v0, p1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragListener;->onDragEvent(I)V

    .line 325
    :cond_7
    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCurrentOffsetX:I

    .line 326
    invoke-virtual {p0, p1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->updateArrowUI(I)V

    .line 327
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->invalidate()V

    return-void
.end method

.method dp2px(Landroid/content/Context;F)I
    .registers 3

    .line 374
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000  # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public hasSetBlurBg()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHasSetBlurBg:Z

    return v0
.end method

.method init()V
    .registers 5

    .line 82
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->EDGE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->EDGE_WIDTH:I

    .line 83
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->MIN_DIS:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->MIN_DIS:I

    .line 85
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 86
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 87
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 89
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mFinishAnim:Landroid/animation/ValueAnimator;

    .line 90
    new-instance v1, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$FinishAnimController;

    invoke-direct {v1, p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$FinishAnimController;-><init>(Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 91
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mFinishAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 92
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mFinishAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 94
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCancelAnim:Landroid/animation/ValueAnimator;

    .line 95
    new-instance v3, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$CancelAnimController;

    invoke-direct {v3, p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$CancelAnimController;-><init>(Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 96
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCancelAnim:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 97
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCancelAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 99
    new-instance v0, Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;

    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mBlurBg:Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;

    .line 100
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 101
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mBlurBg:Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;

    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHintView:Lorg/voiddog/dragbackactivity/ui/DragBackHintView;

    .line 104
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->updateArrowUI(I)V

    return-void
.end method

.method public isDragEnable()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->dragEnable:Z

    return v0
.end method

.method needFinished(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 236
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 147
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->isDragEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 150
    :cond_8
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    sget-object v2, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->PlayAnim:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_10

    return v3

    .line 154
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_41

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1a

    goto :goto_67

    .line 167
    :cond_1a
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    sget-object v2, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragStart:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    if-ne v0, v2, :cond_67

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mStartPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mStartPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    float-to-int p1, p1

    .line 170
    iget v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->MIN_DIS:I

    if-le v0, v2, :cond_67

    if-ge p1, v2, :cond_67

    .line 171
    sget-object p1, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->IsDragging:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    goto :goto_67

    .line 156
    :cond_41
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mStartPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Point;->set(II)V

    .line 157
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mFirstPointId:I

    .line 158
    iget-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mStartPoint:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->EDGE_WIDTH:I

    if-ge p1, v0, :cond_63

    .line 159
    sget-object p1, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragStart:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    goto :goto_67

    .line 162
    :cond_63
    sget-object p1, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragCancel:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    .line 178
    :cond_67
    :goto_67
    iget-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    sget-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->IsDragging:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    if-ne p1, v0, :cond_6e

    const/4 v1, 0x1

    :cond_6e
    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .line 354
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_6
    if-ltz p1, :cond_1c

    .line 355
    invoke-virtual {p0, p1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p2

    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p4, p2, p3, p5, v0}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_1c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 335
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 336
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 337
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 338
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 341
    invoke-virtual {p0, p1, p2}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->measureChildren(II)V

    .line 347
    invoke-virtual {p0, v0, v1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 186
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->isDragEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 189
    :cond_8
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    sget-object v2, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->PlayAnim:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_10

    return v3

    .line 193
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mFirstPointId:I

    if-eq v0, v2, :cond_24

    .line 194
    iget-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    sget-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragCancel:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    if-eq p1, v0, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1

    .line 197
    :cond_24
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_68

    const/4 v2, 0x2

    if-eq v0, v2, :cond_39

    const/4 v2, 0x3

    if-eq v0, v2, :cond_68

    const/4 v2, 0x6

    if-eq v0, v2, :cond_68

    goto :goto_8b

    .line 201
    :cond_39
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    sget-object v2, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragStart:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    if-ne v0, v2, :cond_53

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 203
    iget v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->MIN_DIS:I

    if-le p1, v0, :cond_8b

    .line 204
    sget-object p1, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->IsDragging:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    goto :goto_8b

    .line 206
    :cond_53
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    sget-object v2, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->IsDragging:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    if-ne v0, v2, :cond_8b

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->dispatchDragEvent(I)V

    goto :goto_8b

    .line 214
    :cond_68
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    sget-object v2, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->IsDragging:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    if-ne v0, v2, :cond_8b

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mStartPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 217
    invoke-virtual {p0, p1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->needFinished(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_88

    .line 218
    invoke-virtual {p0, v0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->playFinishAnim(I)V

    .line 220
    iget-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHintView:Lorg/voiddog/dragbackactivity/ui/DragBackHintView;

    invoke-virtual {p1}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->onDragFinished()V

    goto :goto_8b

    .line 222
    :cond_88
    invoke-virtual {p0, v0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->playCancelAnim(I)V

    .line 229
    :cond_8b
    :goto_8b
    iget-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    sget-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragCancel:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    if-eq p1, v0, :cond_92

    const/4 v1, 0x1

    :cond_92
    return v1
.end method

.method public playCancelAnim(I)V
    .registers 5

    .line 266
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCancelAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 267
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mFinishAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 268
    sget-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->PlayAnim:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    int-to-float p1, p1

    .line 270
    const/high16 v0, 0x3f800000  # 1.0f

    mul-float p1, p1, v0

    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 272
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCancelAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    const/4 v2, 0x0

    aput v2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 273
    iget-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCancelAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public playFinishAnim(I)V
    .registers 6

    .line 252
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCancelAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 253
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mFinishAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 254
    sget-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->PlayAnim:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    int-to-float p1, p1

    .line 256
    const/high16 v0, 0x3f800000  # 1.0f

    mul-float p1, p1, v0

    iget-object v1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 258
    iget-object v1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mFinishAnim:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput v0, v2, p1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 259
    iget-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mFinishAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method px2dip(Landroid/content/Context;F)I
    .registers 3

    .line 369
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, p1

    const/high16 p1, 0x3f000000  # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public setBlurBg(Landroid/graphics/Bitmap;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 141
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHasSetBlurBg:Z

    .line 142
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mBlurBg:Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;

    invoke-virtual {v0, p1}, Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setBlurBg(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 133
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHasSetBlurBg:Z

    .line 134
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mBlurBg:Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;

    invoke-virtual {v0, p1}, Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCircleColor(I)V
    .registers 3

    .line 118
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHintView:Lorg/voiddog/dragbackactivity/ui/DragBackHintView;

    invoke-virtual {v0, p1}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->setCircleColor(I)V

    return-void
.end method

.method public setDragEnable(Z)V
    .registers 2

    .line 73
    iput-boolean p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->dragEnable:Z

    return-void
.end method

.method public setNegativeColor(I)V
    .registers 3

    .line 114
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHintView:Lorg/voiddog/dragbackactivity/ui/DragBackHintView;

    invoke-virtual {v0, p1}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->setNegativeColor(I)V

    return-void
.end method

.method public setOnDragListener(Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragListener;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragListener:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragListener;

    return-void
.end method

.method public setPositiveColor(I)V
    .registers 3

    .line 110
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHintView:Lorg/voiddog/dragbackactivity/ui/DragBackHintView;

    invoke-virtual {v0, p1}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->setPositiveColor(I)V

    return-void
.end method

.method updateArrowUI(I)V
    .registers 3

    .line 278
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHintView:Lorg/voiddog/dragbackactivity/ui/DragBackHintView;

    invoke-virtual {v0, p1}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->onDrag(I)V

    .line 279
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mBlurBg:Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;

    invoke-virtual {v0, p1}, Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;->onDrag(I)V

    .line 280
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_18

    .line 281
    iget-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHintView:Lorg/voiddog/dragbackactivity/ui/DragBackHintView;

    invoke-virtual {p1}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->showCircle()V

    goto :goto_1d

    .line 284
    :cond_18
    iget-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHintView:Lorg/voiddog/dragbackactivity/ui/DragBackHintView;

    invoke-virtual {p1}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->hideCircle()V

    :goto_1d
    return-void
.end method
