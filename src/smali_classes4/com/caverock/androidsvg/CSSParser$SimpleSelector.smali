.class Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleSelector"
.end annotation


# instance fields
.field attribs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$Attrib;",
            ">;"
        }
    .end annotation
.end field

.field combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

.field pseudos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$PseudoClass;",
            ">;"
        }
    .end annotation
.end field

.field tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, v1

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$Combinator;

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    if-eqz p1, :cond_1e

    :goto_19
    iput-object p1, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    iput-object p2, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    return-void

    :cond_1e
    sget-object p1, Lcom/caverock/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/caverock/androidsvg/CSSParser$Combinator;

    goto :goto_19
.end method


# virtual methods
.method addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/CSSParser$AttribOp;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$Attrib;

    invoke-direct {v1, p1, p2, p3}, Lcom/caverock/androidsvg/CSSParser$Attrib;-><init>(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addPseudo(Lcom/caverock/androidsvg/CSSParser$PseudoClass;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$PseudoClass;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-ne v0, v2, :cond_42

    const-string v0, "> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    if-nez v0, :cond_4e

    const-string v0, "*"

    :goto_16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_51

    :cond_2b
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_99

    :cond_3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_42
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->FOLLOWS:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-ne v0, v2, :cond_10

    const-string v0, "+ "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_4e
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    goto :goto_16

    :cond_51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$Attrib;

    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/caverock/androidsvg/CSSParser$Attrib;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/caverock/androidsvg/CSSParser$Attrib;->operation:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    sget-object v4, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    if-ne v3, v4, :cond_79

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_73
    :goto_73
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_79
    sget-object v4, Lcom/caverock/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    if-ne v3, v4, :cond_89

    const-string v3, "~="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_73

    :cond_89
    sget-object v4, Lcom/caverock/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    if-ne v3, v4, :cond_73

    const-string v3, "|="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_73

    :cond_99
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$PseudoClass;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_37
.end method
