.class public Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DrawerArrowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable$ArrowDirection;
    }
.end annotation


# static fields
.field public static final ARROW_DIRECTION_END:I = 0x3

.field public static final ARROW_DIRECTION_LEFT:I = 0x0

.field public static final ARROW_DIRECTION_RIGHT:I = 0x1

.field public static final ARROW_DIRECTION_START:I = 0x2

.field private static final ARROW_HEAD_ANGLE:F


# instance fields
.field private mArrowHeadLength:F

.field private mArrowShaftLength:F

.field private mBarGap:F

.field private mBarLength:F

.field private mDirection:I

.field private mMaxCutForBarSize:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mProgress:F

.field private final mSize:I

.field private mSpin:Z

.field private mVerticalMirror:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 97
    const-wide v0, 0x4046800000000000L  # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 125
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 94
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    .line 110
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    .line 120
    const/4 v2, 0x2

    iput v2, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    .line 126
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 128
    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 129
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    const v0, 0x1010036

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 133
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    .line 134
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    const/high16 p1, 0x40000000  # 2.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setBarThickness(F)V

    .line 138
    invoke-virtual {p0, v2}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setSpinEnabled(Z)V

    .line 140
    const/high16 p1, 0x40400000  # 3.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setGapSize(F)V

    .line 142
    const/high16 p1, 0x41c00000  # 24.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mSize:I

    .line 144
    const/high16 p1, 0x41900000  # 18.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    .line 146
    const/high16 p1, 0x41000000  # 8.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    .line 147
    const/high16 p1, 0x41800000  # 16.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    return-void
.end method

