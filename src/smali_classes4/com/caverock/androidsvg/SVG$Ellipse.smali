.class Lcom/caverock/androidsvg/SVG$Ellipse;
.super Lcom/caverock/androidsvg/SVG$GraphicsElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Ellipse"
.end annotation


# instance fields
.field cx:Lcom/caverock/androidsvg/SVG$Length;

.field cy:Lcom/caverock/androidsvg/SVG$Length;

.field rx:Lcom/caverock/androidsvg/SVG$Length;

.field ry:Lcom/caverock/androidsvg/SVG$Length;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    return-void
.end method


# virtual methods
.method getNodeName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const-string v0, "ellipse"

    return-object v0
.end method
