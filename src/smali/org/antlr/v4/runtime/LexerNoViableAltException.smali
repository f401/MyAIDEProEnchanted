.class public Lorg/antlr/v4/runtime/LexerNoViableAltException;
.super Lorg/antlr/v4/runtime/RecognitionException;
.source "LexerNoViableAltException.java"


# instance fields
.field private final deadEndConfigs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

.field private final startIndex:I


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/Lexer;Lorg/antlr/v4/runtime/CharStream;ILorg/antlr/v4/runtime/atn/ATNConfigSet;)V
    .locals 1

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/antlr/v4/runtime/RecognitionException;-><init>(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/IntStream;Lorg/antlr/v4/runtime/ParserRuleContext;)V

    .line 27
    iput p3, p0, Lorg/antlr/v4/runtime/LexerNoViableAltException;->startIndex:I

    .line 28
    iput-object p4, p0, Lorg/antlr/v4/runtime/LexerNoViableAltException;->deadEndConfigs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    return-void
.end method


# virtual methods
.method public getDeadEndConfigs()Lorg/antlr/v4/runtime/atn/ATNConfigSet;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/antlr/v4/runtime/LexerNoViableAltException;->deadEndConfigs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    return-object v0
.end method

.method public getInputStream()Lorg/antlr/v4/runtime/CharStream;
    .locals 1

    .line 42
    invoke-super {p0}, Lorg/antlr/v4/runtime/RecognitionException;->getInputStream()Lorg/antlr/v4/runtime/IntStream;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/CharStream;

    return-object v0
.end method

.method public bridge synthetic getInputStream()Lorg/antlr/v4/runtime/IntStream;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/LexerNoViableAltException;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    return-object v0
.end method

.method public getStartIndex()I
    .locals 1

    .line 32
    iget v0, p0, Lorg/antlr/v4/runtime/LexerNoViableAltException;->startIndex:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    .line 48
    iget v0, p0, Lorg/antlr/v4/runtime/LexerNoViableAltException;->startIndex:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/LexerNoViableAltException;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v1

    invoke-interface {v1}, Lorg/antlr/v4/runtime/CharStream;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/LexerNoViableAltException;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    iget v1, p0, Lorg/antlr/v4/runtime/LexerNoViableAltException;->startIndex:I

    invoke-static {v1, v1}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/CharStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0, v5}, Lorg/antlr/v4/runtime/misc/Utils;->escapeWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%s(\'%s\')"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "LexerNoViableAltException"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
