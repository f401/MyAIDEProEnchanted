.class public Lorg/antlr/v4/runtime/tree/Trees;
.super Ljava/lang/Object;
.source "Trees.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _findAllNodes(Lorg/antlr/v4/runtime/tree/ParseTree;IZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            "IZ",
            "Ljava/util/List",
            "<-",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 158
    instance-of v0, p0, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 159
    check-cast v0, Lorg/antlr/v4/runtime/tree/TerminalNode;

    .line 160
    invoke-interface {v0}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 167
    :goto_1
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 168
    invoke-interface {p0, v0}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lorg/antlr/v4/runtime/tree/Trees;->_findAllNodes(Lorg/antlr/v4/runtime/tree/ParseTree;IZLjava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 160
    :cond_1
    if-nez p2, :cond_0

    .line 162
    instance-of v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 163
    check-cast v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 164
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getRuleIndex()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    :cond_2
    return-void
.end method

.method public static descendants(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-static {p0}, Lorg/antlr/v4/runtime/tree/Trees;->getDescendants(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static findAllNodes(Lorg/antlr/v4/runtime/tree/ParseTree;IZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-static {p0, p1, p2, v0}, Lorg/antlr/v4/runtime/tree/Trees;->_findAllNodes(Lorg/antlr/v4/runtime/tree/ParseTree;IZLjava/util/List;)V

    return-object v0
.end method

.method public static findAllRuleNodes(Lorg/antlr/v4/runtime/tree/ParseTree;I)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            "I)",
            "Ljava/util/Collection",
            "<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 145
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/antlr/v4/runtime/tree/Trees;->findAllNodes(Lorg/antlr/v4/runtime/tree/ParseTree;IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static findAllTokenNodes(Lorg/antlr/v4/runtime/tree/ParseTree;I)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            "I)",
            "Ljava/util/Collection",
            "<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 141
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/antlr/v4/runtime/tree/Trees;->findAllNodes(Lorg/antlr/v4/runtime/tree/ParseTree;IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static findNodeSuchThat(Lorg/antlr/v4/runtime/tree/Tree;Lorg/antlr/v4/runtime/misc/Predicate;)Lorg/antlr/v4/runtime/tree/Tree;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/Tree;",
            "Lorg/antlr/v4/runtime/misc/Predicate",
            "<",
            "Lorg/antlr/v4/runtime/tree/Tree;",
            ">;)",
            "Lorg/antlr/v4/runtime/tree/Tree;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 250
    invoke-interface {p1, p0}, Lorg/antlr/v4/runtime/misc/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    :goto_0
    return-object p0

    .line 250
    :cond_0
    if-nez p0, :cond_1

    move-object p0, v0

    goto :goto_0

    .line 254
    :cond_1
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/Tree;->getChildCount()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_3

    .line 256
    invoke-interface {p0, v2}, Lorg/antlr/v4/runtime/tree/Tree;->getChild(I)Lorg/antlr/v4/runtime/tree/Tree;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/antlr/v4/runtime/tree/Trees;->findNodeSuchThat(Lorg/antlr/v4/runtime/tree/Tree;Lorg/antlr/v4/runtime/misc/Predicate;)Lorg/antlr/v4/runtime/tree/Tree;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object p0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    move-object p0, v0

    goto :goto_0
.end method

.method public static getAncestors(Lorg/antlr/v4/runtime/tree/Tree;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/Tree;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lorg/antlr/v4/runtime/tree/Tree;",
            ">;"
        }
    .end annotation

    .line 115
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/Tree;->getParent()Lorg/antlr/v4/runtime/tree/Tree;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 120
    :cond_0
    return-object v0

    .line 116
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/Tree;->getParent()Lorg/antlr/v4/runtime/tree/Tree;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 119
    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 120
    invoke-interface {v1}, Lorg/antlr/v4/runtime/tree/Tree;->getParent()Lorg/antlr/v4/runtime/tree/Tree;

    move-result-object v1

    goto :goto_0
.end method

.method public static getChildren(Lorg/antlr/v4/runtime/tree/Tree;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/Tree;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/tree/Tree;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 103
    :goto_0
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/Tree;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 104
    invoke-interface {p0, v0}, Lorg/antlr/v4/runtime/tree/Tree;->getChild(I)Lorg/antlr/v4/runtime/tree/Tree;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getDescendants(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 182
    invoke-interface {p0, v0}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v3

    invoke-static {v3}, Lorg/antlr/v4/runtime/tree/Trees;->getDescendants(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getNodeText(Lorg/antlr/v4/runtime/tree/Tree;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/Tree;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 72
    instance-of v0, p0, Lorg/antlr/v4/runtime/RuleContext;

    if-eqz v0, :cond_1

    .line 73
    check-cast p0, Lorg/antlr/v4/runtime/RuleContext;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/RuleContext;->getRuleContext()Lorg/antlr/v4/runtime/RuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/RuleContext;->getRuleIndex()I

    move-result v0

    .line 74
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/RuleContext;->getAltNumber()I

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_0
    :goto_0
    return-object v0

    .line 81
    :cond_1
    instance-of v0, p0, Lorg/antlr/v4/runtime/tree/ErrorNode;

    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_2
    instance-of v0, p0, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 85
    check-cast v0, Lorg/antlr/v4/runtime/tree/TerminalNode;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 87
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_3
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/Tree;->getPayload()Ljava/lang/Object;

    move-result-object v0

    .line 94
    instance-of v1, v0, Lorg/antlr/v4/runtime/Token;

    if-eqz v1, :cond_4

    .line 95
    check-cast v0, Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_4
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/Tree;->getPayload()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNodeText(Lorg/antlr/v4/runtime/tree/Tree;Lorg/antlr/v4/runtime/Parser;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getRuleNames()[Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 66
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 67
    :cond_0
    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/tree/Trees;->getNodeText(Lorg/antlr/v4/runtime/tree/Tree;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v1, v0

    .line 65
    goto :goto_0
.end method

.method public static getRootOfSubtreeEnclosingRegion(Lorg/antlr/v4/runtime/tree/ParseTree;II)Lorg/antlr/v4/runtime/ParserRuleContext;
    .locals 3

    .line 201
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 203
    invoke-interface {p0, v1}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v0

    .line 204
    invoke-static {v0, p1, p2}, Lorg/antlr/v4/runtime/tree/Trees;->getRootOfSubtreeEnclosingRegion(Lorg/antlr/v4/runtime/tree/ParseTree;II)Lorg/antlr/v4/runtime/ParserRuleContext;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p0, v0

    .line 209
    :cond_0
    :goto_1
    return-object p0

    .line 204
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 207
    :cond_2
    instance-of v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;

    if-eqz v0, :cond_3

    .line 208
    check-cast p0, Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 209
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getStart()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v0

    if-lt p1, v0, :cond_3

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getStop()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getStop()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v0

    if-le p2, v0, :cond_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public static isAncestorOf(Lorg/antlr/v4/runtime/tree/Tree;Lorg/antlr/v4/runtime/tree/Tree;)Z
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 131
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/Tree;->getParent()Lorg/antlr/v4/runtime/tree/Tree;

    move-result-object v0

    if-nez v0, :cond_1

    .line 135
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 132
    :cond_1
    invoke-interface {p1}, Lorg/antlr/v4/runtime/tree/Tree;->getParent()Lorg/antlr/v4/runtime/tree/Tree;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 135
    :cond_2
    invoke-interface {v0}, Lorg/antlr/v4/runtime/tree/Tree;->getParent()Lorg/antlr/v4/runtime/tree/Tree;

    move-result-object v0

    goto :goto_1
.end method

.method public static stripChildrenOutOfRange(Lorg/antlr/v4/runtime/ParserRuleContext;Lorg/antlr/v4/runtime/ParserRuleContext;II)V
    .locals 5

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 239
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 233
    :goto_0
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 234
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v2

    .line 235
    invoke-interface {v2}, Lorg/antlr/v4/runtime/tree/ParseTree;->getSourceInterval()Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v3

    .line 236
    instance-of v4, v2, Lorg/antlr/v4/runtime/ParserRuleContext;

    if-eqz v4, :cond_3

    iget v4, v3, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-lt v4, p2, :cond_2

    iget v3, v3, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-le v3, p3, :cond_3

    .line 237
    :cond_2
    invoke-static {v2, p1}, Lorg/antlr/v4/runtime/tree/Trees;->isAncestorOf(Lorg/antlr/v4/runtime/tree/Tree;Lorg/antlr/v4/runtime/tree/Tree;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 238
    new-instance v2, Lorg/antlr/v4/runtime/CommonToken;

    const-string v3, "..."

    invoke-direct {v2, v1, v3}, Lorg/antlr/v4/runtime/CommonToken;-><init>(ILjava/lang/String;)V

    .line 239
    iget-object v3, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    new-instance v4, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;

    invoke-direct {v4, v2}, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;-><init>(Lorg/antlr/v4/runtime/Token;)V

    invoke-interface {v3, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toStringTree(Lorg/antlr/v4/runtime/tree/Tree;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    .line 32
    move-object v0, v1

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v1}, Lorg/antlr/v4/runtime/tree/Trees;->toStringTree(Lorg/antlr/v4/runtime/tree/Tree;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringTree(Lorg/antlr/v4/runtime/tree/Tree;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/Tree;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v3, 0x20

    const/4 v0, 0x0

    .line 49
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/tree/Trees;->getNodeText(Lorg/antlr/v4/runtime/tree/Tree;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/antlr/v4/runtime/misc/Utils;->escapeWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/Tree;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 61
    :goto_0
    return-object v0

    .line 51
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/tree/Trees;->getNodeText(Lorg/antlr/v4/runtime/tree/Tree;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/antlr/v4/runtime/misc/Utils;->escapeWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    :goto_1
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/Tree;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    if-lez v0, :cond_1

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    :cond_1
    invoke-interface {p0, v0}, Lorg/antlr/v4/runtime/tree/Tree;->getChild(I)Lorg/antlr/v4/runtime/tree/Tree;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/antlr/v4/runtime/tree/Trees;->toStringTree(Lorg/antlr/v4/runtime/tree/Tree;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    :cond_2
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toStringTree(Lorg/antlr/v4/runtime/tree/Tree;Lorg/antlr/v4/runtime/Parser;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getRuleNames()[Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 41
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 42
    :cond_0
    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/tree/Trees;->toStringTree(Lorg/antlr/v4/runtime/tree/Tree;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v1, v0

    .line 40
    goto :goto_0
.end method
