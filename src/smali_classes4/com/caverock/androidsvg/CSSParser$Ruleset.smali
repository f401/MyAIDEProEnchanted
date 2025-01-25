.class Lcom/caverock/androidsvg/CSSParser$Ruleset;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Ruleset"
.end annotation


# instance fields
.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    return-void
.end method


# virtual methods
.method add(Lcom/caverock/androidsvg/CSSParser$Rule;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$Rule;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1b

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$Rule;

    iget-object v0, v0, Lcom/caverock/androidsvg/CSSParser$Rule;->selector:Lcom/caverock/androidsvg/CSSParser$Selector;

    iget v0, v0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    iget-object v2, p1, Lcom/caverock/androidsvg/CSSParser$Rule;->selector:Lcom/caverock/androidsvg/CSSParser$Selector;

    iget v2, v2, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    if-le v0, v2, :cond_33

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1a

    :cond_33
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d
.end method

.method addAll(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$Ruleset;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-nez v0, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    :cond_16
    iget-object v0, p1, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$Rule;

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->add(Lcom/caverock/androidsvg/CSSParser$Rule;)V

    goto :goto_1e
.end method

.method getRules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$Rule;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    return-object v0
.end method

.method isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method removeFromSource(Lcom/caverock/androidsvg/CSSParser$Source;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$Source;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$Rule;

    iget-object v0, v0, Lcom/caverock/androidsvg/CSSParser$Rule;->source:Lcom/caverock/androidsvg/CSSParser$Source;

    if-ne v0, p1, :cond_b

    :try_start_1b
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_b

    :catch_1f
    move-exception v0

    goto :goto_b
.end method

.method ruleCount()I
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$Rule;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$Rule;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14
.end method
