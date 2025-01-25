.class public Lorg/antlr/v4/runtime/tree/ParseTreeWalker;
.super Ljava/lang/Object;
.source "ParseTreeWalker.java"


# static fields
.field public static final DEFAULT:Lorg/antlr/v4/runtime/tree/ParseTreeWalker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Lorg/antlr/v4/runtime/tree/ParseTreeWalker;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/tree/ParseTreeWalker;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/tree/ParseTreeWalker;->DEFAULT:Lorg/antlr/v4/runtime/tree/ParseTreeWalker;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected enterRule(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/RuleNode;)V
    .registers 3

    .line 48
    invoke-interface {p2}, Lorg/antlr/v4/runtime/tree/RuleNode;->getRuleContext()Lorg/antlr/v4/runtime/RuleContext;

    move-result-object p2

    check-cast p2, Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 49
    invoke-interface {p1, p2}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->enterEveryRule(Lorg/antlr/v4/runtime/ParserRuleContext;)V

    .line 50
    invoke-virtual {p2, p1}, Lorg/antlr/v4/runtime/ParserRuleContext;->enterRule(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V

    return-void
.end method

.method protected exitRule(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/RuleNode;)V
    .registers 3

    .line 61
    invoke-interface {p2}, Lorg/antlr/v4/runtime/tree/RuleNode;->getRuleContext()Lorg/antlr/v4/runtime/RuleContext;

    move-result-object p2

    check-cast p2, Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 62
    invoke-virtual {p2, p1}, Lorg/antlr/v4/runtime/ParserRuleContext;->exitRule(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V

    .line 63
    invoke-interface {p1, p2}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->exitEveryRule(Lorg/antlr/v4/runtime/ParserRuleContext;)V

    return-void
.end method

.method public walk(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/ParseTree;)V
    .registers 6

    .line 24
    instance-of v0, p2, Lorg/antlr/v4/runtime/tree/ErrorNode;

    if-eqz v0, :cond_a

    .line 25
    check-cast p2, Lorg/antlr/v4/runtime/tree/ErrorNode;

    invoke-interface {p1, p2}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->visitErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)V

    return-void

    .line 28
    :cond_a
    instance-of v0, p2, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz v0, :cond_14

    .line 29
    check-cast p2, Lorg/antlr/v4/runtime/tree/TerminalNode;

    invoke-interface {p1, p2}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->visitTerminal(Lorg/antlr/v4/runtime/tree/TerminalNode;)V

    return-void

    .line 32
    :cond_14
    check-cast p2, Lorg/antlr/v4/runtime/tree/RuleNode;

    .line 33
    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/tree/ParseTreeWalker;->enterRule(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/RuleNode;)V

    .line 34
    invoke-interface {p2}, Lorg/antlr/v4/runtime/tree/RuleNode;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_2a

    .line 36
    invoke-interface {p2, v1}, Lorg/antlr/v4/runtime/tree/RuleNode;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/antlr/v4/runtime/tree/ParseTreeWalker;->walk(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/ParseTree;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 38
    :cond_2a
    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/tree/ParseTreeWalker;->exitRule(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/RuleNode;)V

    return-void
.end method
