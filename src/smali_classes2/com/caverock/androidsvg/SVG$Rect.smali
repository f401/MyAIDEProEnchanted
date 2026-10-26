.class Lcom/caverock/androidsvg/SVG$Rect;
.super Lcom/caverock/androidsvg/SVG$GraphicsElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Rect"
.end annotation


# instance fields
.field height:Lcom/caverock/androidsvg/SVG$Length;

.field rx:Lcom/caverock/androidsvg/SVG$Length;

.field ry:Lcom/caverock/androidsvg/SVG$Length;

.field width:Lcom/caverock/androidsvg/SVG$Length;

.field x:Lcom/caverock/androidsvg/SVG$Length;

.field y:Lcom/caverock/androidsvg/SVG$Length;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    return-void
.end method


# virtual methods
.method getNodeName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const-string v0, "rect"

    return-object v0
.end method
