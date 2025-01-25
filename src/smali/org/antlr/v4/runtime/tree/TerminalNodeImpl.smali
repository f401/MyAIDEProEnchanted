.class public Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;
.super Ljava/lang/Object;
.source "TerminalNodeImpl.java"

# interfaces
.implements Lorg/antlr/v4/runtime/tree/TerminalNode;


# instance fields
.field public parent:Lorg/antlr/v4/runtime/tree/ParseTree;

.field public symbol:Lorg/antlr/v4/runtime/Token;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/Token;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;->symbol:Lorg/antlr/v4/runtime/Token;

    return-void
.end method


# virtual methods
.method public accept(Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/antlr/v4/runtime/tree/ParseTreeVisitor<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 50
    invoke-interface {p1, p0}, Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;->visitTerminal(Lorg/antlr/v4/runtime/tree/TerminalNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChild(I)Lorg/antlr/v4/runtime/tree/Tree;
    .registers 2

    .line 14
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getParent()Lorg/antlr/v4/runtime/tree/ParseTree;
    .registers 2

    .line 27
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;->parent:Lorg/antlr/v4/runtime/tree/ParseTree;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/antlr/v4/runtime/tree/Tree;
    .registers 2

    .line 14
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;->getParent()Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPayload()Ljava/lang/Object;
    .registers 2

    .line 14
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;->getPayload()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lorg/antlr/v4/runtime/Token;
    .registers 2

    .line 35
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;->symbol:Lorg/antlr/v4/runtime/Token;

    return-object v0
.end method

.method public getSourceInterval()Lorg/antlr/v4/runtime/misc/Interval;
    .registers 3

    .line 39
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;->symbol:Lorg/antlr/v4/runtime/Token;

    if-nez v0, :cond_7

    sget-object v0, Lorg/antlr/v4/runtime/misc/Interval;->INVALID:Lorg/antlr/v4/runtime/misc/Interval;

    return-object v0

    .line 41
    :cond_7
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v0

    .line 42
    new-instance v1, Lorg/antlr/v4/runtime/misc/Interval;

    invoke-direct {v1, v0, v0}, Lorg/antlr/v4/runtime/misc/Interval;-><init>(II)V

    return-object v1
.end method

.method public getSymbol()Lorg/antlr/v4/runtime/Token;
    .registers 2

    .line 24
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;->symbol:Lorg/antlr/v4/runtime/Token;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;->symbol:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setParent(Lorg/antlr/v4/runtime/RuleContext;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;->parent:Lorg/antlr/v4/runtime/tree/ParseTree;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 63
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;->symbol:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    const-string v0, "<EOF>"

    return-object v0

    .line 64
    :cond_c
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;->symbol:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringTree()Ljava/lang/String;
    .registers 2

    .line 69
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringTree(Lorg/antlr/v4/runtime/Parser;)Ljava/lang/String;
    .registers 2

    .line 58
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
