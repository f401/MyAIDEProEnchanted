.class public interface abstract Lorg/antlr/v4/runtime/tree/ParseTree;
.super Ljava/lang/Object;
.source "ParseTree.java"

# interfaces
.implements Lorg/antlr/v4/runtime/tree/SyntaxTree;


# virtual methods
.method public abstract accept(Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/antlr/v4/runtime/tree/ParseTreeVisitor<",
            "+TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;
.end method

.method public abstract getParent()Lorg/antlr/v4/runtime/tree/ParseTree;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract setParent(Lorg/antlr/v4/runtime/RuleContext;)V
.end method

.method public abstract toStringTree(Lorg/antlr/v4/runtime/Parser;)Ljava/lang/String;
.end method
