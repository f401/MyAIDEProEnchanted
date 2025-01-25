.class public Lorg/antlr/v4/runtime/tree/Trees;
.super Ljava/lang/Object;
.source "Trees.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _findAllNodes(Lorg/antlr/v4/runtime/tree/ParseTree;IZLjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            "IZ",
            "Ljava/util/List<",
            "-",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_17

    .line 158
    instance-of v0, p0, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz v0, :cond_17

    .line 159
    move-object v0, p0

    check-cast v0, Lorg/antlr/v4/runtime/tree/TerminalNode;

    .line 160
    invoke-interface {v0}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    if-ne v0, p1, :cond_29

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_17
    if-nez p2, :cond_29

    .line 162
    instance-of v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;

    if-eqz v0, :cond_29

    .line 163
    move-object v0, p0

    check-cast v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 164
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getRuleIndex()I

    move-result v0

    if-ne v0, p1, :cond_29

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    :goto_29
    const/4 v0, 0x0

    .line 167
    :goto_2a
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 168
    invoke-interface {p0, v0}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lorg/antlr/v4/runtime/tree/Trees;->_findAllNodes(Lorg/antlr/v4/runtime/tree/ParseTree;IZLjava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_3a
    return-void
.end method

.method public static descendants(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ")",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-static {p0}, Lorg/antlr/v4/runtime/tree/Trees;->getDescendants(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static findAllNodes(Lorg/antlr/v4/runtime/tree/ParseTree;IZ)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            "IZ)",
            "Ljava/util/List<",
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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            "I)",
            "Ljava/util/Collection<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 145
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/antlr/v4/runtime/tree/Trees;->findAllNodes(Lorg/antlr/v4/runtime/tree/ParseTree;IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static findAllTokenNodes(Lorg/antlr/v4/runtime/tree/ParseTree;I)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            "I)",
            "Ljava/util/Collection<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 141
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/antlr/v4/runtime/tree/Trees;->findAllNodes(Lorg/antlr/v4/runtime/tree/ParseTree;IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static findNodeSuchThat(Lorg/antlr/v4/runtime/tree/Tree;Lorg/antlr/v4/runtime/misc/Predicate;)Lorg/antlr/v4/runtime/tree/Tree;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/Tree;",
            "Lorg/antlr/v4/runtime/misc/Predicate<",
            "Lorg/antlr/v4/runtime/tree/Tree;",
            ">;)",
            "Lorg/antlr/v4/runtime/tree/Tree;"
        }
    .end annotation

    .line 250
    invoke-interface {p1, p0}, Lorg/antlr/v4/runtime/misc/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    const/4 v0, 0x0

    if-nez p0, :cond_b

    return-object v0

    .line 254
    :cond_b
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/Tree;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_20

    .line 256
    invoke-interface {p0, v2}, Lorg/antlr/v4/runtime/tree/Tree;->getChild(I)Lorg/antlr/v4/runtime/tree/Tree;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/antlr/v4/runtime/tree/Trees;->findNodeSuchThat(Lorg/antlr/v4/runtime/tree/Tree;Lorg/antlr/v4/runtime/misc/Predicate;)Lorg/antlr/v4/runtime/tree/Tree;

    move-result-object v3

    if-eqz v3, :cond_1d

    return-object v3

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_20
    return-object v0
.end method

.method public static getAncestors(Lorg/antlr/v4/runtime/tree/Tree;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/Tree;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lorg/antlr/v4/runtime/tree/Tree;",
            ">;"
        }
    .end annotation

    .line 115
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/Tree;->getParent()Lorg/antlr/v4/runtime/tree/Tree;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 116
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/Tree;->getParent()Lorg/antlr/v4/runtime/tree/Tree;

    move-result-object p0

    :goto_14
    if-eqz p0, :cond_1f

    .line 119
    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 120
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/Tree;->getParent()Lorg/antlr/v4/runtime/tree/Tree;

    move-result-object p0

    goto :goto_14

    :cond_1f
    return-object v0
.end method

.method public static getChildren(Lorg/antlr/v4/runtime/tree/Tree;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/Tree;",
            ")",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/tree/Tree;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 103
    :goto_6
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/Tree;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 104
    invoke-interface {p0, v1}, Lorg/antlr/v4/runtime/tree/Tree;->getChild(I)Lorg/antlr/v4/runtime/tree/Tree;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    return-object v0
.end method

.method public static getDescendants(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ")",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1d

    .line 182
    invoke-interface {p0, v2}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v3

    invoke-static {v3}, Lorg/antlr/v4/runtime/tree/Trees;->getDescendants(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1d
    return-object v0
.end method

.method public static getNodeText(Lorg/antlr/v4/runtime/tree/Tree;Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/Tree;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_4d

    .line 72
    instance-of v0, p0, Lorg/antlr/v4/runtime/RuleContext;

    if-eqz v0, :cond_32

    .line 73
    check-cast p0, Lorg/antlr/v4/runtime/RuleContext;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/RuleContext;->getRuleContext()Lorg/antlr/v4/runtime/RuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/RuleContext;->getRuleIndex()I

    move-result v0

    .line 74
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/RuleContext;->getAltNumber()I

    move-result p0

    if-eqz p0, :cond_31

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    return-object p1

    .line 81
    :cond_32
    instance-of p1, p0, Lorg/antlr/v4/runtime/tree/ErrorNode;

    if-eqz p1, :cond_3b

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 84
    :cond_3b
    instance-of p1, p0, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz p1, :cond_4d

    .line 85
    move-object p1, p0

    check-cast p1, Lorg/antlr/v4/runtime/tree/TerminalNode;

    invoke-interface {p1}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 87
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 93
    :cond_4d
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/Tree;->getPayload()Ljava/lang/Object;

    move-result-object p1

    .line 94
    instance-of v0, p1, Lorg/antlr/v4/runtime/Token;

    if-eqz v0, :cond_5c

    .line 95
    check-cast p1, Lorg/antlr/v4/runtime/Token;

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 97
    :cond_5c
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/Tree;->getPayload()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNodeText(Lorg/antlr/v4/runtime/tree/Tree;Lorg/antlr/v4/runtime/Parser;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 65
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getRuleNames()[Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_8
    move-object p1, v0

    :goto_9
    if-eqz p1, :cond_f

    .line 66
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 67
    :cond_f
    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/tree/Trees;->getNodeText(Lorg/antlr/v4/runtime/tree/Tree;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRootOfSubtreeEnclosingRegion(Lorg/antlr/v4/runtime/tree/ParseTree;II)Lorg/antlr/v4/runtime/ParserRuleContext;
    .registers 6

    .line 201
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    .line 203
    invoke-interface {p0, v1}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v2

    .line 204
    invoke-static {v2, p1, p2}, Lorg/antlr/v4/runtime/tree/Trees;->getRootOfSubtreeEnclosingRegion(Lorg/antlr/v4/runtime/tree/ParseTree;II)Lorg/antlr/v4/runtime/ParserRuleContext;

    move-result-object v2

    if-eqz v2, :cond_12

    return-object v2

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 207
    :cond_15
    instance-of v0, p0, Lorg/antlr/v4/runtime/ParserRuleContext;

    if-eqz v0, :cond_36

    .line 208
    check-cast p0, Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 209
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getStart()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v0

    if-lt p1, v0, :cond_36

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getStop()Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    if-eqz p1, :cond_35

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getStop()Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result p1

    if-gt p2, p1, :cond_36

    :cond_35
    return-object p0

    :cond_36
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isAncestorOf(Lorg/antlr/v4/runtime/tree/Tree;Lorg/antlr/v4/runtime/tree/Tree;)Z
    .registers 3

    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    .line 131
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/Tree;->getParent()Lorg/antlr/v4/runtime/tree/Tree;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_1a

    .line 132
    :cond_b
    invoke-interface {p1}, Lorg/antlr/v4/runtime/tree/Tree;->getParent()Lorg/antlr/v4/runtime/tree/Tree;

    move-result-object p1

    :goto_f
    if-eqz p1, :cond_1a

    if-ne p0, p1, :cond_15

    const/4 p0, 0x1

    return p0

    .line 135
    :cond_15
    invoke-interface {p1}, Lorg/antlr/v4/runtime/tree/Tree;->getParent()Lorg/antlr/v4/runtime/tree/Tree;

    move-result-object p1

    goto :goto_f

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static stripChildrenOutOfRange(Lorg/antlr/v4/runtime/ParserRuleContext;Lorg/antlr/v4/runtime/ParserRuleContext;II)V
    .registers 9

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 233
    :goto_5
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserRuleContext;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 234
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/ParserRuleContext;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v2

    .line 235
    invoke-interface {v2}, Lorg/antlr/v4/runtime/tree/ParseTree;->getSourceInterval()Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v3

    .line 236
    instance-of v4, v2, Lorg/antlr/v4/runtime/ParserRuleContext;

    if-eqz v4, :cond_36

    iget v4, v3, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-lt v4, p2, :cond_1f

    iget v3, v3, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-le v3, p3, :cond_36

    .line 237
    :cond_1f
    invoke-static {v2, p1}, Lorg/antlr/v4/runtime/tree/Trees;->isAncestorOf(Lorg/antlr/v4/runtime/tree/Tree;Lorg/antlr/v4/runtime/tree/Tree;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 238
    new-instance v2, Lorg/antlr/v4/runtime/CommonToken;

    const-string v3, "..."

    invoke-direct {v2, v0, v3}, Lorg/antlr/v4/runtime/CommonToken;-><init>(ILjava/lang/String;)V

    .line 239
    iget-object v3, p0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    new-instance v4, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;

    invoke-direct {v4, v2}, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;-><init>(Lorg/antlr/v4/runtime/Token;)V

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_39
    return-void
.end method

.method public static toStringTree(Lorg/antlr/v4/runtime/tree/Tree;)Ljava/lang/String;
    .registers 3

    .line 32
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/tree/Trees;->toStringTree(Lorg/antlr/v4/runtime/tree/Tree;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStringTree(Lorg/antlr/v4/runtime/tree/Tree;Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/Tree;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/tree/Trees;->getNodeText(Lorg/antlr/v4/runtime/tree/Tree;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/Utils;->escapeWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/Tree;->getChildCount()I

    move-result v2

    if-nez v2, :cond_10

    return-object v0

    .line 51
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/tree/Trees;->getNodeText(Lorg/antlr/v4/runtime/tree/Tree;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/antlr/v4/runtime/misc/Utils;->escapeWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    :goto_27
    invoke-interface {p0}, Lorg/antlr/v4/runtime/tree/Tree;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_40

    if-lez v1, :cond_32

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    :cond_32
    invoke-interface {p0, v1}, Lorg/antlr/v4/runtime/tree/Tree;->getChild(I)Lorg/antlr/v4/runtime/tree/Tree;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/antlr/v4/runtime/tree/Trees;->toStringTree(Lorg/antlr/v4/runtime/tree/Tree;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 60
    :cond_40
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStringTree(Lorg/antlr/v4/runtime/tree/Tree;Lorg/antlr/v4/runtime/Parser;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 40
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getRuleNames()[Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_8
    move-object p1, v0

    :goto_9
    if-eqz p1, :cond_f

    .line 41
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 42
    :cond_f
    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/tree/Trees;->toStringTree(Lorg/antlr/v4/runtime/tree/Tree;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
