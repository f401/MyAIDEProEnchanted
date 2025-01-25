.class public Lorg/antlr/v4/runtime/Parser$TraceListener;
.super Ljava/lang/Object;
.source "Parser.java"

# interfaces
.implements Lorg/antlr/v4/runtime/tree/ParseTreeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TraceListener"
.end annotation


# instance fields
.field final this$0:Lorg/antlr/v4/runtime/Parser;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/Parser;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lorg/antlr/v4/runtime/Parser$TraceListener;->this$0:Lorg/antlr/v4/runtime/Parser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterEveryRule(Lorg/antlr/v4/runtime/ParserRuleContext;)V
    .registers 5

    .line 41
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enter   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/antlr/v4/runtime/Parser$TraceListener;->this$0:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/Parser;->getRuleNames()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/ParserRuleContext;->getRuleIndex()I

    move-result p1

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", LT(1)="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/antlr/v4/runtime/Parser$TraceListener;->this$0:Lorg/antlr/v4/runtime/Parser;

    iget-object p1, p1, Lorg/antlr/v4/runtime/Parser;->_input:Lorg/antlr/v4/runtime/TokenStream;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public exitEveryRule(Lorg/antlr/v4/runtime/ParserRuleContext;)V
    .registers 5

    .line 57
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exit    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/antlr/v4/runtime/Parser$TraceListener;->this$0:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/Parser;->getRuleNames()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/ParserRuleContext;->getRuleIndex()I

    move-result p1

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", LT(1)="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/antlr/v4/runtime/Parser$TraceListener;->this$0:Lorg/antlr/v4/runtime/Parser;

    iget-object p1, p1, Lorg/antlr/v4/runtime/Parser;->_input:Lorg/antlr/v4/runtime/TokenStream;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public visitErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)V
    .registers 2

    return-void
.end method

.method public visitTerminal(Lorg/antlr/v4/runtime/tree/TerminalNode;)V
    .registers 5

    .line 47
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "consume "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " rule "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/antlr/v4/runtime/Parser$TraceListener;->this$0:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getRuleNames()[Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/antlr/v4/runtime/Parser$TraceListener;->this$0:Lorg/antlr/v4/runtime/Parser;

    iget-object v2, v2, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/ParserRuleContext;->getRuleIndex()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
