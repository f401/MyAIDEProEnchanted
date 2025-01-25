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
    .registers 18

    .line 23
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "DEFAULT_MODE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->modeNames:[Ljava/lang/String;

    .line 27
    const/16 v1, 0x8

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "ANYWHERE"

    aput-object v4, v2, v3

    const-string v5, "ROOT"

    aput-object v5, v2, v0

    const/4 v6, 0x2

    const-string v7, "WILDCARD"

    aput-object v7, v2, v6

    const/4 v8, 0x3

    const-string v9, "BANG"

    aput-object v9, v2, v8

    const/4 v10, 0x4

    const-string v11, "ID"

    aput-object v11, v2, v10

    const-string v12, "NameChar"

    const/4 v13, 0x5

    aput-object v12, v2, v13

    const-string v12, "NameStartChar"

    const/4 v14, 0x6

    aput-object v12, v2, v14

    const/4 v12, 0x7

    const-string v15, "STRING"

    aput-object v15, v2, v12

    sput-object v2, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->ruleNames:[Ljava/lang/String;

    .line 32
    new-array v2, v12, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v16, v2, v3

    aput-object v16, v2, v0

    aput-object v16, v2, v6

    const-string v17, "\'//\'"

    aput-object v17, v2, v8

    const-string v17, "\'/\'"

    aput-object v17, v2, v10

    const-string v17, "\'*\'"

    aput-object v17, v2, v13

    const-string v17, "\'!\'"

    aput-object v17, v2, v14

    sput-object v2, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_LITERAL_NAMES:[Ljava/lang/String;

    .line 35
    const/16 v1, 0x9

    new-array v12, v1, [Ljava/lang/String;

    aput-object v16, v12, v3

    const-string v16, "TOKEN_REF"

    aput-object v16, v12, v0

    const-string v0, "RULE_REF"

    aput-object v0, v12, v6

    aput-object v4, v12, v8

    aput-object v5, v12, v10

    aput-object v7, v12, v13

    aput-object v9, v12, v14

    const/4 v0, 0x7

    aput-object v11, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    sput-object v12, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 39
    new-instance v0, Lorg/antlr/v4/runtime/VocabularyImpl;

    invoke-direct {v0, v2, v12}, Lorg/antlr/v4/runtime/VocabularyImpl;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->VOCABULARY:Lorg/antlr/v4/runtime/Vocabulary;

    .line 47
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->tokenNames:[Ljava/lang/String;

    .line 48
    :goto_7c
    sget-object v0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->tokenNames:[Ljava/lang/String;

    array-length v1, v0

    if-ge v3, v1, :cond_9c

    .line 49
    sget-object v1, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->VOCABULARY:Lorg/antlr/v4/runtime/Vocabulary;

    invoke-interface {v1, v3}, Lorg/antlr/v4/runtime/Vocabulary;->getLiteralName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    if-nez v2, :cond_91

    .line 51
    invoke-interface {v1, v3}, Lorg/antlr/v4/runtime/Vocabulary;->getSymbolicName(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 54
    :cond_91
    aget-object v1, v0, v3

    if-nez v1, :cond_99

    .line 55
    const-string v1, "<INVALID>"

    aput-object v1, v0, v3

    :cond_99
    add-int/lit8 v3, v3, 0x1

    goto :goto_7c

    :cond_9c
    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/CharStream;)V
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/Lexer;-><init>(Lorg/antlr/v4/runtime/CharStream;)V

    .line 85
    const/4 p1, 0x1

    iput p1, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->line:I

    .line 86
    const/4 p1, 0x0

    iput p1, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->charPositionInLine:I

    return-void
.end method


# virtual methods
.method public consume()V
    .registers 4

    .line 141
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/CharStream;->LA(I)I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_14

    .line 143
    iget v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->line:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->line:I

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->charPositionInLine:I

    goto :goto_19

    .line 147
    :cond_14
    iget v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->charPositionInLine:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->charPositionInLine:I

    .line 149
    :goto_19
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/CharStream;->consume()V

    return-void
.end method

.method public getATN()Lorg/antlr/v4/runtime/atn/ATN;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharPositionInLine()I
    .registers 2

    .line 154
    iget v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->charPositionInLine:I

    return v0
.end method

.method public getGrammarFileName()Ljava/lang/String;
    .registers 2

    .line 61
    const-string v0, "XPathLexer.g4"

    return-object v0
.end method

.method public getModeNames()[Ljava/lang/String;
    .registers 2

    .line 67
    sget-object v0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->modeNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getRuleNames()[Ljava/lang/String;
    .registers 2

    .line 64
    sget-object v0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->ruleNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getTokenNames()[Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    sget-object v0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->tokenNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;
    .registers 2

    .line 77
    sget-object v0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->VOCABULARY:Lorg/antlr/v4/runtime/Vocabulary;

    return-object v0
.end method

.method public isNameChar(I)Z
    .registers 2

    .line 176
    invoke-static {p1}, Ljava/lang/Character;->isUnicodeIdentifierPart(I)Z

    move-result p1

    return p1
.end method

.method public isNameStartChar(I)Z
    .registers 2

    .line 178
    invoke-static {p1}, Ljava/lang/Character;->isUnicodeIdentifierStart(I)Z

    move-result p1

    return p1
.end method

.method public matchID()Ljava/lang/String;
    .registers 5

    .line 158
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v0

    .line 159
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->consume()V

    .line 160
    :goto_9
    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/CharStream;->LA(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->isNameChar(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 161
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->consume()V

    goto :goto_9

    .line 163
    :cond_1a
    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    iget-object v3, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v3}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/antlr/v4/runtime/CharStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public matchString()Ljava/lang/String;
    .registers 5

    .line 167
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v0

    .line 168
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->consume()V

    .line 169
    :goto_9
    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/CharStream;->LA(I)I

    move-result v1

    const/16 v3, 0x27

    if-eq v1, v3, :cond_18

    .line 170
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->consume()V

    goto :goto_9

    .line 172
    :cond_18
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->consume()V

    .line 173
    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    iget-object v3, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v3}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/antlr/v4/runtime/CharStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Lorg/antlr/v4/runtime/Token;
    .registers 5

    .line 94
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_tokenStartCharIndex:I

    const/4 v0, 0x0

    move-object v1, v0

    :goto_a
    if-nez v1, :cond_a9

    .line 97
    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/CharStream;->LA(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_a1

    const/16 v3, 0x21

    if-eq v1, v3, :cond_94

    const/16 v3, 0x27

    if-eq v1, v3, :cond_86

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_7a

    const/16 v3, 0x2f

    if-eq v1, v3, :cond_5a

    .line 123
    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/CharStream;->LA(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->isNameStartChar(I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 124
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->matchID()Ljava/lang/String;

    move-result-object v1

    .line 125
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_48

    new-instance v3, Lorg/antlr/v4/runtime/CommonToken;

    invoke-direct {v3, v2, v1}, Lorg/antlr/v4/runtime/CommonToken;-><init>(ILjava/lang/String;)V

    move-object v1, v3

    goto :goto_4f

    .line 126
    :cond_48
    new-instance v2, Lorg/antlr/v4/runtime/CommonToken;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1}, Lorg/antlr/v4/runtime/CommonToken;-><init>(ILjava/lang/String;)V

    move-object v1, v2

    :goto_4f
    goto :goto_a

    .line 129
    :cond_50
    new-instance v1, Lorg/antlr/v4/runtime/LexerNoViableAltException;

    iget-object v2, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    iget v3, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_tokenStartCharIndex:I

    invoke-direct {v1, p0, v2, v3, v0}, Lorg/antlr/v4/runtime/LexerNoViableAltException;-><init>(Lorg/antlr/v4/runtime/Lexer;Lorg/antlr/v4/runtime/CharStream;ILorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    throw v1

    .line 99
    :cond_5a
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->consume()V

    .line 100
    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/CharStream;->LA(I)I

    move-result v1

    if-ne v1, v3, :cond_71

    .line 101
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->consume()V

    .line 102
    new-instance v1, Lorg/antlr/v4/runtime/CommonToken;

    const/4 v2, 0x3

    const-string v3, "//"

    invoke-direct {v1, v2, v3}, Lorg/antlr/v4/runtime/CommonToken;-><init>(ILjava/lang/String;)V

    goto :goto_a

    .line 105
    :cond_71
    new-instance v1, Lorg/antlr/v4/runtime/CommonToken;

    const/4 v2, 0x4

    const-string v3, "/"

    invoke-direct {v1, v2, v3}, Lorg/antlr/v4/runtime/CommonToken;-><init>(ILjava/lang/String;)V

    goto :goto_a

    .line 109
    :cond_7a
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->consume()V

    .line 110
    new-instance v1, Lorg/antlr/v4/runtime/CommonToken;

    const/4 v2, 0x5

    const-string v3, "*"

    invoke-direct {v1, v2, v3}, Lorg/antlr/v4/runtime/CommonToken;-><init>(ILjava/lang/String;)V

    goto :goto_a

    .line 117
    :cond_86
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->matchString()Ljava/lang/String;

    move-result-object v1

    .line 118
    new-instance v2, Lorg/antlr/v4/runtime/CommonToken;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lorg/antlr/v4/runtime/CommonToken;-><init>(ILjava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_a

    .line 113
    :cond_94
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->consume()V

    .line 114
    new-instance v1, Lorg/antlr/v4/runtime/CommonToken;

    const/4 v2, 0x6

    const-string v3, "!"

    invoke-direct {v1, v2, v3}, Lorg/antlr/v4/runtime/CommonToken;-><init>(ILjava/lang/String;)V

    goto/16 :goto_a

    .line 121
    :cond_a1
    new-instance v0, Lorg/antlr/v4/runtime/CommonToken;

    const-string v1, "<EOF>"

    invoke-direct {v0, v3, v1}, Lorg/antlr/v4/runtime/CommonToken;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 134
    :cond_a9
    iget v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_tokenStartCharIndex:I

    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/CommonToken;->setStartIndex(I)V

    .line 135
    iget v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->_tokenStartCharIndex:I

    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/CommonToken;->setCharPositionInLine(I)V

    .line 136
    iget v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->line:I

    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/CommonToken;->setLine(I)V

    return-object v1
.end method
