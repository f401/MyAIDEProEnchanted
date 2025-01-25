.class public Lcom/github/megatronking/svg/generator/svg/model/Rect;
.super Lcom/github/megatronking/svg/generator/svg/model/SvgNode;


# instance fields
.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;-><init>()V

    return-void
.end method


# virtual methods
.method public toPath()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/model/Rect;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/model/Rect;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    new-instance v0, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;-><init>()V

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/model/Rect;->x:F

    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/model/Rect;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->absoluteMoveTo(FF)Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/model/Rect;->width:F

    invoke-virtual {v0, v1}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->relativeHorizontalTo(F)Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/model/Rect;->height:F

    invoke-virtual {v0, v1}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->relativeVerticalTo(F)Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/model/Rect;->width:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->relativeHorizontalTo(F)Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;

    invoke-virtual {v0}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->relativeClose()Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;

    invoke-virtual {v0}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->pathData:Ljava/lang/String;

    goto :goto_10
.end method