.method private static lerp(FFF)F
    .registers 3

    sub-float/2addr p1, p0

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 20

    .line 323
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 326
    iget v3, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    const/4 v4, 0x1

    if-eqz v3, :cond_21

    if-eq v3, v4, :cond_1f

    const/4 v5, 0x3

    if-eq v3, v5, :cond_19

    .line 339
    invoke-static/range {p0 .. p0}, Landroidj/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    if-ne v3, v4, :cond_21

    goto :goto_1f

    .line 334
    :cond_19
    invoke-static/range {p0 .. p0}, Landroidj/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    if-nez v3, :cond_21

    :cond_1f
    :goto_1f
    const/4 v3, 0x1

    goto :goto_22

    .line 346
    :cond_21
    const/4 v3, 0x0

    :goto_22
    iget v5, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    mul-float v5, v5, v5

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v5, v5, v6

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v5, v7

    .line 347
    iget v7, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    iget v8, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    invoke-static {v7, v5, v8}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v5

    .line 348
    iget v7, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    iget v8, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    iget v9, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    invoke-static {v7, v8, v9}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v7

    .line 350
    iget v8, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    iget v9, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    const/4 v10, 0x0

    invoke-static {v10, v8, v9}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    .line 352
    sget v9, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    iget v11, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    invoke-static {v10, v9, v11}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v9

    if-eqz v3, :cond_5c

    const/4 v11, 0x0

    goto :goto_5e

    :cond_5c
    const/high16 v11, -0x3ccc0000  # -180.0f

    :goto_5e
    const/high16 v12, 0x43340000  # 180.0f

    if-eqz v3, :cond_65

    const/high16 v13, 0x43340000  # 180.0f

    goto :goto_66

    :cond_65
    const/4 v13, 0x0

    .line 356
    :goto_66
    iget v14, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    .line 355
    invoke-static {v11, v13, v14}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v11

    float-to-double v13, v5

    float-to-double v4, v9

    .line 358
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v15, v15, v13

    move/from16 v17, v11

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-float v10, v10

    .line 359
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-float v4, v4

    .line 361
    iget-object v5, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 362
    iget v5, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    iget-object v11, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v11

    add-float/2addr v5, v11

    iget v11, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    neg-float v11, v11

    iget v13, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    invoke-static {v5, v11, v13}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v5

    neg-float v11, v7

    div-float/2addr v11, v6

    .line 367
    iget-object v13, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    add-float v14, v11, v8

    const/4 v9, 0x0

    invoke-virtual {v13, v14, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 368
    iget-object v13, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    mul-float v8, v8, v6

    sub-float/2addr v7, v8

    invoke-virtual {v13, v7, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 371
    iget-object v7, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7, v11, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 372
    iget-object v7, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7, v10, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 375
    iget-object v7, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    neg-float v5, v5

    invoke-virtual {v7, v11, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 376
    iget-object v5, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    neg-float v4, v4

    invoke-virtual {v5, v10, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 378
    iget-object v4, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 380
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 384
    iget-object v4, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    .line 385
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v7, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    const/high16 v8, 0x40400000  # 3.0f

    mul-float v8, v8, v4

    sub-float/2addr v5, v8

    mul-float v6, v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 386
    div-int/lit8 v5, v5, 0x4

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    float-to-double v5, v5

    float-to-double v8, v4

    const-wide/high16 v10, 0x3ff8000000000000L  # 1.5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v10

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v8

    double-to-float v4, v5

    .line 389
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 390
    iget-boolean v2, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    if-eqz v2, :cond_11c

    .line 391
    iget-boolean v2, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    xor-int/2addr v2, v3

    if-eqz v2, :cond_114

    const/4 v4, -0x1

    goto :goto_115

    :cond_114
    const/4 v4, 0x1

    :goto_115
    int-to-float v2, v4

    mul-float v11, v17, v2

    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_121

    :cond_11c
    if-eqz v3, :cond_121

    .line 393
    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->rotate(F)V

    .line 395
    :cond_121
    :goto_121
    iget-object v2, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 397
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getArrowHeadLength()F
    .registers 2

    .line 168
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    return v0
.end method

.method public getArrowShaftLength()F
    .registers 2

    .line 187
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    return v0
.end method

.method public getBarLength()F
    .registers 2

    .line 194
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    return v0
.end method

.method public getBarThickness()F
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getColor()I
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getDirection()I
    .registers 2

    .line 308
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    return v0
.end method

.method public getGapSize()F
    .registers 2

    .line 253
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 416
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 421
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mSize:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .registers 2

    .line 455
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getProgress()F
    .registers 2

    .line 434
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    return v0
.end method

.method public isSpinEnabled()Z
    .registers 2

    .line 286
    iget-boolean v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .line 402
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_10

    .line 403
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 404
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_10
    return-void
.end method

.method public setArrowHeadLength(F)V
    .registers 3

    .line 157
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 158
    iput p1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    .line 159
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_b
    return-void
.end method

.method public setArrowShaftLength(F)V
    .registers 3

    .line 177
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 178
    iput p1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    .line 179
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_b
    return-void
.end method

.method public setBarLength(F)V
    .registers 3

    .line 203
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 204
    iput p1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    .line 205
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_b
    return-void
.end method

.method public setBarThickness(F)V
    .registers 6

    .line 233
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_25

    .line 234
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 235
    sget p1, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float p1, v0

    iput p1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    .line 236
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_25
    return-void
.end method

.method public setColor(I)V
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq p1, v0, :cond_10

    .line 214
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_10
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 410
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 411
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    return-void
.end method

.method public setDirection(I)V
    .registers 3

    .line 274
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    if-eq p1, v0, :cond_9

    .line 275
    iput p1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    .line 276
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_9
    return-void
.end method

.method public setGapSize(F)V
    .registers 3

    .line 264
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 265
    iput p1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    .line 266
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_b
    return-void
.end method

.method public setProgress(F)V
    .registers 3

    .line 445
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 446
    iput p1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    .line 447
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_b
    return-void
.end method

.method public setSpinEnabled(Z)V
    .registers 3

    .line 297
    iget-boolean v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    if-eq v0, p1, :cond_9

    .line 298
    iput-boolean p1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    .line 299
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_9
    return-void
.end method

.method public setVerticalMirror(Z)V
    .registers 3

    .line 315
    iget-boolean v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    if-eq v0, p1, :cond_9

    .line 316
    iput-boolean p1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    .line 317
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_9
    return-void
.end method
