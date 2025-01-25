.class public interface abstract Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;
.super Ljava/lang/Object;
.source "ParseTreeVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract visitChildren(Lorg/antlr/v4/runtime/tree/RuleNode;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/RuleNode;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract visitErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ErrorNode;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract visitTerminal(Lorg/antlr/v4/runtime/tree/TerminalNode;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/TerminalNode;",
            ")TT;"
        }
    .end annotation
.end method
