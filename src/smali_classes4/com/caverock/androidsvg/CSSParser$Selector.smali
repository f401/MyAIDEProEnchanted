.class Lcom/caverock/androidsvg/CSSParser$Selector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Selector"
.end annotation


# instance fields
.field simpleSelectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$SimpleSelector;",
            ">;"
        }
    .end annotation
.end field

.field specificity:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    return-void
.end method


# virtual methods
.method add(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$SimpleSelector;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addedAttributeOrPseudo()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    return-void
.end method

.method addedElement()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    return-void
.end method

.method addedIdAttribute()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    const v1, 0xf4240

    add-int/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    return-void
.end method

.method get(I)Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    .registers 3

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    return-object v0
.end method

.method isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

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

.method size()I
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2a

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d
.end method
