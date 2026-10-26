.class public Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;
.super Landroid/widget/ImageView;
.source "DragBackBlurImageView.java"


# instance fields
.field mCurrentX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;->mCurrentX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;->mCurrentX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;->mCurrentX:I

    return-void
.end method


# virtual methods
.method public onDrag(I)V
    .locals 0

    .line 30
    iput p1, p0, Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;->mCurrentX:I

    .line 31
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    .line 36
    iget v0, p0, Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;->mCurrentX:I

    if-lez v0, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 38
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;->getWidth()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 39
    iget v2, p0, Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;->mCurrentX:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v2, v1

    int-to-float v2, v2

    .line 40
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 41
    const/4 v2, 0x0

    iget v3, p0, Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;->mCurrentX:I

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/ui/DragBackBlurImageView;->getHeight()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 42
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 43
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method
