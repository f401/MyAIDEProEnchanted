.class Lcom/caverock/androidsvg/SVG$Length;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Length"
.end annotation


# instance fields
.field unit:Lcom/caverock/androidsvg/SVG$Unit;

.field value:F


# direct methods
.method constructor <init>(F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    sget-object v0, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    return-void
.end method

.method constructor <init>(FLcom/caverock/androidsvg/SVG$Unit;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    iput-object p2, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    return-void
.end method


# virtual methods
.method floatValue()F
    .registers 2

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return v0
.end method

.method floatValue(F)F
    .registers 4

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    :goto_8
    return v0

    :cond_9
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->in:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_11

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p1

    goto :goto_8

    :cond_11
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->cm:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_1d

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p1

    const v1, 0x40228f5c  # 2.54f

    div-float/2addr v0, v1

    goto :goto_8

    :cond_1d
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->mm:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_29

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p1

    const v1, 0x41cb3333  # 25.4f

    div-float/2addr v0, v1

    goto :goto_8

    :cond_29
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_34

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x42900000  # 72.0f

    div-float/2addr v0, v1

    goto :goto_8

    :cond_34
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->pc:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_3f

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x40c00000  # 6.0f

    div-float/2addr v0, v1

    goto :goto_8

    :cond_3f
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->em:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_46

    :cond_43
    :goto_43
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    goto :goto_8

    :cond_46
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->ex:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v0, v1, :cond_43

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_43

    goto :goto_43
.end method

.method floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F
    .registers 7

    const/high16 v4, 0x42c80000  # 100.0f

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_32

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v0

    if-nez v0, :cond_11

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    :goto_10
    return v0

    :cond_11
    iget v1, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    cmpg-float v2, v1, v0

    if-nez v2, :cond_1e

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v4

    goto :goto_10

    :cond_1e
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3ff6a09e667f3bccL  # 1.414213562373095

    div-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v4

    goto :goto_10

    :cond_32
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_10
.end method

.method floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F
    .registers 5

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p2

    const/high16 v1, 0x42c80000  # 100.0f

    div-float/2addr v0, v1

    :goto_c
    return v0

    :cond_d
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_c
.end method

.method floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F
    .registers 4

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    :goto_8
    return v0

    :cond_9
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->em:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_15

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentFontSize()F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_8

    :cond_15
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->ex:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_21

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentFontXHeight()F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_8

    :cond_21
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->in:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_2d

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_8

    :cond_2d
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->cm:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_3d

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result v1

    mul-float/2addr v0, v1

    const v1, 0x40228f5c  # 2.54f

    div-float/2addr v0, v1

    goto :goto_8

    :cond_3d
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->mm:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_4d

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result v1

    mul-float/2addr v0, v1

    const v1, 0x41cb3333  # 25.4f

    div-float/2addr v0, v1

    goto :goto_8

    :cond_4d
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_5c

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42900000  # 72.0f

    div-float/2addr v0, v1

    goto :goto_8

    :cond_5c
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->pc:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_6b

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40c00000  # 6.0f

    div-float/2addr v0, v1

    goto :goto_8

    :cond_6b
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_81

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v0

    if-nez v0, :cond_78

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    goto :goto_8

    :cond_78
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000  # 100.0f

    div-float/2addr v0, v1

    goto :goto_8

    :cond_81
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    goto :goto_8
.end method

.method floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F
    .registers 4

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_18

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v0

    if-nez v0, :cond_f

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    :goto_e
    return v0

    :cond_f
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000  # 100.0f

    div-float/2addr v0, v1

    goto :goto_e

    :cond_18
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_e
.end method

.method isNegative()Z
    .registers 3

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method isZero()Z
    .registers 3

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
