.class public Lorg/antlr/v4/runtime/LexerInterpreter;
.super Lorg/antlr/v4/runtime/Lexer;
.source "LexerInterpreter.java"


# instance fields
.field protected final _decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

.field protected final _sharedContextCache:Lorg/antlr/v4/runtime/atn/PredictionContextCache;

.field protected final atn:Lorg/antlr/v4/runtime/atn/ATN;

.field protected final channelNames:[Ljava/lang/String;

.field protected final grammarFileName:Ljava/lang/String;

.field protected final modeNames:[Ljava/lang/String;

.field protected final ruleNames:[Ljava/lang/String;

.field protected final tokenNames:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final vocabulary:Lorg/antlr/v4/runtime/Vocabulary;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/CharStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/antlr/v4/runtime/atn/ATN;",
            "Lorg/antlr/v4/runtime/CharStream;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lorg/antlr/v4/runtime/VocabularyImpl;->fromTokenNames([Ljava/lang/String;)Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/antlr/v4/runtime/LexerInterpreter;-><init>(Ljava/lang/String;Lorg/antlr/v4/runtime/Vocabulary;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/CharStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/antlr/v4/runtime/Vocabulary;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/CharStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/Vocabulary;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/antlr/v4/runtime/atn/ATN;",
            "Lorg/antlr/v4/runtime/CharStream;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p7}, Lorg/antlr/v4/runtime/Lexer;-><init>(Lorg/antlr/v4/runtime/CharStream;)V

    .line 32
    new-instance v0, Lorg/antlr/v4/runtime/atn/PredictionContextCache;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/PredictionContextCache;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->_sharedContextCache:Lorg/antlr/v4/runtime/atn/PredictionContextCache;

    .line 48
    iget-object v0, p6, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    sget-object v2, Lorg/antlr/v4/runtime/atn/ATNType;->LEXER:Lorg/antlr/v4/runtime/atn/ATNType;

    if-ne v0, v2, :cond_2

    .line 52
    iput-object p1, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->grammarFileName:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    .line 54
    iget v0, p6, Lorg/antlr/v4/runtime/atn/ATN;->maxTokenType:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->tokenNames:[Ljava/lang/String;

    move v0, v1

    .line 55
    :goto_0
    iget-object v2, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->tokenNames:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 56
    invoke-interface {p2, v0}, Lorg/antlr/v4/runtime/Vocabulary;->getDisplayName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->ruleNames:[Ljava/lang/String;

    .line 60
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->channelNames:[Ljava/lang/String;

    .line 61
    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p5, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->modeNames:[Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->vocabulary:Lorg/antlr/v4/runtime/Vocabulary;

    .line 64
    invoke-virtual {p6}, Lorg/antlr/v4/runtime/atn/ATN;->getNumberOfDecisions()I

    move-result v0

    new-array v0, v0, [Lorg/antlr/v4/runtime/dfa/DFA;

    iput-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->_decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    .line 65
    :goto_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->_decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 66
    new-instance v2, Lorg/antlr/v4/runtime/dfa/DFA;

    invoke-virtual {p6, v1}, Lorg/antlr/v4/runtime/atn/ATN;->getDecisionState(I)Lorg/antlr/v4/runtime/atn/DecisionState;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/antlr/v4/runtime/dfa/DFA;-><init>(Lorg/antlr/v4/runtime/atn/DecisionState;I)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 68
    :cond_1
    new-instance v0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;

    iget-object v1, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->_decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    iget-object v2, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->_sharedContextCache:Lorg/antlr/v4/runtime/atn/PredictionContextCache;

    invoke-direct {v0, p0, p6, v1, v2}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;-><init>(Lorg/antlr/v4/runtime/Lexer;Lorg/antlr/v4/runtime/atn/ATN;[Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V

    iput-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->_interp:Lorg/antlr/v4/runtime/atn/ATNSimulator;

    return-void

    .line 49
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The ATN must be a lexer ATN."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/antlr/v4/runtime/Vocabulary;Ljava/util/Collection;Ljava/util/Collection;Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/CharStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/Vocabulary;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/antlr/v4/runtime/atn/ATN;",
            "Lorg/antlr/v4/runtime/CharStream;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/antlr/v4/runtime/LexerInterpreter;-><init>(Ljava/lang/String;Lorg/antlr/v4/runtime/Vocabulary;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/CharStream;)V

    return-void
.end method


# virtual methods
.method public getATN()Lorg/antlr/v4/runtime/atn/ATN;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    return-object v0
.end method

.method public getChannelNames()[Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->channelNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getGrammarFileName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->grammarFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getModeNames()[Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->modeNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getRuleNames()[Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->ruleNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getTokenNames()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->tokenNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->vocabulary:Lorg/antlr/v4/runtime/Vocabulary;

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/antlr/v4/runtime/Lexer;->getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v0

    goto :goto_0
.end method
