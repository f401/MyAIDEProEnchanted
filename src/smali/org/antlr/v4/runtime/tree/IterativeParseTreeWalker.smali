.class public Lorg/antlr/v4/runtime/tree/IterativeParseTreeWalker;
.super Lorg/antlr/v4/runtime/tree/ParseTreeWalker;
.source "IterativeParseTreeWalker.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lorg/antlr/v4/runtime/tree/ParseTreeWalker;-><init>()V

    return-void
.end method


# virtual methods
.method public walk(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/ParseTree;)V
    .registers 8

    .line 24
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 25
    new-instance v1, Lorg/antlr/v4/runtime/misc/IntegerStack;

    invoke-direct {v1}, Lorg/antlr/v4/runtime/misc/IntegerStack;-><init>()V

    :goto_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-eqz p2, :cond_68

    .line 33
    instance-of v4, p2, Lorg/antlr/v4/runtime/tree/ErrorNode;

    if-eqz v4, :cond_19

    .line 34
    move-object v4, p2

    check-cast v4, Lorg/antlr/v4/runtime/tree/ErrorNode;

    invoke-interface {p1, v4}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->visitErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)V

    goto :goto_2a

    .line 36
    :cond_19
    instance-of v4, p2, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz v4, :cond_24

    .line 37
    move-object v4, p2

    check-cast v4, Lorg/antlr/v4/runtime/tree/TerminalNode;

    invoke-interface {p1, v4}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->visitTerminal(Lorg/antlr/v4/runtime/tree/TerminalNode;)V

    goto :goto_2a

    .line 40
    :cond_24
    move-object v4, p2

    check-cast v4, Lorg/antlr/v4/runtime/tree/RuleNode;

    .line 41
    invoke-virtual {p0, p1, v4}, Lorg/antlr/v4/runtime/tree/IterativeParseTreeWalker;->enterRule(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/RuleNode;)V

    .line 45
    :goto_2a
    invoke-interface {p2}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3b

    .line 46
    invoke-interface {v0, p2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {v1, v3}, Lorg/antlr/v4/runtime/misc/IntegerStack;->push(I)V

    .line 49
    invoke-interface {p2, v2}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p2

    goto :goto_a

    .line 57
    :cond_3b
    instance-of v4, p2, Lorg/antlr/v4/runtime/tree/RuleNode;

    if-eqz v4, :cond_44

    .line 58
    check-cast p2, Lorg/antlr/v4/runtime/tree/RuleNode;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/tree/IterativeParseTreeWalker;->exitRule(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/RuleNode;)V

    .line 62
    :cond_44
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4c

    const/4 p2, 0x0

    goto :goto_a

    .line 69
    :cond_4c
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/antlr/v4/runtime/tree/ParseTree;

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p2, v3}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p2

    if-eqz p2, :cond_5b

    goto :goto_c

    .line 75
    :cond_5b
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 76
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/misc/IntegerStack;->pop()I

    move-result v3

    if-nez p2, :cond_3b

    goto :goto_c

    :cond_68
    return-void
.end method
