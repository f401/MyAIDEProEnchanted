.class public Lorg/antlr/v4/runtime/NoViableAltException;
.super Lorg/antlr/v4/runtime/RecognitionException;
.source "NoViableAltException.java"


# instance fields
.field private final deadEndConfigs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

.field private final startToken:Lorg/antlr/v4/runtime/Token;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/Parser;)V
    .registers 9

    .line 29
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInputStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v2

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getCurrentToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v3

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getCurrentToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p1, Lorg/antlr/v4/runtime/Parser;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/antlr/v4/runtime/NoViableAltException;-><init>(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/TokenStream;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/ParserRuleContext;)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/TokenStream;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/ParserRuleContext;)V
    .registers 7

    .line 44
    invoke-direct {p0, p1, p2, p6}, Lorg/antlr/v4/runtime/RecognitionException;-><init>(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/IntStream;Lorg/antlr/v4/runtime/ParserRuleContext;)V

    .line 45
    iput-object p5, p0, Lorg/antlr/v4/runtime/NoViableAltException;->deadEndConfigs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    .line 46
    iput-object p3, p0, Lorg/antlr/v4/runtime/NoViableAltException;->startToken:Lorg/antlr/v4/runtime/Token;

    .line 47
    invoke-virtual {p0, p4}, Lorg/antlr/v4/runtime/NoViableAltException;->setOffendingToken(Lorg/antlr/v4/runtime/Token;)V

    return-void
.end method


# virtual methods
.method public getDeadEndConfigs()Lorg/antlr/v4/runtime/atn/ATNConfigSet;
    .registers 2

    .line 57
    iget-object v0, p0, Lorg/antlr/v4/runtime/NoViableAltException;->deadEndConfigs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    return-object v0
.end method

.method public getStartToken()Lorg/antlr/v4/runtime/Token;
    .registers 2

    .line 52
    iget-object v0, p0, Lorg/antlr/v4/runtime/NoViableAltException;->startToken:Lorg/antlr/v4/runtime/Token;

    return-object v0
.end method
