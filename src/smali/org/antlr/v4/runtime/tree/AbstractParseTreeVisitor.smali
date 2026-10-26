.class public abstract Lorg/antlr/v4/runtime/tree/AbstractParseTreeVisitor;
.super Ljava/lang/Object;
.source "AbstractParseTreeVisitor.java"

# interfaces
.implements Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/antlr/v4/runtime/tree/ParseTreeVisitor",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected aggregateResult(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation

    return-object p2
.end method

.method protected defaultResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected shouldVisitNextChild(Lorg/antlr/v4/runtime/tree/RuleNode;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/RuleNode;",
            "TT;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ")TT;"
        }
    .end annotation

    .line 18
    invoke-interface {p1, p0}, Lorg/antlr/v4/runtime/tree/ParseTree;->accept(Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitChildren(Lorg/antlr/v4/runtime/tree/RuleNode;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/RuleNode;",
            ")TT;"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/AbstractParseTreeVisitor;->defaultResult()Ljava/lang/Object;

    move-result-object v0

    .line 39
    invoke-interface {p1}, Lorg/antlr/v4/runtime/tree/RuleNode;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 41
    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/tree/AbstractParseTreeVisitor;->shouldVisitNextChild(Lorg/antlr/v4/runtime/tree/RuleNode;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 47
    :cond_0
    return-object v0

    .line 45
    :cond_1
    invoke-interface {p1, v1}, Lorg/antlr/v4/runtime/tree/RuleNode;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v3

    .line 46
    invoke-interface {v3, p0}, Lorg/antlr/v4/runtime/tree/ParseTree;->accept(Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;)Ljava/lang/Object;

    move-result-object v3

    .line 47
    invoke-virtual {p0, v0, v3}, Lorg/antlr/v4/runtime/tree/AbstractParseTreeVisitor;->aggregateResult(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public visitErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ErrorNode;",
            ")TT;"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/AbstractParseTreeVisitor;->defaultResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTerminal(Lorg/antlr/v4/runtime/tree/TerminalNode;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/TerminalNode;",
            ")TT;"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/AbstractParseTreeVisitor;->defaultResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
