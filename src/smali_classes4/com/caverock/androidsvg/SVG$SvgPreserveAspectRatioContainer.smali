.class abstract Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;
.super Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SvgPreserveAspectRatioContainer"
.end annotation


# instance fields
.field preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    const/4 v0, 0x0

    check-cast v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    return-void
.end method
