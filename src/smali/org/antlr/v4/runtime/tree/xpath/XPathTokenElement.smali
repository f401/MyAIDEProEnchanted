.class public Lorg/antlr/v4/runtime/tree/xpath/XPathTokenElement;
.super Lorg/antlr/v4/runtime/tree/xpath/XPathElement;
.source "XPathTokenElement.java"


# instance fields
.field protected tokenType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/tree/xpath/XPathElement;-><init>(Ljava/lang/String;)V

    .line 22
    iput p2, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathTokenElement;->tokenType:I

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
    instance-of v3, v0, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz v3, :cond_0

    .line 31
    check-cast v0, Lorg/antlr/v4/runtime/tree/TerminalNode;

    .line 32
    invoke-interface {v0}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v3

    invoke-interface {v3}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v3

    iget v4, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathTokenElement;->tokenType:I

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathTokenElement;->invert:Z

    if-eqz v3, :cond_2

    :cond_1
    invoke-interface {v0}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v3

    invoke-interface {v3}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v3

    iget v4, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathTokenElement;->tokenType:I

    if-eq v3, v4, :cond_0

    iget-boolean v3, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathTokenElement;->invert:Z

    if-eqz v3, :cond_0

    .line 35
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method
