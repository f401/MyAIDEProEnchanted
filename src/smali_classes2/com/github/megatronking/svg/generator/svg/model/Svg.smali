.class public Lcom/github/megatronking/svg/generator/svg/model/Svg;
.super Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;


# instance fields
.field public h:F

.field public viewBox:[F

.field public w:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;-><init>()V

    return-void
.end method

.method private cloneNode(Lcom/github/megatronking/svg/generator/svg/model/SvgNode;)Lcom/github/megatronking/svg/generator/svg/model/SvgNode;
    .registers 3

    :try_start_0
    invoke-virtual {p1}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    check-cast v0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;

    goto :goto_0
.end method

.method private findAllStylesFromSvg()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/github/megatronking/svg/generator/svg/model/Style;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/github/megatronking/svg/generator/svg/model/Svg;->recursiveFindStyles(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method private findNodesById(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/github/megatronking/svg/generator/svg/model/SvgNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    invoke-direct {p0, p1, v1, v0}, Lcom/github/megatronking/svg/generator/svg/model/Svg;->recursiveFindNodesById(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method private recursiveFindNodesById(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/github/megatronking/svg/generator/svg/model/SvgNode;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/github/megatronking/svg/generator/svg/model/SvgNode;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    return-void

    :cond_1
    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;

    iget-object v2, v0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->id:Ljava/lang/String;

    invoke-static {v2}, Lcom/github/megatronking/svg/generator/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v2, v0, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    invoke-direct {p0, p1, v0, p3}, Lcom/github/megatronking/svg/generator/svg/model/Svg;->recursiveFindNodesById(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method private recursiveFindStyles(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/megatronking/svg/generator/svg/model/SvgNode;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/github/megatronking/svg/generator/svg/model/Style;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;

    instance-of v2, v0, Lcom/github/megatronking/svg/generator/svg/model/Style;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/github/megatronking/svg/generator/svg/model/Style;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v2, v0, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/github/megatronking/svg/generator/svg/model/Svg;->recursiveFindStyles(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method private replaceUseTagWithHrefLink(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/megatronking/svg/generator/svg/model/SvgNode;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;

    instance-of v1, v0, Lcom/github/megatronking/svg/generator/svg/model/Use;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/github/megatronking/svg/generator/svg/model/Use;

    iget-object v1, v1, Lcom/github/megatronking/svg/generator/svg/model/Use;->href:Ljava/lang/String;

    invoke-static {v1}, Lcom/github/megatronking/svg/generator/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/github/megatronking/svg/generator/svg/model/Use;

    iget-object v1, v1, Lcom/github/megatronking/svg/generator/svg/model/Use;->href:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/github/megatronking/svg/generator/svg/model/Use;

    iget-object v1, v1, Lcom/github/megatronking/svg/generator/svg/model/Use;->href:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/github/megatronking/svg/generator/svg/model/Svg;->findNodesById(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;

    invoke-direct {p0, v1}, Lcom/github/megatronking/svg/generator/svg/model/Svg;->cloneNode(Lcom/github/megatronking/svg/generator/svg/model/SvgNode;)Lcom/github/megatronking/svg/generator/svg/model/SvgNode;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v1, v2, Lcom/github/megatronking/svg/generator/svg/model/Symbol;

    if-eqz v1, :cond_3

    move-object v1, v2

    check-cast v1, Lcom/github/megatronking/svg/generator/svg/model/Symbol;

    iput-boolean v4, v1, Lcom/github/megatronking/svg/generator/svg/model/Symbol;->isInUse:Z

    :cond_3
    check-cast v0, Lcom/github/megatronking/svg/generator/svg/model/Use;

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/github/megatronking/svg/generator/svg/model/Svg;->replaceUseTagWithHrefLink(Ljava/util/List;)V

    goto :goto_0
.end method

.method private transform(Lcom/github/megatronking/svg/generator/svg/model/SvgNode;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/megatronking/svg/generator/svg/model/SvgNode;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    aget v1, v0, v7

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    aget v2, v0, v8

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    const/4 v4, 0x3

    aget v4, v0, v4

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    const/4 v5, 0x4

    aget v5, v0, v5

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    const/4 v6, 0x5

    aget v6, v0, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->transform(FFFFFF)V

    :cond_0
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/Svg;->viewBox:[F

    if-eqz v0, :cond_1

    int-to-float v1, v8

    int-to-float v2, v7

    int-to-float v3, v7

    int-to-float v4, v8

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/Svg;->viewBox:[F

    aget v0, v0, v7

    neg-float v5, v0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/Svg;->viewBox:[F

    aget v0, v0, v8

    neg-float v6, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->transform(FFFFFF)V

    :cond_1
    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public parseEnd()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/model/Svg;->findAllStylesFromSvg()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/github/megatronking/svg/generator/svg/model/Svg;->replaceUseTagWithHrefLink(Ljava/util/List;)V

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0, v2}, Lcom/github/megatronking/svg/generator/svg/model/Svg;->applyStyles(Ljava/util/Map;Ljava/util/Map;)V

    int-to-float v2, v4

    int-to-float v3, v4

    int-to-float v5, v4

    int-to-float v6, v4

    move-object v0, p0

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/github/megatronking/svg/generator/svg/model/Svg;->transform(FFFFFF)V

    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/megatronking/svg/generator/svg/model/Style;

    invoke-virtual {v0}, Lcom/github/megatronking/svg/generator/svg/model/Style;->toStyle()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public transform(FFFFFF)V
    .registers 9
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

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;

    invoke-direct {p0, v0}, Lcom/github/megatronking/svg/generator/svg/model/Svg;->transform(Lcom/github/megatronking/svg/generator/svg/model/SvgNode;)V

    goto :goto_0
.end method
