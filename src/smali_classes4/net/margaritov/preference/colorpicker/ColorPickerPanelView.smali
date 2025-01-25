.class public Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;
.super Landroid/view/View;


# static fields
.field private static final BORDER_WIDTH_PX:F = 1.0f


# instance fields
.field private mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mColor:I

.field private mColorPaint:Landroid/graphics/Paint;

.field private mColorRect:Landroid/graphics/RectF;

.field private mDensity:F

.field private mDrawingRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mDensity:F

    const v0, -0x919192

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mBorderColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColor:I

    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->init()V

    return-void
.end method

.method private init()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mDensity:F

    return-void
.end method

.method private setUpColorRect()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/high16 v5, 0x3f800000  # 1.0f

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    new-instance v4, Landroid/graphics/RectF;

    add-float/2addr v1, v5

    add-float/2addr v2, v5

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v5

    sub-float/2addr v3, v5

    invoke-direct {v4, v1, v2, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    new-instance v0, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    const/4 v1, 0x5

    int-to-float v1, v1

    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;-><init>(I)V

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .registers 2

    iget v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mBorderColor:I

    return v0
.end method

.method public getColor()I
    .registers 2

    iget v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    invoke-virtual {v1, p1}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_19
    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setUpColorRect()V

    return-void
.end method

.method public setBorderColor(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mBorderColor:I

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->mColor:I

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->invalidate()V

    return-void
.end method
