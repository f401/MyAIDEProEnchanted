.class Lcom/caverock/androidsvg/SVG$Box;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Box"
.end annotation


# instance fields
.field height:F

.field minX:F

.field minY:F

.field width:F


# direct methods
.method constructor <init>(FFFF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iput p2, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iput p3, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iput p4, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    return-void
.end method

.method constructor <init>(Lcom/caverock/androidsvg/SVG$Box;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    return-void
.end method

.method static fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;
    .registers 7

    new-instance v0, Lcom/caverock/androidsvg/SVG$Box;

    sub-float v1, p2, p0

    sub-float v2, p3, p1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v0
.end method


# virtual methods
.method maxX()F
    .registers 3

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    add-float/2addr v0, v1

    return v0
.end method

.method maxY()F
    .registers 3

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    add-float/2addr v0, v1

    return v0
.end method

.method toRectF()Landroid/graphics/RectF;
    .registers 6

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v2, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v3

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method union(Lcom/caverock/androidsvg/SVG$Box;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Box;",
            ")V"
        }
    .end annotation

    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    :cond_c
    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_18

    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    :cond_18
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2d

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v0

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    :cond_2d
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_42

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v0

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    :cond_42
    return-void
.end method
