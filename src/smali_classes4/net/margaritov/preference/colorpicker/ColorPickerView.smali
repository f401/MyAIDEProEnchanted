.class public Lnet/margaritov/preference/colorpicker/ColorPickerView;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final BORDER_WIDTH_PX:F = 1.0f

.field private static final PANEL_ALPHA:I = 0x2

.field private static final PANEL_HUE:I = 0x1

.field private static final PANEL_SAT_VAL:I


# instance fields
.field private ALPHA_PANEL_HEIGHT:F

.field private HUE_PANEL_WIDTH:F

.field private PALETTE_CIRCLE_TRACKER_RADIUS:F

.field private PANEL_SPACING:F

.field private RECTANGLE_TRACKER_OFFSET:F

.field private mAlpha:I

.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

.field private mAlphaRect:Landroid/graphics/RectF;

.field private mAlphaShader:Landroid/graphics/Shader;

.field private mAlphaSliderText:Ljava/lang/String;

.field private mAlphaTextPaint:Landroid/graphics/Paint;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mDensity:F

.field private mDrawingOffset:F

.field private mDrawingRect:Landroid/graphics/RectF;

.field private mHue:F

.field private mHuePaint:Landroid/graphics/Paint;

.field private mHueRect:Landroid/graphics/RectF;

.field private mHueShader:Landroid/graphics/Shader;

.field private mHueTrackerPaint:Landroid/graphics/Paint;

.field private mLastTouchedPanel:I

.field private mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

.field private mSat:F

.field private mSatShader:Landroid/graphics/Shader;

.field private mSatValPaint:Landroid/graphics/Paint;

.field private mSatValRect:Landroid/graphics/RectF;

.field private mSatValTrackerPaint:Landroid/graphics/Paint;

.field private mShowAlphaPanel:Z

.field private mSliderTrackerColor:I

.field private mStartTouchPoint:Landroid/graphics/Point;

.field private mVal:F

.field private mValShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x41f00000  # 30.0f

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    const/high16 v0, 0x41a00000  # 20.0f

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    const/high16 v0, 0x41200000  # 10.0f

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    const/high16 v0, 0x40a00000  # 5.0f

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    const/high16 v0, 0x40000000  # 2.0f

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    const/16 v0, 0xff

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    const/high16 v0, 0x43b40000  # 360.0f

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    iput v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    iput v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    const-string v0, ""

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    const v0, -0xe3e3e4

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    const v0, -0x919192

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    const/4 v0, 0x0

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->init()V

    return-void
.end method

.method private alphaToPoint(I)Landroid/graphics/Point;
    .registers 7

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    int-to-float v3, p1

    mul-float/2addr v3, v1

    const/16 v4, 0xff

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Point;->y:I

    return-object v2
.end method

