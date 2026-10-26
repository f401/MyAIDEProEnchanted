.class public Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;
.super Lorg/antlr/v4/runtime/atn/ParserATNSimulator;
.source "ProfilingATNSimulator.java"


# instance fields
.field protected _llStopIndex:I

.field protected _sllStopIndex:I

.field protected conflictingAltResolvedBySLL:I

.field protected currentDecision:I

.field protected currentState:Lorg/antlr/v4/runtime/dfa/DFAState;

.field protected final decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

.field protected numDecisions:I


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/Parser;)V
    .locals 3

    .line 44
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v1, v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->sharedContextCache:Lorg/antlr/v4/runtime/atn/PredictionContextCache;

    invoke-direct {p0, p1, v1, v2, v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;-><init>(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/atn/ATN;[Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V

    .line 48
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->decisionToState:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->numDecisions:I

    .line 49
    new-array v0, v0, [Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    const/4 v0, 0x0

    .line 50
    :goto_0
    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->numDecisions:I

    if-ge v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    new-instance v2, Lorg/antlr/v4/runtime/atn/DecisionInfo;

    invoke-direct {v2, v0}, Lorg/antlr/v4/runtime/atn/DecisionInfo;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public adaptivePredict(Lorg/antlr/v4/runtime/TokenStream;ILorg/antlr/v4/runtime/ParserRuleContext;)I
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v9, -0x1

    .line 58
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_sllStopIndex:I

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_llStopIndex:I

    .line 60
    iput p2, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    .line 61
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 62
    invoke-super {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->adaptivePredict(Lorg/antlr/v4/runtime/TokenStream;ILorg/antlr/v4/runtime/ParserRuleContext;)I

    move-result v3

    .line 63
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 64
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v2, v2, p2

    iget-wide v6, v2, Lorg/antlr/v4/runtime/atn/DecisionInfo;->timeInPrediction:J

    sub-long v0, v4, v0

    add-long/2addr v0, v6

    iput-wide v0, v2, Lorg/antlr/v4/runtime/atn/DecisionInfo;->timeInPrediction:J

    .line 65
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v0, v0, p2

    iget-wide v4, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->invocations:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->invocations:J

    .line 67
    iget v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_sllStopIndex:I

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_startIndex:I

    .line 68
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v2, v2, p2

    iget-wide v6, v2, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_TotalLook:J

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-long v4, v0

    add-long v0, v6, v4

    iput-wide v0, v2, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_TotalLook:J

    .line 69
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v2, v0, p2

    iget-wide v0, v2, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_MinLook:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_2

    move-wide v0, v4

    :goto_0
    iput-wide v0, v2, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_MinLook:J

    .line 70
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v0, v0, p2

    iget-wide v0, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_MaxLook:J

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v0, v0, p2

    iput-wide v4, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_MaxLook:J

    .line 72
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v8, v0, p2

    new-instance v0, Lorg/antlr/v4/runtime/atn/LookaheadEventInfo;

    const/4 v2, 0x0

    iget v5, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_startIndex:I

    iget v6, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_sllStopIndex:I

    const/4 v7, 0x0

    move v1, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lorg/antlr/v4/runtime/atn/LookaheadEventInfo;-><init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;ILorg/antlr/v4/runtime/TokenStream;IIZ)V

    iput-object v0, v8, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_MaxLookEvent:Lorg/antlr/v4/runtime/atn/LookaheadEventInfo;

    .line 76
    :cond_0
    iget v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_llStopIndex:I

    if-ltz v0, :cond_1

    .line 77
    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_startIndex:I

    .line 78
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v2, v2, p2

    iget-wide v6, v2, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_TotalLook:J

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-long v4, v0

    add-long v0, v6, v4

    iput-wide v0, v2, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_TotalLook:J

    .line 79
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v2, v0, p2

    iget-wide v0, v2, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_MinLook:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_3

    move-wide v0, v4

    :goto_1
    iput-wide v0, v2, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_MinLook:J

    .line 80
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v0, v0, p2

    iget-wide v0, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_MaxLook:J

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    .line 81
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v0, v0, p2

    iput-wide v4, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_MaxLook:J

    .line 82
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v8, v0, p2

    new-instance v0, Lorg/antlr/v4/runtime/atn/LookaheadEventInfo;

    const/4 v2, 0x0

    iget v5, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_startIndex:I

    iget v6, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_llStopIndex:I

    const/4 v7, 0x1

    move v1, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lorg/antlr/v4/runtime/atn/LookaheadEventInfo;-><init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;ILorg/antlr/v4/runtime/TokenStream;IIZ)V

    iput-object v0, v8, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_MaxLookEvent:Lorg/antlr/v4/runtime/atn/LookaheadEventInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_1
    iput v9, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    return v3

    .line 69
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v0, v0, p2

    iget-wide v0, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_MinLook:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 79
    :cond_3
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v0, v0, p2

    iget-wide v0, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_MinLook:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_1

    .line 90
    :catchall_0
    move-exception v0

    iput v9, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    throw v0
.end method

.method protected computeReachSet(Lorg/antlr/v4/runtime/atn/ATNConfigSet;IZ)Lorg/antlr/v4/runtime/atn/ATNConfigSet;
    .locals 9

    const-wide/16 v4, 0x1

    if-eqz p3, :cond_0

    .line 126
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_llStopIndex:I

    .line 129
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->computeReachSet(Lorg/antlr/v4/runtime/atn/ATNConfigSet;IZ)Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    move-result-object v7

    if-eqz p3, :cond_3

    .line 131
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    aget-object v0, v0, v1

    iget-wide v2, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_ATNTransitions:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_ATNTransitions:J

    if-eqz v7, :cond_2

    .line 146
    :cond_1
    :goto_0
    return-object v7

    .line 136
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    aget-object v0, v0, v1

    iget-object v8, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->errors:Ljava/util/List;

    new-instance v0, Lorg/antlr/v4/runtime/atn/ErrorInfo;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    iget v4, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_startIndex:I

    iget v5, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_llStopIndex:I

    const/4 v6, 0x1

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/ErrorInfo;-><init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/TokenStream;IIZ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_3
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    aget-object v0, v0, v1

    iget-wide v2, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_ATNTransitions:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_ATNTransitions:J

    if-nez v7, :cond_1

    .line 146
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    aget-object v0, v0, v1

    iget-object v8, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->errors:Ljava/util/List;

    new-instance v0, Lorg/antlr/v4/runtime/atn/ErrorInfo;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    iget v4, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_startIndex:I

    iget v5, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_sllStopIndex:I

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/ErrorInfo;-><init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/TokenStream;IIZ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected computeTargetState(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;
    .locals 1

    .line 116
    invoke-super {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->computeTargetState(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object v0

    .line 117
    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentState:Lorg/antlr/v4/runtime/dfa/DFAState;

    return-object v0
.end method

.method protected evalSemanticContext(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/ParserRuleContext;IZ)Z
    .locals 10

    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->evalSemanticContext(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/ParserRuleContext;IZ)Z

    move-result v6

    .line 157
    instance-of v0, p1, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;

    if-nez v0, :cond_0

    .line 158
    iget v4, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_llStopIndex:I

    if-ltz v4, :cond_1

    .line 160
    :goto_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    aget-object v0, v0, v1

    iget-object v9, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->predicateEvals:Ljava/util/List;

    new-instance v0, Lorg/antlr/v4/runtime/atn/PredicateEvalInfo;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    iget v3, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_startIndex:I

    move-object v5, p1

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/antlr/v4/runtime/atn/PredicateEvalInfo;-><init>(ILorg/antlr/v4/runtime/TokenStream;IILorg/antlr/v4/runtime/atn/SemanticContext;ZIZ)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return v6

    .line 159
    :cond_1
    iget v4, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_sllStopIndex:I

    goto :goto_0
.end method

.method public getCurrentState()Lorg/antlr/v4/runtime/dfa/DFAState;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentState:Lorg/antlr/v4/runtime/dfa/DFAState;

    return-object v0
.end method

.method public getDecisionInfo()[Lorg/antlr/v4/runtime/atn/DecisionInfo;
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    return-object v0
.end method

.method protected getExistingTargetState(Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;
    .locals 9

    .line 98
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_sllStopIndex:I

    .line 100
    invoke-super {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getExistingTargetState(Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 102
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    aget-object v0, v0, v1

    iget-wide v2, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_DFATransitions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_DFATransitions:J

    .line 103
    sget-object v0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->ERROR:Lorg/antlr/v4/runtime/dfa/DFAState;

    if-ne v7, v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    aget-object v0, v0, v1

    iget-object v8, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->errors:Ljava/util/List;

    new-instance v0, Lorg/antlr/v4/runtime/atn/ErrorInfo;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    iget-object v2, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    iget v4, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_startIndex:I

    iget v5, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_sllStopIndex:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/ErrorInfo;-><init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/TokenStream;IIZ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    iput-object v7, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentState:Lorg/antlr/v4/runtime/dfa/DFAState;

    return-object v7
.end method

.method protected reportAmbiguity(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;IIZLjava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V
    .locals 10

    if-eqz p6, :cond_1

    .line 196
    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .line 201
    :goto_0
    move-object/from16 v0, p7

    iget-boolean v2, v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->fullCtx:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->conflictingAltResolvedBySLL:I

    if-eq v1, v2, :cond_0

    .line 207
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iget v2, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    aget-object v1, v1, v2

    iget-object v7, v1, Lorg/antlr/v4/runtime/atn/DecisionInfo;->contextSensitivities:Ljava/util/List;

    new-instance v1, Lorg/antlr/v4/runtime/atn/ContextSensitivityInfo;

    iget v2, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    iget-object v4, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    move-object/from16 v3, p7

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/antlr/v4/runtime/atn/ContextSensitivityInfo;-><init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/TokenStream;II)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_0
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iget v2, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    aget-object v1, v1, v2

    iget-object v9, v1, Lorg/antlr/v4/runtime/atn/DecisionInfo;->ambiguities:Ljava/util/List;

    new-instance v1, Lorg/antlr/v4/runtime/atn/AmbiguityInfo;

    iget v2, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    iget-object v5, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    move-object/from16 v0, p7

    iget-boolean v8, v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->fullCtx:Z

    move-object/from16 v3, p7

    move-object/from16 v4, p6

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lorg/antlr/v4/runtime/atn/AmbiguityInfo;-><init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;Ljava/util/BitSet;Lorg/antlr/v4/runtime/TokenStream;IIZ)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-super/range {p0 .. p7}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->reportAmbiguity(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;IIZLjava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    return-void

    .line 199
    :cond_1
    invoke-virtual/range {p7 .. p7}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->getAlts()Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0
.end method

.method protected reportAttemptingFullContext(Lorg/antlr/v4/runtime/dfa/DFA;Ljava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;II)V
    .locals 6

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 171
    invoke-virtual {p2, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->conflictingAltResolvedBySLL:I

    .line 176
    :goto_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    aget-object v0, v0, v1

    iget-wide v2, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_Fallback:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_Fallback:J

    .line 177
    invoke-super/range {p0 .. p5}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->reportAttemptingFullContext(Lorg/antlr/v4/runtime/dfa/DFA;Ljava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;II)V

    return-void

    .line 174
    :cond_0
    invoke-virtual {p3}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->getAlts()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->conflictingAltResolvedBySLL:I

    goto :goto_0
.end method

.method protected reportContextSensitivity(Lorg/antlr/v4/runtime/dfa/DFA;ILorg/antlr/v4/runtime/atn/ATNConfigSet;II)V
    .locals 7

    .line 182
    iget v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->conflictingAltResolvedBySLL:I

    if-eq p2, v0, :cond_0

    .line 183
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    aget-object v0, v0, v1

    iget-object v6, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->contextSensitivities:Ljava/util/List;

    new-instance v0, Lorg/antlr/v4/runtime/atn/ContextSensitivityInfo;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    move-object v2, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/antlr/v4/runtime/atn/ContextSensitivityInfo;-><init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/TokenStream;II)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->reportContextSensitivity(Lorg/antlr/v4/runtime/dfa/DFA;ILorg/antlr/v4/runtime/atn/ATNConfigSet;II)V

    return-void
.end method
