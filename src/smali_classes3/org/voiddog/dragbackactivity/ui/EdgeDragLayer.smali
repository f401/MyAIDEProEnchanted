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
    .registers 4

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    iput v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->MIN_DIS:I

    const/16 v0, 0x32

    iput v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->EDGE_WIDTH:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mStartPoint:Landroid/graphics/Point;

    sget-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragCancel:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    const/4 v0, -0x1

    iput v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mFirstPointId:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput-boolean v1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHasSetBlurBg:Z

    iput v1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCurrentOffsetX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->dragEnable:Z

    .line 59
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x8

    iput v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->MIN_DIS:I

    const/16 v0, 0x32

    iput v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->EDGE_WIDTH:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mStartPoint:Landroid/graphics/Point;

    sget-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragCancel:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    const/4 v0, -0x1

    iput v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mFirstPointId:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput-boolean v1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHasSetBlurBg:Z

    iput v1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCurrentOffsetX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->dragEnable:Z

    .line 64
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x8

    iput v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->MIN_DIS:I

    const/16 v0, 0x32

    iput v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->EDGE_WIDTH:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mStartPoint:Landroid/graphics/Point;

    sget-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragCancel:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    const/4 v0, -0x1

    iput v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mFirstPointId:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput-boolean v1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHasSetBlurBg:Z

    iput v1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCurrentOffsetX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->dragEnable:Z

    .line 69
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->init()V

    return-void
.end method


