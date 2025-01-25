.class public Lorg/antlr/v4/runtime/LexerNoViableAltException;
.super Lorg/antlr/v4/runtime/RecognitionException;
.source "LexerNoViableAltException.java"


# instance fields
.field private final deadEndConfigs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

.field private final startIndex:I


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/Lexer;Lorg/antlr/v4/runtime/CharStream;ILorg/antlr/v4/runtime/atn/ATNConfigSet;)V
    .registers 6

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
    .registers 2

    .line 37
    iget-object v0, p0, Lorg/antlr/v4/runtime/LexerNoViableAltException;->deadEndConfigs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    return-object v0
.end method

.method public getInputStream()Lorg/antlr/v4/runtime/CharStream;
    .registers 2

    .line 42
    invoke-super {p0}, Lorg/antlr/v4/runtime/RecognitionException;->getInputStream()Lorg/antlr/v4/runtime/IntStream;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/CharStream;

    return-object v0
.end method

.method public bridge synthetic getInputStream()Lorg/antlr/v4/runtime/IntStream;
    .registers 2

    .line 15
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/LexerNoViableAltException;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    return-object v0
.end method

.method public getStartIndex()I
    .registers 2

    .line 32
    iget v0, p0, Lorg/antlr/v4/runtime/LexerNoViableAltException;->startIndex:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 48
    iget v0, p0, Lorg/antlr/v4/runtime/LexerNoViableAltException;->startIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_22

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/LexerNoViableAltException;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v2

    invoke-interface {v2}, Lorg/antlr/v4/runtime/CharStream;->size()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 49
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/LexerNoViableAltException;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    iget v2, p0, Lorg/antlr/v4/runtime/LexerNoViableAltException;->startIndex:I

    invoke-static {v2, v2}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/antlr/v4/runtime/CharStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/Utils;->escapeWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 53
    :cond_22
    const-string v0, ""

    :goto_24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "LexerNoViableAltException"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v0, "%s(\'%s\')"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
