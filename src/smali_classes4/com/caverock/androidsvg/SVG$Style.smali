.class Lcom/caverock/androidsvg/SVG$Style;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVG$Style$FillRule;,
        Lcom/caverock/androidsvg/SVG$Style$FontStyle;,
        Lcom/caverock/androidsvg/SVG$Style$LineCap;,
        Lcom/caverock/androidsvg/SVG$Style$LineJoin;,
        Lcom/caverock/androidsvg/SVG$Style$RenderQuality;,
        Lcom/caverock/androidsvg/SVG$Style$TextAnchor;,
        Lcom/caverock/androidsvg/SVG$Style$TextDecoration;,
        Lcom/caverock/androidsvg/SVG$Style$TextDirection;,
        Lcom/caverock/androidsvg/SVG$Style$VectorEffect;
    }
.end annotation


# static fields
.field static final FONT_WEIGHT_BOLD:I = 0x2bc

.field static final FONT_WEIGHT_BOLDER:I = 0x1

.field static final FONT_WEIGHT_LIGHTER:I = -0x1

.field static final FONT_WEIGHT_NORMAL:I = 0x190


# instance fields
.field clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

.field clipPath:Ljava/lang/String;

.field clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

.field color:Lcom/caverock/androidsvg/SVG$Colour;

.field direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

.field display:Ljava/lang/Boolean;

.field fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

.field fillOpacity:Ljava/lang/Float;

.field fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

.field fontFamily:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fontSize:Lcom/caverock/androidsvg/SVG$Length;

.field fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

.field fontWeight:Ljava/lang/Integer;

.field imageRendering:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

.field markerEnd:Ljava/lang/String;

.field markerMid:Ljava/lang/String;

.field markerStart:Ljava/lang/String;

.field mask:Ljava/lang/String;

.field opacity:Ljava/lang/Float;

.field overflow:Ljava/lang/Boolean;

.field solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

.field solidOpacity:Ljava/lang/Float;

.field specifiedFlags:J

.field stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

.field stopOpacity:Ljava/lang/Float;

.field stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

.field strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

.field strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

.field strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCap;

.field strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

.field strokeMiterLimit:Ljava/lang/Float;

.field strokeOpacity:Ljava/lang/Float;

.field strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

.field textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

.field textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

.field vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

.field viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

.field viewportFillOpacity:Ljava/lang/Float;

.field visibility:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    return-void
.end method

.method static getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;
    .registers 7

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    new-instance v2, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v2}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    const-wide/16 v4, -0x1

    iput-wide v4, v2, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    sget-object v0, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v6}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    move-object v0, v1

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v6}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineCap;->Butt:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    new-instance v0, Ljava/lang/Float;

    const/high16 v3, 0x40800000  # 4.0f

    invoke-direct {v0, v3}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    move-object v0, v1

    check-cast v0, [Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Length;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v6}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    sget-object v0, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Length;

    const/16 v3, 0xc

    int-to-float v3, v3

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v0, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    new-instance v0, Ljava/lang/Integer;

    const/16 v3, 0x190

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->None:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    new-instance v0, Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    move-object v0, v1

    check-cast v0, Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    sget-object v0, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v6}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v6}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v1, v2, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v6}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->None:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->auto:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    iput-object v0, v2, Lcom/caverock/androidsvg/SVG$Style;->imageRendering:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    return-object v2
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, [Lcom/caverock/androidsvg/SVG$Length;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/caverock/androidsvg/SVG$Length;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    :cond_14
    return-object v0
.end method

.method resetNonInheritingProperties(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    if-eqz p1, :cond_4a

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_b
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    move-object v0, v1

    check-cast v0, Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v2}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    sget-object v0, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v2}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v2}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v2}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->None:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    return-void

    :cond_4a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_b
.end method
