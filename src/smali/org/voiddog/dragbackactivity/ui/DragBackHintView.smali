.class public Lorg/voiddog/dragbackactivity/ui/DragBackHintView;
.super Landroid/view/View;
.source "DragBackHintView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;
    }
.end annotation


# static fields
.field static final START_DRAG_BG:I = -0x1000000


# instance fields
.field CIRCLE_SIZE:I

.field ICON_SIZE:I

.field mCircleAnimator:Landroid/animation/ValueAnimator;

.field mCircleDrawable:Landroid/graphics/drawable/GradientDrawable;

.field mCurrentAnimValue:F

.field mCurrentX:I

.field mDarkBg:Landroid/graphics/drawable/Drawable;

.field mIconId:Ljava/lang/String;

.field mIconNegativeColor:I

.field mIconPositiveColor:I

.field mState:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

.field mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 p1, 0x0

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCurrentAnimValue:F

    .line 28
    const/4 p1, 0x0

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCurrentX:I

    .line 31
    const p1, -0x666667

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mIconPositiveColor:I

    .line 33
    const/4 p1, -0x1

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mIconNegativeColor:I

    .line 35
    sget-object p1, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->NotShowCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mState:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mTextPaint:Landroid/graphics/Paint;

    .line 41
    const-string p1, "\uf2ea"

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mIconId:Ljava/lang/String;

    .line 45
    const/16 p1, 0x19

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->ICON_SIZE:I

    .line 46
    const/16 p1, 0x4b

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->CIRCLE_SIZE:I

    .line 50
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 p1, 0x0

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCurrentAnimValue:F

    .line 28
    const/4 p1, 0x0

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCurrentX:I

    .line 31
    const p1, -0x666667

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mIconPositiveColor:I

    .line 33
    const/4 p1, -0x1

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mIconNegativeColor:I

    .line 35
    sget-object p1, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->NotShowCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mState:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mTextPaint:Landroid/graphics/Paint;

    .line 41
    const-string p1, "\uf2ea"

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mIconId:Ljava/lang/String;

    .line 45
    const/16 p1, 0x19

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->ICON_SIZE:I

    .line 46
    const/16 p1, 0x4b

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->CIRCLE_SIZE:I

    .line 55
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 p1, 0x0

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCurrentAnimValue:F

    .line 28
    const/4 p1, 0x0

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCurrentX:I

    .line 31
    const p1, -0x666667

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mIconPositiveColor:I

    .line 33
    const/4 p1, -0x1

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mIconNegativeColor:I

    .line 35
    sget-object p1, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->NotShowCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mState:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mTextPaint:Landroid/graphics/Paint;

    .line 41
    const-string p1, "\uf2ea"

    iput-object p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mIconId:Ljava/lang/String;

    .line 45
    const/16 p1, 0x19

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->ICON_SIZE:I

    .line 46
    const/16 p1, 0x4b

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->CIRCLE_SIZE:I

    .line 60
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->init()V

    return-void
.end method


# virtual methods
.method dp2px(Landroid/content/Context;F)I
    .registers 3

    .line 210
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

.method public hideCircle()V
    .registers 5

    .line 180
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mState:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    sget-object v1, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->ShowCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    if-eq v0, v1, :cond_7

    return-void

    .line 183
    :cond_7
    sget-object v0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->NotShowCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mState:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    .line 184
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 185
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCurrentAnimValue:F

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 186
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method init()V
    .registers 4

    .line 64
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->ICON_SIZE:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->ICON_SIZE:I

    .line 65
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->CIRCLE_SIZE:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->CIRCLE_SIZE:I

    .line 67
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCircleDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 68
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 69
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCircleDrawable:Landroid/graphics/drawable/GradientDrawable;

    const v2, -0x555556

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 70
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCircleDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 72
    invoke-static {}, Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;->getInstance()Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;

    move-result-object v0

    if-nez v0, :cond_41

    .line 73
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;->init(Landroid/content/Context;)V

    .line 75
    :cond_41
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mIconPositiveColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->ICON_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    invoke-static {}, Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;->getInstance()Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;

    move-result-object v0

    const-string v2, "Material-Design-Iconic-Font.ttf"

    invoke-virtual {v0, v2}, Lorg/voiddog/dragbackactivity/util/FontLoaderUtil;->loadTextTure(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 79
    iget-object v2, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 81
    :cond_61
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    .line 84
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 85
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 86
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 88
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mDarkBg:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 205
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCurrentAnimValue:F

    .line 206
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->invalidate()V

    return-void
.end method

.method public onDrag(I)V
    .registers 2

    .line 190
    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCurrentX:I

    .line 191
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->invalidate()V

    return-void
.end method

.method public onDragFinished()V
    .registers 6

    .line 195
    sget-object v0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->ExpandCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mState:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    .line 197
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 198
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->getWidth()I

    move-result v1

    mul-int v0, v0, v1

    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 199
    iget-object v1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCurrentAnimValue:F

    aput v4, v2, v3

    iget v3, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->CIRCLE_SIZE:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 200
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 99
    iget v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCurrentX:I

    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 103
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->getWidth()I

    move-result v0

    iget v1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCurrentX:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x55

    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    .line 104
    iget-object v1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mDarkBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 105
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mDarkBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->getLeft()I

    move-result v3

    iget v4, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCurrentX:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 106
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mDarkBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setCircleColor(I)V
    .registers 3

    .line 166
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCircleDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public setNegativeColor(I)V
    .registers 2

    .line 162
    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mIconNegativeColor:I

    return-void
.end method

.method public setPositiveColor(I)V
    .registers 2

    .line 158
    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mIconPositiveColor:I

    return-void
.end method

.method public showCircle()V
    .registers 5

    .line 170
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mState:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    sget-object v1, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->NotShowCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    if-eq v0, v1, :cond_7

    return-void

    .line 173
    :cond_7
    sget-object v0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;->ShowCircle:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mState:Lorg/voiddog/dragbackactivity/ui/DragBackHintView$State;

    .line 174
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 175
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCurrentAnimValue:F

    aput v3, v1, v2

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000  # 1.0f

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 176
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackHintView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