.method private buildHueColorArray()[I
    .registers 8

    const/4 v2, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    const/16 v0, 0x169

    new-array v3, v0, [I

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_b
    if-gez v0, :cond_e

    return-object v3

    :cond_e
    const/4 v4, 0x3

    new-array v4, v4, [F

    int-to-float v5, v0

    aput v5, v4, v2

    const/4 v5, 0x1

    aput v6, v4, v5

    const/4 v5, 0x2

    aput v6, v4, v5

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method private calculateRequiredOffset()F
    .registers 4

    iget v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3fc00000  # 1.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method private chooseHeight(II)I
    .registers 4

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_8

    const/high16 v0, 0x40000000  # 2.0f

    if-ne p1, v0, :cond_9

    :cond_8
    :goto_8
    return p2

    :cond_9
    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getPrefferedHeight()I

    move-result p2

    goto :goto_8
.end method

.method private chooseWidth(II)I
    .registers 4

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_8

    const/high16 v0, 0x40000000  # 2.0f

    if-ne p1, v0, :cond_9

    :cond_8
    :goto_8
    return p2

    :cond_9
    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getPrefferedWidth()I

    move-result p2

    goto :goto_8
.end method

.method private drawAlphaPanel(Landroid/graphics/Canvas;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    const/4 v10, 0x4

    const/4 v6, 0x0

    const/4 v9, 0x2

    const/high16 v4, 0x3f800000  # 1.0f

    iget-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    if-nez v0, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v8, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v8, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v4

    iget v0, v8, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v4

    iget v0, v8, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v4

    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    invoke-virtual {v0, p1}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    aput v1, v0, v6

    const/4 v1, 0x1

    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    aput v2, v0, v1

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    aput v1, v0, v9

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    invoke-static {v6, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v8, Landroid/graphics/RectF;->top:F

    iget v3, v8, Landroid/graphics/RectF;->right:F

    iget v4, v8, Landroid/graphics/RectF;->top:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    if-eqz v0, :cond_88

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_88

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    int-to-float v3, v10

    iget v4, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_88
    int-to-float v0, v10

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    int-to-float v1, v9

    div-float/2addr v0, v1

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    invoke-direct {p0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->alphaToPoint(I)Landroid/graphics/Point;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->right:F

    iget v0, v8, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->top:F

    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v9

    int-to-float v1, v9

    iget-object v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11
.end method

.method private drawHuePanel(Landroid/graphics/Canvas;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    const/4 v9, 0x2

    const/high16 v4, 0x3f800000  # 1.0f

    iget-object v8, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v8, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v4

    iget v0, v8, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v4

    iget v0, v8, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v4

    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    if-nez v0, :cond_44

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v8, Landroid/graphics/RectF;->top:F

    iget v3, v8, Landroid/graphics/RectF;->left:F

    iget v4, v8, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->buildHueColorArray()[I

    move-result-object v5

    const/4 v6, 0x0

    check-cast v6, [F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_44
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 v0, 0x4

    int-to-float v0, v0

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    int-to-float v1, v9

    div-float/2addr v0, v1

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    invoke-direct {p0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->hueToPoint(F)Landroid/graphics/Point;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iget v3, v8, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v8, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v9

    int-to-float v1, v9

    iget-object v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSatValPanel(Landroid/graphics/Canvas;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    iget-object v8, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    const/high16 v0, 0x3f800000  # 1.0f

    iget v3, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v0

    const/high16 v0, 0x3f800000  # 1.0f

    iget v4, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    if-nez v0, :cond_39

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v8, Landroid/graphics/RectF;->top:F

    iget v3, v8, Landroid/graphics/RectF;->left:F

    iget v4, v8, Landroid/graphics/RectF;->bottom:F

    const/4 v5, -0x1

    const/high16 v6, -0x1000000

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    :cond_39
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v8, Landroid/graphics/RectF;->top:F

    iget v3, v8, Landroid/graphics/RectF;->right:F

    iget v4, v8, Landroid/graphics/RectF;->top:F

    const/4 v5, -0x1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/ComposeShader;

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    invoke-direct {p0, v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->satValToPoint(FF)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    const/high16 v4, 0x3f800000  # 1.0f

    iget v5, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const v2, -0x222223

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget-object v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getPrefferedHeight()I
    .registers 4

    const/16 v0, 0xc8

    int-to-float v0, v0

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-boolean v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v1, :cond_13

    int-to-float v0, v0

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    :cond_13
    return v0
.end method

.method private getPrefferedWidth()I
    .registers 4

    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getPrefferedHeight()I

    move-result v0

    iget-boolean v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v1, :cond_10

    int-to-float v0, v0

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    :cond_10
    int-to-float v0, v0

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v0, v1

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private hueToPoint(F)Landroid/graphics/Point;
    .registers 7

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    mul-float v3, p1, v1

    const/high16 v4, 0x43b40000  # 360.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Point;->x:I

    return-object v2
.end method

.method private init()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    iget v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    iget v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    iget v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    iget v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->calculateRequiredOffset()F

    move-result v0

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->initPaintTools()V

    invoke-virtual {p0, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private initPaintTools()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/high16 v2, 0x40000000  # 2.0f

    const/4 v3, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const v1, -0xe3e3e4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000  # 14.0f

    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method private moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    if-nez v2, :cond_8

    move v0, v1

    :goto_7
    return v0

    :cond_8
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_27

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->pointToHue(F)F

    move-result v1

    iput v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    goto :goto_7

    :cond_27
    iget-object v4, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_48

    iput v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->pointToSatVal(FF)[F

    move-result-object v2

    aget v1, v2, v1

    iput v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    aget v1, v2, v0

    iput v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    goto :goto_7

    :cond_48
    iget-object v4, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-eqz v4, :cond_65

    iget-object v4, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v1, 0x2

    iput v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->pointToAlpha(I)I

    move-result v1

    iput v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    goto :goto_7

    :cond_65
    move v0, v1

    goto :goto_7
.end method

.method private pointToAlpha(I)I
    .registers 6

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_15

    const/4 v0, 0x0

    :goto_f
    mul-int/lit16 v0, v0, 0xff

    div-int/2addr v0, v1

    rsub-int v0, v0, 0xff

    return v0

    :cond_15
    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1e

    move v0, v1

    goto :goto_f

    :cond_1e
    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    goto :goto_f
.end method

.method private pointToHue(F)F
    .registers 6

    const/high16 v3, 0x43b40000  # 360.0f

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_14

    const/4 v0, 0x0

    :goto_f
    mul-float/2addr v0, v3

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    return v0

    :cond_14
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1c

    move v0, v1

    goto :goto_f

    :cond_1c
    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v0, p1, v0

    goto :goto_f
.end method

.method private pointToSatVal(FF)[F
    .registers 10

    const/4 v1, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    iget-object v4, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v0, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2c

    move v0, v1

    :goto_14
    iget v5, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v5, p2, v5

    if-gez v5, :cond_39

    :goto_1a
    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    div-float v2, v6, v2

    mul-float/2addr v0, v2

    aput v0, v4, v5

    const/4 v0, 0x1

    div-float v2, v6, v3

    mul-float/2addr v1, v2

    sub-float v1, v6, v1

    aput v1, v4, v0

    return-object v4

    :cond_2c
    iget v0, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_34

    move v0, v2

    goto :goto_14

    :cond_34
    iget v0, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, p1, v0

    goto :goto_14

    :cond_39
    iget v1, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, p2, v1

    if-lez v1, :cond_41

    move v1, v3

    goto :goto_1a

    :cond_41
    iget v1, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v1

    goto :goto_1a
.end method

.method private satValToPoint(FF)Landroid/graphics/Point;
    .registers 8

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    mul-float/2addr v2, p1

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v3, Landroid/graphics/Point;->y:I

    return-object v3
.end method

.method private setUpAlphaRect()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/high16 v6, 0x3f800000  # 1.0f

    iget-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    new-instance v5, Landroid/graphics/RectF;

    add-float/2addr v1, v6

    sub-float/2addr v2, v3

    add-float/2addr v2, v6

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v6

    sub-float v3, v4, v6

    invoke-direct {v5, v1, v2, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    new-instance v0, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    const/4 v1, 0x5

    int-to-float v1, v1

    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;-><init>(I)V

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->setBounds(IIII)V

    goto :goto_6
.end method

.method private setUpHueRect()V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/high16 v7, 0x3f800000  # 1.0f

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v0, :cond_28

    iget v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    iget v6, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v0, v6

    :goto_15
    new-instance v6, Landroid/graphics/RectF;

    sub-float/2addr v2, v3

    add-float/2addr v2, v7

    add-float v3, v4, v7

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v7

    sub-float v4, v5, v7

    sub-float v0, v4, v0

    invoke-direct {v6, v2, v3, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    return-void

    :cond_28
    const/4 v0, 0x0

    int-to-float v0, v0

    goto :goto_15
.end method

.method private setUpSatValRect()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/high16 v4, 0x3f800000  # 1.0f

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v2, 0x40000000  # 2.0f

    sub-float/2addr v0, v2

    iget-boolean v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v2, :cond_15

    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    iget v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v2, v3

    sub-float/2addr v0, v2

    :cond_15
    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v4

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v4

    new-instance v3, Landroid/graphics/RectF;

    add-float v4, v0, v2

    add-float/2addr v0, v1

    invoke-direct {v3, v2, v1, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public getAlphaSliderText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    return-object v0
.end method

.method public getAlphaSliderVisible()Z
    .registers 2

    iget-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    return v0
.end method

.method public getBorderColor()I
    .registers 2

    iget v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderColor:I

    return v0
.end method

.method public getColor()I
    .registers 5

    iget v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    aput v3, v1, v2

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public getDrawingOffset()F
    .registers 2

    iget v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    return v0
.end method

.method public getSliderTrackerColor()I
    .registers 2

    iget v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSliderTrackerColor:I

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

    const/4 v2, 0x0

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    int-to-float v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_18

    :cond_17
    :goto_17
    return-void

    :cond_18
    invoke-direct {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->drawSatValPanel(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->drawHuePanel(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->drawAlphaPanel(Landroid/graphics/Canvas;)V

    goto :goto_17
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

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-direct {p0, v0, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->chooseWidth(II)I

    move-result v0

    invoke-direct {p0, v1, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->chooseHeight(II)I

    move-result v2

    iget-boolean v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v1, :cond_3e

    int-to-float v1, v0

    iget v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    sub-float/2addr v1, v3

    iget v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    if-gt v1, v2, :cond_32

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getTag()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "landscape"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    :cond_32
    int-to-float v0, v2

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v0, v1

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    :goto_3a
    invoke-virtual {p0, v0, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setMeasuredDimension(II)V

    return-void

    :cond_3e
    int-to-float v1, v2

    iget v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v1, v3

    iget v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    if-le v1, v0, :cond_52

    int-to-float v1, v0

    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v1, v2

    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    move v2, v1

    goto :goto_3a

    :cond_52
    move v0, v1

    goto :goto_3a

    :cond_54
    move v2, v1

    goto :goto_3a
.end method

.method protected onSizeChanged(IIII)V
    .registers 8
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

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setUpSatValRect()V

    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setUpHueRect()V

    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setUpAlphaRect()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_5a

    move v0, v2

    :goto_a
    if-eqz v0, :cond_55

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    iget v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    const/4 v4, 0x3

    new-array v4, v4, [F

    iget v5, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    aput v5, v4, v2

    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    aput v2, v4, v1

    const/4 v2, 0x2

    iget v5, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    aput v5, v4, v2

    invoke-static {v3, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v2

    invoke-interface {v0, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    :cond_2b
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->invalidate()V

    move v0, v1

    :goto_2f
    return v0

    :pswitch_30  #0x0
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_a

    :pswitch_46  #0x2
    invoke-direct {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_a

    :pswitch_4b  #0x1
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_a

    :cond_55
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_2f

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_30  #00000000
        :pswitch_4b  #00000001
        :pswitch_46  #00000002
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/high16 v8, 0x42480000  # 50.0f

    const/4 v4, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1b

    iget v5, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    packed-switch v5, :pswitch_data_a4

    :cond_1b
    move v1, v4

    :goto_1c
    if-eqz v1, :cond_9d

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    const/4 v3, 0x3

    new-array v3, v3, [F

    iget v5, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    aput v5, v3, v4

    iget v4, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    aput v4, v3, v0

    const/4 v4, 0x2

    iget v5, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    aput v5, v3, v4

    invoke-static {v2, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v2

    invoke-interface {v1, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    :cond_3d
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->invalidate()V

    :goto_40
    return v0

    :pswitch_41  #0x0
    iget v5, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    div-float/2addr v2, v8

    add-float/2addr v5, v2

    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    div-float/2addr v6, v8

    sub-float/2addr v2, v6

    cmpg-float v6, v5, v3

    if-gez v6, :cond_59

    move v5, v3

    :cond_4e
    :goto_4e
    cmpg-float v6, v2, v3

    if-gez v6, :cond_5f

    move v1, v3

    :cond_53
    :goto_53
    iput v5, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    iput v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    move v1, v0

    goto :goto_1c

    :cond_59
    cmpl-float v6, v5, v1

    if-lez v6, :cond_4e

    move v5, v1

    goto :goto_4e

    :cond_5f
    cmpl-float v3, v2, v1

    if-gtz v3, :cond_53

    move v1, v2

    goto :goto_53

    :pswitch_65  #0x1
    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    const/high16 v2, 0x41200000  # 10.0f

    mul-float/2addr v2, v6

    sub-float/2addr v1, v2

    cmpg-float v2, v1, v3

    if-gez v2, :cond_73

    :goto_6f
    iput v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    move v1, v0

    goto :goto_1c

    :cond_73
    const/high16 v2, 0x43b40000  # 360.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_a2

    const/high16 v3, 0x43b40000  # 360.0f

    goto :goto_6f

    :pswitch_7c  #0x2
    iget-boolean v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v1, :cond_84

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-nez v1, :cond_86

    :cond_84
    move v1, v4

    goto :goto_1c

    :cond_86
    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    int-to-float v1, v1

    const/16 v3, 0xa

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    if-gez v1, :cond_96

    move v1, v4

    :cond_92
    :goto_92
    iput v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    move v1, v0

    goto :goto_1c

    :cond_96
    const/16 v2, 0xff

    if-le v1, v2, :cond_92

    const/16 v1, 0xff

    goto :goto_92

    :cond_9d
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_40

    :cond_a2
    move v3, v1

    goto :goto_6f

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_41  #00000000
        :pswitch_65  #00000001
        :pswitch_7c  #00000002
    .end packed-switch
.end method

.method public setAlphaSliderText(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setAlphaSliderText(Ljava/lang/String;)V

    return-void
.end method

.method public setAlphaSliderText(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v0, :cond_20

    if-eqz p1, :cond_1f

    :goto_7
    iput-boolean p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    move-object v0, v1

    check-cast v0, Landroid/graphics/Shader;

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    move-object v0, v1

    check-cast v0, Landroid/graphics/Shader;

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    move-object v0, v1

    check-cast v0, Landroid/graphics/Shader;

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    check-cast v1, Landroid/graphics/Shader;

    iput-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->requestLayout()V

    :cond_1f
    return-void

    :cond_20
    if-nez p1, :cond_1f

    goto :goto_7
.end method

.method public setBorderColor(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderColor:I

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setColor(IZ)V

    return-void
.end method

.method public setColor(IZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    new-array v1, v2, [F

    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    aget v0, v1, v4

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    aget v0, v1, v5

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    aget v0, v1, v6

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    if-eqz p2, :cond_3a

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    new-array v2, v2, [F

    iget v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    aput v3, v2, v4

    iget v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    aput v3, v2, v5

    iget v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    aput v3, v2, v6

    invoke-static {v1, v2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    invoke-interface {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    :cond_3a
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    return-void
.end method

.method public setSliderTrackerColor(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->invalidate()V

    return-void
.end method
