.class public Lorg/antlr/v4/runtime/ParserInterpreter;
.super Lorg/antlr/v4/runtime/Parser;
.source "ParserInterpreter.java"


# instance fields
.field protected final _parentContextStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lorg/antlr/v4/runtime/misc/Pair",
            "<",
            "Lorg/antlr/v4/runtime/ParserRuleContext;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final atn:Lorg/antlr/v4/runtime/atn/ATN;

.field protected final decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

.field protected final grammarFileName:Ljava/lang/String;

.field protected overrideDecision:I

.field protected overrideDecisionAlt:I

.field protected overrideDecisionInputIndex:I

.field protected overrideDecisionReached:Z

.field protected overrideDecisionRoot:Lorg/antlr/v4/runtime/InterpreterRuleContext;

.field protected rootContext:Lorg/antlr/v4/runtime/InterpreterRuleContext;

.field protected final ruleNames:[Ljava/lang/String;

.field protected final sharedContextCache:Lorg/antlr/v4/runtime/atn/PredictionContextCache;

.field protected final tokenNames:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final vocabulary:Lorg/antlr/v4/runtime/Vocabulary;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/TokenStream;)V
    .locals 6
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
            "Lorg/antlr/v4/runtime/atn/ATN;",
            "Lorg/antlr/v4/runtime/TokenStream;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lorg/antlr/v4/runtime/VocabularyImpl;->fromTokenNames([Ljava/lang/String;)Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/antlr/v4/runtime/ParserInterpreter;-><init>(Ljava/lang/String;Lorg/antlr/v4/runtime/Vocabulary;Ljava/util/Collection;Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/TokenStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/antlr/v4/runtime/Vocabulary;Ljava/util/Collection;Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/TokenStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/Vocabulary;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/antlr/v4/runtime/atn/ATN;",
            "Lorg/antlr/v4/runtime/TokenStream;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 101
    invoke-direct {p0, p5}, Lorg/antlr/v4/runtime/Parser;-><init>(Lorg/antlr/v4/runtime/TokenStream;)V

    .line 48
    new-instance v0, Lorg/antlr/v4/runtime/atn/PredictionContextCache;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/PredictionContextCache;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->sharedContextCache:Lorg/antlr/v4/runtime/atn/PredictionContextCache;

    .line 69
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_parentContextStack:Ljava/util/Deque;

    .line 75
    iput v2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecision:I

    .line 76
    iput v2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionInputIndex:I

    .line 77
    iput v2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionAlt:I

    .line 78
    iput-boolean v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionReached:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionRoot:Lorg/antlr/v4/runtime/InterpreterRuleContext;

    .line 102
    iput-object p1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->grammarFileName:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    .line 104
    iget v0, p4, Lorg/antlr/v4/runtime/atn/ATN;->maxTokenType:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->tokenNames:[Ljava/lang/String;

    move v0, v1

    .line 105
    :goto_0
    iget-object v2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->tokenNames:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 106
    invoke-interface {p2, v0}, Lorg/antlr/v4/runtime/Vocabulary;->getDisplayName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->ruleNames:[Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->vocabulary:Lorg/antlr/v4/runtime/Vocabulary;

    .line 113
    invoke-virtual {p4}, Lorg/antlr/v4/runtime/atn/ATN;->getNumberOfDecisions()I

    move-result v0

    .line 114
    new-array v2, v0, [Lorg/antlr/v4/runtime/dfa/DFA;

    iput-object v2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    :goto_1
    if-ge v1, v0, :cond_1

    .line 116
    invoke-virtual {p4, v1}, Lorg/antlr/v4/runtime/atn/ATN;->getDecisionState(I)Lorg/antlr/v4/runtime/atn/DecisionState;

    move-result-object v2

    .line 117
    iget-object v3, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    new-instance v4, Lorg/antlr/v4/runtime/dfa/DFA;

    invoke-direct {v4, v2, v1}, Lorg/antlr/v4/runtime/dfa/DFA;-><init>(Lorg/antlr/v4/runtime/atn/DecisionState;I)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    :cond_1
    new-instance v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    iget-object v2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->sharedContextCache:Lorg/antlr/v4/runtime/atn/PredictionContextCache;

    invoke-direct {v0, p0, p4, v1, v2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;-><init>(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/atn/ATN;[Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/ParserInterpreter;->setInterpreter(Lorg/antlr/v4/runtime/atn/ATNSimulator;)V

    return-void
.end method


# virtual methods
.method public addDecisionOverride(III)V
    .locals 0

    .line 389
    iput p1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecision:I

    .line 390
    iput p2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionInputIndex:I

    .line 391
    iput p3, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionAlt:I

    return-void
.end method

.method protected createInterpreterRuleContext(Lorg/antlr/v4/runtime/ParserRuleContext;II)Lorg/antlr/v4/runtime/InterpreterRuleContext;
    .locals 1

    .line 330
    new-instance v0, Lorg/antlr/v4/runtime/InterpreterRuleContext;

    invoke-direct {v0, p1, p2, p3}, Lorg/antlr/v4/runtime/InterpreterRuleContext;-><init>(Lorg/antlr/v4/runtime/ParserRuleContext;II)V

    return-object v0
.end method

.method public enterRecursionRule(Lorg/antlr/v4/runtime/ParserRuleContext;III)V
    .locals 3

    .line 210
    new-instance v0, Lorg/antlr/v4/runtime/misc/Pair;

    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    iget v2, p1, Lorg/antlr/v4/runtime/ParserRuleContext;->invokingState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/antlr/v4/runtime/misc/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_parentContextStack:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Lorg/antlr/v4/runtime/Parser;->enterRecursionRule(Lorg/antlr/v4/runtime/ParserRuleContext;III)V

    return-void
.end method

.method public getATN()Lorg/antlr/v4/runtime/atn/ATN;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    return-object v0
.end method

.method protected getATNState()Lorg/antlr/v4/runtime/atn/ATNState;
    .locals 2

    .line 216
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->getState()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    return-object v0
.end method

.method public getGrammarFileName()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->grammarFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideDecisionRoot()Lorg/antlr/v4/runtime/InterpreterRuleContext;
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionRoot:Lorg/antlr/v4/runtime/InterpreterRuleContext;

    return-object v0
.end method

.method public getRootContext()Lorg/antlr/v4/runtime/InterpreterRuleContext;
    .locals 1

    .line 448
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->rootContext:Lorg/antlr/v4/runtime/InterpreterRuleContext;

    return-object v0
.end method

.method public getRuleNames()[Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->ruleNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getTokenNames()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->tokenNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->vocabulary:Lorg/antlr/v4/runtime/Vocabulary;

    return-object v0
.end method

.method public parse(I)Lorg/antlr/v4/runtime/ParserRuleContext;
    .locals 4

    .line 161
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    aget-object v0, v0, p1

    .line 163
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, p1}, Lorg/antlr/v4/runtime/ParserInterpreter;->createInterpreterRuleContext(Lorg/antlr/v4/runtime/ParserRuleContext;II)Lorg/antlr/v4/runtime/InterpreterRuleContext;

    move-result-object v1

    iput-object v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->rootContext:Lorg/antlr/v4/runtime/InterpreterRuleContext;

    .line 164
    iget-boolean v1, v0, Lorg/antlr/v4/runtime/atn/RuleStartState;->isLeftRecursiveRule:Z

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->rootContext:Lorg/antlr/v4/runtime/InterpreterRuleContext;

    iget v2, v0, Lorg/antlr/v4/runtime/atn/RuleStartState;->stateNumber:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, p1, v3}, Lorg/antlr/v4/runtime/ParserInterpreter;->enterRecursionRule(Lorg/antlr/v4/runtime/ParserRuleContext;III)V

    .line 172
    :goto_0
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->getATNState()Lorg/antlr/v4/runtime/atn/ATNState;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/ATNState;->getStateType()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    .line 194
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/ParserInterpreter;->visitState(Lorg/antlr/v4/runtime/atn/ATNState;)V
    :try_end_0
    .catch Lorg/antlr/v4/runtime/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 197
    iget-object v3, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStopState:[Lorg/antlr/v4/runtime/atn/RuleStopState;

    iget v1, v1, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    aget-object v1, v3, v1

    iget v1, v1, Lorg/antlr/v4/runtime/atn/RuleStopState;->stateNumber:I

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/ParserInterpreter;->setState(I)V

    .line 198
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->getContext()Lorg/antlr/v4/runtime/ParserRuleContext;

    move-result-object v1

    iput-object v2, v1, Lorg/antlr/v4/runtime/ParserRuleContext;->exception:Lorg/antlr/v4/runtime/RecognitionException;

    .line 199
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->getErrorHandler()Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    move-result-object v1

    invoke-interface {v1, p0, v2}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->reportError(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/RecognitionException;)V

    .line 200
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/ParserInterpreter;->recover(Lorg/antlr/v4/runtime/RecognitionException;)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->rootContext:Lorg/antlr/v4/runtime/InterpreterRuleContext;

    iget v2, v0, Lorg/antlr/v4/runtime/atn/RuleStartState;->stateNumber:I

    invoke-virtual {p0, v1, v2, p1}, Lorg/antlr/v4/runtime/ParserInterpreter;->enterRule(Lorg/antlr/v4/runtime/ParserRuleContext;II)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/ParserRuleContext;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 177
    iget-boolean v0, v0, Lorg/antlr/v4/runtime/atn/RuleStartState;->isLeftRecursiveRule:Z

    if-eqz v0, :cond_2

    .line 178
    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 179
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_parentContextStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Pair;

    .line 180
    iget-object v0, v0, Lorg/antlr/v4/runtime/misc/Pair;->a:Ljava/lang/Object;

    check-cast v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/ParserInterpreter;->unrollRecursionContexts(Lorg/antlr/v4/runtime/ParserRuleContext;)V

    move-object v0, v1

    .line 185
    :goto_1
    return-object v0

    .line 184
    :cond_2
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->exitRule()V

    .line 185
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->rootContext:Lorg/antlr/v4/runtime/InterpreterRuleContext;

    goto :goto_1

    .line 189
    :cond_3
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/ParserInterpreter;->visitRuleStopState(Lorg/antlr/v4/runtime/atn/ATNState;)V

    goto :goto_0
.end method

.method protected recover(Lorg/antlr/v4/runtime/RecognitionException;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 403
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_input:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v0

    .line 404
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->getErrorHandler()Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->recover(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/RecognitionException;)V

    .line 405
    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_input:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v1}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 407
    instance-of v0, p1, Lorg/antlr/v4/runtime/InputMismatchException;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 408
    check-cast v0, Lorg/antlr/v4/runtime/InputMismatchException;

    .line 409
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/RecognitionException;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v6

    .line 411
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/InputMismatchException;->getExpectedTokens()Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->isNil()Z

    move-result v1

    if-nez v1, :cond_1

    .line 412
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/InputMismatchException;->getExpectedTokens()Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->getMinElement()I

    move-result v2

    .line 414
    :goto_0
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->getTokenFactory()Lorg/antlr/v4/runtime/TokenFactory;

    move-result-object v0

    new-instance v1, Lorg/antlr/v4/runtime/misc/Pair;

    invoke-interface {v6}, Lorg/antlr/v4/runtime/Token;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v3

    invoke-interface {v6}, Lorg/antlr/v4/runtime/Token;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v7

    invoke-interface {v7}, Lorg/antlr/v4/runtime/TokenSource;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v7

    invoke-direct {v1, v3, v7}, Lorg/antlr/v4/runtime/misc/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v7

    invoke-interface {v6}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result v8

    move v6, v5

    invoke-interface/range {v0 .. v8}, Lorg/antlr/v4/runtime/TokenFactory;->create(Lorg/antlr/v4/runtime/misc/Pair;ILjava/lang/String;IIIII)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    iget-object v2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {p0, v2, v0}, Lorg/antlr/v4/runtime/ParserInterpreter;->createErrorNode(Lorg/antlr/v4/runtime/ParserRuleContext;Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->addErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    .line 430
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v4

    .line 412
    goto :goto_0

    .line 423
    :cond_2
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/RecognitionException;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v2

    .line 424
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->getTokenFactory()Lorg/antlr/v4/runtime/TokenFactory;

    move-result-object v0

    new-instance v1, Lorg/antlr/v4/runtime/misc/Pair;

    invoke-interface {v2}, Lorg/antlr/v4/runtime/Token;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v3

    invoke-interface {v2}, Lorg/antlr/v4/runtime/Token;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v6

    invoke-interface {v6}, Lorg/antlr/v4/runtime/TokenSource;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v6

    invoke-direct {v1, v3, v6}, Lorg/antlr/v4/runtime/misc/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v7

    invoke-interface {v2}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result v8

    move v2, v4

    move v6, v5

    invoke-interface/range {v0 .. v8}, Lorg/antlr/v4/runtime/TokenFactory;->create(Lorg/antlr/v4/runtime/misc/Pair;ILjava/lang/String;IIIII)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 430
    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    iget-object v2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {p0, v2, v0}, Lorg/antlr/v4/runtime/ParserInterpreter;->createErrorNode(Lorg/antlr/v4/runtime/ParserRuleContext;Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/ParserRuleContext;->addErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    goto :goto_1
.end method

.method protected recoverInline()Lorg/antlr/v4/runtime/Token;
    .locals 1

    .line 436
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_errHandler:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    invoke-interface {v0, p0}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->recoverInline(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 128
    invoke-super {p0}, Lorg/antlr/v4/runtime/Parser;->reset()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionReached:Z

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionRoot:Lorg/antlr/v4/runtime/InterpreterRuleContext;

    return-void
.end method

.method protected visitDecisionState(Lorg/antlr/v4/runtime/atn/DecisionState;)I
    .locals 4

    const/4 v1, 0x1

    .line 306
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/DecisionState;->getNumberOfTransitions()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 307
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->getErrorHandler()Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->sync(Lorg/antlr/v4/runtime/Parser;)V

    .line 308
    iget v2, p1, Lorg/antlr/v4/runtime/atn/DecisionState;->decision:I

    .line 309
    iget v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecision:I

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_input:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v0

    iget v3, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionInputIndex:I

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionReached:Z

    if-nez v0, :cond_0

    .line 312
    iget v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionAlt:I

    .line 313
    iput-boolean v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionReached:Z

    .line 316
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_input:Lorg/antlr/v4/runtime/TokenStream;

    iget-object v3, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {v0, v1, v2, v3}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->adaptivePredict(Lorg/antlr/v4/runtime/TokenStream;ILorg/antlr/v4/runtime/ParserRuleContext;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected visitRuleStopState(Lorg/antlr/v4/runtime/atn/ATNState;)V
    .locals 2

    .line 334
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    iget v1, p1, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    aget-object v0, v0, v1

    .line 335
    iget-boolean v0, v0, Lorg/antlr/v4/runtime/atn/RuleStartState;->isLeftRecursiveRule:Z

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_parentContextStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Pair;

    .line 337
    iget-object v1, v0, Lorg/antlr/v4/runtime/misc/Pair;->a:Ljava/lang/Object;

    check-cast v1, Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/ParserInterpreter;->unrollRecursionContexts(Lorg/antlr/v4/runtime/ParserRuleContext;)V

    .line 338
    iget-object v0, v0, Lorg/antlr/v4/runtime/misc/Pair;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/ParserInterpreter;->setState(I)V

    .line 344
    :goto_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->getState()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/RuleTransition;

    .line 345
    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/RuleTransition;->followState:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/ParserInterpreter;->setState(I)V

    return-void

    .line 341
    :cond_0
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->exitRule()V

    goto :goto_0
.end method

.method protected visitState(Lorg/antlr/v4/runtime/atn/ATNState;)V
    .locals 5

    const/4 v2, 0x1

    .line 222
    instance-of v0, p1, Lorg/antlr/v4/runtime/atn/DecisionState;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 223
    check-cast v0, Lorg/antlr/v4/runtime/atn/DecisionState;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/ParserInterpreter;->visitDecisionState(Lorg/antlr/v4/runtime/atn/DecisionState;)I

    move-result v0

    .line 226
    :goto_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/Transition;->getSerializationType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 294
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unrecognized ATN transition type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 223
    goto :goto_0

    .line 288
    :pswitch_0
    iget-object v3, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    move-object v0, v1

    check-cast v0, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;

    iget v4, v0, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;->precedence:I

    invoke-virtual {p0, v3, v4}, Lorg/antlr/v4/runtime/ParserInterpreter;->precpred(Lorg/antlr/v4/runtime/RuleContext;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    :cond_1
    :goto_1
    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/ParserInterpreter;->setState(I)V

    return-void

    .line 289
    :cond_2
    new-instance v1, Lorg/antlr/v4/runtime/FailedPredicateException;

    const-string v3, "precpred(_ctx, %d)"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v0, v0, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;->precedence:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/antlr/v4/runtime/FailedPredicateException;-><init>(Lorg/antlr/v4/runtime/Parser;Ljava/lang/String;)V

    throw v1

    .line 259
    :pswitch_1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->matchWildcard()Lorg/antlr/v4/runtime/Token;

    goto :goto_1

    :pswitch_2
    move-object v0, v1

    .line 283
    check-cast v0, Lorg/antlr/v4/runtime/atn/ActionTransition;

    .line 284
    iget-object v2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    iget v3, v0, Lorg/antlr/v4/runtime/atn/ActionTransition;->ruleIndex:I

    iget v0, v0, Lorg/antlr/v4/runtime/atn/ActionTransition;->actionIndex:I

    invoke-virtual {p0, v2, v3, v0}, Lorg/antlr/v4/runtime/ParserInterpreter;->action(Lorg/antlr/v4/runtime/RuleContext;II)V

    goto :goto_1

    :pswitch_3
    move-object v0, v1

    .line 246
    check-cast v0, Lorg/antlr/v4/runtime/atn/AtomTransition;

    iget v0, v0, Lorg/antlr/v4/runtime/atn/AtomTransition;->label:I

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/ParserInterpreter;->match(I)Lorg/antlr/v4/runtime/Token;

    goto :goto_1

    :pswitch_4
    move-object v0, v1

    .line 275
    check-cast v0, Lorg/antlr/v4/runtime/atn/PredicateTransition;

    .line 276
    iget-object v2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    iget v3, v0, Lorg/antlr/v4/runtime/atn/PredicateTransition;->ruleIndex:I

    iget v0, v0, Lorg/antlr/v4/runtime/atn/PredicateTransition;->predIndex:I

    invoke-virtual {p0, v2, v3, v0}, Lorg/antlr/v4/runtime/ParserInterpreter;->sempred(Lorg/antlr/v4/runtime/RuleContext;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    new-instance v0, Lorg/antlr/v4/runtime/FailedPredicateException;

    invoke-direct {v0, p0}, Lorg/antlr/v4/runtime/FailedPredicateException;-><init>(Lorg/antlr/v4/runtime/Parser;)V

    throw v0

    .line 263
    :pswitch_5
    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    check-cast v0, Lorg/antlr/v4/runtime/atn/RuleStartState;

    .line 264
    iget v2, v0, Lorg/antlr/v4/runtime/atn/RuleStartState;->ruleIndex:I

    .line 265
    iget-object v3, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    iget v4, p1, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-virtual {p0, v3, v4, v2}, Lorg/antlr/v4/runtime/ParserInterpreter;->createInterpreterRuleContext(Lorg/antlr/v4/runtime/ParserRuleContext;II)Lorg/antlr/v4/runtime/InterpreterRuleContext;

    move-result-object v3

    .line 266
    iget-boolean v4, v0, Lorg/antlr/v4/runtime/atn/RuleStartState;->isLeftRecursiveRule:Z

    if-eqz v4, :cond_3

    .line 267
    iget v4, v0, Lorg/antlr/v4/runtime/atn/RuleStartState;->stateNumber:I

    move-object v0, v1

    check-cast v0, Lorg/antlr/v4/runtime/atn/RuleTransition;

    iget v0, v0, Lorg/antlr/v4/runtime/atn/RuleTransition;->precedence:I

    invoke-virtual {p0, v3, v4, v2, v0}, Lorg/antlr/v4/runtime/ParserInterpreter;->enterRecursionRule(Lorg/antlr/v4/runtime/ParserRuleContext;III)V

    goto :goto_1

    .line 270
    :cond_3
    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-virtual {p0, v3, v0, v2}, Lorg/antlr/v4/runtime/ParserInterpreter;->enterRule(Lorg/antlr/v4/runtime/ParserRuleContext;II)V

    goto :goto_1

    .line 252
    :pswitch_6
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_input:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0, v2}, Lorg/antlr/v4/runtime/TokenStream;->LA(I)I

    move-result v0

    const v3, 0xffff

    invoke-virtual {v1, v0, v2, v3}, Lorg/antlr/v4/runtime/atn/Transition;->matches(III)Z

    move-result v0

    if-nez v0, :cond_4

    .line 253
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->recoverInline()Lorg/antlr/v4/runtime/Token;

    .line 255
    :cond_4
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->matchWildcard()Lorg/antlr/v4/runtime/Token;

    goto/16 :goto_1

    .line 229
    :pswitch_7
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNState;->getStateType()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    iget-boolean v0, v0, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->isPrecedenceDecision:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v0, v0, Lorg/antlr/v4/runtime/atn/LoopEndState;

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_parentContextStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Pair;

    iget-object v0, v0, Lorg/antlr/v4/runtime/misc/Pair;->a:Ljava/lang/Object;

    check-cast v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    iget-object v2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_parentContextStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/misc/Pair;

    iget-object v2, v2, Lorg/antlr/v4/runtime/misc/Pair;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {v3}, Lorg/antlr/v4/runtime/ParserRuleContext;->getRuleIndex()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/antlr/v4/runtime/ParserInterpreter;->createInterpreterRuleContext(Lorg/antlr/v4/runtime/ParserRuleContext;II)Lorg/antlr/v4/runtime/InterpreterRuleContext;

    move-result-object v0

    .line 239
    iget-object v2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    iget v3, p1, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    aget-object v2, v2, v3

    iget v2, v2, Lorg/antlr/v4/runtime/atn/RuleStartState;->stateNumber:I

    iget-object v3, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {v3}, Lorg/antlr/v4/runtime/ParserRuleContext;->getRuleIndex()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/antlr/v4/runtime/ParserInterpreter;->pushNewRecursionContext(Lorg/antlr/v4/runtime/ParserRuleContext;II)V

    goto/16 :goto_1

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
