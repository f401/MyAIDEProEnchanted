.class Lcom/caverock/androidsvg/SVG$Line;
.super Lcom/caverock/androidsvg/SVG$GraphicsElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Line"
.end annotation


# instance fields
.field x1:Lcom/caverock/androidsvg/SVG$Length;

.field x2:Lcom/caverock/androidsvg/SVG$Length;

.field y1:Lcom/caverock/androidsvg/SVG$Length;

.field y2:Lcom/caverock/androidsvg/SVG$Length;


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

    const-string v0, "line"

    return-object v0
.end method
