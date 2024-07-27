.class Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/SpanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomBulletSpan"
.end annotation


# instance fields
.field private final color:I

.field private final gapWidth:I

.field private final radius:I

.field private sBulletPath:Landroid/graphics/Path;


# direct methods
.method private constructor <init>(III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->sBulletPath:Landroid/graphics/Path;

    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->color:I

    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->radius:I

    iput p3, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->gapWidth:I

    return-void
.end method

.method synthetic constructor <init>(IIILcom/blankj/utilcode/util/SpanUtils$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;-><init>(III)V

    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .registers 21

    check-cast p8, Landroid/text/Spanned;

    move-object/from16 v0, p8

    invoke-interface {v0, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    move/from16 v0, p9

    if-ne v1, v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->color:I

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->sBulletPath:Landroid/graphics/Path;

    if-nez v3, :cond_0

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->sBulletPath:Landroid/graphics/Path;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->radius:I

    int-to-float v6, v6

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v3, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->radius:I

    mul-int/2addr v3, p4

    add-int/2addr v3, p3

    int-to-float v3, v3

    add-int v4, p5, p7

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->sBulletPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    return-void

    :cond_2
    iget v3, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->radius:I

    mul-int v4, p4, v3

    add-int/2addr v4, p3

    int-to-float v4, v4

    add-int v5, p5, p7

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v3, v3

    invoke-virtual {p1, v4, v5, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getLeadingMargin(Z)I
    .registers 4

    iget v0, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->radius:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->gapWidth:I

    add-int/2addr v0, v1

    return v0
.end method
