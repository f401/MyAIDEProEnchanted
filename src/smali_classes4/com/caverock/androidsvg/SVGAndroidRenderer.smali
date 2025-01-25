.class Lcom/caverock/androidsvg/SVGAndroidRenderer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;
    }
.end annotation


# static fields
.field private static final BEZIER_ARC_FACTOR:F = 0.5522848f

.field private static final DEFAULT_FONT_FAMILY:Ljava/lang/String; = "serif"

.field public static final LUMINANCE_TO_ALPHA_BLUE:F = 0.0722f

.field public static final LUMINANCE_TO_ALPHA_GREEN:F = 0.7151f

.field public static final LUMINANCE_TO_ALPHA_RED:F = 0.2127f

.field private static final TAG:Ljava/lang/String; = "SVGAndroidRenderer"

.field private static supportedFeatures:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private canvas:Landroid/graphics/Canvas;

.field private document:Lcom/caverock/androidsvg/SVG;

.field private dpi:F

.field private matrixStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private parentStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;"
        }
    .end annotation
.end field

.field private ruleMatchContext:Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;

.field private state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

.field private stateStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    check-cast v0, Ljava/util/HashSet;

    sput-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>(Landroid/graphics/Canvas;F)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->ruleMatchContext:Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iput p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    return-void
.end method

