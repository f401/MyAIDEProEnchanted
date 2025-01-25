.class public Lorg/antlr/v4/runtime/tree/xpath/XPathRuleElement;
.super Lorg/antlr/v4/runtime/tree/xpath/XPathElement;
.source "XPathRuleElement.java"


# instance fields
.field protected ruleIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 21
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/tree/xpath/XPathElement;-><init>(Ljava/lang/String;)V

    .line 22
    iput p2, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathRuleElement;->ruleIndex:I

    return-void
.end method


# virtual methods
.method public evaluate(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-static {p1}, Lorg/antlr/v4/runtime/tree/Trees;->getChildren(Lorg/antlr/v4/runtime/tree/Tree;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/tree/Tree;

    .line 30
    instance-of v2, v1, Lorg/antlr/v4/runtime/ParserRuleContext;

    if-eqz v2, :cond_d

    .line 31
    check-cast v1, Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 32
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/ParserRuleContext;->getRuleIndex()I

    move-result v2

    iget v3, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathRuleElement;->ruleIndex:I

    if-ne v2, v3, :cond_2b

    iget-boolean v2, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathRuleElement;->invert:Z

    if-eqz v2, :cond_37

    :cond_2b
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/ParserRuleContext;->getRuleIndex()I

    move-result v2

    iget v3, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathRuleElement;->ruleIndex:I

    if-eq v2, v3, :cond_d

    iget-boolean v2, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathRuleElement;->invert:Z

    if-eqz v2, :cond_d

    .line 35
    :cond_37
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_3b
    return-object v0
.end method
