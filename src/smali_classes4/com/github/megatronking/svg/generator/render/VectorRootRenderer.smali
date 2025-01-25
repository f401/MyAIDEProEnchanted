.class public Lcom/github/megatronking/svg/generator/render/VectorRootRenderer;
.super Lcom/github/megatronking/svg/generator/render/NotifyVectorRenderer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/megatronking/svg/generator/render/NotifyVectorRenderer",
        "<",
        "Lcom/github/megatronking/svg/generator/vector/model/Vector;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/render/NotifyVectorRenderer;-><init>()V

    return-void
.end method

.method private hasPathNeedMinScale(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    if-eqz p1, :cond_15

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_17

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    instance-of v3, v0, Lcom/github/megatronking/svg/generator/vector/model/Path;

    if-eqz v3, :cond_29

    check-cast v0, Lcom/github/megatronking/svg/generator/vector/model/Path;

    iget v0, v0, Lcom/github/megatronking/svg/generator/vector/model/Path;->strokeColor:I

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_16

    :cond_29
    check-cast v0, Lcom/github/megatronking/svg/generator/vector/model/Group;

    iget-object v0, v0, Lcom/github/megatronking/svg/generator/vector/model/Group;->children:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/github/megatronking/svg/generator/render/VectorRootRenderer;->hasPathNeedMinScale(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_16
.end method


# virtual methods
.method protected notifyResult(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/github/megatronking/svg/generator/render/NotifyVectorRenderer;->notifyResult(Ljava/lang/String;)V

    return-void
.end method

.method public render(Lcom/github/megatronking/svg/generator/vector/model/Vector;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/megatronking/svg/generator/vector/model/Vector;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "final float scaleX = w / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p1, Lcom/github/megatronking/svg/generator/vector/model/Vector;->viewportWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "f;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/megatronking/svg/generator/render/VectorRootRenderer;->notifyResult(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "final float scaleY = h / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p1, Lcom/github/megatronking/svg/generator/vector/model/Vector;->viewportHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "f;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/megatronking/svg/generator/render/VectorRootRenderer;->notifyResult(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/github/megatronking/svg/generator/vector/model/Vector;->children:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/github/megatronking/svg/generator/render/VectorRootRenderer;->hasPathNeedMinScale(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_63

    const-string v0, "final float minScale = Math.min(scaleX, scaleY);"

    invoke-virtual {p0, v0}, Lcom/github/megatronking/svg/generator/render/VectorRootRenderer;->notifyResult(Ljava/lang/String;)V

    :cond_63
    invoke-virtual {p0}, Lcom/github/megatronking/svg/generator/render/VectorRootRenderer;->writeNewLine()V

    return-void
.end method

.method public bridge render(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/github/megatronking/svg/generator/vector/model/Vector;

    invoke-virtual {p0, p1}, Lcom/github/megatronking/svg/generator/render/VectorRootRenderer;->render(Lcom/github/megatronking/svg/generator/vector/model/Vector;)V

    return-void
.end method