.method static synthetic access$1000023(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000024(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000025(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000063(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Z
    .registers 2

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000074(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V
    .registers 10

    invoke-static/range {p0 .. p9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->arcTo(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V

    return-void
.end method

.method static synthetic access$L1000000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$L1000001(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Landroid/graphics/Canvas;
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$L1000004(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    return-object v0
.end method

.method static synthetic access$S1000000(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000001(Lcom/caverock/androidsvg/SVGAndroidRenderer;Landroid/graphics/Canvas;)V
    .registers 2

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    return-void
.end method

.method static synthetic access$S1000004(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)V
    .registers 2

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    return-void
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$GraphicsElement;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$GraphicsElement;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Matrix;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1b

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_1b
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Rect;

    if-eqz v0, :cond_34

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    move-result-object v0

    :goto_26
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_b

    :cond_34
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Circle;

    if-eqz v0, :cond_40

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_26

    :cond_40
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    if-eqz v0, :cond_4c

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_26

    :cond_4c
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_26
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Path;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Path;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Matrix;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1b

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_1b
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_30

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_30
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_b
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgObject;",
            "Z",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Matrix;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePush()V

    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Use;

    if-eqz v0, :cond_22

    if-eqz p2, :cond_1a

    check-cast p1, Lcom/caverock/androidsvg/SVG$Use;

    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Use;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    :goto_16
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePop()V

    goto :goto_7

    :cond_1a
    const-string v0, "<use> elements inside a <clipPath> cannot reference another <use>"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    :cond_22
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-eqz v0, :cond_2c

    check-cast p1, Lcom/caverock/androidsvg/SVG$Path;

    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Path;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_16

    :cond_2c
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Text;

    if-eqz v0, :cond_36

    check-cast p1, Lcom/caverock/androidsvg/SVG$Text;

    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Text;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_16

    :cond_36
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;

    if-eqz v0, :cond_40

    check-cast p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;

    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$GraphicsElement;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_16

    :cond_40
    const-string v0, "Invalid %s element found in clipPath definition"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$SvgObject;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Text;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Text;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Matrix;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_e

    :goto_d
    return-void

    :cond_e
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_17
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/List;

    if-eqz v0, :cond_23

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_ab

    :cond_23
    move v1, v2

    :goto_24
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/List;

    if-eqz v0, :cond_30

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_ba

    :cond_30
    move v3, v2

    :goto_31
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/List;

    if-eqz v0, :cond_3d

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c9

    :cond_3d
    move v4, v2

    :goto_3e
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/List;

    if-eqz v0, :cond_4a

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d8

    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v0, v5, :cond_66

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v0

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v5, v6, :cond_e6

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v0, v5

    sub-float/2addr v1, v0

    :cond_66
    :goto_66
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v0, :cond_8d

    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;

    invoke-direct {v0, p0, v1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    iget-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_8d
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;

    add-float/2addr v1, v4

    add-float/2addr v2, v3

    invoke-direct {v5, p0, v1, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFLandroid/graphics/Path;)V

    invoke-direct {p0, p1, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto/16 :goto_d

    :cond_ab
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v1, v0

    goto/16 :goto_24

    :cond_ba
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v3, v0

    goto/16 :goto_31

    :cond_c9
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v4, v0

    goto/16 :goto_3e

    :cond_d8
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto/16 :goto_4a

    :cond_e6
    sub-float/2addr v1, v0

    goto/16 :goto_66
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Use;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Use;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Matrix;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1c

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_1c
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    if-nez v0, :cond_33

    const-string v0, "Use reference \'%s\' not found"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_33
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, v0, v3, p2, p3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_c
.end method

.method private static arcTo(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V
    .registers 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFZZFF",
            "Lcom/caverock/androidsvg/SVG$PathInterface;",
            ")V"
        }
    .end annotation

    cmpg-float v4, p0, p7

    if-nez v4, :cond_9

    cmpg-float v4, p1, p8

    if-nez v4, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const/4 v4, 0x0

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-eqz v4, :cond_15

    const/4 v4, 0x0

    int-to-float v4, v4

    cmpg-float v4, p3, v4

    if-nez v4, :cond_1f

    :cond_15
    move-object/from16 v0, p9

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-interface {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$PathInterface;->lineTo(FF)V

    goto :goto_8

    :cond_1f
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move/from16 v0, p4

    float-to-double v4, v0

    const-wide v6, 0x4076800000000000L  # 360.0

    rem-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    sub-float v4, p0, p7

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L  # 2.0

    div-double/2addr v4, v6

    sub-float v6, p1, p8

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L  # 2.0

    div-double/2addr v6, v8

    mul-double v8, v12, v4

    mul-double v16, v14, v6

    add-double v16, v16, v8

    neg-double v8, v14

    mul-double/2addr v4, v8

    mul-double/2addr v6, v12

    add-double v18, v4, v6

    mul-float v4, v11, v11

    float-to-double v8, v4

    mul-float v4, v10, v10

    float-to-double v4, v4

    mul-double v20, v16, v16

    mul-double v22, v18, v18

    div-double v6, v20, v8

    div-double v24, v22, v4

    add-double v6, v6, v24

    const-wide v24, 0x3fefffeb074a771dL  # 0.99999

    cmpl-double v24, v6, v24

    if-lez v24, :cond_1d0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide v6, 0x3ff0000a7c5ac472L  # 1.00001

    mul-double/2addr v4, v6

    float-to-double v6, v11

    mul-double/2addr v6, v4

    double-to-float v11, v6

    float-to-double v6, v10

    mul-double/2addr v4, v6

    double-to-float v10, v4

    mul-float v4, v11, v11

    float-to-double v8, v4

    mul-float v4, v10, v10

    float-to-double v4, v4

    move-wide v6, v4

    :goto_83
    if-nez p5, :cond_1ad

    if-nez p6, :cond_1af

    :cond_87
    const/4 v4, -0x1

    :goto_88
    int-to-double v0, v4

    move-wide/from16 v24, v0

    mul-double v4, v8, v6

    mul-double v26, v8, v22

    sub-double v4, v4, v26

    mul-double v26, v6, v20

    sub-double v4, v4, v26

    mul-double v8, v8, v22

    mul-double v6, v6, v20

    add-double/2addr v6, v8

    div-double/2addr v4, v6

    const/4 v6, 0x0

    int-to-double v6, v6

    cmpg-double v6, v4, v6

    if-gez v6, :cond_a3

    const/4 v4, 0x0

    int-to-double v4, v4

    :cond_a3
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double v4, v4, v24

    float-to-double v6, v11

    mul-double v6, v6, v18

    float-to-double v8, v10

    div-double/2addr v6, v8

    mul-double v8, v6, v4

    float-to-double v6, v10

    mul-double v6, v6, v16

    float-to-double v0, v11

    move-wide/from16 v20, v0

    div-double v6, v6, v20

    neg-double v6, v6

    mul-double v20, v4, v6

    add-float v4, p0, p7

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L  # 2.0

    div-double v22, v4, v6

    add-float v4, p1, p8

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L  # 2.0

    div-double v24, v4, v6

    sub-double v4, v16, v8

    float-to-double v6, v11

    div-double v26, v4, v6

    sub-double v4, v18, v20

    float-to-double v6, v10

    div-double v28, v4, v6

    move-wide/from16 v0, v16

    neg-double v4, v0

    sub-double/2addr v4, v8

    float-to-double v6, v11

    div-double v16, v4, v6

    move-wide/from16 v0, v18

    neg-double v4, v0

    sub-double v4, v4, v20

    float-to-double v6, v10

    div-double v18, v4, v6

    mul-double v4, v26, v26

    mul-double v6, v28, v28

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const/4 v4, 0x0

    int-to-double v4, v4

    cmpg-double v4, v28, v4

    if-gez v4, :cond_1b2

    const-wide/high16 v4, -0x4010000000000000L  # -1.0

    :goto_f3
    div-double v6, v26, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v30

    mul-double v6, v26, v26

    mul-double v32, v28, v28

    add-double v6, v6, v32

    mul-double v32, v16, v16

    mul-double v34, v18, v18

    add-double v32, v32, v34

    mul-double v6, v6, v32

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    mul-double v6, v26, v18

    mul-double v34, v16, v28

    sub-double v6, v6, v34

    const/16 v34, 0x0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    cmpg-double v6, v6, v34

    if-gez v6, :cond_1b6

    const/high16 v6, -0x40800000  # -1.0f

    :goto_11e
    float-to-double v6, v6

    mul-double v16, v16, v26

    mul-double v18, v18, v28

    add-double v16, v16, v18

    div-double v16, v16, v32

    invoke-static/range {v16 .. v17}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkedArcCos(D)D

    move-result-wide v16

    mul-double v6, v6, v16

    if-nez p6, :cond_1ba

    const/16 v16, 0x0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    cmpl-double v16, v6, v16

    if-lez v16, :cond_1ba

    const-wide v16, 0x401921fb54442d18L  # 6.283185307179586

    sub-double v6, v6, v16

    :cond_141
    :goto_141
    mul-double v4, v4, v30

    const-wide v16, 0x401921fb54442d18L  # 6.283185307179586

    rem-double v4, v4, v16

    const-wide v16, 0x401921fb54442d18L  # 6.283185307179586

    rem-double v6, v6, v16

    invoke-static {v4, v5, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->arcToBeziers(DD)[F

    move-result-object v16

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v4, v11, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    mul-double v6, v12, v8

    mul-double v10, v14, v20

    sub-double/2addr v6, v10

    add-double v6, v6, v22

    double-to-float v5, v6

    mul-double v6, v12, v20

    mul-double/2addr v8, v14

    add-double/2addr v6, v8

    add-double v6, v6, v24

    double-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    move-object/from16 v0, v16

    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    aput p7, v16, v4

    move-object/from16 v0, v16

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aput p8, v16, v4

    const/4 v4, 0x0

    move v11, v4

    :goto_189
    move-object/from16 v0, v16

    array-length v4, v0

    if-ge v11, v4, :cond_8

    aget v5, v16, v11

    add-int/lit8 v4, v11, 0x1

    aget v6, v16, v4

    add-int/lit8 v4, v11, 0x2

    aget v7, v16, v4

    add-int/lit8 v4, v11, 0x3

    aget v8, v16, v4

    add-int/lit8 v4, v11, 0x4

    aget v9, v16, v4

    add-int/lit8 v4, v11, 0x5

    aget v10, v16, v4

    move-object/from16 v4, p9

    invoke-interface/range {v4 .. v10}, Lcom/caverock/androidsvg/SVG$PathInterface;->cubicTo(FFFFFF)V

    add-int/lit8 v4, v11, 0x6

    move v11, v4

    goto :goto_189

    :cond_1ad
    if-nez p6, :cond_87

    :cond_1af
    const/4 v4, 0x1

    goto/16 :goto_88

    :cond_1b2
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    goto/16 :goto_f3

    :cond_1b6
    const/high16 v6, 0x3f800000  # 1.0f

    goto/16 :goto_11e

    :cond_1ba
    if-eqz p6, :cond_141

    const/16 v16, 0x0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    cmpg-double v16, v6, v16

    if-gez v16, :cond_141

    const-wide v16, 0x401921fb54442d18L  # 6.283185307179586

    add-double v6, v6, v16

    goto/16 :goto_141

    :cond_1d0
    move-wide v6, v4

    goto/16 :goto_83
.end method

.method private static arcToBeziers(DD)[F
    .registers 24

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    mul-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L  # Math.PI

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v4, v2

    int-to-double v2, v4

    div-double v6, p2, v2

    const-wide v2, 0x3ff5555555555555L  # 1.3333333333333333

    const-wide/high16 v8, 0x4000000000000000L  # 2.0

    div-double v8, v6, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    const-wide/high16 v8, 0x3ff0000000000000L  # 1.0

    const-wide/high16 v10, 0x4000000000000000L  # 2.0

    div-double v10, v6, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    div-double v8, v2, v8

    mul-int/lit8 v2, v4, 0x6

    new-array v5, v2, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_36
    if-lt v3, v4, :cond_39

    return-object v5

    :cond_39
    int-to-double v10, v3

    mul-double/2addr v10, v6

    add-double v10, v10, p0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    add-int/lit8 v16, v2, 0x1

    mul-double v18, v8, v14

    sub-double v18, v12, v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    aput v17, v5, v2

    add-int/lit8 v2, v16, 0x1

    mul-double/2addr v12, v8

    add-double/2addr v12, v14

    double-to-float v12, v12

    aput v12, v5, v16

    add-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    add-int/lit8 v14, v2, 0x1

    mul-double v16, v8, v10

    add-double v16, v16, v12

    move-wide/from16 v0, v16

    double-to-float v15, v0

    aput v15, v5, v2

    add-int/lit8 v2, v14, 0x1

    mul-double v16, v8, v12

    sub-double v16, v10, v16

    move-wide/from16 v0, v16

    double-to-float v15, v0

    aput v15, v5, v14

    add-int/lit8 v14, v2, 0x1

    double-to-float v12, v12

    aput v12, v5, v2

    add-int/lit8 v2, v14, 0x1

    double-to-float v10, v10

    aput v10, v5, v14

    add-int/lit8 v3, v3, 0x1

    goto :goto_36
.end method

.method private calculateClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)Landroid/graphics/Path;
    .registers 10
    .annotation runtime Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    if-nez v0, :cond_23

    const-string v0, "ClipPath reference \'%s\' not found"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Path;

    :goto_22
    return-object v0

    :cond_23
    check-cast v0, Lcom/caverock/androidsvg/SVG$ClipPath;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v1, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    iput-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v1, :cond_a0

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_a0

    move v1, v2

    :goto_41
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    if-nez v1, :cond_56

    iget v1, p2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v2, p2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v1, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v2, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_56
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_5f

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_5f
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6c
    :goto_6c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a2

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    if-eqz v1, :cond_91

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_84

    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_84
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_91

    sget-object v1, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_91
    invoke-virtual {v2, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v0, v2

    goto :goto_22

    :cond_a0
    move v1, v3

    goto :goto_41

    :cond_a2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgObject;

    instance-of v6, v1, Lcom/caverock/androidsvg/SVG$SvgElement;

    if-eqz v6, :cond_6c

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->objectToPath(Lcom/caverock/androidsvg/SVG$SvgElement;Z)Landroid/graphics/Path;

    move-result-object v1

    if-eqz v1, :cond_6c

    sget-object v6, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v2, v1, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto :goto_6c
.end method

.method private calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$Line;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Line;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_4e

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    :goto_b
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_50

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    :goto_15
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_52

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    move v6, v1

    :goto_20
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_54

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v7, v0

    :goto_2b
    new-instance v8, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    sub-float v4, v6, v2

    sub-float v5, v7, v3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    sub-float v4, v6, v2

    sub-float v5, v7, v3

    move-object v1, p0

    move v2, v6

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v8

    :cond_4e
    move v2, v0

    goto :goto_b

    :cond_50
    move v3, v0

    goto :goto_15

    :cond_52
    move v6, v0

    goto :goto_20

    :cond_54
    move v7, v0

    goto :goto_2b
.end method

.method private calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$PolyLine;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$PolyLine;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v8, v0

    if-ge v8, v7, :cond_c

    const/4 v0, 0x0

    check-cast v0, Ljava/util/List;

    :goto_b
    return-object v0

    :cond_c
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v2, v1, v9

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v3, v1, v10

    int-to-float v4, v9

    int-to-float v5, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    int-to-float v2, v9

    int-to-float v3, v9

    move-object v1, v0

    :goto_24
    if-lt v7, v8, :cond_67

    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Polygon;

    if-eqz v0, :cond_8a

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v0, v0, v9

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_65

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v0, v0, v10

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_65

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v2, v0, v9

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v3, v0, v10

    invoke-virtual {v1, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v4, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float v4, v2, v4

    iget v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float v5, v3, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v9, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_65
    :goto_65
    move-object v0, v6

    goto :goto_b

    :cond_67
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v2, v0, v7

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v4, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float v4, v2, v4

    iget v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float v5, v3, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    add-int/lit8 v4, v7, 0x2

    move-object v1, v0

    move v7, v4

    goto :goto_24

    :cond_8a
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_65
.end method

.method private calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;
    .registers 7

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    new-instance v1, Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v1
.end method

.method private calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F
    .registers 3

    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;->x:F

    return v0
.end method

.method private calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;
    .registers 13

    const/4 v8, 0x2

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p3, :cond_e

    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-object v3

    :cond_f
    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v1, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float/2addr v0, v1

    iget v1, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    iget v2, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float v4, v1, v2

    iget v1, p2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    neg-float v1, v1

    iget v2, p2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    neg-float v2, v2

    sget-object v5, Lcom/caverock/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {p3, v5}, Lcom/caverock/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    iget v5, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v6, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_e

    :cond_36
    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getScale()Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-result-object v5

    sget-object v6, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    if-ne v5, v6, :cond_73

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_42
    iget v4, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float/2addr v4, v0

    iget v5, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float/2addr v5, v0

    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v6

    sget-object v7, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMidYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-ne v6, v7, :cond_78

    :cond_50
    iget v6, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    sub-float v4, v6, v4

    int-to-float v6, v8

    div-float/2addr v4, v6

    sub-float/2addr v1, v4

    :cond_57
    :goto_57
    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v4

    sget-object v6, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMinYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-ne v4, v6, :cond_93

    :cond_5f
    iget v4, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    sub-float/2addr v4, v5

    int-to-float v5, v8

    div-float/2addr v4, v5

    sub-float/2addr v2, v4

    :cond_65
    :goto_65
    iget v4, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v5, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_e

    :cond_73
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_42

    :cond_78
    sget-object v7, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-eq v6, v7, :cond_50

    sget-object v7, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMidYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-eq v6, v7, :cond_50

    sget-object v7, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMaxYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-ne v6, v7, :cond_8a

    :cond_84
    :goto_84
    iget v6, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    sub-float v4, v6, v4

    sub-float/2addr v1, v4

    goto :goto_57

    :cond_8a
    sget-object v7, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMaxYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-eq v6, v7, :cond_84

    sget-object v7, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMaxYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-ne v6, v7, :cond_57

    goto :goto_84

    :cond_93
    sget-object v6, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-eq v4, v6, :cond_5f

    sget-object v6, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMaxYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-eq v4, v6, :cond_5f

    sget-object v6, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMinYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-ne v4, v6, :cond_a4

    :cond_9f
    :goto_9f
    iget v4, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    sub-float/2addr v4, v5

    sub-float/2addr v2, v4

    goto :goto_65

    :cond_a4
    sget-object v6, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMidYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-eq v4, v6, :cond_9f

    sget-object v6, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMaxYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-ne v4, v6, :cond_65

    goto :goto_9f
.end method

.method private checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgElement;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    return-void
.end method

.method private checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgElement;",
            "Lcom/caverock/androidsvg/SVG$Box;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1b

    invoke-direct {p0, p1, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_8

    :cond_1b
    invoke-direct {p0, p1, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath_OldStyle(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    goto :goto_8
.end method

.method private checkForClipPath_OldStyle(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgElement;",
            "Lcom/caverock/androidsvg/SVG$Box;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    if-nez v0, :cond_20

    const-string v0, "ClipPath reference \'%s\' not found"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1f
    return-void

    :cond_20
    check-cast v0, Lcom/caverock/androidsvg/SVG$ClipPath;

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_1f

    :cond_30
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v1, :cond_53

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_53

    move v1, v2

    :goto_3f
    instance-of v4, p1, Lcom/caverock/androidsvg/SVG$Group;

    if-eqz v4, :cond_55

    if-nez v1, :cond_55

    const-string v0, "<clipPath clipPathUnits=\"objectBoundingBox\"> is not supported when referenced from container elements (like %s)"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$SvgElement;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1f

    :cond_53
    move v1, v3

    goto :goto_3f

    :cond_55
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePush()V

    if-nez v1, :cond_72

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v4, p2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v2, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v4, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_72
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_7d

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_7d
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    iput-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_93
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a3

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePop()V

    goto/16 :goto_1f

    :cond_a3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {p0, v0, v3, v1, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_93
.end method

.method private checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgElement;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    invoke-direct {p0, v1, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V

    :cond_18
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-eqz v0, :cond_30

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    invoke-direct {p0, v1, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V

    :cond_30
    return-void
.end method

.method private checkForImageDataURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string v1, "data:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-ge v1, v2, :cond_18

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_c

    :cond_18
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_25

    const/16 v2, 0xc

    if-ge v1, v2, :cond_28

    :cond_25
    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_c

    :cond_28
    const-string v2, ";base64"

    add-int/lit8 v3, v1, -0x7

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_c

    :cond_39
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_c
.end method

.method private checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;
    .registers 10

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Typeface;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    if-eq p3, v1, :cond_26

    move v1, v2

    :goto_a
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x1f4

    if-le v4, v5, :cond_2a

    if-eqz v1, :cond_28

    const/4 v2, 0x3

    :cond_17
    :goto_17
    const-string v1, "serif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_2e

    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_25
    :goto_25
    return-object v0

    :cond_26
    move v1, v3

    goto :goto_a

    :cond_28
    move v2, v3

    goto :goto_17

    :cond_2a
    if-eqz v1, :cond_17

    const/4 v2, 0x2

    goto :goto_17

    :cond_2e
    const-string v1, "sans-serif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_3d

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_25

    :cond_3d
    const-string v1, "monospace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_4c

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_25

    :cond_4c
    const-string v1, "cursive"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_5b

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_25

    :cond_5b
    const-string v1, "fantasy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_25

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_25
.end method

.method private checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgObject;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    check-cast p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    goto :goto_4
.end method

.method private static checkedArcCos(D)D
    .registers 4

    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_c

    const-wide v0, 0x400921fb54442d18L  # Math.PI

    :goto_b
    return-wide v0

    :cond_c
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_15

    const/4 v0, 0x0

    int-to-double v0, v0

    goto :goto_b

    :cond_15
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    goto :goto_b
.end method

.method private static clamp255(F)I
    .registers 3

    const/16 v0, 0xff

    const/high16 v1, 0x43800000  # 256.0f

    mul-float/2addr v1, p0

    float-to-int v1, v1

    if-gez v1, :cond_a

    const/4 v0, 0x0

    :cond_9
    :goto_9
    return v0

    :cond_a
    if-gt v1, v0, :cond_9

    move v0, v1

    goto :goto_9
.end method

.method private clipStatePop()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    return-void
.end method

.method private clipStatePush()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    sget v1, Lcom/caverock/androidsvg/CanvasLegacy;->MATRIX_SAVE_FLAG:I

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/CanvasLegacy;->save(Landroid/graphics/Canvas;I)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    return-void
.end method

.method private static colourWithOpacity(IF)I
    .registers 4

    const/16 v0, 0xff

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-gez v1, :cond_17

    const/4 v0, 0x0

    :cond_f
    :goto_f
    shl-int/lit8 v0, v0, 0x18

    const v1, 0xffffff

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    return v0

    :cond_17
    if-gt v1, v0, :cond_f

    move v0, v1

    goto :goto_f
.end method

.method private static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method private decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/caverock/androidsvg/SVG$Box;",
            "Lcom/caverock/androidsvg/SVG$PaintReference;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    if-nez v0, :cond_39

    if-eqz p1, :cond_2a

    const-string v0, "Fill"

    :goto_f
    const-string v1, "%s reference \'%s\' not found"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    iget-object v3, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->fallback:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->fallback:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    const-string v0, "Stroke"

    goto :goto_f

    :cond_2d
    if-eqz p1, :cond_34

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v4, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_29

    :cond_34
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v4, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    goto :goto_29

    :cond_39
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    if-eqz v1, :cond_43

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {p0, p1, p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeLinearGradient(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V

    goto :goto_29

    :cond_43
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    if-eqz v1, :cond_4d

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {p0, p1, p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeRadialGradient(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V

    goto :goto_29

    :cond_4d
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SolidColor;

    if-eqz v1, :cond_29

    check-cast v0, Lcom/caverock/androidsvg/SVG$SolidColor;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setSolidColor(ZLcom/caverock/androidsvg/SVG$SolidColor;)V

    goto :goto_29
.end method

.method private display()Z
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_14
.end method

.method private doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgElement;",
            "Landroid/graphics/Path;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;

    if-eqz v1, :cond_24

    check-cast v0, Lcom/caverock/androidsvg/SVG$Pattern;

    invoke-direct {p0, p1, p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillWithPattern(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;Lcom/caverock/androidsvg/SVG$Pattern;)V

    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_23
.end method

.method private doStroke(Landroid/graphics/Path;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SuppressWarnings;
        value = "deprecation"
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    if-ne v0, v1, :cond_53

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    if-eqz v2, :cond_3f

    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v2, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_3f
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    if-eqz v2, :cond_52

    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_52
    :goto_52
    return-void

    :cond_53
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_52
.end method

.method private dotProduct(FFFF)F
    .registers 7

    mul-float v0, p1, p3

    mul-float v1, p2, p4

    add-float/2addr v0, v1

    return v0
.end method

.method private enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$TextContainer;",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    instance-of v5, v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-eqz v5, :cond_36

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, v3

    :goto_2b
    invoke-direct {p0, v5, v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->processText(Ljava/lang/String;)V

    :goto_32
    move v1, v3

    goto :goto_10

    :cond_34
    move v0, v2

    goto :goto_2b

    :cond_36
    invoke-direct {p0, v0, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->processTextChild(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    goto :goto_32
.end method

.method private static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "SVGAndroidRenderer"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$TextContainer;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    instance-of v5, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v5, :cond_21

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    invoke-direct {p0, v0, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V

    :cond_1f
    :goto_1f
    move v1, v3

    goto :goto_9

    :cond_21
    instance-of v5, v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-eqz v5, :cond_1f

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    move v0, v3

    :goto_30
    invoke-direct {p0, v5, v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_38
    move v0, v2

    goto :goto_30
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$GradientElement;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1, p2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v2

    if-nez v2, :cond_14

    const-string v1, "Gradient reference \'%s\' not found"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    instance-of v1, v2, Lcom/caverock/androidsvg/SVG$GradientElement;

    if-nez v1, :cond_20

    const-string v1, "Gradient href attributes must point to other gradient elements"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    :cond_20
    if-ne v2, p1, :cond_2c

    const-string v1, "Circular reference in gradient href attribute \'%s\'"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    :cond_2c
    move-object v1, v2

    check-cast v1, Lcom/caverock/androidsvg/SVG$GradientElement;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    if-nez v3, :cond_37

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    :cond_37
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    if-nez v3, :cond_3f

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    :cond_3f
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-nez v3, :cond_47

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    :cond_47
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_53

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    :cond_53
    :try_start_53
    instance-of v3, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    if-eqz v3, :cond_6a

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    move-object v3, v0

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {p0, v3, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V
    :try_end_60
    .catch Ljava/lang/ClassCastException; {:try_start_53 .. :try_end_60} :catch_74

    :goto_60
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    goto :goto_13

    :cond_6a
    :try_start_6a
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    move-object v3, v0

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {p0, v3, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    :try_end_73
    .catch Ljava/lang/ClassCastException; {:try_start_6a .. :try_end_73} :catch_74

    goto :goto_60

    :catch_74
    move-exception v2

    goto :goto_60
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgLinearGradient;",
            "Lcom/caverock/androidsvg/SVG$SvgLinearGradient;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_8

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    :cond_8
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_10

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    :cond_10
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_18

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    :cond_18
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_20

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    :cond_20
    return-void
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgRadialGradient;",
            "Lcom/caverock/androidsvg/SVG$SvgRadialGradient;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_8

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    :cond_8
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_10

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    :cond_10
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_18

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    :cond_18
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_20

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    :cond_20
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_28

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    :cond_28
    return-void
.end method

.method private fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Pattern;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0, p2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    if-nez v0, :cond_14

    const-string v0, "Pattern reference \'%s\' not found"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;

    if-nez v1, :cond_20

    const-string v0, "Pattern href attributes must point to other pattern elements"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    :cond_20
    if-ne v0, p1, :cond_2c

    const-string v0, "Circular reference in pattern href attribute \'%s\'"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    :cond_2c
    check-cast v0, Lcom/caverock/androidsvg/SVG$Pattern;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    if-nez v1, :cond_36

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    :cond_36
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    if-nez v1, :cond_3e

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    :cond_3e
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    if-nez v1, :cond_46

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    :cond_46
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_4e

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    :cond_4e
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_56

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    :cond_56
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_5e

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    :cond_5e
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_66

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    :cond_66
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_72

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    :cond_72
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_7a

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_7a
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-nez v1, :cond_82

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :cond_82
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private fillWithPattern(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;Lcom/caverock/androidsvg/SVG$Pattern;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgElement;",
            "Landroid/graphics/Path;",
            "Lcom/caverock/androidsvg/SVG$Pattern;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v2, :cond_12

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_77

    :cond_12
    const/4 v2, 0x0

    :goto_13
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    if-eqz v3, :cond_24

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V

    :cond_24
    if-eqz v2, :cond_81

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_79

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    :goto_36
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v3, :cond_7b

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    :goto_46
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_7d

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    :goto_56
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v5, :cond_7f

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    :goto_66
    move v6, v3

    move v7, v2

    move v8, v5

    move v9, v4

    :goto_6a
    const/4 v2, 0x0

    int-to-float v2, v2

    cmpl-float v2, v9, v2

    if-eqz v2, :cond_76

    const/4 v2, 0x0

    int-to-float v2, v2

    cmpg-float v2, v8, v2

    if-nez v2, :cond_101

    :cond_76
    :goto_76
    return-void

    :cond_77
    const/4 v2, 0x1

    goto :goto_13

    :cond_79
    const/4 v2, 0x0

    goto :goto_36

    :cond_7b
    const/4 v3, 0x0

    goto :goto_46

    :cond_7d
    const/4 v4, 0x0

    goto :goto_56

    :cond_7f
    const/4 v5, 0x0

    goto :goto_66

    :cond_81
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_f9

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v3, 0x3f800000  # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v2

    :goto_93
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v3, :cond_fb

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v4, 0x3f800000  # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v3

    :goto_a5
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_fd

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v5, 0x3f800000  # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    :goto_b7
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v5, :cond_ff

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v6, 0x3f800000  # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v5

    :goto_c9
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v8, v8, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v9, v9, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v3, v9

    add-float/2addr v3, v8

    mul-float/2addr v5, v11

    mul-float/2addr v4, v10

    mul-float/2addr v2, v7

    add-float/2addr v2, v6

    move v6, v3

    move v7, v2

    move v8, v5

    move v9, v4

    goto/16 :goto_6a

    :cond_f9
    const/4 v2, 0x0

    goto :goto_93

    :cond_fb
    const/4 v3, 0x0

    goto :goto_a5

    :cond_fd
    const/4 v4, 0x0

    goto :goto_b7

    :cond_ff
    const/4 v5, 0x0

    goto :goto_c9

    :cond_101
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v2, :cond_221

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v3, v2

    :goto_10c
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    iget-object v4, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    new-instance v5, Ljava/lang/Boolean;

    const/4 v10, 0x0

    invoke-direct {v5, v10}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v5, v4, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    if-eqz v4, :cond_1e2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v5

    if-eqz v5, :cond_1e2

    const/16 v2, 0x8

    new-array v5, v2, [F

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    aput v10, v5, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    aput v10, v5, v2

    const/4 v2, 0x2

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v10

    aput v10, v5, v2

    const/4 v2, 0x3

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    aput v10, v5, v2

    const/4 v2, 0x4

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v10

    aput v10, v5, v2

    const/4 v2, 0x5

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v10

    aput v10, v5, v2

    const/4 v2, 0x6

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    aput v10, v5, v2

    const/4 v2, 0x7

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v10

    aput v10, v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance v4, Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v2, v5, v2

    const/4 v10, 0x1

    aget v10, v5, v10

    const/4 v11, 0x0

    aget v11, v5, v11

    const/4 v12, 0x1

    aget v12, v5, v12

    invoke-direct {v4, v2, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x2

    :goto_1cb
    const/4 v10, 0x6

    if-le v2, v10, :cond_226

    new-instance v2, Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget v10, v4, Landroid/graphics/RectF;->top:F

    iget v11, v4, Landroid/graphics/RectF;->right:F

    iget v12, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v11, v12

    iget v12, v4, Landroid/graphics/RectF;->bottom:F

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float v4, v12, v4

    invoke-direct {v2, v5, v10, v11, v4}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    :cond_1e2
    iget v4, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    sub-float/2addr v4, v7

    div-float/2addr v4, v9

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v10, v4

    iget v4, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    sub-float/2addr v4, v6

    div-float/2addr v4, v8

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v11

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v12

    new-instance v13, Lcom/caverock/androidsvg/SVG$Box;

    const/4 v2, 0x0

    int-to-float v2, v2

    const/4 v5, 0x0

    int-to-float v5, v5

    invoke-direct {v13, v2, v5, v9, v8}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v14

    mul-float v2, v4, v8

    add-float/2addr v2, v6

    move v5, v2

    :goto_20f
    cmpl-float v2, v5, v12

    if-ltz v2, :cond_262

    if-eqz v14, :cond_21c

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_21c
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto/16 :goto_76

    :cond_221
    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v3, v2

    goto/16 :goto_10c

    :cond_226
    aget v10, v5, v2

    iget v11, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_232

    aget v10, v5, v2

    iput v10, v4, Landroid/graphics/RectF;->left:F

    :cond_232
    aget v10, v5, v2

    iget v11, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_23e

    aget v10, v5, v2

    iput v10, v4, Landroid/graphics/RectF;->right:F

    :cond_23e
    add-int/lit8 v10, v2, 0x1

    aget v10, v5, v10

    iget v11, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_24e

    add-int/lit8 v10, v2, 0x1

    aget v10, v5, v10

    iput v10, v4, Landroid/graphics/RectF;->top:F

    :cond_24e
    add-int/lit8 v10, v2, 0x1

    aget v10, v5, v10

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_25e

    add-int/lit8 v10, v2, 0x1

    aget v10, v5, v10

    iput v10, v4, Landroid/graphics/RectF;->bottom:F

    :cond_25e
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_1cb

    :cond_262
    mul-float v2, v10, v9

    add-float/2addr v2, v7

    move v4, v2

    :goto_266
    cmpl-float v2, v4, v11

    if-ltz v2, :cond_26e

    add-float v2, v5, v8

    move v5, v2

    goto :goto_20f

    :cond_26e
    iput v4, v13, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iput v5, v13, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_296

    iget v2, v13, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v6, v13, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget v15, v13, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v0, v13, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v6, v15, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    :cond_296
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v2, :cond_2c4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_2ad
    :goto_2ad
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2b7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2f6

    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    add-float v2, v4, v9

    move v4, v2

    goto :goto_266

    :cond_2c4
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v2, :cond_2f4

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2f4

    const/4 v2, 0x0

    :goto_2d7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    if-nez v2, :cond_2ad

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v15, v15, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v2, v6, v15}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_2ad

    :cond_2f4
    const/4 v2, 0x1

    goto :goto_2d7

    :cond_2f6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgObject;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_2b7
.end method

.method private findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .registers 4

    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v0

    return-object v0
.end method

.method private findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .registers 7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    :goto_6
    instance-of v0, v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-eqz v0, :cond_11

    const/4 v3, 0x0

    move-object v0, v1

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_11
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_2f

    move-object v0, v2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    return-object p2

    :cond_2f
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    move-object v1, v0

    goto :goto_6

    :cond_35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    invoke-direct {p0, p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    goto :goto_1c
.end method

.method private getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .registers 3

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v1, :cond_1b

    :cond_14
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    :goto_1a
    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v1, :cond_28

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->End:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    goto :goto_1a

    :cond_28
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    goto :goto_1a
.end method

.method private getClipRuleFromState()Landroid/graphics/Path$FillType;
    .registers 3

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-ne v0, v1, :cond_15

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_14
    return-object v0

    :cond_15
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_14
.end method

.method private getFillTypeFromState()Landroid/graphics/Path$FillType;
    .registers 3

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-ne v0, v1, :cond_15

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_14
    return-object v0

    :cond_15
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_14
.end method

.method private static initialiseSupportedFeaturesMap()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-class v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    monitor-enter v0

    :try_start_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Structure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicStructure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "ConditionalProcessing"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Image"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Style"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "ViewportAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Shape"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicText"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "PaintAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicPaintAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "OpacityAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicGraphicsAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Marker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Gradient"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Clip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicClip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Mask"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "View"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_8f
    .catchall {:try_start_3 .. :try_end_8f} :catchall_93

    const-class v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    monitor-exit v0

    return-void

    :catchall_93
    move-exception v0

    const-class v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    monitor-exit v1

    throw v0
.end method

.method private isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z
    .registers 10

    const/4 v0, 0x0

    iget-wide v2, p1, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    and-long/2addr v2, p2

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-nez v1, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private makeLinearGradient(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/caverock/androidsvg/SVG$Box;",
            "Lcom/caverock/androidsvg/SVG$SvgLinearGradient;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    if-eqz v2, :cond_11

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    :cond_11
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v2, :cond_23

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_c8

    :cond_23
    const/4 v2, 0x0

    move v7, v2

    :goto_25
    if-eqz p1, :cond_cc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object v12, v2

    :goto_2e
    if-eqz v7, :cond_e3

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v5

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_d5

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    :goto_44
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v3, :cond_d8

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    move v4, v3

    :goto_55
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v3, :cond_dc

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    move v5, v3

    :goto_66
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v3, :cond_e0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    move v6, v3

    :goto_77
    move v3, v2

    :goto_78
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    if-nez v7, :cond_a4

    move-object/from16 v0, p2

    iget v2, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move-object/from16 v0, p2

    iget v7, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v13, v2, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-object/from16 v0, p2

    iget v2, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move-object/from16 v0, p2

    iget v7, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v13, v2, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_a4
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    if-eqz v2, :cond_b1

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    invoke-virtual {v13, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_b1
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_145

    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    if-eqz p1, :cond_13d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    :goto_c7
    return-void

    :cond_c8
    const/4 v2, 0x1

    move v7, v2

    goto/16 :goto_25

    :cond_cc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object v12, v2

    goto/16 :goto_2e

    :cond_d5
    const/4 v2, 0x0

    goto/16 :goto_44

    :cond_d8
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_55

    :cond_dc
    iget v3, v5, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move v5, v3

    goto :goto_66

    :cond_e0
    const/4 v3, 0x0

    move v6, v3

    goto :goto_77

    :cond_e3
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_131

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v3, 0x3f800000  # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v2

    :goto_f5
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v3, :cond_133

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v4, 0x3f800000  # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v3

    move v4, v3

    :goto_108
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v3, :cond_136

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v5, 0x3f800000  # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v5}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v3

    move v5, v3

    :goto_11b
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v3, :cond_13a

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v6, 0x3f800000  # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v6}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v3

    move v6, v3

    :goto_12e
    move v3, v2

    goto/16 :goto_78

    :cond_131
    const/4 v2, 0x0

    goto :goto_f5

    :cond_133
    const/4 v3, 0x0

    move v4, v3

    goto :goto_108

    :cond_136
    const/high16 v3, 0x3f800000  # 1.0f

    move v5, v3

    goto :goto_11b

    :cond_13a
    const/4 v3, 0x0

    move v6, v3

    goto :goto_12e

    :cond_13d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    goto :goto_c7

    :cond_145
    new-array v7, v14, [I

    new-array v8, v14, [F

    const/4 v2, -0x1

    int-to-float v10, v2

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v2, 0x0

    move v11, v2

    :goto_157
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_174

    cmpg-float v2, v3, v5

    if-nez v2, :cond_165

    cmpl-float v2, v4, v6

    if-eqz v2, :cond_168

    :cond_165
    const/4 v2, 0x1

    if-ne v14, v2, :cond_1ce

    :cond_168
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    add-int/lit8 v2, v14, -0x1

    aget v2, v7, v2

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_c7

    :cond_174
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgObject;

    move-object v9, v2

    check-cast v9, Lcom/caverock/androidsvg/SVG$Stop;

    iget-object v2, v9, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    if-eqz v2, :cond_1c9

    iget-object v2, v9, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_189
    if-eqz v11, :cond_18f

    cmpl-float v16, v2, v10

    if-ltz v16, :cond_1cb

    :cond_18f
    aput v2, v8, v11

    move v10, v2

    :goto_192
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v2, Lcom/caverock/androidsvg/SVG$Colour;

    if-nez v2, :cond_1ac

    sget-object v2, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    :cond_1ac
    iget v9, v2, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v9, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->colourWithOpacity(IF)I

    move-result v2

    aput v2, v7, v11

    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_157

    :cond_1c9
    const/4 v2, 0x0

    goto :goto_189

    :cond_1cb
    aput v10, v8, v11

    goto :goto_192

    :cond_1ce
    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-eqz v2, :cond_1e0

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v10, Lcom/caverock/androidsvg/SVG$GradientSpread;->reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v2, v10, :cond_205

    sget-object v9, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    :cond_1e0
    :goto_1e0
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    new-instance v2, Landroid/graphics/LinearGradient;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v13}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_c7

    :cond_205
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v10, Lcom/caverock/androidsvg/SVG$GradientSpread;->repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v2, v10, :cond_1e0

    sget-object v9, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_1e0
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;
    .registers 25

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_89

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    :goto_10
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_8b

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    :goto_20
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    sub-float v17, v13, v1

    sub-float v3, v7, v1

    add-float v4, v13, v1

    add-float v12, v7, v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v2, :cond_49

    new-instance v2, Lcom/caverock/androidsvg/SVG$Box;

    const/4 v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v1

    const/4 v6, 0x2

    int-to-float v6, v6

    mul-float/2addr v6, v1

    move/from16 v0, v17

    invoke-direct {v2, v0, v3, v5, v6}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_49
    const v2, 0x3f0d6289

    mul-float v21, v1, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v1, v13, v3}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v2, v13, v21

    sub-float v5, v7, v21

    move v6, v4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v10, v7, v21

    add-float v11, v13, v21

    move-object v8, v1

    move v9, v4

    move v14, v12

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v15, v13, v21

    add-float v18, v7, v21

    move-object v14, v1

    move/from16 v16, v12

    move/from16 v19, v17

    move/from16 v20, v7

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v18, v7, v21

    sub-float v19, v13, v21

    move-object/from16 v16, v1

    move/from16 v20, v3

    move/from16 v21, v13

    move/from16 v22, v3

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    return-object v1

    :cond_89
    const/4 v13, 0x0

    goto :goto_10

    :cond_8b
    const/4 v7, 0x0

    goto :goto_20
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;
    .registers 25

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_98

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    :goto_10
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_9b

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    :goto_20
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    sub-float v17, v13, v1

    sub-float v3, v7, v2

    add-float v4, v13, v1

    add-float v12, v7, v2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v5, :cond_53

    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    const/4 v6, 0x2

    int-to-float v6, v6

    mul-float/2addr v6, v1

    const/4 v8, 0x2

    int-to-float v8, v8

    mul-float/2addr v8, v2

    move/from16 v0, v17

    invoke-direct {v5, v0, v3, v6, v8}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_53
    const v5, 0x3f0d6289

    mul-float v21, v1, v5

    const v1, 0x3f0d6289

    mul-float v22, v2, v1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v1, v13, v3}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v2, v13, v21

    sub-float v5, v7, v22

    move v6, v4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v10, v7, v22

    add-float v11, v13, v21

    move-object v8, v1

    move v9, v4

    move v14, v12

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v15, v13, v21

    add-float v18, v7, v22

    move-object v14, v1

    move/from16 v16, v12

    move/from16 v19, v17

    move/from16 v20, v7

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v18, v7, v22

    sub-float v19, v13, v21

    move-object/from16 v16, v1

    move/from16 v20, v3

    move/from16 v21, v13

    move/from16 v22, v3

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    return-object v1

    :cond_98
    const/4 v13, 0x0

    goto/16 :goto_10

    :cond_9b
    const/4 v7, 0x0

    goto :goto_20
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Line;)Landroid/graphics/Path;
    .registers 11

    const/4 v4, 0x0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_40

    int-to-float v0, v4

    :goto_6
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_47

    int-to-float v1, v4

    :goto_b
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_4e

    int-to-float v2, v4

    :goto_10
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_55

    int-to-float v3, v4

    :goto_15
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_34

    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float v7, v2, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float v8, v3, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v4, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_34
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v4

    :cond_40
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_6

    :cond_47
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto :goto_b

    :cond_4e
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_10

    :cond_55
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_15
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;
    .registers 7

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x2

    :goto_13
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v2, v2

    if-lt v0, v2, :cond_2a

    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Polygon;

    if-eqz v0, :cond_1f

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    :cond_1f
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v0, :cond_29

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_29
    return-object v1

    :cond_2a
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v2, v2, v0

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_13
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;
    .registers 19

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_9e

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_9e

    const/4 v1, 0x0

    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v2, v2

    move v3, v2

    :goto_11
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v13

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v15

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_dd

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    :goto_43
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_e0

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    :goto_53
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_76

    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v4, v2, v5, v1, v3}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_76
    add-float v12, v2, v1

    add-float v10, v5, v3

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v3, 0x0

    int-to-float v3, v3

    cmpl-float v3, v13, v3

    if-eqz v3, :cond_8b

    const/4 v3, 0x0

    int-to-float v3, v3

    cmpg-float v3, v15, v3

    if-nez v3, :cond_e3

    :cond_8b
    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v1, v12, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1, v12, v10}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1, v2, v10}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_9a
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    return-object v1

    :cond_9e
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_b2

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    move v1, v2

    move v3, v2

    goto/16 :goto_11

    :cond_b2
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_c6

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    move v1, v2

    move v3, v2

    goto/16 :goto_11

    :cond_c6
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    move v3, v2

    goto/16 :goto_11

    :cond_dd
    const/4 v2, 0x0

    goto/16 :goto_43

    :cond_e0
    const/4 v5, 0x0

    goto/16 :goto_53

    :cond_e3
    const v3, 0x3f0d6289

    mul-float v14, v13, v3

    const v3, 0x3f0d6289

    mul-float v16, v15, v3

    add-float v3, v5, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v3, v5, v15

    sub-float v3, v3, v16

    add-float v4, v2, v13

    sub-float/2addr v4, v14

    add-float v6, v2, v13

    move v7, v5

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v3, v12, v13

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v3, v12, v13

    add-float v4, v3, v14

    add-float v3, v5, v15

    sub-float v7, v3, v16

    add-float v9, v5, v15

    move-object v3, v1

    move v6, v12

    move v8, v12

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v3, v10, v15

    invoke-virtual {v1, v12, v3}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v3, v10, v15

    add-float v8, v3, v16

    sub-float v3, v12, v13

    add-float v9, v3, v14

    sub-float v11, v12, v13

    move-object v6, v1

    move v7, v12

    move v12, v10

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v3, v2, v13

    invoke-virtual {v1, v3, v10}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v3, v2, v13

    sub-float v9, v3, v14

    sub-float v3, v10, v15

    add-float v12, v3, v16

    sub-float v14, v10, v15

    move-object v8, v1

    move v11, v2

    move v13, v2

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v3, v5, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9a
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Text;)Landroid/graphics/Path;
    .registers 11

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_88

    :cond_e
    move v1, v2

    :goto_f
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/List;

    if-eqz v0, :cond_1b

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_97

    :cond_1b
    move v3, v2

    :goto_1c
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/List;

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a6

    :cond_28
    move v4, v2

    :goto_29
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/List;

    if-eqz v0, :cond_35

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b5

    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v0, v5, :cond_51

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v0

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v5, v6, :cond_c3

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v0, v5

    sub-float/2addr v1, v0

    :cond_51
    :goto_51
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v0, :cond_78

    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;

    invoke-direct {v0, p0, v1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    iget-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_78
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;

    add-float/2addr v1, v4

    add-float/2addr v2, v3

    invoke-direct {v5, p0, v1, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFLandroid/graphics/Path;)V

    invoke-direct {p0, p1, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    return-object v0

    :cond_88
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v1, v0

    goto/16 :goto_f

    :cond_97
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v3, v0

    goto/16 :goto_1c

    :cond_a6
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v4, v0

    goto/16 :goto_29

    :cond_b5
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto/16 :goto_35

    :cond_c3
    sub-float/2addr v1, v0

    goto :goto_51
.end method

.method private makeRadialGradient(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/caverock/androidsvg/SVG$Box;",
            "Lcom/caverock/androidsvg/SVG$SvgRadialGradient;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    if-eqz v1, :cond_f

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    :cond_f
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v1, :cond_21

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_ac

    :cond_21
    const/4 v1, 0x0

    move v5, v1

    :goto_23
    if-eqz p1, :cond_b0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object v10, v1

    :goto_2a
    if-eqz v5, :cond_c8

    new-instance v4, Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v1, 0x42480000  # 50.0f

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v4, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_b7

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    :goto_43
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_bc

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    move v3, v2

    :goto_52
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_c2

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    move v4, v2

    :goto_61
    move v2, v1

    :goto_62
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    iput-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    if-nez v5, :cond_8a

    move-object/from16 v0, p2

    iget v1, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move-object/from16 v0, p2

    iget v5, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v11, v1, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-object/from16 v0, p2

    iget v1, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move-object/from16 v0, p2

    iget v5, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v11, v1, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_8a
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_97

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    invoke-virtual {v11, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_97
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_10e

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    if-eqz p1, :cond_108

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    :goto_ab
    return-void

    :cond_ac
    const/4 v1, 0x1

    move v5, v1

    goto/16 :goto_23

    :cond_b0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object v10, v1

    goto/16 :goto_2a

    :cond_b7
    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto :goto_43

    :cond_bc
    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    move v3, v2

    goto :goto_52

    :cond_c2
    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    move v4, v2

    goto :goto_61

    :cond_c8
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_fd

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, p0, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v1

    :goto_d8
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_100

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v2, p0, v3}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v2

    move v3, v2

    :goto_e9
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_104

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v2, p0, v4}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v2

    move v4, v2

    :goto_fa
    move v2, v1

    goto/16 :goto_62

    :cond_fd
    const/high16 v1, 0x3f000000  # 0.5f

    goto :goto_d8

    :cond_100
    const/high16 v2, 0x3f000000  # 0.5f

    move v3, v2

    goto :goto_e9

    :cond_104
    const/high16 v2, 0x3f000000  # 0.5f

    move v4, v2

    goto :goto_fa

    :cond_108
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    goto :goto_ab

    :cond_10e
    new-array v5, v12, [I

    new-array v6, v12, [F

    const/4 v1, -0x1

    int-to-float v8, v1

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v1, 0x0

    move v9, v1

    :goto_120
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_13b

    const/4 v1, 0x0

    int-to-float v1, v1

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_12f

    const/4 v1, 0x1

    if-ne v12, v1, :cond_18d

    :cond_12f
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    add-int/lit8 v1, v12, -0x1

    aget v1, v5, v1

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_ab

    :cond_13b
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgObject;

    move-object v7, v1

    check-cast v7, Lcom/caverock/androidsvg/SVG$Stop;

    iget-object v1, v7, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    if-eqz v1, :cond_188

    iget-object v1, v7, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_150
    if-eqz v9, :cond_156

    cmpl-float v14, v1, v8

    if-ltz v14, :cond_18a

    :cond_156
    aput v1, v6, v9

    move v8, v1

    :goto_159
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v1, Lcom/caverock/androidsvg/SVG$Colour;

    if-nez v1, :cond_16d

    sget-object v1, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    :cond_16d
    iget v7, v1, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v7, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->colourWithOpacity(IF)I

    move-result v1

    aput v1, v5, v9

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_120

    :cond_188
    const/4 v1, 0x0

    goto :goto_150

    :cond_18a
    aput v8, v6, v9

    goto :goto_159

    :cond_18d
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-eqz v1, :cond_19f

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v8, Lcom/caverock/androidsvg/SVG$GradientSpread;->reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v1, v8, :cond_1c2

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    :cond_19f
    :goto_19f
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    new-instance v1, Landroid/graphics/RadialGradient;

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v11}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_ab

    :cond_1c2
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v8, Lcom/caverock/androidsvg/SVG$GradientSpread;->repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v1, v8, :cond_19f

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_19f
.end method

.method private makeViewPort(Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)Lcom/caverock/androidsvg/SVG$Box;
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    move v3, v1

    :goto_8
    if-eqz p2, :cond_e

    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    :cond_e
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v4

    if-eqz p3, :cond_27

    invoke-virtual {p3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    move v2, v1

    :goto_19
    if-eqz p4, :cond_2b

    invoke-virtual {p4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    :goto_1f
    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v4, v3, v0, v2, v1}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v4

    :cond_25
    move v3, v0

    goto :goto_8

    :cond_27
    iget v1, v4, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move v2, v1

    goto :goto_19

    :cond_2b
    iget v1, v4, Lcom/caverock/androidsvg/SVG$Box;->height:F

    goto :goto_1f
.end method

.method private objectToPath(Lcom/caverock/androidsvg/SVG$SvgElement;Z)Landroid/graphics/Path;
    .registers 9
    .annotation runtime Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_33

    :cond_24
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object v0, v1

    check-cast v0, Landroid/graphics/Path;

    move-object v1, v0

    :goto_32
    return-object v1

    :cond_33
    move-object v0, v1

    check-cast v0, Landroid/graphics/Path;

    instance-of v2, p1, Lcom/caverock/androidsvg/SVG$Use;

    if-eqz v2, :cond_b9

    if-nez p2, :cond_43

    const-string v0, "<use> elements inside a <clipPath> cannot reference another <use>"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_43
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Use;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v2

    if-nez v2, :cond_68

    const-string v2, "Use reference \'%s\' not found"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    check-cast v1, Landroid/graphics/Path;

    goto :goto_32

    :cond_68
    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$SvgElement;

    if-nez v3, :cond_79

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    check-cast v1, Landroid/graphics/Path;

    goto :goto_32

    :cond_79
    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v2, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->objectToPath(Lcom/caverock/androidsvg/SVG$SvgElement;Z)Landroid/graphics/Path;

    move-result-object v2

    if-nez v2, :cond_84

    check-cast v1, Landroid/graphics/Path;

    goto :goto_32

    :cond_84
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_8e

    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_8e
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_97

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_97
    move-object v1, v2

    :goto_98
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    if-eqz v0, :cond_ad

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_ad

    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_ad
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    goto/16 :goto_32

    :cond_b9
    instance-of v2, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;

    if-eqz v2, :cond_12f

    move-object v2, p1

    check-cast v2, Lcom/caverock/androidsvg/SVG$GraphicsElement;

    instance-of v3, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-eqz v3, :cond_e2

    new-instance v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Path;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v3, p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v3, :cond_dc

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v3

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_dc
    :goto_dc
    if-nez v0, :cond_112

    check-cast v1, Landroid/graphics/Path;

    goto/16 :goto_32

    :cond_e2
    instance-of v3, p1, Lcom/caverock/androidsvg/SVG$Rect;

    if-eqz v3, :cond_ee

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_dc

    :cond_ee
    instance-of v3, p1, Lcom/caverock/androidsvg/SVG$Circle;

    if-eqz v3, :cond_fa

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_dc

    :cond_fa
    instance-of v3, p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    if-eqz v3, :cond_106

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_dc

    :cond_106
    instance-of v3, p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    if-eqz v3, :cond_dc

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_dc

    :cond_112
    iget-object v1, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_11c

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_11c
    iget-object v1, v2, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_125

    iget-object v1, v2, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_125
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    move-object v1, v0

    goto/16 :goto_98

    :cond_12f
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Text;

    if-eqz v0, :cond_153

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Text;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Text;)Landroid/graphics/Path;

    move-result-object v2

    if-nez v2, :cond_140

    check-cast v1, Landroid/graphics/Path;

    goto/16 :goto_32

    :cond_140
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_149

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_149
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    move-object v1, v2

    goto/16 :goto_98

    :cond_153
    const-string v0, "Invalid %s element found in clipPath definition"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$SvgElement;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v1, Landroid/graphics/Path;

    goto/16 :goto_32
.end method

.method private parentPop()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method private parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SuppressWarnings;
        value = "deprecation"
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgElement;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    return-void
.end method

.method private popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgElement;",
            "Lcom/caverock/androidsvg/SVG$Box;",
            ")V"
        }
    .end annotation

    const/16 v8, 0x1f

    const/4 v1, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-eqz v0, :cond_de

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v0, v1

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v3, v0, v2, v8}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    new-instance v3, Landroid/graphics/ColorMatrix;

    const/16 v4, 0x14

    new-array v4, v4, [F

    int-to-float v5, v7

    aput v5, v4, v7

    const/4 v5, 0x1

    int-to-float v6, v7

    aput v6, v4, v5

    const/4 v5, 0x2

    int-to-float v6, v7

    aput v6, v4, v5

    const/4 v5, 0x3

    int-to-float v6, v7

    aput v6, v4, v5

    const/4 v5, 0x4

    int-to-float v6, v7

    aput v6, v4, v5

    const/4 v5, 0x5

    int-to-float v6, v7

    aput v6, v4, v5

    const/4 v5, 0x6

    int-to-float v6, v7

    aput v6, v4, v5

    const/4 v5, 0x7

    int-to-float v6, v7

    aput v6, v4, v5

    const/16 v5, 0x8

    int-to-float v6, v7

    aput v6, v4, v5

    const/16 v5, 0x9

    int-to-float v6, v7

    aput v6, v4, v5

    const/16 v5, 0xa

    int-to-float v6, v7

    aput v6, v4, v5

    const/16 v5, 0xb

    int-to-float v6, v7

    aput v6, v4, v5

    const/16 v5, 0xc

    int-to-float v6, v7

    aput v6, v4, v5

    const/16 v5, 0xd

    int-to-float v6, v7

    aput v6, v4, v5

    const/16 v5, 0xe

    int-to-float v6, v7

    aput v6, v4, v5

    const/16 v5, 0xf

    const v6, 0x3e59ce07  # 0.2127f

    aput v6, v4, v5

    const/16 v5, 0x10

    const v6, 0x3f3710cb  # 0.7151f

    aput v6, v4, v5

    const/16 v5, 0x11

    const v6, 0x3d93dd98  # 0.0722f

    aput v6, v4, v5

    const/16 v5, 0x12

    int-to-float v6, v7

    aput v6, v4, v5

    const/16 v5, 0x13

    int-to-float v6, v7

    aput v6, v4, v5

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-direct {v0, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v0, v1

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v3, v0, v2, v8}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/caverock/androidsvg/SVG$Mask;

    invoke-direct {p0, v0, p1, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMask(Lcom/caverock/androidsvg/SVG$Mask;Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v0, v8}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    check-cast v2, Lcom/caverock/androidsvg/SVG$Mask;

    invoke-direct {p0, v2, p1, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMask(Lcom/caverock/androidsvg/SVG$Mask;Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :cond_de
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    return-void
.end method

.method private processTextChild(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgObject;",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    invoke-virtual {p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->doTextContainer(Lcom/caverock/androidsvg/SVG$TextContainer;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$TextPath;

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    check-cast p1, Lcom/caverock/androidsvg/SVG$TextPath;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderTextPath(Lcom/caverock/androidsvg/SVG$TextPath;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_c

    :cond_1d
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$TSpan;

    if-eqz v0, :cond_103

    const-string v0, "TSpan render"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    check-cast p1, Lcom/caverock/androidsvg/SVG$TSpan;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_c0

    int-to-float v0, v3

    int-to-float v7, v3

    int-to-float v5, v3

    int-to-float v4, v3

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/List;

    if-eqz v1, :cond_48

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_c5

    :cond_48
    move v1, v3

    :goto_49
    instance-of v2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    if-eqz v2, :cond_15b

    if-nez v1, :cond_c7

    move-object v0, p2

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    move v2, v0

    :goto_55
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/List;

    if-eqz v0, :cond_61

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d5

    :cond_61
    move-object v0, p2

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    move v4, v0

    :goto_67
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/List;

    if-eqz v0, :cond_73

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e3

    :cond_73
    move v5, v6

    :goto_74
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/List;

    if-eqz v0, :cond_15f

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f1

    move v3, v4

    move v0, v2

    :goto_82
    if-eqz v1, :cond_158

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v1

    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v1, v2, :cond_158

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v2

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v1, v4, :cond_100

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float v1, v2, v1

    sub-float/2addr v0, v1

    move v1, v0

    :goto_9a
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$TSpan;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    instance-of v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    if-eqz v0, :cond_b4

    move-object v0, p2

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float/2addr v1, v5

    iput v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    move-object v0, p2

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float v1, v3, v6

    iput v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    :cond_b4
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    if-eqz v0, :cond_c0

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_c0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto/16 :goto_c

    :cond_c5
    move v1, v2

    goto :goto_49

    :cond_c7
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v2, v0

    goto :goto_55

    :cond_d5
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v4, v0

    goto :goto_67

    :cond_e3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v5, v0

    goto :goto_74

    :cond_f1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    move v3, v4

    move v0, v2

    goto :goto_82

    :cond_100
    sub-float/2addr v0, v2

    move v1, v0

    goto :goto_9a

    :cond_103
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$TRef;

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$TRef;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v1

    if-eqz v1, :cond_147

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$TRef;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v1

    if-eqz v1, :cond_14c

    instance-of v4, v1, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v4, :cond_14c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    invoke-direct {p0, v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_147

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->processText(Ljava/lang/String;)V

    :cond_147
    :goto_147
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto/16 :goto_c

    :cond_14c
    const-string v1, "Tref reference \'%s\' not found"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_147

    :cond_158
    move v1, v0

    goto/16 :goto_9a

    :cond_15b
    move v6, v4

    move v3, v7

    goto/16 :goto_82

    :cond_15f
    move v3, v4

    move v0, v2

    goto/16 :goto_82
.end method

.method private pushLayer()Z
    .registers 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->requiresCompositing()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v3

    :goto_a
    return v0

    :cond_b
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object v0, v1

    check-cast v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v2

    const/16 v6, 0x1f

    invoke-virtual {v5, v0, v2, v6}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    if-eqz v0, :cond_4f

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$Mask;

    if-nez v0, :cond_68

    :cond_4f
    const-string v0, "Mask reference \'%s\' not found"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    move v0, v4

    goto :goto_a

    :cond_68
    move v0, v4

    goto :goto_a
.end method

.method private realignMarkerMid(Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    .registers 11

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    iget v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    iget v2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    iget v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float/2addr v2, v3

    iget v3, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    iget v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dotProduct(FFFF)F

    move-result v0

    cmpg-float v1, v0, v5

    if-nez v1, :cond_2a

    iget v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    iget v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    iget v2, p3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    iget v3, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float/2addr v2, v3

    iget v3, p3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    iget v4, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dotProduct(FFFF)F

    move-result v0

    :cond_2a
    int-to-float v1, v6

    cmpl-float v1, v0, v1

    if-lez v1, :cond_30

    :cond_2f
    :goto_2f
    return-object p2

    :cond_30
    cmpg-float v0, v0, v5

    if-nez v0, :cond_41

    iget v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_2f

    iget v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    int-to-float v1, v6

    cmpl-float v0, v0, v1

    if-gez v0, :cond_2f

    :cond_41
    iget v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    neg-float v0, v0

    iput v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    iget v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    neg-float v0, v0

    iput v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    goto :goto_2f
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Circle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Circle;",
            ")V"
        }
    .end annotation

    const-string v0, "Circle render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_31
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_4b

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    :cond_4b
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_54

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    :cond_54
    if-eqz v1, :cond_14

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_14
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Ellipse;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Ellipse;",
            ")V"
        }
    .end annotation

    const-string v0, "Ellipse render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_20

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_20

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3d
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_57

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    :cond_57
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_60

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    :cond_60
    if-eqz v1, :cond_20

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_20
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Group;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Group;",
            ")V"
        }
    .end annotation

    const-string v0, "Group render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_14

    :goto_13
    return-void

    :cond_14
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1f
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    if-eqz v0, :cond_2f

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_2f
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_13
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Image;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Image;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v0, "Image render"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_21

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_21

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v0, :cond_51

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v1, v0

    :goto_2d
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForImageDataURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_121

    invoke-static {}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v4, v0

    :goto_42
    if-nez v4, :cond_55

    const-string v0, "Could not locate image \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_21

    :cond_51
    sget-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v1, v0

    goto :goto_2d

    :cond_55
    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    int-to-float v0, v3

    int-to-float v6, v3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v5, v0, v6, v7, v8}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Image;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_82
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_11c

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    :goto_8c
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v6, :cond_96

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    :cond_96
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v9, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v9, v0, v2, v6, v7}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v9, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d4

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {p0, v0, v2, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    :cond_d4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v2

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->viewportFill()V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v6, v5, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->imageRendering:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->optimizeSpeed:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    if-ne v0, v1, :cond_11f

    move v0, v3

    :goto_104
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    int-to-float v5, v3

    int-to-float v3, v3

    invoke-virtual {v0, v4, v5, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    if-eqz v2, :cond_21

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto/16 :goto_21

    :cond_11c
    move v0, v2

    goto/16 :goto_8c

    :cond_11f
    const/4 v0, 0x2

    goto :goto_104

    :cond_121
    move-object v4, v0

    goto/16 :goto_42
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Line;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Line;",
            ")V"
        }
    .end annotation

    const-string v0, "Line render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_2b
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Line;)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    if-eqz v1, :cond_13

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_13
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Path;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Path;",
            ")V"
        }
    .end annotation

    const-string v0, "Path render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v0, :cond_c

    :cond_2a
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_35
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_4a

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_4a
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_67

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getFillTypeFromState()Landroid/graphics/Path$FillType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    :cond_67
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_70

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    :cond_70
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    if-eqz v1, :cond_c

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_c
.end method

.method private render(Lcom/caverock/androidsvg/SVG$PolyLine;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$PolyLine;",
            ")V"
        }
    .end annotation

    const-string v0, "PolyLine render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v0, :cond_13

    :cond_26
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_31
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_13

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getFillTypeFromState()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_58

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    :cond_58
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_61

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    :cond_61
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    if-eqz v1, :cond_13

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_13
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Polygon;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Polygon;",
            ")V"
        }
    .end annotation

    const-string v0, "Polygon render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v0, :cond_13

    :cond_26
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_31
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_13

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_51

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    :cond_51
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_5a

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    :cond_5a
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    if-eqz v1, :cond_13

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_13
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Rect;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Rect;",
            ")V"
        }
    .end annotation

    const-string v0, "Rect render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_20

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_20

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3d
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_57

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    :cond_57
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_60

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    :cond_60
    if-eqz v1, :cond_20

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_20
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Svg;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->x:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeViewPort(Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v0

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Box;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Svg;",
            "Lcom/caverock/androidsvg/SVG$Box;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Svg;",
            "Lcom/caverock/androidsvg/SVG$Box;",
            "Lcom/caverock/androidsvg/SVG$Box;",
            "Lcom/caverock/androidsvg/PreserveAspectRatio;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "Svg render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_15

    iget v0, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    cmpg-float v0, v0, v2

    if-nez v0, :cond_16

    :cond_15
    :goto_15
    return-void

    :cond_16
    if-nez p4, :cond_1f

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v0, :cond_87

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :goto_1e
    move-object p4, v0

    :cond_1f
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object p2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    :cond_57
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    if-eqz p3, :cond_8a

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v1, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    :goto_73
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->viewportFill()V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    if-eqz v0, :cond_83

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_83
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_15

    :cond_87
    sget-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_1e

    :cond_8a
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_73
.end method

.method private render(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgObject;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$NotDirectlyRendered;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v0, :cond_18

    check-cast p1, Lcom/caverock/androidsvg/SVG$Svg;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;)V

    :cond_14
    :goto_14
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_4

    :cond_18
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Use;

    if-eqz v0, :cond_22

    check-cast p1, Lcom/caverock/androidsvg/SVG$Use;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Use;)V

    goto :goto_14

    :cond_22
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Switch;

    if-eqz v0, :cond_2c

    check-cast p1, Lcom/caverock/androidsvg/SVG$Switch;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Switch;)V

    goto :goto_14

    :cond_2c
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Group;

    if-eqz v0, :cond_36

    check-cast p1, Lcom/caverock/androidsvg/SVG$Group;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Group;)V

    goto :goto_14

    :cond_36
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Image;

    if-eqz v0, :cond_40

    check-cast p1, Lcom/caverock/androidsvg/SVG$Image;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Image;)V

    goto :goto_14

    :cond_40
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-eqz v0, :cond_4a

    check-cast p1, Lcom/caverock/androidsvg/SVG$Path;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Path;)V

    goto :goto_14

    :cond_4a
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Rect;

    if-eqz v0, :cond_54

    check-cast p1, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Rect;)V

    goto :goto_14

    :cond_54
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Circle;

    if-eqz v0, :cond_5e

    check-cast p1, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Circle;)V

    goto :goto_14

    :cond_5e
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    if-eqz v0, :cond_68

    check-cast p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Ellipse;)V

    goto :goto_14

    :cond_68
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Line;

    if-eqz v0, :cond_72

    check-cast p1, Lcom/caverock/androidsvg/SVG$Line;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Line;)V

    goto :goto_14

    :cond_72
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Polygon;

    if-eqz v0, :cond_7c

    check-cast p1, Lcom/caverock/androidsvg/SVG$Polygon;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Polygon;)V

    goto :goto_14

    :cond_7c
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    if-eqz v0, :cond_86

    check-cast p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$PolyLine;)V

    goto :goto_14

    :cond_86
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Text;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/caverock/androidsvg/SVG$Text;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Text;)V

    goto :goto_14
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Switch;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Switch;",
            ")V"
        }
    .end annotation

    const-string v0, "Switch render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_14

    :goto_13
    return-void

    :cond_14
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1f
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderSwitchChild(Lcom/caverock/androidsvg/SVG$Switch;)V

    if-eqz v0, :cond_2e

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_2e
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_13
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Symbol;Lcom/caverock/androidsvg/SVG$Box;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Symbol;",
            "Lcom/caverock/androidsvg/SVG$Box;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "Symbol render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_15

    iget v0, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    cmpg-float v0, v0, v2

    if-nez v0, :cond_16

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v0, :cond_79

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v1, v0

    :goto_1d
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object p2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v4, v4, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    :cond_4f
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v2, v3, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    :goto_68
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    if-eqz v0, :cond_75

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_75
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_15

    :cond_79
    sget-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v1, v0

    goto :goto_1d

    :cond_7d
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_68
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Text;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Text;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-string v0, "Text render"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_20
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/List;

    if-eqz v0, :cond_2c

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_ad

    :cond_2c
    move v1, v2

    :goto_2d
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/List;

    if-eqz v0, :cond_39

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_bc

    :cond_39
    move v3, v2

    :goto_3a
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/List;

    if-eqz v0, :cond_46

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_cb

    :cond_46
    move v4, v2

    :goto_47
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/List;

    if-eqz v0, :cond_53

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_da

    :cond_53
    :goto_53
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v0

    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v0, v5, :cond_68

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v5

    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v6, :cond_e8

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float v0, v5, v0

    sub-float/2addr v1, v0

    :cond_68
    :goto_68
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v0, :cond_8f

    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;

    invoke-direct {v0, p0, v1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    iget-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_8f
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    new-instance v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float/2addr v1, v4

    add-float/2addr v2, v3

    invoke-direct {v5, p0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    invoke-direct {p0, p1, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    if-eqz v0, :cond_14

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto/16 :goto_14

    :cond_ad
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v1, v0

    goto/16 :goto_2d

    :cond_bc
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v3, v0

    goto/16 :goto_3a

    :cond_cb
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v4, v0

    goto/16 :goto_47

    :cond_da
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto/16 :goto_53

    :cond_e8
    sub-float/2addr v1, v5

    goto/16 :goto_68
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Use;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Use;",
            ")V"
        }
    .end annotation

    const/16 v6, 0x64

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "Use render"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_24

    :cond_18
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_25

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_24
    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    if-nez v0, :cond_47

    const-string v0, "Use reference \'%s\' not found"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_24

    :cond_47
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_52
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_9d

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    :goto_5c
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_66

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    :cond_66
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v5

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V

    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v1, :cond_9f

    check-cast v0, Lcom/caverock/androidsvg/SVG$Svg;

    move-object v1, v2

    check-cast v1, Lcom/caverock/androidsvg/SVG$Length;

    check-cast v2, Lcom/caverock/androidsvg/SVG$Length;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeViewPort(Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Box;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    :goto_91
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPop()V

    if-eqz v5, :cond_99

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_99
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_24

    :cond_9d
    move v1, v3

    goto :goto_5c

    :cond_9f
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$Symbol;

    if-eqz v1, :cond_da

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_c6

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object v3, v1

    :goto_aa
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_d0

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object v4, v1

    :goto_b1
    move-object v1, v2

    check-cast v1, Lcom/caverock/androidsvg/SVG$Length;

    check-cast v2, Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeViewPort(Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    check-cast v0, Lcom/caverock/androidsvg/SVG$Symbol;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Symbol;Lcom/caverock/androidsvg/SVG$Box;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_91

    :cond_c6
    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    int-to-float v3, v6

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v1, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    move-object v3, v1

    goto :goto_aa

    :cond_d0
    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    int-to-float v4, v6

    sget-object v6, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v1, v4, v6}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    move-object v4, v1

    goto :goto_b1

    :cond_da
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_91
.end method

.method private renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            "Z)V"
        }
    .end annotation

    if-eqz p2, :cond_5

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V

    :cond_5
    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1b

    if-eqz p2, :cond_1a

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPop()V

    :cond_1a
    return-void

    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_f
.end method

.method private renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Marker;",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ")V"
        }
    .end annotation

    const/4 v12, 0x2

    const/high16 v4, 0x40400000  # 3.0f

    const/4 v11, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    if-eqz v0, :cond_18b

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_108

    iget v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    int-to-float v2, v11

    cmpg-float v0, v0, v2

    if-nez v0, :cond_28

    iget v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    int-to-float v2, v11

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_18b

    :cond_28
    iget v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    float-to-double v2, v0

    iget v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    float-to-double v6, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    :goto_37
    iget-boolean v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    if-eqz v2, :cond_112

    const/high16 v2, 0x3f800000  # 1.0f

    :goto_3d
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v3

    iput-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iget v3, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    iget v5, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    invoke-virtual {v9, v3, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    invoke-virtual {v9, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_120

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    :goto_5f
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_123

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    :goto_69
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v3, :cond_126

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    :goto_73
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v5, :cond_7d

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    :cond_7d
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v5, :cond_169

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float v6, v3, v5

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float v8, v4, v5

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v5, :cond_129

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :goto_93
    sget-object v7, Lcom/caverock/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {v5, v7}, Lcom/caverock/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_188

    invoke-virtual {v5}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getScale()Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-result-object v7

    sget-object v10, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    if-ne v7, v10, :cond_12d

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :goto_a7
    move v7, v6

    move v8, v6

    :goto_a9
    neg-float v0, v0

    mul-float/2addr v0, v7

    neg-float v2, v2

    mul-float/2addr v2, v8

    invoke-virtual {v9, v0, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v0, v7

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float v6, v2, v8

    invoke-virtual {v5}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v2

    sget-object v10, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMidYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-ne v2, v10, :cond_133

    :cond_c8
    sub-float v0, v3, v0

    int-to-float v2, v12

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    move v2, v0

    :goto_cf
    invoke-virtual {v5}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v0

    sget-object v5, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMinYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-ne v0, v5, :cond_14f

    :cond_d7
    sub-float v0, v4, v6

    int-to-float v5, v12

    div-float/2addr v0, v5

    sub-float/2addr v1, v0

    :cond_dc
    :goto_dc
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_ed

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    :cond_ed
    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_f8
    :goto_f8
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    invoke-direct {p0, p1, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    if-eqz v0, :cond_104

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    :cond_104
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    return-void

    :cond_108
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto/16 :goto_37

    :cond_112
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    iget v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v2

    goto/16 :goto_3d

    :cond_120
    move v0, v1

    goto/16 :goto_5f

    :cond_123
    move v2, v1

    goto/16 :goto_69

    :cond_126
    move v3, v4

    goto/16 :goto_73

    :cond_129
    sget-object v5, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto/16 :goto_93

    :cond_12d
    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto/16 :goto_a7

    :cond_133
    sget-object v10, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-eq v2, v10, :cond_c8

    sget-object v10, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMidYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-eq v2, v10, :cond_c8

    sget-object v10, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMaxYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-ne v2, v10, :cond_145

    :cond_13f
    sub-float v0, v3, v0

    sub-float v0, v1, v0

    move v2, v0

    goto :goto_cf

    :cond_145
    sget-object v10, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMaxYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-eq v2, v10, :cond_13f

    sget-object v10, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMaxYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-eq v2, v10, :cond_13f

    move v2, v1

    goto :goto_cf

    :cond_14f
    sget-object v5, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-eq v0, v5, :cond_d7

    sget-object v5, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMaxYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-eq v0, v5, :cond_d7

    sget-object v5, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMinYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-ne v0, v5, :cond_160

    :cond_15b
    :goto_15b
    sub-float v0, v4, v6

    sub-float/2addr v1, v0

    goto/16 :goto_dc

    :cond_160
    sget-object v5, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMidYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-eq v0, v5, :cond_15b

    sget-object v5, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMaxYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-ne v0, v5, :cond_dc

    goto :goto_15b

    :cond_169
    neg-float v0, v0

    neg-float v1, v2

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f8

    int-to-float v0, v11

    int-to-float v1, v11

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    goto/16 :goto_f8

    :cond_188
    move v7, v6

    goto/16 :goto_a9

    :cond_18b
    move v0, v1

    goto/16 :goto_37
.end method

.method private renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$GraphicsElement;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    if-nez v0, :cond_1c

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    move-object v0, v1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Marker;

    move-object v2, v1

    check-cast v2, Lcom/caverock/androidsvg/SVG$Marker;

    move-object v3, v1

    check-cast v3, Lcom/caverock/androidsvg/SVG$Marker;

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    if-eqz v4, :cond_e4

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v4

    if-eqz v4, :cond_d5

    move-object v0, v4

    check-cast v0, Lcom/caverock/androidsvg/SVG$Marker;

    move-object v4, v0

    :goto_3f
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    if-eqz v0, :cond_58

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    if-eqz v0, :cond_e7

    check-cast v0, Lcom/caverock/androidsvg/SVG$Marker;

    move-object v2, v0

    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    if-eqz v0, :cond_71

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    if-eqz v0, :cond_f8

    check-cast v0, Lcom/caverock/androidsvg/SVG$Marker;

    move-object v3, v0

    :cond_71
    :goto_71
    nop

    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-eqz v0, :cond_109

    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;

    check-cast p1, Lcom/caverock/androidsvg/SVG$Path;

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v0, p0, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->getMarkers()Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    :goto_84
    if-eqz v7, :cond_1b

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_1b

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v9, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iput-object v1, v5, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    if-eqz v4, :cond_ab

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {p0, v4, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    :cond_ab
    if-eqz v2, :cond_c6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_c6

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    move-object v5, v0

    move-object v4, v1

    :goto_c2
    add-int/lit8 v0, v8, -0x1

    if-lt v6, v0, :cond_11f

    :cond_c6
    if-eqz v3, :cond_1b

    add-int/lit8 v0, v8, -0x1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {p0, v3, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    goto/16 :goto_1b

    :cond_d5
    const-string v4, "Marker reference \'%s\' not found"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    aput-object v7, v5, v10

    invoke-static {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e4
    move-object v4, v0

    goto/16 :goto_3f

    :cond_e7
    const-string v0, "Marker reference \'%s\' not found"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    aput-object v7, v5, v10

    invoke-static {v0, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_58

    :cond_f8
    const-string v0, "Marker reference \'%s\' not found"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    aput-object v7, v5, v10

    invoke-static {v0, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_71

    :cond_109
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Line;

    if-eqz v0, :cond_116

    check-cast p1, Lcom/caverock/androidsvg/SVG$Line;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$Line;)Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_84

    :cond_116
    check-cast p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$PolyLine;)Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_84

    :cond_11f
    add-int/lit8 v0, v6, 0x1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget-boolean v1, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->isAmbiguous:Z

    if-eqz v1, :cond_137

    invoke-direct {p0, v5, v4, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->realignMarkerMid(Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    move-result-object v1

    :goto_12f
    invoke-direct {p0, v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    add-int/lit8 v6, v6, 0x1

    move-object v5, v1

    move-object v4, v0

    goto :goto_c2

    :cond_137
    move-object v1, v4

    goto :goto_12f
.end method

.method private renderMask(Lcom/caverock/androidsvg/SVG$Mask;Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Mask;",
            "Lcom/caverock/androidsvg/SVG$SvgElement;",
            "Lcom/caverock/androidsvg/SVG$Box;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x1

    const v1, 0x3f99999a  # 1.2f

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    const-string v0, "Mask render"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v0, :cond_1c

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3f

    :cond_1c
    move v0, v2

    :goto_1d
    if-eqz v0, :cond_48

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_41

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    :goto_29
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_44

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    move v4, v0

    :goto_34
    int-to-float v0, v2

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_3e

    int-to-float v0, v2

    cmpg-float v0, v1, v0

    if-nez v0, :cond_66

    :cond_3e
    :goto_3e
    return-void

    :cond_3f
    move v0, v3

    goto :goto_1d

    :cond_41
    iget v0, p3, Lcom/caverock/androidsvg/SVG$Box;->width:F

    goto :goto_29

    :cond_44
    iget v1, p3, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move v4, v0

    goto :goto_34

    :cond_48
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_64

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0, v5}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v0

    :goto_52
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_5c

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0, v5}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v1

    :cond_5c
    iget v4, p3, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v4, v0

    iget v0, p3, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v0, v1

    move v1, v0

    goto :goto_34

    :cond_64
    move v0, v1

    goto :goto_52

    :cond_66
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v5}, Ljava/lang/Float;-><init>(F)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v0, :cond_b7

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b7

    move v0, v2

    :goto_92
    if-nez v0, :cond_a6

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget v3, p3, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v4, p3, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget v3, p3, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v4, p3, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_a6
    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    if-eqz v1, :cond_b3

    invoke-direct {p0, p2, p3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    :cond_b3
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_3e

    :cond_b7
    move v0, v3

    goto :goto_92
.end method

.method private renderSwitchChild(Lcom/caverock/androidsvg/SVG$Switch;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Switch;",
            ")V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v4

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Switch;->getChildren()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_16
    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1d

    :goto_1c
    return-void

    :cond_1d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SvgConditional;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgConditional;

    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredExtensions()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_16

    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getSystemLanguage()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_42

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_16

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_42
    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFeatures()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_5d

    sget-object v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    if-nez v6, :cond_4f

    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->initialiseSupportedFeaturesMap()V

    :cond_4f
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_16

    sget-object v6, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_5d
    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFormats()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_77

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_16

    if-eqz v4, :cond_16

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_71
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_95

    :cond_77
    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFonts()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_91

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    if-eqz v4, :cond_16

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a3

    :cond_91
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_1c

    :cond_95
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->isFormatSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_71

    goto/16 :goto_16

    :cond_a3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1, v2, v7}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveFont(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    if-nez v1, :cond_8b

    goto/16 :goto_16
.end method

.method private renderTextPath(Lcom/caverock/androidsvg/SVG$TextPath;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$TextPath;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string v0, "TextPath render"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    if-nez v0, :cond_32

    const-string v0, "TextPath reference \'%s\' not found"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    :cond_32
    check-cast v0, Lcom/caverock/androidsvg/SVG$Path;

    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v2, p0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-eqz v2, :cond_48

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_48
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0, v3, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_8c

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    invoke-virtual {v2, p0, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v0

    :goto_5b
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v2

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v2, v4, :cond_91

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v4

    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v2, v5, :cond_8e

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float v2, v4, v2

    sub-float/2addr v0, v2

    move v2, v0

    :goto_71
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$TextPath;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    new-instance v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;

    invoke-direct {v4, p0, v3, v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Landroid/graphics/Path;FF)V

    invoke-direct {p0, p1, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    if-eqz v0, :cond_14

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_14

    :cond_8c
    move v0, v1

    goto :goto_5b

    :cond_8e
    sub-float/2addr v0, v4

    move v2, v0

    goto :goto_71

    :cond_91
    move v2, v0

    goto :goto_71
.end method

.method private requiresCompositing()Z
    .registers 3

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1c

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method private resetState()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    const/4 v0, 0x0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Box;

    iput-object v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    new-instance v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v1, p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    return-void
.end method

.method private setClipRect(FFFF)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)V"
        }
    .end annotation

    add-float v0, p1, p3

    add-float v1, p2, p4

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$CSSClipRect;->left:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    add-float/2addr p1, v2

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$CSSClipRect;->top:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    add-float/2addr p2, v2

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$CSSClipRect;->right:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$CSSClipRect;->bottom:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    sub-float/2addr v1, v2

    :cond_40
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, p1, p2, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    return-void
.end method

.method private setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;",
            "Z",
            "Lcom/caverock/androidsvg/SVG$SvgPaint;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_20

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    :goto_6
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    instance-of v0, p3, Lcom/caverock/androidsvg/SVG$Colour;

    if-eqz v0, :cond_25

    check-cast p3, Lcom/caverock/androidsvg/SVG$Colour;

    iget v0, p3, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    :goto_14
    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->colourWithOpacity(IF)I

    move-result v0

    if-eqz p2, :cond_30

    iget-object v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    goto :goto_6

    :cond_25
    instance-of v0, p3, Lcom/caverock/androidsvg/SVG$CurrentColor;

    if-eqz v0, :cond_1f

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    goto :goto_14

    :cond_30
    iget-object v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1f
.end method

.method private setSolidColor(ZLcom/caverock/androidsvg/SVG$SolidColor;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/caverock/androidsvg/SVG$SolidColor;",
            ")V"
        }
    .end annotation

    const-wide v8, 0x180000000L

    const-wide v6, 0x100000000L

    const-wide v4, 0x80000000L

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_55

    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-nez v3, :cond_98

    :goto_2d
    iput-boolean v0, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    :cond_2f
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v0, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    :cond_41
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v0, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    :cond_54
    :goto_54
    return-void

    :cond_55
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v2

    if-eqz v2, :cond_72

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-nez v3, :cond_70

    move v1, v0

    :cond_70
    iput-boolean v1, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    :cond_72
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v0, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    :cond_84
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v0, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    goto :goto_54

    :cond_98
    move v0, v1

    goto :goto_2d
.end method

.method private statePop()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    return-void
.end method

.method private statePush()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    return-void
.end method

.method private textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    if-eqz v0, :cond_f

    const-string v0, "[\\n\\t]"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-string v0, "\\n"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\t"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_29

    const-string v1, "^\\s+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_29
    if-eqz p3, :cond_33

    const-string v1, "\\s+$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_33
    const-string v1, "\\s{2,}"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method private updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgElement;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SuppressWarnings;
        value = "deprecation"
    .end annotation

    const/4 v7, 0x6

    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_8

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    new-array v3, v0, [F

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    aput v0, v3, v5

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    aput v0, v3, v6

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v0

    aput v0, v3, v1

    const/4 v0, 0x3

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v4, v4, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    aput v4, v3, v0

    const/4 v0, 0x4

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v4

    aput v4, v3, v0

    const/4 v0, 0x5

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v4

    aput v4, v3, v0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    aput v0, v3, v7

    const/4 v0, 0x7

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v4

    aput v4, v3, v0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance v2, Landroid/graphics/RectF;

    aget v0, v3, v5

    aget v4, v3, v6

    aget v5, v3, v5

    aget v6, v3, v6

    invoke-direct {v2, v0, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move v0, v1

    :goto_7a
    if-le v0, v7, :cond_9a

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElement;

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_d5

    iget v1, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v3, v4, v2}, Lcom/caverock/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto/16 :goto_8

    :cond_9a
    aget v1, v3, v0

    iget v4, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_a6

    aget v1, v3, v0

    iput v1, v2, Landroid/graphics/RectF;->left:F

    :cond_a6
    aget v1, v3, v0

    iget v4, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_b2

    aget v1, v3, v0

    iput v1, v2, Landroid/graphics/RectF;->right:F

    :cond_b2
    add-int/lit8 v1, v0, 0x1

    aget v1, v3, v1

    iget v4, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_c2

    add-int/lit8 v1, v0, 0x1

    aget v1, v3, v1

    iput v1, v2, Landroid/graphics/RectF;->top:F

    :cond_c2
    add-int/lit8 v1, v0, 0x1

    aget v1, v3, v1

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_d2

    add-int/lit8 v1, v0, 0x1

    aget v1, v3, v1

    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    :cond_d2
    add-int/lit8 v0, v0, 0x2

    goto :goto_7a

    :cond_d5
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v1, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v3, v4, v2}, Lcom/caverock/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Box;->union(Lcom/caverock/androidsvg/SVG$Box;)V

    goto/16 :goto_8
.end method

.method private updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;",
            "Lcom/caverock/androidsvg/SVG$Style;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x1000

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    :cond_12
    const-wide/16 v4, 0x800

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    :cond_20
    const-wide/16 v4, 0x1

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v0, :cond_38

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Colour;->TRANSPARENT:Lcom/caverock/androidsvg/SVG$Colour;

    if-ne v0, v4, :cond_357

    :cond_38
    move v0, v3

    :goto_39
    iput-boolean v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    :cond_3b
    const-wide/16 v4, 0x4

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    :cond_49
    const-wide/16 v4, 0x1805

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, p1, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    :cond_58
    const-wide/16 v4, 0x2

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    :cond_66
    const-wide/16 v4, 0x8

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v0, :cond_7e

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Colour;->TRANSPARENT:Lcom/caverock/androidsvg/SVG$Colour;

    if-ne v0, v4, :cond_35a

    :cond_7e
    move v0, v3

    :goto_7f
    iput-boolean v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    :cond_81
    const-wide/16 v4, 0x10

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    :cond_8f
    const-wide/16 v4, 0x1818

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_9e

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, p1, v3, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    :cond_9e
    const-wide v4, 0x800000000L

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    :cond_af
    const-wide/16 v4, 0x20

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_ca

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_ca
    const-wide/16 v4, 0x40

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_e5

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$LineCap;->Butt:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    if-ne v0, v4, :cond_35d

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_e5
    :goto_e5
    const-wide/16 v4, 0x80

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_100

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    if-ne v0, v4, :cond_377

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    :cond_100
    :goto_100
    const-wide/16 v4, 0x100

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_11b

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    :cond_11b
    const-wide/16 v4, 0x200

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_129

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    :cond_129
    const-wide/16 v4, 0x400

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_137

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    :cond_137
    const-wide/16 v4, 0x600

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_14d

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_391

    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object v0, v1

    check-cast v0, Landroid/graphics/PathEffect;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_14d
    :goto_14d
    const-wide/16 v4, 0x4000

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_175

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentFontSize()F

    move-result v0

    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v5, v4, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5, p0, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5, p0, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_175
    const-wide/16 v4, 0x2000

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_183

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    :cond_183
    const-wide/32 v4, 0x8000

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1b8

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_3e1

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x64

    if-le v0, v4, :cond_3e1

    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    new-instance v5, Ljava/lang/Integer;

    iget-object v0, v4, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    iput-object v5, v4, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    :cond_1b8
    :goto_1b8
    const-wide/32 v4, 0x10000

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1c7

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    :cond_1c7
    const-wide/32 v4, 0x1a000

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_20b

    check-cast v1, Landroid/graphics/Typeface;

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    if-eqz v0, :cond_1f0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    if-eqz v0, :cond_1f0

    invoke-static {}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v4

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1ea
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_416

    :cond_1f0
    move-object v0, v1

    :goto_1f1
    if-nez v0, :cond_201

    const-string v0, "serif"

    iget-object v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-direct {p0, v0, v1, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_201
    iget-object v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_20b
    const-wide/32 v0, 0x20000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_24f

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-eq v0, v4, :cond_447

    move v0, v3

    :goto_223
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    iget-object v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-eq v0, v4, :cond_44a

    move v0, v3

    :goto_22f
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_24f

    iget-object v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-eq v0, v4, :cond_44d

    move v0, v3

    :goto_241
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-eq v1, v4, :cond_450

    :goto_24c
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    :cond_24f
    const-wide v0, 0x1000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_260

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    :cond_260
    const-wide/32 v0, 0x40000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_26f

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    :cond_26f
    const-wide/32 v0, 0x80000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_27e

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    :cond_27e
    const-wide/32 v0, 0x200000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_28d

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    :cond_28d
    const-wide/32 v0, 0x400000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_29c

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    :cond_29c
    const-wide/32 v0, 0x800000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2ab

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    :cond_2ab
    const-wide/32 v0, 0x1000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2ba

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    :cond_2ba
    const-wide/32 v0, 0x2000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2c9

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    :cond_2c9
    const-wide/32 v0, 0x100000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2d8

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    :cond_2d8
    const-wide/32 v0, 0x10000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2e7

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    :cond_2e7
    const-wide/32 v0, 0x20000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2f6

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    :cond_2f6
    const-wide/32 v0, 0x40000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_305

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    :cond_305
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_314

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    :cond_314
    const-wide/32 v0, 0x8000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_323

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    :cond_323
    const-wide v0, 0x200000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_334

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    :cond_334
    const-wide v0, 0x400000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_345

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    :cond_345
    const-wide v0, 0x2000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_356

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->imageRendering:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->imageRendering:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    :cond_356
    return-void

    :cond_357
    move v0, v2

    goto/16 :goto_39

    :cond_35a
    move v0, v2

    goto/16 :goto_7f

    :cond_35d
    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$LineCap;->Round:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    if-ne v0, v4, :cond_36a

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/16 :goto_e5

    :cond_36a
    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$LineCap;->Square:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    if-ne v0, v4, :cond_e5

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/16 :goto_e5

    :cond_377
    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Round:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    if-ne v0, v4, :cond_384

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto/16 :goto_100

    :cond_384
    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Bevel:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    if-ne v0, v4, :cond_100

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto/16 :goto_100

    :cond_391
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    array-length v4, v0

    rem-int/lit8 v0, v4, 0x2

    if-nez v0, :cond_3af

    move v0, v4

    :goto_39b
    new-array v8, v0, [F

    move v5, v3

    move v6, v7

    :goto_39f
    if-lt v5, v0, :cond_3b2

    cmpg-float v0, v6, v7

    if-nez v0, :cond_3c6

    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object v0, v1

    check-cast v0, Landroid/graphics/PathEffect;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto/16 :goto_14d

    :cond_3af
    mul-int/lit8 v0, v4, 0x2

    goto :goto_39b

    :cond_3b2
    iget-object v9, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    rem-int v10, v5, v4

    aget-object v9, v9, v10

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    aput v9, v8, v5

    aget v9, v8, v5

    add-float/2addr v6, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_39f

    :cond_3c6
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    int-to-float v4, v3

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3d5

    rem-float/2addr v0, v6

    add-float/2addr v0, v6

    :cond_3d5
    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/DashPathEffect;

    invoke-direct {v5, v8, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto/16 :goto_14d

    :cond_3e1
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_40e

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x384

    if-ge v0, v4, :cond_40e

    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    new-instance v5, Ljava/lang/Integer;

    iget-object v0, v4, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    iput-object v5, v4, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    goto/16 :goto_1b8

    :cond_40e
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    goto/16 :goto_1b8

    :cond_416
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iget-object v6, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-direct {p0, v0, v1, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    move-result-object v1

    if-nez v1, :cond_442

    if-eqz v4, :cond_442

    iget-object v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v6, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v1, v6}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveFont(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    :cond_442
    if-eqz v1, :cond_1ea

    move-object v0, v1

    goto/16 :goto_1f1

    :cond_447
    move v0, v2

    goto/16 :goto_223

    :cond_44a
    move v0, v2

    goto/16 :goto_22f

    :cond_44d
    move v0, v2

    goto/16 :goto_241

    :cond_450
    move v3, v2

    goto/16 :goto_24c
.end method

.method private updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            ")V"
        }
    .end annotation

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Style;->resetNonInheritingProperties(Z)V

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz v0, :cond_13

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    :cond_13
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->hasCSSRules()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->getCSSRules()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_39

    :cond_2d
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz v0, :cond_36

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    :cond_36
    return-void

    :cond_37
    const/4 v0, 0x1

    goto :goto_5

    :cond_39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$Rule;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->ruleMatchContext:Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;

    iget-object v3, v0, Lcom/caverock/androidsvg/CSSParser$Rule;->selector:Lcom/caverock/androidsvg/CSSParser$Selector;

    invoke-static {v2, v3, p2}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v0, v0, Lcom/caverock/androidsvg/CSSParser$Rule;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    goto :goto_27
.end method

.method private viewportFill()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$Colour;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v0, Lcom/caverock/androidsvg/SVG$Colour;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    move v1, v0

    :goto_15
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->colourWithOpacity(IF)I

    move-result v1

    :cond_2d
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_32
    return-void

    :cond_33
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$CurrentColor;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    move v1, v0

    goto :goto_15
.end method

.method private visible()Z
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_14
.end method

.method private static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "SVGAndroidRenderer"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method getCurrentFontSize()F
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method getCurrentFontXHeight()F
    .registers 3

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_a
.end method

.method getDPI()F
    .registers 2

    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    return v0
.end method

.method renderDocument(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/RenderOptions;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG;",
            "Lcom/caverock/androidsvg/RenderOptions;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "renderOptions shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v3

    if-nez v3, :cond_1c

    const-string v0, "Nothing to render. Document is empty."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    invoke-virtual {p2}, Lcom/caverock/androidsvg/RenderOptions;->hasView()Z

    move-result v0

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p2, Lcom/caverock/androidsvg/RenderOptions;->viewId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->getElementById(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    move-result-object v0

    if-eqz v0, :cond_30

    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$View;

    if-nez v1, :cond_42

    :cond_30
    const-string v0, "SVGAndroidRenderer"

    const-string v1, "View element with id \"%s\" not found."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/caverock/androidsvg/RenderOptions;->viewId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_42
    check-cast v0, Lcom/caverock/androidsvg/SVG$View;

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_5a

    const-string v0, "SVGAndroidRenderer"

    const-string v1, "View element with id \"%s\" is missing a viewBox attribute."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/caverock/androidsvg/RenderOptions;->viewId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_5a
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v0, v1

    :goto_5f
    invoke-virtual {p2}, Lcom/caverock/androidsvg/RenderOptions;->hasCss()Z

    move-result v1

    if-eqz v1, :cond_6a

    iget-object v1, p2, Lcom/caverock/androidsvg/RenderOptions;->css:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/SVG;->addCSSRules(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    :cond_6a
    invoke-virtual {p2}, Lcom/caverock/androidsvg/RenderOptions;->hasTarget()Z

    move-result v1

    if-eqz v1, :cond_81

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;

    invoke-direct {v1}, Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;-><init>()V

    iput-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->ruleMatchContext:Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->ruleMatchContext:Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;

    iget-object v4, p2, Lcom/caverock/androidsvg/RenderOptions;->targetId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/caverock/androidsvg/SVG;->getElementById(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    move-result-object v4

    iput-object v4, v1, Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;->targetElement:Lcom/caverock/androidsvg/SVG$SvgElementBase;

    :cond_81
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->resetState()V

    invoke-direct {p0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    new-instance v1, Lcom/caverock/androidsvg/SVG$Box;

    iget-object v4, p2, Lcom/caverock/androidsvg/RenderOptions;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v1, v4}, Lcom/caverock/androidsvg/SVG$Box;-><init>(Lcom/caverock/androidsvg/SVG$Box;)V

    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_9f

    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget v5, v1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    invoke-virtual {v4, p0, v5}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    iput v4, v1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    :cond_9f
    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_ad

    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    iget v5, v1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v4, p0, v5}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    iput v4, v1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    :cond_ad
    invoke-direct {p0, v3, v1, v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    invoke-virtual {p2}, Lcom/caverock/androidsvg/RenderOptions;->hasCss()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->clearRenderCSSRules()V

    goto/16 :goto_1b

    :cond_be
    invoke-virtual {p2}, Lcom/caverock/androidsvg/RenderOptions;->hasViewBox()Z

    move-result v0

    if-eqz v0, :cond_d0

    iget-object v0, p2, Lcom/caverock/androidsvg/RenderOptions;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    :goto_c6
    invoke-virtual {p2}, Lcom/caverock/androidsvg/RenderOptions;->hasPreserveAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_d3

    iget-object v1, p2, Lcom/caverock/androidsvg/RenderOptions;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v2, v1

    goto :goto_5f

    :cond_d0
    iget-object v0, v3, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_c6

    :cond_d3
    iget-object v1, v3, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v2, v1

    goto :goto_5f
.end method
