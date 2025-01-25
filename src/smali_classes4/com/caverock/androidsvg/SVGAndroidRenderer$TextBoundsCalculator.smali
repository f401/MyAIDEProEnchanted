.class Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
.super Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextBoundsCalculator"
.end annotation


# instance fields
.field bbox:Landroid/graphics/RectF;

.field private final this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iput p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    iput p3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->y:F

    return-void
.end method

.method static access$0(Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;)Lcom/caverock/androidsvg/SVGAndroidRenderer;
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    return-object v0
.end method


# virtual methods
.method public doTextContainer(Lcom/caverock/androidsvg/SVG$TextContainer;)Z
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$TextPath;

    if-eqz v0, :cond_48

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextPath;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v1

    if-nez v1, :cond_20

    const-string v1, "TextPath path reference \'%s\' not found"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$1000024(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    :goto_1f
    return v0

    :cond_20
    move-object v0, v1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Path;

    new-instance v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v1, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-eqz v4, :cond_39

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    move v0, v2

    goto :goto_1f

    :cond_48
    move v0, v3

    goto :goto_1f
.end method

.method public processText(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$1000063(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$L1000004(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    iget v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->y:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_2e
    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$L1000004(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    return-void
.end method
