.class public Lorg/antlr/v4/runtime/tree/IterativeParseTreeWalker;
.super Lorg/antlr/v4/runtime/tree/ParseTreeWalker;
.source "IterativeParseTreeWalker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/antlr/v4/runtime/tree/ParseTreeWalker;-><init>()V

    return-void
.end method


# virtual methods
.method public walk(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/ParseTree;)V
    .locals 6

    const/4 v3, 0x0

    .line 24
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 25
    new-instance v5, Lorg/antlr/v4/runtime/misc/IntegerStack;

    invoke-direct {v5}, Lorg/antlr/v4/runtime/misc/IntegerStack;-><init>()V

    :goto_0
    move v2, v3

    move-object v1, p2

    :cond_0
    :goto_1
    if-eqz v1, :cond_7

    .line 33
    instance-of v0, v1, Lorg/antlr/v4/runtime/tree/ErrorNode;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 34
    check-cast v0, Lorg/antlr/v4/runtime/tree/ErrorNode;

    invoke-interface {p1, v0}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->visitErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)V

    .line 45
    :goto_2
    invoke-interface {v1}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 46
    invoke-interface {v4, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {v5, v2}, Lorg/antlr/v4/runtime/misc/IntegerStack;->push(I)V

    .line 49
    invoke-interface {v1, v3}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p2

    goto :goto_0

    .line 36
    :cond_1
    instance-of v0, v1, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 37
    check-cast v0, Lorg/antlr/v4/runtime/tree/TerminalNode;

    invoke-interface {p1, v0}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->visitTerminal(Lorg/antlr/v4/runtime/tree/TerminalNode;)V

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 40
    check-cast v0, Lorg/antlr/v4/runtime/tree/RuleNode;

    .line 41
    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/tree/IterativeParseTreeWalker;->enterRule(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/RuleNode;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 57
    :cond_4
    nop

    instance-of v1, v0, Lorg/antlr/v4/runtime/tree/RuleNode;

    if-eqz v1, :cond_5

    .line 58
    check-cast v0, Lorg/antlr/v4/runtime/tree/RuleNode;

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/tree/IterativeParseTreeWalker;->exitRule(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/RuleNode;)V

    .line 62
    :cond_5
    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p2, 0x0

    goto :goto_0

    .line 69
    :cond_6
    invoke-interface {v4}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTree;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v1

    if-nez v1, :cond_0

    .line 75
    invoke-interface {v4}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 76
    invoke-virtual {v5}, Lorg/antlr/v4/runtime/misc/IntegerStack;->pop()I

    move-result v2

    if-nez v0, :cond_4

    move-object v1, v0

    goto :goto_1

    :cond_7
    return-void
.end method
