.class public Lorg/antlr/v4/runtime/tree/ParseTreeWalker;
.super Ljava/lang/Object;
.source "ParseTreeWalker.java"


# static fields
.field public static final DEFAULT:Lorg/antlr/v4/runtime/tree/ParseTreeWalker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lorg/antlr/v4/runtime/tree/ParseTreeWalker;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/tree/ParseTreeWalker;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/tree/ParseTreeWalker;->DEFAULT:Lorg/antlr/v4/runtime/tree/ParseTreeWalker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected enterRule(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/RuleNode;)V
    .locals 1

    .line 48
    invoke-interface {p2}, Lorg/antlr/v4/runtime/tree/RuleNode;->getRuleContext()Lorg/antlr/v4/runtime/RuleContext;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 49
    invoke-interface {p1, v0}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->enterEveryRule(Lorg/antlr/v4/runtime/ParserRuleContext;)V

    .line 50
    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/ParserRuleContext;->enterRule(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V

    return-void
.end method

.method protected exitRule(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/RuleNode;)V
    .locals 1

    .line 61
    invoke-interface {p2}, Lorg/antlr/v4/runtime/tree/RuleNode;->getRuleContext()Lorg/antlr/v4/runtime/RuleContext;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 62
    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/ParserRuleContext;->exitRule(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V

    .line 63
    invoke-interface {p1, v0}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->exitEveryRule(Lorg/antlr/v4/runtime/ParserRuleContext;)V

    return-void
.end method

.method public walk(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/ParseTree;)V
    .locals 3

    .line 24
    instance-of v0, p2, Lorg/antlr/v4/runtime/tree/ErrorNode;

    if-eqz v0, :cond_0

    .line 25
    check-cast p2, Lorg/antlr/v4/runtime/tree/ErrorNode;

    invoke-interface {p1, p2}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->visitErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)V

    .line 38
    :goto_0
    return-void

    .line 28
    :cond_0
    instance-of v0, p2, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz v0, :cond_1

    .line 29
    check-cast p2, Lorg/antlr/v4/runtime/tree/TerminalNode;

    invoke-interface {p1, p2}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->visitTerminal(Lorg/antlr/v4/runtime/tree/TerminalNode;)V

    goto :goto_0

    .line 32
    :cond_1
    check-cast p2, Lorg/antlr/v4/runtime/tree/RuleNode;

    .line 33
    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/tree/ParseTreeWalker;->enterRule(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/RuleNode;)V

    .line 34
    invoke-interface {p2}, Lorg/antlr/v4/runtime/tree/RuleNode;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 36
    invoke-interface {p2, v0}, Lorg/antlr/v4/runtime/tree/RuleNode;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/antlr/v4/runtime/tree/ParseTreeWalker;->walk(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/ParseTree;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/tree/ParseTreeWalker;->exitRule(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/RuleNode;)V

    goto :goto_0
.end method
