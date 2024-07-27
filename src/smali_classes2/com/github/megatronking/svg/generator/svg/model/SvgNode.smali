.class public abstract Lcom/github/megatronking/svg/generator/svg/model/SvgNode;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public clazz:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public matrix:[F

.field protected pathData:Ljava/lang/String;

.field public styleMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyDefineStylesByRef(Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private somethingToDraw()Z
    .registers 9

    const/4 v2, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    :cond_0
    const-string v3, "0"

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v4, "opacity"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const-string v3, "none"

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v4, "display"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v3, "fill"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v3, "fill"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/github/megatronking/svg/generator/utils/Color;->convert(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    :goto_1
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v4, "fill-opacity"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v4, "fill-opacity"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v0

    :goto_2
    if-eqz v3, :cond_6

    int-to-float v3, v1

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_6

    move v3, v1

    :goto_3
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v4, "stroke"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/github/megatronking/svg/generator/utils/Color;->convert(Ljava/lang/String;)I

    move-result v6

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v4, "stroke-width"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/github/megatronking/svg/generator/utils/Dimen;->convert(Ljava/lang/String;)F

    move-result v0

    if-eqz v6, :cond_8

    int-to-float v4, v1

    cmpg-float v4, v0, v4

    if-nez v4, :cond_8

    move v4, v5

    :goto_4
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v7, "stroke-opacity"

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v7, "stroke-opacity"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v5

    :cond_2
    if-eqz v6, :cond_7

    const/4 v0, 0x0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_7

    int-to-float v0, v1

    cmpl-float v0, v5, v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_5
    if-eqz v3, :cond_3

    if-nez v0, :cond_9

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    const/high16 v0, -0x1000000

    move v3, v0

    goto :goto_1

    :cond_5
    move v0, v5

    goto :goto_2

    :cond_6
    move v3, v2

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_5

    :cond_8
    move v4, v0

    goto :goto_4

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public applyStyles(Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
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

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->applyDefineStylesByRef(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->clazz:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->clazz:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->applyDefineStylesByRef(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->clazz:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->applyDefineStylesByRef(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->id:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->applyDefineStylesByRef(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->applyDefineStylesByRef(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    return-void

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "inherit"

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method protected clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public convert2VectorXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<path\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "    android:name=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\"\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v3, "fill"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v3, "fill"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/github/megatronking/svg/generator/utils/Color;->convert(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    android:fillColor=\"#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\"\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v3, "fill-opacity"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0, v1}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v0

    int-to-float v3, v6

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    android:fillAlpha=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\"\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v3, "fill-rule"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v3, "inherit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "evenodd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "evenOdd"

    :cond_3
    const-string v3, "nonzero"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v0, "nonZero"

    :cond_4
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    android:fillType=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\"\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v3, "stroke"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/github/megatronking/svg/generator/utils/Color;->convert(Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v4, "stroke-width"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/github/megatronking/svg/generator/utils/Dimen;->convert(Ljava/lang/String;)F

    move-result v0

    if-eqz v3, :cond_7

    int-to-float v4, v6

    cmpg-float v4, v0, v4

    if-nez v4, :cond_6

    move v0, v1

    :cond_6
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    android:strokeColor=\"#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    android:strokeWidth=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/github/megatronking/svg/generator/utils/FloatUtils;->format2String(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\"\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v3, "stroke-linejoin"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v3, "inherit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    android:strokeLineJoin=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\"\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v3, "stroke-linecap"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v3, "inherit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    android:strokeLineCap=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\"\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v3, "stroke-miterlimit"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_a

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v0, v3}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v3

    const-string v4, "inherit"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_a

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "    android:strokeMiterLimit=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\"\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v3, "stroke-opacity"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-static {v0, v1}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v0

    int-to-float v1, v6

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_b

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "    android:strokeAlpha=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    android:pathData=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->pathData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    const/high16 v0, -0x1000000

    goto/16 :goto_0
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->pathData:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->somethingToDraw()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract toPath()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method

.method public transform(FFFFFF)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFF)V"
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    const/4 v1, 0x6

    new-array v1, v1, [F

    aput p1, v1, v4

    aput p2, v1, v5

    aput p3, v1, v7

    aput p4, v1, v8

    const/4 v2, 0x4

    aput p5, v1, v2

    const/4 v2, 0x5

    aput p6, v1, v2

    invoke-static {v0, v1}, Lcom/github/megatronking/svg/generator/svg/utils/TransformUtils;->preConcat([F[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->pathData:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->pathData:Ljava/lang/String;

    invoke-static {v0}, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->createNodesFromPathData(Ljava/lang/String;)[Lcom/github/megatronking/svg/generator/utils/PathDataNode;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    aget v0, v0, v4

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    aget v0, v0, v5

    cmpg-float v0, v0, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    aget v0, v0, v7

    cmpg-float v0, v0, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    aget v0, v0, v8

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    cmpg-float v0, v0, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    iget-object v5, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    const/4 v7, 0x5

    aget v5, v5, v7

    invoke-static/range {v0 .. v6}, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->transform(FFFFFF[Lcom/github/megatronking/svg/generator/utils/PathDataNode;)V

    :cond_3
    invoke-static {v6}, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->nodeListToString([Lcom/github/megatronking/svg/generator/utils/PathDataNode;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->pathData:Ljava/lang/String;

    goto :goto_0
.end method
