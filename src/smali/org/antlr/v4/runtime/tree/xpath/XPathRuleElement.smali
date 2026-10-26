.class public Lorg/antlr/v4/runtime/tree/xpath/XPathRuleElement;
.super Lorg/antlr/v4/runtime/tree/xpath/XPathElement;
.source "XPathRuleElement.java"


# instance fields
.field protected ruleIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/tree/xpath/XPathElement;-><init>(Ljava/lang/String;)V

    .line 22
    iput p2, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathRuleElement;->ruleIndex:I

    return-void
.end method


# virtual methods
.method public evaluate(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-static {p1}, Lorg/antlr/v4/runtime/tree/Trees;->getChildren(Lorg/antlr/v4/runtime/tree/Tree;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/Tree;

    .line 30
    instance-of v3, v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    if-eqz v3, :cond_0

    .line 31
    check-cast v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 32
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getRuleIndex()I

    move-result v3

    iget v4, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathRuleElement;->ruleIndex:I

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathRuleElement;->invert:Z

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getRuleIndex()I

    move-result v3

    iget v4, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathRuleElement;->ruleIndex:I

    if-eq v3, v4, :cond_0

    iget-boolean v3, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathRuleElement;->invert:Z

    if-eqz v3, :cond_0

    .line 35
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method
