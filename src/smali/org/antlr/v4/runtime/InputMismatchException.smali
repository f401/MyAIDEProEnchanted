.class public Lorg/antlr/v4/runtime/InputMismatchException;
.super Lorg/antlr/v4/runtime/RecognitionException;
.source "InputMismatchException.java"


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/Parser;)V
    .registers 4

    .line 13
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    iget-object v1, p1, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-direct {p0, p1, v0, v1}, Lorg/antlr/v4/runtime/RecognitionException;-><init>(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/IntStream;Lorg/antlr/v4/runtime/ParserRuleContext;)V

    .line 14
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getCurrentToken()Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/InputMismatchException;->setOffendingToken(Lorg/antlr/v4/runtime/Token;)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/Parser;ILorg/antlr/v4/runtime/ParserRuleContext;)V
    .registers 5

    .line 18
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lorg/antlr/v4/runtime/RecognitionException;-><init>(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/IntStream;Lorg/antlr/v4/runtime/ParserRuleContext;)V

    .line 19
    invoke-virtual {p0, p2}, Lorg/antlr/v4/runtime/InputMismatchException;->setOffendingState(I)V

    .line 20
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getCurrentToken()Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/InputMismatchException;->setOffendingToken(Lorg/antlr/v4/runtime/Token;)V

    return-void
.end method
