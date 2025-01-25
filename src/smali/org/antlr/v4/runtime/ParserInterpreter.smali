.class public Lorg/antlr/v4/runtime/ParserInterpreter;
.super Lorg/antlr/v4/runtime/Parser;
.source "ParserInterpreter.java"


# instance fields
.field protected final _parentContextStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lorg/antlr/v4/runtime/misc/Pair<",
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
    .registers 12
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

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p2}, Lorg/antlr/v4/runtime/VocabularyImpl;->fromTokenNames([Ljava/lang/String;)Lorg/antlr/v4/runtime/Vocabulary;

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
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/Vocabulary;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/antlr/v4/runtime/atn/ATN;",
            "Lorg/antlr/v4/runtime/TokenStream;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p5}, Lorg/antlr/v4/runtime/Parser;-><init>(Lorg/antlr/v4/runtime/TokenStream;)V

    .line 48
    new-instance p5, Lorg/antlr/v4/runtime/atn/PredictionContextCache;

    invoke-direct {p5}, Lorg/antlr/v4/runtime/atn/PredictionContextCache;-><init>()V

    iput-object p5, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->sharedContextCache:Lorg/antlr/v4/runtime/atn/PredictionContextCache;

    .line 69
    new-instance p5, Ljava/util/ArrayDeque;

    invoke-direct {p5}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p5, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_parentContextStack:Ljava/util/Deque;

    .line 75
    const/4 p5, -0x1

    iput p5, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecision:I

    .line 76
    iput p5, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionInputIndex:I

    .line 77
    iput p5, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionAlt:I

    .line 78
    const/4 p5, 0x0

    iput-boolean p5, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionReached:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionRoot:Lorg/antlr/v4/runtime/InterpreterRuleContext;

    .line 102
    iput-object p1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->grammarFileName:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    .line 104
    iget p1, p4, Lorg/antlr/v4/runtime/atn/ATN;->maxTokenType:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->tokenNames:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 105
    :goto_29
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->tokenNames:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_37

    .line 106
    invoke-interface {p2, p1}, Lorg/antlr/v4/runtime/Vocabulary;->getDisplayName(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_29

    .line 109
    :cond_37
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->ruleNames:[Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->vocabulary:Lorg/antlr/v4/runtime/Vocabulary;

    .line 113
    invoke-virtual {p4}, Lorg/antlr/v4/runtime/atn/ATN;->getNumberOfDecisions()I

    move-result p1

    .line 114
    new-array p2, p1, [Lorg/antlr/v4/runtime/dfa/DFA;

    iput-object p2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    :goto_4f
    if-ge p5, p1, :cond_61

    .line 116
    invoke-virtual {p4, p5}, Lorg/antlr/v4/runtime/atn/ATN;->getDecisionState(I)Lorg/antlr/v4/runtime/atn/DecisionState;

    move-result-object p2

    .line 117
    iget-object p3, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    new-instance v0, Lorg/antlr/v4/runtime/dfa/DFA;

    invoke-direct {v0, p2, p5}, Lorg/antlr/v4/runtime/dfa/DFA;-><init>(Lorg/antlr/v4/runtime/atn/DecisionState;I)V

    aput-object v0, p3, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_4f

    .line 121
    :cond_61
    new-instance p1, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object p2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    iget-object p3, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->sharedContextCache:Lorg/antlr/v4/runtime/atn/PredictionContextCache;

    invoke-direct {p1, p0, p4, p2, p3}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;-><init>(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/atn/ATN;[Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/ParserInterpreter;->setInterpreter(Lorg/antlr/v4/runtime/atn/ATNSimulator;)V

    return-void
.end method


# virtual methods
.method public addDecisionOverride(III)V
    .registers 4

    .line 389
    iput p1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecision:I

    .line 390
    iput p2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionInputIndex:I

    .line 391
    iput p3, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionAlt:I

    return-void
.end method

.method protected createInterpreterRuleContext(Lorg/antlr/v4/runtime/ParserRuleContext;II)Lorg/antlr/v4/runtime/InterpreterRuleContext;
    .registers 5

    .line 330
    new-instance v0, Lorg/antlr/v4/runtime/InterpreterRuleContext;

    invoke-direct {v0, p1, p2, p3}, Lorg/antlr/v4/runtime/InterpreterRuleContext;-><init>(Lorg/antlr/v4/runtime/ParserRuleContext;II)V

    return-object v0
.end method

.method public enterRecursionRule(Lorg/antlr/v4/runtime/ParserRuleContext;III)V
    .registers 8

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
    .registers 2

    .line 135
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    return-object v0
.end method

.method protected getATNState()Lorg/antlr/v4/runtime/atn/ATNState;
    .registers 3

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
    .registers 2

    .line 156
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->grammarFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideDecisionRoot()Lorg/antlr/v4/runtime/InterpreterRuleContext;
    .registers 2

    .line 395
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionRoot:Lorg/antlr/v4/runtime/InterpreterRuleContext;

    return-object v0
.end method

.method public getRootContext()Lorg/antlr/v4/runtime/InterpreterRuleContext;
    .registers 2

    .line 448
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->rootContext:Lorg/antlr/v4/runtime/InterpreterRuleContext;

    return-object v0
.end method

.method public getRuleNames()[Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->ruleNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getTokenNames()[Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->tokenNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;
    .registers 2

    .line 146
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->vocabulary:Lorg/antlr/v4/runtime/Vocabulary;

    return-object v0
.end method

.method public parse(I)Lorg/antlr/v4/runtime/ParserRuleContext;
    .registers 6

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

    if-eqz v1, :cond_1b

    .line 165
    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->rootContext:Lorg/antlr/v4/runtime/InterpreterRuleContext;

    iget v2, v0, Lorg/antlr/v4/runtime/atn/RuleStartState;->stateNumber:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, p1, v3}, Lorg/antlr/v4/runtime/ParserInterpreter;->enterRecursionRule(Lorg/antlr/v4/runtime/ParserRuleContext;III)V

    goto :goto_22

    .line 168
    :cond_1b
    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->rootContext:Lorg/antlr/v4/runtime/InterpreterRuleContext;

    iget v2, v0, Lorg/antlr/v4/runtime/atn/RuleStartState;->stateNumber:I

    invoke-virtual {p0, v1, v2, p1}, Lorg/antlr/v4/runtime/ParserInterpreter;->enterRule(Lorg/antlr/v4/runtime/ParserRuleContext;II)V

    .line 172
    :goto_22
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->getATNState()Lorg/antlr/v4/runtime/atn/ATNState;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNState;->getStateType()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_50

    .line 194
    :try_start_2d
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/ParserInterpreter;->visitState(Lorg/antlr/v4/runtime/atn/ATNState;)V
    :try_end_30
    .catch Lorg/antlr/v4/runtime/RecognitionException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_22

    :catch_31
    move-exception v1

    .line 197
    iget-object v2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStopState:[Lorg/antlr/v4/runtime/atn/RuleStopState;

    iget p1, p1, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    aget-object p1, v2, p1

    iget p1, p1, Lorg/antlr/v4/runtime/atn/RuleStopState;->stateNumber:I

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/ParserInterpreter;->setState(I)V

    .line 198
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->getContext()Lorg/antlr/v4/runtime/ParserRuleContext;

    move-result-object p1

    iput-object v1, p1, Lorg/antlr/v4/runtime/ParserRuleContext;->exception:Lorg/antlr/v4/runtime/RecognitionException;

    .line 199
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->getErrorHandler()Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->reportError(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/RecognitionException;)V

    .line 200
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/ParserInterpreter;->recover(Lorg/antlr/v4/runtime/RecognitionException;)V

    goto :goto_22

    .line 176
    :cond_50
    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/ParserRuleContext;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 177
    iget-boolean p1, v0, Lorg/antlr/v4/runtime/atn/RuleStartState;->isLeftRecursiveRule:Z

    if-eqz p1, :cond_6e

    .line 178
    iget-object p1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 179
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_parentContextStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Pair;

    .line 180
    iget-object v0, v0, Lorg/antlr/v4/runtime/misc/Pair;->a:Ljava/lang/Object;

    check-cast v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/ParserInterpreter;->unrollRecursionContexts(Lorg/antlr/v4/runtime/ParserRuleContext;)V

    return-object p1

    .line 184
    :cond_6e
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->exitRule()V

    .line 185
    iget-object p1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->rootContext:Lorg/antlr/v4/runtime/InterpreterRuleContext;

    return-object p1

    .line 189
    :cond_74
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/ParserInterpreter;->visitRuleStopState(Lorg/antlr/v4/runtime/atn/ATNState;)V

    goto :goto_22
.end method

.method protected recover(Lorg/antlr/v4/runtime/RecognitionException;)V
    .registers 12

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

    if-ne v1, v0, :cond_a2

    .line 407
    instance-of v0, p1, Lorg/antlr/v4/runtime/InputMismatchException;

    if-eqz v0, :cond_6a

    .line 408
    move-object v0, p1

    check-cast v0, Lorg/antlr/v4/runtime/InputMismatchException;

    .line 409
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/RecognitionException;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    .line 411
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/InputMismatchException;->getExpectedTokens()Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->isNil()Z

    move-result v1

    if-nez v1, :cond_34

    .line 412
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/InputMismatchException;->getExpectedTokens()Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->getMinElement()I

    move-result v0

    move v3, v0

    goto :goto_36

    :cond_34
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 414
    :goto_36
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->getTokenFactory()Lorg/antlr/v4/runtime/TokenFactory;

    move-result-object v1

    new-instance v2, Lorg/antlr/v4/runtime/misc/Pair;

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v0

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v4

    invoke-interface {v4}, Lorg/antlr/v4/runtime/TokenSource;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lorg/antlr/v4/runtime/misc/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v8

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result v9

    invoke-interface/range {v1 .. v9}, Lorg/antlr/v4/runtime/TokenFactory;->create(Lorg/antlr/v4/runtime/misc/Pair;ILjava/lang/String;IIIII)Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    .line 420
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {p0, v1, p1}, Lorg/antlr/v4/runtime/ParserInterpreter;->createErrorNode(Lorg/antlr/v4/runtime/ParserRuleContext;Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/ParserRuleContext;->addErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    goto :goto_a2

    .line 423
    :cond_6a
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/RecognitionException;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    .line 424
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->getTokenFactory()Lorg/antlr/v4/runtime/TokenFactory;

    move-result-object v0

    new-instance v1, Lorg/antlr/v4/runtime/misc/Pair;

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v2

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v3

    invoke-interface {v3}, Lorg/antlr/v4/runtime/TokenSource;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/antlr/v4/runtime/misc/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v7

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result v8

    invoke-interface/range {v0 .. v8}, Lorg/antlr/v4/runtime/TokenFactory;->create(Lorg/antlr/v4/runtime/misc/Pair;ILjava/lang/String;IIIII)Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    .line 430
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {p0, v1, p1}, Lorg/antlr/v4/runtime/ParserInterpreter;->createErrorNode(Lorg/antlr/v4/runtime/ParserRuleContext;Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/ParserRuleContext;->addErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    :cond_a2
    :goto_a2
    return-void
.end method

.method protected recoverInline()Lorg/antlr/v4/runtime/Token;
    .registers 2

    .line 436
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_errHandler:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    invoke-interface {v0, p0}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->recoverInline(Lorg/antlr/v4/runtime/Parser;)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .registers 2

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
    .registers 5

    .line 306
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/DecisionState;->getNumberOfTransitions()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_36

    .line 307
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->getErrorHandler()Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->sync(Lorg/antlr/v4/runtime/Parser;)V

    .line 308
    iget p1, p1, Lorg/antlr/v4/runtime/atn/DecisionState;->decision:I

    .line 309
    iget v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecision:I

    if-ne p1, v0, :cond_28

    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_input:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v0

    iget v2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionInputIndex:I

    if-ne v0, v2, :cond_28

    iget-boolean v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionReached:Z

    if-nez v0, :cond_28

    .line 312
    iget p1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionAlt:I

    .line 313
    iput-boolean v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->overrideDecisionReached:Z

    move v1, p1

    goto :goto_36

    .line 316
    :cond_28
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_input:Lorg/antlr/v4/runtime/TokenStream;

    iget-object v2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {v0, v1, p1, v2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->adaptivePredict(Lorg/antlr/v4/runtime/TokenStream;ILorg/antlr/v4/runtime/ParserRuleContext;)I

    move-result v1

    :cond_36
    :goto_36
    return v1
.end method

.method protected visitRuleStopState(Lorg/antlr/v4/runtime/atn/ATNState;)V
    .registers 3

    .line 334
    iget-object v0, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    iget p1, p1, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    aget-object p1, v0, p1

    .line 335
    iget-boolean p1, p1, Lorg/antlr/v4/runtime/atn/RuleStartState;->isLeftRecursiveRule:Z

    if-eqz p1, :cond_27

    .line 336
    iget-object p1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_parentContextStack:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/misc/Pair;

    .line 337
    iget-object v0, p1, Lorg/antlr/v4/runtime/misc/Pair;->a:Ljava/lang/Object;

    check-cast v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/ParserInterpreter;->unrollRecursionContexts(Lorg/antlr/v4/runtime/ParserRuleContext;)V

    .line 338
    iget-object p1, p1, Lorg/antlr/v4/runtime/misc/Pair;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/ParserInterpreter;->setState(I)V

    goto :goto_2a

    .line 341
    :cond_27
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->exitRule()V

    .line 344
    :goto_2a
    iget-object p1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->getState()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/atn/ATNState;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/atn/RuleTransition;

    .line 345
    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/RuleTransition;->followState:Lorg/antlr/v4/runtime/atn/ATNState;

    iget p1, p1, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/ParserInterpreter;->setState(I)V

    return-void
.end method

.method protected visitState(Lorg/antlr/v4/runtime/atn/ATNState;)V
    .registers 6

    .line 222
    instance-of v0, p1, Lorg/antlr/v4/runtime/atn/DecisionState;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 223
    move-object v0, p1

    check-cast v0, Lorg/antlr/v4/runtime/atn/DecisionState;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/ParserInterpreter;->visitDecisionState(Lorg/antlr/v4/runtime/atn/DecisionState;)I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x1

    .line 226
    :goto_e
    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/Transition;->getSerializationType()I

    move-result v2

    packed-switch v2, :pswitch_data_10e

    .line 294
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unrecognized ATN transition type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 288
    :pswitch_22  #0xa
    iget-object p1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    move-object v2, v0

    check-cast v2, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;

    iget v3, v2, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;->precedence:I

    invoke-virtual {p0, p1, v3}, Lorg/antlr/v4/runtime/ParserInterpreter;->precpred(Lorg/antlr/v4/runtime/RuleContext;I)Z

    move-result p1

    if-eqz p1, :cond_31

    goto/16 :goto_105

    .line 289
    :cond_31
    new-instance p1, Lorg/antlr/v4/runtime/FailedPredicateException;

    new-array v0, v1, [Ljava/lang/Object;

    iget v1, v2, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;->precedence:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "precpred(_ctx, %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lorg/antlr/v4/runtime/FailedPredicateException;-><init>(Lorg/antlr/v4/runtime/Parser;Ljava/lang/String;)V

    throw p1

    .line 259
    :pswitch_48  #0x9
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->matchWildcard()Lorg/antlr/v4/runtime/Token;

    goto/16 :goto_105

    .line 283
    :pswitch_4d  #0x6
    move-object p1, v0

    check-cast p1, Lorg/antlr/v4/runtime/atn/ActionTransition;

    .line 284
    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    iget v2, p1, Lorg/antlr/v4/runtime/atn/ActionTransition;->ruleIndex:I

    iget p1, p1, Lorg/antlr/v4/runtime/atn/ActionTransition;->actionIndex:I

    invoke-virtual {p0, v1, v2, p1}, Lorg/antlr/v4/runtime/ParserInterpreter;->action(Lorg/antlr/v4/runtime/RuleContext;II)V

    goto/16 :goto_105

    .line 246
    :pswitch_5b  #0x5
    move-object p1, v0

    check-cast p1, Lorg/antlr/v4/runtime/atn/AtomTransition;

    iget p1, p1, Lorg/antlr/v4/runtime/atn/AtomTransition;->label:I

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/ParserInterpreter;->match(I)Lorg/antlr/v4/runtime/Token;

    goto/16 :goto_105

    .line 275
    :pswitch_65  #0x4
    move-object p1, v0

    check-cast p1, Lorg/antlr/v4/runtime/atn/PredicateTransition;

    .line 276
    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    iget v2, p1, Lorg/antlr/v4/runtime/atn/PredicateTransition;->ruleIndex:I

    iget p1, p1, Lorg/antlr/v4/runtime/atn/PredicateTransition;->predIndex:I

    invoke-virtual {p0, v1, v2, p1}, Lorg/antlr/v4/runtime/ParserInterpreter;->sempred(Lorg/antlr/v4/runtime/RuleContext;II)Z

    move-result p1

    if-eqz p1, :cond_76

    goto/16 :goto_105

    .line 277
    :cond_76
    new-instance p1, Lorg/antlr/v4/runtime/FailedPredicateException;

    invoke-direct {p1, p0}, Lorg/antlr/v4/runtime/FailedPredicateException;-><init>(Lorg/antlr/v4/runtime/Parser;)V

    throw p1

    .line 263
    :pswitch_7c  #0x3
    iget-object v1, v0, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    check-cast v1, Lorg/antlr/v4/runtime/atn/RuleStartState;

    .line 264
    iget v2, v1, Lorg/antlr/v4/runtime/atn/RuleStartState;->ruleIndex:I

    .line 265
    iget-object v3, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    iget p1, p1, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-virtual {p0, v3, p1, v2}, Lorg/antlr/v4/runtime/ParserInterpreter;->createInterpreterRuleContext(Lorg/antlr/v4/runtime/ParserRuleContext;II)Lorg/antlr/v4/runtime/InterpreterRuleContext;

    move-result-object p1

    .line 266
    iget-boolean v3, v1, Lorg/antlr/v4/runtime/atn/RuleStartState;->isLeftRecursiveRule:Z

    if-eqz v3, :cond_99

    .line 267
    iget v1, v1, Lorg/antlr/v4/runtime/atn/RuleStartState;->stateNumber:I

    move-object v3, v0

    check-cast v3, Lorg/antlr/v4/runtime/atn/RuleTransition;

    iget v3, v3, Lorg/antlr/v4/runtime/atn/RuleTransition;->precedence:I

    invoke-virtual {p0, p1, v1, v2, v3}, Lorg/antlr/v4/runtime/ParserInterpreter;->enterRecursionRule(Lorg/antlr/v4/runtime/ParserRuleContext;III)V

    goto :goto_105

    .line 270
    :cond_99
    iget-object v1, v0, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v1, v1, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-virtual {p0, p1, v1, v2}, Lorg/antlr/v4/runtime/ParserInterpreter;->enterRule(Lorg/antlr/v4/runtime/ParserRuleContext;II)V

    goto :goto_105

    .line 252
    :pswitch_a1  #0x2, 0x7, 0x8
    iget-object p1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_input:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {p1, v1}, Lorg/antlr/v4/runtime/TokenStream;->LA(I)I

    move-result p1

    const v2, 0xffff

    invoke-virtual {v0, p1, v1, v2}, Lorg/antlr/v4/runtime/atn/Transition;->matches(III)Z

    move-result p1

    if-nez p1, :cond_b3

    .line 253
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->recoverInline()Lorg/antlr/v4/runtime/Token;

    .line 255
    :cond_b3
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ParserInterpreter;->matchWildcard()Lorg/antlr/v4/runtime/Token;

    goto :goto_105

    .line 229
    :pswitch_b7  #0x1
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNState;->getStateType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_105

    move-object v1, p1

    check-cast v1, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    iget-boolean v1, v1, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->isPrecedenceDecision:Z

    if-eqz v1, :cond_105

    iget-object v1, v0, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v1, v1, Lorg/antlr/v4/runtime/atn/LoopEndState;

    if-nez v1, :cond_105

    .line 235
    iget-object v1, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_parentContextStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/misc/Pair;

    iget-object v1, v1, Lorg/antlr/v4/runtime/misc/Pair;->a:Ljava/lang/Object;

    check-cast v1, Lorg/antlr/v4/runtime/ParserRuleContext;

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

    invoke-virtual {p0, v1, v2, v3}, Lorg/antlr/v4/runtime/ParserInterpreter;->createInterpreterRuleContext(Lorg/antlr/v4/runtime/ParserRuleContext;II)Lorg/antlr/v4/runtime/InterpreterRuleContext;

    move-result-object v1

    .line 239
    iget-object v2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    iget p1, p1, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    aget-object p1, v2, p1

    iget p1, p1, Lorg/antlr/v4/runtime/atn/RuleStartState;->stateNumber:I

    iget-object v2, p0, Lorg/antlr/v4/runtime/ParserInterpreter;->_ctx:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/ParserRuleContext;->getRuleIndex()I

    move-result v2

    invoke-virtual {p0, v1, p1, v2}, Lorg/antlr/v4/runtime/ParserInterpreter;->pushNewRecursionContext(Lorg/antlr/v4/runtime/ParserRuleContext;II)V

    .line 297
    :cond_105
    :goto_105
    iget-object p1, v0, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget p1, p1, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/ParserInterpreter;->setState(I)V

    return-void

    nop

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_b7  #00000001
        :pswitch_a1  #00000002
        :pswitch_7c  #00000003
        :pswitch_65  #00000004
        :pswitch_5b  #00000005
        :pswitch_4d  #00000006
        :pswitch_a1  #00000007
        :pswitch_a1  #00000008
        :pswitch_48  #00000009
        :pswitch_22  #0000000a
    .end packed-switch
.end method
