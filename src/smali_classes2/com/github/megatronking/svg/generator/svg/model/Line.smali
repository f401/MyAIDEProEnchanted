.class public Lcom/github/megatronking/svg/generator/svg/model/Line;
.super Lcom/github/megatronking/svg/generator/svg/model/SvgNode;


# instance fields
.field public x1:F

.field public x2:F

.field public y1:F

.field public y2:F


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

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/model/Line;->x1:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/model/Line;->y1:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/model/Line;->x2:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/model/Line;->y2:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;-><init>()V

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/model/Line;->x1:F

    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/model/Line;->y1:F

    invoke-virtual {v0, v1, v2}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->absoluteMoveTo(FF)Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/model/Line;->x2:F

    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/model/Line;->y2:F

    invoke-virtual {v0, v1, v2}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->absoluteLineTo(FF)Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;

    invoke-virtual {v0}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->pathData:Ljava/lang/String;

    goto :goto_0
.end method