# virtual methods
.method dispatchDragEvent(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragListener:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragListener;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragListener:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragListener;

    invoke-interface {v0, p1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragListener;->onDragEvent(I)V

    .line 325
    :cond_0
    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCurrentOffsetX:I

    .line 326
    invoke-virtual {p0, p1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->updateArrowUI(I)V

    .line 327
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->invalidate()V

    return-void
.end method

.method dp2px(Landroid/content/Context;F)I
    .registers 5

    .line 374
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 375
    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public hasSetBlurBg()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHasSetBlurBg:Z

    return v0
.end method

.method init()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-wide/16 v4, 0x12c

    const/4 v2, -0x1

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
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mFinishAnim:Landroid/animation/ValueAnimator;

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

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 94
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCancelAnim:Landroid/animation/ValueAnimator;

    .line 95
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCancelAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$CancelAnimController;

    invoke-direct {v1, p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$CancelAnimController;-><init>(Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 96
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCancelAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 97
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCancelAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 99
    new-instance v0, Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;

    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mBlurBg:Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;

    .line 100
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mBlurBg:Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 101
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mBlurBg:Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;

    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHintView:Lorg/voiddog/dragbackactivity/ui/DragBackHintView;

    .line 104
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHintView:Lorg/voiddog/dragbackactivity/ui/DragBackHintView;

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

    move-result v0

    iget-object v1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 243
    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->isDragEnable()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 178
    :cond_1
    :goto_0
    return v0

    .line 150
    :cond_2
    iget-object v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    sget-object v3, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->PlayAnim:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    if-eq v2, v3, :cond_1

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 178
    :cond_3
    :goto_1
    :pswitch_0
    iget-object v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    sget-object v3, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->IsDragging:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mStartPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 157
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mFirstPointId:I

    .line 158
    iget-object v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mStartPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->EDGE_WIDTH:I

    if-ge v2, v3, :cond_4

    .line 159
    sget-object v2, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragStart:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    iput-object v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    goto :goto_1

    .line 162
    :cond_4
    sget-object v2, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragCancel:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    iput-object v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    goto :goto_1

    .line 167
    :pswitch_2
    iget-object v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    sget-object v3, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragStart:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    if-ne v2, v3, :cond_3

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mStartPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mStartPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 170
    iget v4, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->MIN_DIS:I

    if-le v2, v4, :cond_3

    iget v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->MIN_DIS:I

    if-ge v3, v2, :cond_3

    .line 171
    sget-object v2, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->IsDragging:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    iput-object v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    goto :goto_1

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 354
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    .line 355
    :cond_0
    invoke-virtual {p0, v0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v1, p2, p3, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 354
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/high16 v4, 0x40000000    # 2.0f

    .line 335
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 336
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 337
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 338
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 341
    invoke-virtual {p0, p1, p2}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->measureChildren(II)V

    .line 347
    if-ne v0, v4, :cond_0

    :cond_0
    if-ne v1, v4, :cond_1

    :cond_1
    invoke-virtual {p0, v2, v3}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->isDragEnable()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 229
    :cond_1
    :goto_0
    return v0

    .line 189
    :cond_2
    iget-object v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    sget-object v3, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->PlayAnim:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    if-eq v2, v3, :cond_1

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mFirstPointId:I

    if-eq v2, v3, :cond_3

    .line 194
    iget-object v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    sget-object v3, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragCancel:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 197
    :cond_3
    iget-object v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 229
    :cond_4
    :goto_1
    :pswitch_0
    iget-object v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    sget-object v3, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragCancel:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 201
    :pswitch_1
    iget-object v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    sget-object v3, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->DragStart:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    if-ne v2, v3, :cond_5

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mStartPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 203
    iget v3, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->MIN_DIS:I

    if-le v2, v3, :cond_4

    .line 204
    sget-object v2, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->IsDragging:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    iput-object v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    goto :goto_1

    .line 206
    :cond_5
    iget-object v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    sget-object v3, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->IsDragging:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    if-ne v2, v3, :cond_4

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mStartPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->dispatchDragEvent(I)V

    goto :goto_1

    .line 214
    :pswitch_2
    iget-object v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    sget-object v3, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->IsDragging:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    if-ne v2, v3, :cond_4

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mStartPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 217
    invoke-virtual {p0, p1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->needFinished(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 218
    invoke-virtual {p0, v2}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->playFinishAnim(I)V

    .line 220
    iget-object v2, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHintView:Lorg/voiddog/dragbackactivity/ui/DragBackHintView;

    invoke-virtual {v2}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->onDragFinished()V

    goto :goto_1

    .line 222
    :cond_6
    invoke-virtual {p0, v2}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->playCancelAnim(I)V

    goto :goto_1

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public playCancelAnim(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCancelAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 267
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mFinishAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 268
    sget-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->PlayAnim:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    .line 270
    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 272
    iget-object v1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCancelAnim:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 273
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCancelAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public playFinishAnim(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/high16 v4, 0x3f800000    # 1.0f

    .line 252
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mCancelAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 253
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mFinishAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 254
    sget-object v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;->PlayAnim:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragState:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragState;

    .line 256
    int-to-float v0, p1

    mul-float/2addr v0, v4

    iget-object v1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 258
    iget-object v1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mFinishAnim:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v4, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 259
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mFinishAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method px2dip(Landroid/content/Context;F)I
    .registers 5

    .line 369
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 370
    div-float v0, p2, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public setBlurBg(Landroid/graphics/Bitmap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 138
    if-nez p1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHasSetBlurBg:Z

    .line 142
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mBlurBg:Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;

    invoke-virtual {v0, p1}, Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setBlurBg(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .line 130
    if-nez p1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHasSetBlurBg:Z

    .line 134
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mBlurBg:Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;

    invoke-virtual {v0, p1}, Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCircleColor(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHintView:Lorg/voiddog/dragbackactivity/ui/DragBackHintView;

    invoke-virtual {v0, p1}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->setCircleColor(I)V

    return-void
.end method

.method public setDragEnable(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 73
    iput-boolean p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->dragEnable:Z

    return-void
.end method

.method public setNegativeColor(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHintView:Lorg/voiddog/dragbackactivity/ui/DragBackHintView;

    invoke-virtual {v0, p1}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->setNegativeColor(I)V

    return-void
.end method

.method public setOnDragListener(Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragListener;",
            ")V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mDragListener:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragListener;

    return-void
.end method

.method public setPositiveColor(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHintView:Lorg/voiddog/dragbackactivity/ui/DragBackHintView;

    invoke-virtual {v0, p1}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->setPositiveColor(I)V

    return-void
.end method

.method updateArrowUI(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

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

    if-le p1, v0, :cond_0

    .line 281
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHintView:Lorg/voiddog/dragbackactivity/ui/DragBackHintView;

    invoke-virtual {v0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->showCircle()V

    .line 284
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->mHintView:Lorg/voiddog/dragbackactivity/ui/DragBackHintView;

    invoke-virtual {v0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->hideCircle()V

    goto :goto_0
.end method
