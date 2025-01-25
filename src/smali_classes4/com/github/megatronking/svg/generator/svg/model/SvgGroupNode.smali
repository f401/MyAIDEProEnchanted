.class public abstract Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;
.super Lcom/github/megatronking/svg/generator/svg/model/SvgNode;


# instance fields
.field public children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/megatronking/svg/generator/svg/model/SvgNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public applyStyles(Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->applyStyles(Ljava/util/Map;Ljava/util/Map;)V

    if-nez p2, :cond_a

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_a
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    return-void

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    invoke-virtual {v0, v2, p2}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->applyStyles(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_12
.end method

.method protected clone()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;

    if-eqz v0, :cond_1d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1e

    :cond_1d
    return-object v0

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;

    invoke-virtual {v1}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;

    if-eqz v1, :cond_17

    iget-object v3, v0, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17
.end method

.method public isValid()Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    return v1

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;

    invoke-virtual {v0}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->isValid()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    move v1, v0

    goto :goto_9
.end method

.method public toPath()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
