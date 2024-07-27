.class public Lcom/github/megatronking/svg/generator/svg/model/Use;
.super Lcom/github/megatronking/svg/generator/svg/model/G;


# instance fields
.field public height:F

.field public href:Ljava/lang/String;

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/model/G;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(FFFFFF)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFF)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/model/Use;->x:F

    int-to-float v1, v3

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/github/megatronking/svg/generator/svg/model/Use;->y:F

    int-to-float v1, v3

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    if-nez v0, :cond_2

    const/4 v0, 0x6

    new-array v0, v0, [F

    int-to-float v1, v4

    aput v1, v0, v3

    int-to-float v1, v3

    aput v1, v0, v4

    int-to-float v1, v3

    aput v1, v0, v5

    int-to-float v1, v4

    aput v1, v0, v6

    iget v1, p0, Lcom/github/megatronking/svg/generator/svg/model/Use;->x:F

    aput v1, v0, v7

    const/4 v1, 0x5

    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/model/Use;->y:F

    aput v2, v0, v1

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    :cond_1
    :goto_0
    invoke-super/range {p0 .. p6}, Lcom/github/megatronking/svg/generator/svg/model/G;->transform(FFFFFF)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    const/4 v1, 0x6

    new-array v1, v1, [F

    int-to-float v2, v4

    aput v2, v1, v3

    int-to-float v2, v3

    aput v2, v1, v4

    int-to-float v2, v3

    aput v2, v1, v5

    int-to-float v2, v4

    aput v2, v1, v6

    iget v2, p0, Lcom/github/megatronking/svg/generator/svg/model/Use;->x:F

    aput v2, v1, v7

    const/4 v2, 0x5

    iget v3, p0, Lcom/github/megatronking/svg/generator/svg/model/Use;->y:F

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/github/megatronking/svg/generator/svg/utils/TransformUtils;->preConcat([F[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    goto :goto_0
.end method
