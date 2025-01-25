.class Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RendererState"
.end annotation


# instance fields
.field fillPaint:Landroid/graphics/Paint;

.field hasFill:Z

.field hasStroke:Z

.field spacePreserve:Z

.field strokePaint:Landroid/graphics/Paint;

.field style:Lcom/caverock/androidsvg/SVG$Style;

.field private final this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field viewBox:Lcom/caverock/androidsvg/SVG$Box;

.field viewPort:Lcom/caverock/androidsvg/SVG$Box;


# direct methods
.method constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V
    .registers 5

    const/16 v2, 0x181

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    return-void
.end method

.method constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    iget-boolean v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    iput-boolean v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    iget-boolean v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    iput-boolean v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_2c

    new-instance v0, Lcom/caverock/androidsvg/SVG$Box;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Box;-><init>(Lcom/caverock/androidsvg/SVG$Box;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    :cond_2c
    iget-object v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_39

    new-instance v0, Lcom/caverock/androidsvg/SVG$Box;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Box;-><init>(Lcom/caverock/androidsvg/SVG$Box;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_39
    iget-boolean v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    iput-boolean v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    :try_start_3d
    iget-object v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;
    :try_end_47
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3d .. :try_end_47} :catch_48

    :goto_47
    return-void

    :catch_48
    move-exception v0

    const-string v1, "SVGAndroidRenderer"

    const-string v2, "Unexpected clone error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    goto :goto_47
.end method

.method static access$0(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer;
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    return-object v0
.end method
