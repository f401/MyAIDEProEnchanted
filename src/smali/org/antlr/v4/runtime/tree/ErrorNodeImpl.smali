.class public Lorg/antlr/v4/runtime/tree/ErrorNodeImpl;
.super Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;
.source "ErrorNodeImpl.java"

# interfaces
.implements Lorg/antlr/v4/runtime/tree/ErrorNode;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/Token;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/tree/TerminalNodeImpl;-><init>(Lorg/antlr/v4/runtime/Token;)V

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

    .line 24
    invoke-interface {p1, p0}, Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;->visitErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
