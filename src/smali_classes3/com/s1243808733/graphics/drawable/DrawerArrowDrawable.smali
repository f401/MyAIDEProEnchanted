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
.method static final constructor <clinit>()V
    .registers 2

    const/16 v0, 0x2d

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    iput-boolean v2, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    iput v4, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    .line 126
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 128
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 129
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    new-array v0, v3, [I

    const v1, 0x1010036

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 133
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    int-to-float v0, v4

    invoke-static {v0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setBarThickness(F)V

    .line 138
    invoke-virtual {p0, v3}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setSpinEnabled(Z)V

    .line 140
    const/4 v0, 0x3

    int-to-float v0, v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setGapSize(F)V

    .line 142
    const/16 v0, 0x18

    int-to-float v0, v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mSize:I

    .line 144
    const/16 v0, 0x12

    int-to-float v0, v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    .line 146
    const/16 v0, 0x8

    int-to-float v0, v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    .line 147
    const/16 v0, 0x10

    int-to-float v0, v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    return-void
.end method

.method private static lerp(FFF)F
    .registers 4

    .line 462
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 323
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 325
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    packed-switch v0, :pswitch_data_0

    .line 339
    :pswitch_0
    invoke-static {p0}, Landroidj/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    .line 346
    :goto_0
    iget v1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    iget v3, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    mul-float/2addr v1, v3

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 347
    iget v3, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    iget v4, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    invoke-static {v3, v1, v4}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v3

    .line 348
    iget v1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    iget v4, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    iget v5, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    invoke-static {v1, v4, v5}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v4

    .line 350
    const/4 v1, 0x0

    int-to-float v1, v1

    iget v5, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    iget v6, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    invoke-static {v1, v5, v6}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v5, v1

    .line 352
    const/4 v1, 0x0

    int-to-float v1, v1

    sget v6, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    iget v7, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    invoke-static {v1, v6, v7}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v6

    .line 355
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_1
    int-to-float v7, v1

    if-eqz v0, :cond_4

    const/16 v1, 0xb4

    :goto_2
    int-to-float v1, v1

    iget v8, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    invoke-static {v7, v1, v8}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v1

    .line 358
    float-to-double v8, v3

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-float v7, v8

    .line 359
    float-to-double v8, v3

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-float v3, v8

    .line 361
    iget-object v6, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    .line 362
    iget v6, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    iget-object v8, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v8

    add-float/2addr v6, v8

    iget v8, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    neg-float v8, v8

    iget v9, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    invoke-static {v6, v8, v9}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v6

    .line 365
    neg-float v8, v4

    const/4 v9, 0x2

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 367
    iget-object v9, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    add-float v10, v8, v5

    const/4 v11, 0x0

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 368
    iget-object v9, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    const/4 v10, 0x2

    int-to-float v10, v10

    mul-float/2addr v5, v10

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    int-to-float v5, v5

    invoke-virtual {v9, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 371
    iget-object v4, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4, v8, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 372
    iget-object v4, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4, v7, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 375
    iget-object v4, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    neg-float v5, v6

    invoke-virtual {v4, v8, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 376
    iget-object v4, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    neg-float v3, v3

    invoke-virtual {v4, v7, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 378
    iget-object v3, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 380
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 384
    iget-object v3, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    .line 385
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x3

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    const/4 v6, 0x2

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 386
    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 387
    float-to-double v4, v4

    float-to-double v6, v3

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    iget v3, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    float-to-double v8, v3

    add-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    .line 389
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 390
    iget-boolean v2, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    if-eqz v2, :cond_6

    .line 391
    iget-boolean v2, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    xor-int/2addr v0, v2

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    :goto_3
    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 395
    :cond_0
    :goto_4
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 397
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 328
    :pswitch_1
    const/4 v0, 0x0

    .line 329
    goto/16 :goto_0

    .line 331
    :pswitch_2
    const/4 v0, 0x1

    .line 332
    goto/16 :goto_0

    .line 334
    :pswitch_3
    invoke-static {p0}, Landroidj/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 339
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 355
    :cond_3
    const/16 v1, -0xb4

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 391
    :cond_5
    const/4 v0, 0x1

    goto :goto_3

    .line 392
    :cond_6
    if-eqz v0, :cond_0

    .line 393
    const/16 v0, 0xb4

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_4

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
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
    .annotation runtime Landroidj/support/annotation/ColorInt;
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getDirection()I
    .registers 2
    .annotation runtime Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable$ArrowDirection;
    .end annotation

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
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 416
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 421
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mSize:I

    return v0
.end method

.method public getOpacity()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 426
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
    .annotation runtime Landroidj/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 404
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setArrowHeadLength(F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 157
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 158
    iput p1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    .line 159
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setArrowShaftLength(F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 177
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 178
    iput p1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    .line 179
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setBarLength(F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 203
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 204
    iput p1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    .line 205
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setBarThickness(F)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 235
    const/4 v0, 0x2

    int-to-float v0, v0

    div-float v0, p1, v0

    float-to-double v0, v0

    sget v2, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    .line 236
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ColorFilter;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 411
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    return-void
.end method

.method public setDirection(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 274
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    if-eq p1, v0, :cond_0

    .line 275
    iput p1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    .line 276
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setGapSize(F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 264
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 265
    iput p1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    .line 266
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 445
    iget v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 446
    iput p1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    .line 447
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setSpinEnabled(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 297
    iget-boolean v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 298
    :goto_0
    iput-boolean p1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    .line 299
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_0
    return-void

    .line 297
    :cond_1
    if-nez p1, :cond_0

    goto :goto_0
.end method

.method public setVerticalMirror(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 315
    iget-boolean v0, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 316
    :goto_0
    iput-boolean p1, p0, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    .line 317
    invoke-virtual {p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_0
    return-void

    .line 315
    :cond_1
    if-nez p1, :cond_0

    goto :goto_0
.end method
