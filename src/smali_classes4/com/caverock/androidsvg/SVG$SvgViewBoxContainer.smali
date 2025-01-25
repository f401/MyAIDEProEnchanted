.class abstract Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;
.super Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SvgViewBoxContainer"
.end annotation


# instance fields
.field viewBox:Lcom/caverock/androidsvg/SVG$Box;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;-><init>()V

    return-void
.end method
