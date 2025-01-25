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
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
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

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p2}, Lorg/antlr/v4/runtime/VocabularyImpl;->fromTokenNames([Ljava/lang/String;)Lorg/antlr/v4/runtime/Vocabulary;

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
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/Vocabulary;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/antlr/v4/runtime/atn/ATN;",
            "Lorg/antlr/v4/runtime/CharStream;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p7}, Lorg/antlr/v4/runtime/Lexer;-><init>(Lorg/antlr/v4/runtime/CharStream;)V

    .line 32
    new-instance p7, Lorg/antlr/v4/runtime/atn/PredictionContextCache;

    invoke-direct {p7}, Lorg/antlr/v4/runtime/atn/PredictionContextCache;-><init>()V

    iput-object p7, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->_sharedContextCache:Lorg/antlr/v4/runtime/atn/PredictionContextCache;

    .line 48
    iget-object p7, p6, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNType;->LEXER:Lorg/antlr/v4/runtime/atn/ATNType;

    if-ne p7, v0, :cond_7d

    .line 52
    iput-object p1, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->grammarFileName:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    .line 54
    iget p1, p6, Lorg/antlr/v4/runtime/atn/ATN;->maxTokenType:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->tokenNames:[Ljava/lang/String;

    const/4 p1, 0x0

    const/4 p7, 0x0

    .line 55
    :goto_1c
    iget-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->tokenNames:[Ljava/lang/String;

    array-length v1, v0

    if-ge p7, v1, :cond_2a

    .line 56
    invoke-interface {p2, p7}, Lorg/antlr/v4/runtime/Vocabulary;->getDisplayName(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p7

    add-int/lit8 p7, p7, 0x1

    goto :goto_1c

    .line 59
    :cond_2a
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p7

    new-array p7, p7, [Ljava/lang/String;

    invoke-interface {p3, p7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    iput-object p3, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->ruleNames:[Ljava/lang/String;

    .line 60
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p4, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    iput-object p3, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->channelNames:[Ljava/lang/String;

    .line 61
    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p5, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    iput-object p3, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->modeNames:[Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->vocabulary:Lorg/antlr/v4/runtime/Vocabulary;

    .line 64
    invoke-virtual {p6}, Lorg/antlr/v4/runtime/atn/ATN;->getNumberOfDecisions()I

    move-result p2

    new-array p2, p2, [Lorg/antlr/v4/runtime/dfa/DFA;

    iput-object p2, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->_decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    .line 65
    :goto_5e
    iget-object p2, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->_decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    array-length p3, p2

    if-ge p1, p3, :cond_71

    .line 66
    new-instance p3, Lorg/antlr/v4/runtime/dfa/DFA;

    invoke-virtual {p6, p1}, Lorg/antlr/v4/runtime/atn/ATN;->getDecisionState(I)Lorg/antlr/v4/runtime/atn/DecisionState;

    move-result-object p4

    invoke-direct {p3, p4, p1}, Lorg/antlr/v4/runtime/dfa/DFA;-><init>(Lorg/antlr/v4/runtime/atn/DecisionState;I)V

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_5e

    .line 68
    :cond_71
    new-instance p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;

    iget-object p2, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->_decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    iget-object p3, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->_sharedContextCache:Lorg/antlr/v4/runtime/atn/PredictionContextCache;

    invoke-direct {p1, p0, p6, p2, p3}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;-><init>(Lorg/antlr/v4/runtime/Lexer;Lorg/antlr/v4/runtime/atn/ATN;[Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V

    iput-object p1, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->_interp:Lorg/antlr/v4/runtime/atn/ATNSimulator;

    return-void

    .line 49
    :cond_7d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The ATN must be a lexer ATN."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_86

    :goto_85
    throw p1

    :goto_86
    goto :goto_85
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/antlr/v4/runtime/Vocabulary;Ljava/util/Collection;Ljava/util/Collection;Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/CharStream;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/Vocabulary;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
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
    .registers 2

    .line 73
    iget-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    return-object v0
.end method

.method public getChannelNames()[Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->channelNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getGrammarFileName()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->grammarFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getModeNames()[Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->modeNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getRuleNames()[Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->ruleNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getTokenNames()[Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->tokenNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;
    .registers 2

    .line 104
    iget-object v0, p0, Lorg/antlr/v4/runtime/LexerInterpreter;->vocabulary:Lorg/antlr/v4/runtime/Vocabulary;

    if-eqz v0, :cond_5

    return-object v0

    .line 108
    :cond_5
    invoke-super {p0}, Lorg/antlr/v4/runtime/Lexer;->getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v0

    return-object v0
.end method
