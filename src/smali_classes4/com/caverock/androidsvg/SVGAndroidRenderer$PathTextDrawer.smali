.class Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;
.super Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PathTextDrawer"
.end annotation


# instance fields
.field private path:Landroid/graphics/Path;

.field private final this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;


# direct methods
.method constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Landroid/graphics/Path;FF)V
    .registers 5

    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    iput-object p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->path:Landroid/graphics/Path;

    return-void
.end method

.method static access$0(Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;)Lcom/caverock/androidsvg/SVGAndroidRenderer;
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    return-object v0
.end method


# virtual methods
.method public processText(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$1000063(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$L1000004(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$L1000001(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->path:Landroid/graphics/Path;

    iget v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    iget v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$L1000004(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    iget-object v5, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    :cond_2a
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$L1000004(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$L1000001(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->path:Landroid/graphics/Path;

    iget v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    iget v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$L1000004(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    iget-object v5, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    :cond_4c
    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$L1000004(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    return-void
.end method
