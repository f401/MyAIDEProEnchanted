.class Landroid/support/v4/widget/CircularProgressDrawable$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final DW:Landroid/graphics/Paint;

.field EQ:F

.field final FH:Landroid/graphics/Paint;

.field final Hw:Landroid/graphics/Paint;

.field J0:F

.field J8:Z

.field Mr:I

.field QX:F

.field U2:I

.field VH:F

.field Ws:Landroid/graphics/Path;

.field XL:F

.field Zo:F

.field aM:I

.field gn:F

.field j3:I

.field final j6:Landroid/graphics/RectF;

.field tp:I

.field u7:[I

.field v5:F

.field we:F


# direct methods
.method constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->j6:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->DW:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->FH:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->Hw:Landroid/graphics/Paint;

    iput v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->v5:F

    iput v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->Zo:F

    iput v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->VH:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->gn:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->QX:F

    const/16 v0, 0xff

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->Mr:I

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->DW:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->DW:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->DW:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->FH:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->FH:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->Hw:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method DW()F
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->Zo:F

    return v0
.end method

.method DW(F)V
    .registers 2

    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->XL:F

    return-void
.end method

.method DW(I)V
    .registers 2

    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->U2:I

    return-void
.end method

.method EQ()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->EQ:F

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->we:F

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->J0:F

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$a;->v5(F)V

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$a;->FH(F)V

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$a;->Hw(F)V

    return-void
.end method

.method FH()I
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->u7:[I

    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable$a;->Hw()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method FH(F)V
    .registers 2

    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->Zo:F

    return-void
.end method

.method FH(I)V
    .registers 4

    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->tp:I

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->u7:[I

    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->tp:I

    aget v0, v0, v1

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->U2:I

    return-void
.end method

.method Hw()I
    .registers 3

    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->tp:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->u7:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method Hw(F)V
    .registers 2

    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->VH:F

    return-void
.end method

.method VH()F
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->we:F

    return v0
.end method

.method Zo()I
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->u7:[I

    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->tp:I

    aget v0, v0, v1

    return v0
.end method

.method Zo(F)V
    .registers 3

    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->gn:F

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->DW:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method gn()F
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->J0:F

    return v0
.end method

.method j6()I
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->Mr:I

    return v0
.end method

.method j6(F)V
    .registers 3

    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->QX:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->QX:F

    :cond_0
    return-void
.end method

.method j6(FF)V
    .registers 4

    float-to-int v0, p1

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->aM:I

    float-to-int v0, p2

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->j3:I

    return-void
.end method

.method j6(I)V
    .registers 2

    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->Mr:I

    return-void
.end method

.method j6(Landroid/graphics/Canvas;FFLandroid/graphics/RectF;)V
    .registers 12

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    iget-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->J8:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->Ws:Landroid/graphics/Path;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->Ws:Landroid/graphics/Path;

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->Ws:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    :goto_0
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v6

    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->aM:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->QX:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v6

    iget-object v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->Ws:Landroid/graphics/Path;

    invoke-virtual {v2, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->Ws:Landroid/graphics/Path;

    iget v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->aM:I

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->QX:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->Ws:Landroid/graphics/Path;

    iget v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->aM:I

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->QX:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    iget v5, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->j3:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->Ws:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float/2addr v0, v3

    sub-float/2addr v0, v1

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->gn:F

    div-float/2addr v3, v6

    add-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->offset(FF)V

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->Ws:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->FH:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->U2:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->FH:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->Mr:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    add-float v0, p2, p3

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->Ws:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->FH:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto :goto_0
.end method

.method j6(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 11

    const/high16 v6, 0x43b40000    # 360.0f

    const/high16 v7, 0x40000000    # 2.0f

    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->j6:Landroid/graphics/RectF;

    iget v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->XL:F

    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->gn:F

    div-float/2addr v0, v7

    add-float/2addr v0, v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v7

    iget v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->aM:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->QX:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    iget v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->gn:F

    div-float/2addr v3, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float/2addr v0, v2

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->v5:F

    iget v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->VH:F

    add-float/2addr v0, v3

    mul-float v2, v0, v6

    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->Zo:F

    add-float/2addr v0, v3

    mul-float/2addr v0, v6

    sub-float v3, v0, v2

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->DW:Landroid/graphics/Paint;

    iget v4, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->U2:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->DW:Landroid/graphics/Paint;

    iget v4, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->Mr:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->gn:F

    div-float/2addr v0, v7

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v7

    iget-object v7, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->Hw:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    neg-float v0, v0

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->DW:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/support/v4/widget/CircularProgressDrawable$a;->j6(Landroid/graphics/Canvas;FFLandroid/graphics/RectF;)V

    return-void
.end method

.method j6(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->DW:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method j6(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->J8:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->J8:Z

    :cond_0
    return-void
.end method

.method j6([I)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->u7:[I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$a;->FH(I)V

    return-void
.end method

.method tp()V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable$a;->Hw()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$a;->FH(I)V

    return-void
.end method

.method u7()F
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->EQ:F

    return v0
.end method

.method v5()F
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->v5:F

    return v0
.end method

.method v5(F)V
    .registers 2

    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->v5:F

    return-void
.end method

.method we()V
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->v5:F

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->EQ:F

    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->Zo:F

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->we:F

    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->VH:F

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->J0:F

    return-void
.end method
