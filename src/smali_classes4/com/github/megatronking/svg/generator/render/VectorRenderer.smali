.class public Lcom/github/megatronking/svg/generator/render/VectorRenderer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/github/megatronking/svg/generator/render/IVectorRenderer;
.implements Lcom/github/megatronking/svg/generator/render/NotifyVectorRenderer$VectorRendererListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/github/megatronking/svg/generator/render/IVectorRenderer",
        "<",
        "Lcom/github/megatronking/svg/generator/vector/model/Vector;",
        ">;",
        "Lcom/github/megatronking/svg/generator/render/NotifyVectorRenderer$VectorRendererListener;"
    }
.end annotation


# instance fields
.field private mPathRenderer:Lcom/github/megatronking/svg/generator/render/VectorPathRenderer;

.field private mRenderResult:Ljava/lang/StringBuilder;

.field private mRootRenderer:Lcom/github/megatronking/svg/generator/render/VectorRootRenderer;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/github/megatronking/svg/generator/render/VectorRootRenderer;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/render/VectorRootRenderer;-><init>()V

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/render/VectorRenderer;->mRootRenderer:Lcom/github/megatronking/svg/generator/render/VectorRootRenderer;

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/render/VectorRenderer;->mRootRenderer:Lcom/github/megatronking/svg/generator/render/VectorRootRenderer;

    invoke-virtual {v0, p0}, Lcom/github/megatronking/svg/generator/render/VectorRootRenderer;->setVectorRendererListener(Lcom/github/megatronking/svg/generator/render/NotifyVectorRenderer$VectorRendererListener;)V

    new-instance v0, Lcom/github/megatronking/svg/generator/render/VectorPathRenderer;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/render/VectorPathRenderer;-><init>()V

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/render/VectorRenderer;->mPathRenderer:Lcom/github/megatronking/svg/generator/render/VectorPathRenderer;

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/render/VectorRenderer;->mPathRenderer:Lcom/github/megatronking/svg/generator/render/VectorPathRenderer;

    invoke-virtual {v0, p0}, Lcom/github/megatronking/svg/generator/render/VectorPathRenderer;->setVectorRendererListener(Lcom/github/megatronking/svg/generator/render/NotifyVectorRenderer$VectorRendererListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/render/VectorRenderer;->mRenderResult:Ljava/lang/StringBuilder;

    return-void
.end method

.method private renderChild(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Lcom/github/megatronking/svg/generator/vector/model/Path;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/render/VectorRenderer;->mPathRenderer:Lcom/github/megatronking/svg/generator/render/VectorPathRenderer;

    check-cast p1, Lcom/github/megatronking/svg/generator/vector/model/Path;

    invoke-virtual {v0, p1}, Lcom/github/megatronking/svg/generator/render/VectorPathRenderer;->render(Lcom/github/megatronking/svg/generator/vector/model/Path;)V

    :cond_b
    return-void

    :cond_c
    instance-of v0, p1, Lcom/github/megatronking/svg/generator/vector/model/Group;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/github/megatronking/svg/generator/vector/model/Group;

    iget-object v0, p1, Lcom/github/megatronking/svg/generator/vector/model/Group;->children:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/github/megatronking/svg/generator/render/VectorRenderer;->renderChild(Ljava/lang/Object;)V

    goto :goto_1a
.end method


# virtual methods
.method public receiveResult(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/render/VectorRenderer;->mRenderResult:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public render(Lcom/github/megatronking/svg/generator/vector/model/Vector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/megatronking/svg/generator/vector/model/Vector;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/render/VectorRenderer;->mRootRenderer:Lcom/github/megatronking/svg/generator/render/VectorRootRenderer;

    invoke-virtual {v0, p1}, Lcom/github/megatronking/svg/generator/render/VectorRootRenderer;->render(Lcom/github/megatronking/svg/generator/vector/model/Vector;)V

    iget-object v0, p1, Lcom/github/megatronking/svg/generator/vector/model/Vector;->children:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/github/megatronking/svg/generator/render/VectorRenderer;->renderChild(Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public bridge render(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/github/megatronking/svg/generator/vector/model/Vector;

    invoke-virtual {p0, p1}, Lcom/github/megatronking/svg/generator/render/VectorRenderer;->render(Lcom/github/megatronking/svg/generator/vector/model/Vector;)V

    return-void
.end method

.method public renderResult()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/render/VectorRenderer;->mRenderResult:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
