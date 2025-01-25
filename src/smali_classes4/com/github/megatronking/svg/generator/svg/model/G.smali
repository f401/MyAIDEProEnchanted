.class public Lcom/github/megatronking/svg/generator/svg/model/G;
.super Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(FFFFFF)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFF)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    if-nez v1, :cond_23

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->transform(FFFFFF)V

    goto :goto_8

    :cond_23
    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    const/4 v2, 0x6

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    const/4 v3, 0x2

    aput p3, v2, v3

    const/4 v3, 0x3

    aput p4, v2, v3

    const/4 v3, 0x4

    aput p5, v2, v3

    const/4 v3, 0x5

    aput p6, v2, v3

    invoke-static {v1, v2}, Lcom/github/megatronking/svg/generator/svg/utils/TransformUtils;->preConcat([F[F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    const/4 v6, 0x4

    aget v5, v5, v6

    iget-object v6, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    const/4 v8, 0x5

    aget v6, v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->transform(FFFFFF)V

    goto :goto_8
.end method
