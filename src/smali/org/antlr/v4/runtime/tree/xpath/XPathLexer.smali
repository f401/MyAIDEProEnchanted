.class public Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;
.super Lorg/antlr/v4/runtime/Lexer;
.source "XPathLexer.java"


# static fields
.field public static final ANYWHERE:I = 0x3

.field public static final BANG:I = 0x6

.field public static final ID:I = 0x7

.field public static final ROOT:I = 0x4

.field public static final RULE_REF:I = 0x2

.field public static final STRING:I = 0x8

.field public static final TOKEN_REF:I = 0x1

.field public static final VOCABULARY:Lorg/antlr/v4/runtime/Vocabulary;

.field public static final WILDCARD:I = 0x5

.field private static final _LITERAL_NAMES:[Ljava/lang/String;

.field private static final _SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static modeNames:[Ljava/lang/String;

.field public static final ruleNames:[Ljava/lang/String;

.field public static final tokenNames:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected charPositionInLine:I

.field protected line:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 23
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DEFAULT_MODE"

    aput-object v2, v1, v0

    sput-object v1, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->modeNames:[Ljava/lang/String;

    .line 27
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ANYWHERE"

    aput-object v2, v1, v0

    const-string v2, "ROOT"

    aput-object v2, v1, v5

    const-string v2, "WILDCARD"

    aput-object v2, v1, v6

    const-string v2, "BANG"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "ID"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "NameChar"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "NameStartChar"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "STRING"

    aput-object v3, v1, v2

    sput-object v1, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->ruleNames:[Ljava/lang/String;

    .line 32
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v0

    aput-object v4, v1, v5

    aput-object v4, v1, v6

    const-string v2, "\'//\'"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\'/\'"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\'*\'"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\'!\'"

    aput-object v3, v1, v2

    sput-object v1, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_LITERAL_NAMES:[Ljava/lang/String;

    .line 35
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    aput-object v4, v2, v0

    const-string v3, "TOKEN_REF"

    aput-object v3, v2, v5

    const-string v3, "RULE_REF"

    aput-object v3, v2, v6

    const-string v3, "ANYWHERE"

    aput-object v3, v2, v7

    const/4 v3, 0x4

    const-string v4, "ROOT"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "WILDCARD"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "BANG"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "ID"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "STRING"

    aput-object v4, v2, v3

    sput-object v2, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 39
    new-instance v3, Lorg/antlr/v4/runtime/VocabularyImpl;

    invoke-direct {v3, v1, v2}, Lorg/antlr/v4/runtime/VocabularyImpl;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v3, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->VOCABULARY:Lorg/antlr/v4/runtime/Vocabulary;

    .line 47
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->tokenNames:[Ljava/lang/String;

    .line 48
    :goto_0
    sget-object v1, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->tokenNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 49
    sget-object v2, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->VOCABULARY:Lorg/antlr/v4/runtime/Vocabulary;

    invoke-interface {v2, v0}, Lorg/antlr/v4/runtime/Vocabulary;->getLiteralName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    if-nez v3, :cond_0

    .line 51
    invoke-interface {v2, v0}, Lorg/antlr/v4/runtime/Vocabulary;->getSymbolicName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 54
    :cond_0
    aget-object v2, v1, v0

    if-nez v2, :cond_1

    .line 55
    const-string v2, "<INVALID>"

    aput-object v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/CharStream;)V
    .locals 1

    .line 89
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/Lexer;-><init>(Lorg/antlr/v4/runtime/CharStream;)V

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->line:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->charPositionInLine:I

    return-void
.end method


# virtual methods
.method public consume()V
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/CharStream;->LA(I)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 143
    iget v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->line:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->line:I

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->charPositionInLine:I

    .line 149
    :goto_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/CharStream;->consume()V

    return-void

    .line 147
    :cond_0
    iget v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->charPositionInLine:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->charPositionInLine:I

    goto :goto_0
.end method

.method public getATN()Lorg/antlr/v4/runtime/atn/ATN;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharPositionInLine()I
    .locals 1

    .line 154
    iget v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->charPositionInLine:I

    return v0
.end method

.method public getGrammarFileName()Ljava/lang/String;
    .locals 1

    .line 61
    const-string v0, "XPathLexer.g4"

    return-object v0
.end method

.method public getModeNames()[Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->modeNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getRuleNames()[Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->ruleNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getTokenNames()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    sget-object v0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->tokenNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;
    .locals 1

    .line 77
    sget-object v0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->VOCABULARY:Lorg/antlr/v4/runtime/Vocabulary;

    return-object v0
.end method

.method public isNameChar(I)Z
    .locals 1

    .line 176
    invoke-static {p1}, Ljava/lang/Character;->isUnicodeIdentifierPart(I)Z

    move-result v0

    return v0
.end method

.method public isNameStartChar(I)Z
    .locals 1

    .line 178
    invoke-static {p1}, Ljava/lang/Character;->isUnicodeIdentifierStart(I)Z

    move-result v0

    return v0
.end method

.method public matchID()Ljava/lang/String;
    .locals 3

    .line 158
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v0

    .line 159
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->consume()V

    .line 160
    :goto_0
    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/CharStream;->LA(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->isNameChar(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->consume()V

    goto :goto_0

    .line 163
    :cond_0
    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    iget-object v2, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v2}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/antlr/v4/runtime/CharStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public matchString()Ljava/lang/String;
    .locals 3

    .line 167
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v0

    .line 168
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->consume()V

    .line 169
    :goto_0
    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/CharStream;->LA(I)I

    move-result v1

    const/16 v2, 0x27

    if-eq v1, v2, :cond_0

    .line 170
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->consume()V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->consume()V

    .line 173
    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    iget-object v2, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v2}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/antlr/v4/runtime/CharStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Lorg/antlr/v4/runtime/Token;
    .locals 7

    const/16 v6, 0x2f

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 94
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_tokenStartCharIndex:I

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_8

    .line 97
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v0, v4}, Lorg/antlr/v4/runtime/CharStream;->LA(I)I

    move-result v0

    if-eq v0, v5, :cond_7

    const/16 v2, 0x21

    if-eq v0, v2, :cond_6

    const/16 v2, 0x27

    if-eq v0, v2, :cond_5

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_4

    if-eq v0, v6, :cond_2

    .line 123
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v0, v4}, Lorg/antlr/v4/runtime/CharStream;->LA(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->isNameStartChar(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->matchID()Ljava/lang/String;

    move-result-object v2

    .line 125
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/antlr/v4/runtime/CommonToken;

    invoke-direct {v0, v4, v2}, Lorg/antlr/v4/runtime/CommonToken;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_0
    new-instance v0, Lorg/antlr/v4/runtime/CommonToken;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v2}, Lorg/antlr/v4/runtime/CommonToken;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_1
    new-instance v0, Lorg/antlr/v4/runtime/LexerNoViableAltException;

    iget-object v2, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    iget v3, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_tokenStartCharIndex:I

    invoke-direct {v0, p0, v2, v3, v1}, Lorg/antlr/v4/runtime/LexerNoViableAltException;-><init>(Lorg/antlr/v4/runtime/Lexer;Lorg/antlr/v4/runtime/CharStream;ILorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    throw v0

    .line 99
    :cond_2
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->consume()V

    .line 100
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v0, v4}, Lorg/antlr/v4/runtime/CharStream;->LA(I)I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 101
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->consume()V

    .line 102
    new-instance v0, Lorg/antlr/v4/runtime/CommonToken;

    const/4 v2, 0x3

    const-string v3, "//"

    invoke-direct {v0, v2, v3}, Lorg/antlr/v4/runtime/CommonToken;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_3
    new-instance v0, Lorg/antlr/v4/runtime/CommonToken;

    const/4 v2, 0x4

    const-string v3, "/"

    invoke-direct {v0, v2, v3}, Lorg/antlr/v4/runtime/CommonToken;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->consume()V

    .line 110
    new-instance v0, Lorg/antlr/v4/runtime/CommonToken;

    const/4 v2, 0x5

    const-string v3, "*"

    invoke-direct {v0, v2, v3}, Lorg/antlr/v4/runtime/CommonToken;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_5
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->matchString()Ljava/lang/String;

    move-result-object v2

    .line 118
    new-instance v0, Lorg/antlr/v4/runtime/CommonToken;

    const/16 v3, 0x8

    invoke-direct {v0, v3, v2}, Lorg/antlr/v4/runtime/CommonToken;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_6
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->consume()V

    .line 114
    new-instance v0, Lorg/antlr/v4/runtime/CommonToken;

    const/4 v2, 0x6

    const-string v3, "!"

    invoke-direct {v0, v2, v3}, Lorg/antlr/v4/runtime/CommonToken;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :cond_7
    new-instance v0, Lorg/antlr/v4/runtime/CommonToken;

    const-string v1, "<EOF>"

    invoke-direct {v0, v5, v1}, Lorg/antlr/v4/runtime/CommonToken;-><init>(ILjava/lang/String;)V

    .line 136
    :goto_1
    return-object v0

    .line 134
    :cond_8
    iget v1, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_tokenStartCharIndex:I

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/CommonToken;->setStartIndex(I)V

    .line 135
    iget v1, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_tokenStartCharIndex:I

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/CommonToken;->setCharPositionInLine(I)V

    .line 136
    iget v1, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->line:I

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/CommonToken;->setLine(I)V

    goto :goto_1
.end method
