.class public Lcom/github/megatronking/svg/generator/svg/model/Circle;
.super Lcom/github/megatronking/svg/generator/svg/model/SvgNode;


# instance fields
.field public cx:F

.field public cy:F

.field public r:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;-><init>()V

    return-void
.end method


# virtual methods
.method public toPath()V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/model/Circle;->cx:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_19

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/model/Circle;->cx:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_19

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/model/Circle;->r:F

    int-to-float v1, v3

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1a

    :cond_19
    :goto_19
    return-void

    :cond_1a
    new-instance v0, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;-><init>()V

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/model/Circle;->cx:F

    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/model/Circle;->cy:F

    invoke-virtual {v0, v1, v2}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->absoluteMoveTo(FF)Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/model/Circle;->r:F

    neg-float v1, v1

    int-to-float v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->relativeMoveTo(FF)Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/model/Circle;->r:F

    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/model/Circle;->r:F

    const/4 v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/github/megatronking/svg/generator/svg/model/Circle;->r:F

    mul-float/2addr v6, v5

    int-to-float v7, v3

    move v5, v4

    invoke-virtual/range {v0 .. v7}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->relativeArcTo(FFZZZFF)Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/model/Circle;->r:F

    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/model/Circle;->r:F

    const/4 v5, -0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/github/megatronking/svg/generator/svg/model/Circle;->r:F

    mul-float/2addr v6, v5

    int-to-float v7, v3

    move v5, v4

    invoke-virtual/range {v0 .. v7}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->relativeArcTo(FFZZZFF)Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;

    invoke-virtual {v0}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->pathData:Ljava/lang/String;

    goto :goto_19
.end method
