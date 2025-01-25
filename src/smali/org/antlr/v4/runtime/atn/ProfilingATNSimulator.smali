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
    .registers 5

    .line 44
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->sharedContextCache:Lorg/antlr/v4/runtime/atn/PredictionContextCache;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;-><init>(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/atn/ATN;[Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V

    .line 48
    iget-object p1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/ATN;->decisionToState:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->numDecisions:I

    .line 49
    new-array p1, p1, [Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    const/4 p1, 0x0

    .line 50
    :goto_2a
    iget v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->numDecisions:I

    if-ge p1, v0, :cond_3a

    .line 51
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    new-instance v1, Lorg/antlr/v4/runtime/atn/DecisionInfo;

    invoke-direct {v1, p1}, Lorg/antlr/v4/runtime/atn/DecisionInfo;-><init>(I)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2a

    :cond_3a
    return-void
.end method


# virtual methods
.method public adaptivePredict(Lorg/antlr/v4/runtime/TokenStream;ILorg/antlr/v4/runtime/ParserRuleContext;)I
    .registers 20

    .line 58
    move-object/from16 v1, p0

    move/from16 v0, p2

    const/4 v10, -0x1

    :try_start_5
    iput v10, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_sllStopIndex:I

    .line 59
    iput v10, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_llStopIndex:I

    .line 60
    iput v0, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    .line 61
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 62
    invoke-super/range {p0 .. p3}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->adaptivePredict(Lorg/antlr/v4/runtime/TokenStream;ILorg/antlr/v4/runtime/ParserRuleContext;)I

    move-result v11

    .line 63
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 64
    iget-object v6, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v6, v6, v0

    iget-wide v7, v6, Lorg/antlr/v4/runtime/atn/DecisionInfo;->timeInPrediction:J

    sub-long/2addr v4, v2

    add-long/2addr v7, v4

    iput-wide v7, v6, Lorg/antlr/v4/runtime/atn/DecisionInfo;->timeInPrediction:J

    .line 65
    iget-object v2, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v2, v2, v0

    iget-wide v3, v2, Lorg/antlr/v4/runtime/atn/DecisionInfo;->invocations:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lorg/antlr/v4/runtime/atn/DecisionInfo;->invocations:J

    .line 67
    iget v2, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_sllStopIndex:I

    iget v3, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_startIndex:I

    .line 68
    iget-object v4, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v4, v4, v0

    iget-wide v5, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_TotalLook:J

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    add-long/2addr v5, v2

    iput-wide v5, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_TotalLook:J

    .line 69
    iget-object v4, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v4, v4, v0

    iget-wide v5, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_MinLook:J

    const-wide/16 v12, 0x0

    cmp-long v7, v5, v12

    if-nez v7, :cond_4b

    move-wide v5, v2

    goto :goto_55

    :cond_4b
    iget-object v5, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v5, v5, v0

    iget-wide v5, v5, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_MinLook:J

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :goto_55
    iput-wide v5, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_MinLook:J

    .line 70
    iget-object v4, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v4, v4, v0

    iget-wide v4, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_MaxLook:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_7e

    .line 71
    iget-object v4, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v4, v4, v0

    iput-wide v2, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_MaxLook:J

    .line 72
    iget-object v2, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v14, v2, v0

    new-instance v15, Lorg/antlr/v4/runtime/atn/LookaheadEventInfo;

    const/4 v4, 0x0

    iget v7, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_startIndex:I

    iget v8, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_sllStopIndex:I

    const/4 v9, 0x0

    move-object v2, v15

    move/from16 v3, p2

    move v5, v11

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v9}, Lorg/antlr/v4/runtime/atn/LookaheadEventInfo;-><init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;ILorg/antlr/v4/runtime/TokenStream;IIZ)V

    iput-object v15, v14, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_MaxLookEvent:Lorg/antlr/v4/runtime/atn/LookaheadEventInfo;

    .line 76
    :cond_7e
    iget v2, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_llStopIndex:I

    if-ltz v2, :cond_d0

    .line 77
    iget v3, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_startIndex:I

    .line 78
    iget-object v4, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v4, v4, v0

    iget-wide v5, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_TotalLook:J

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    add-long/2addr v5, v2

    iput-wide v5, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_TotalLook:J

    .line 79
    iget-object v4, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v4, v4, v0

    iget-wide v5, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_MinLook:J

    cmp-long v7, v5, v12

    if-nez v7, :cond_9d

    move-wide v5, v2

    goto :goto_a7

    :cond_9d
    iget-object v5, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v5, v5, v0

    iget-wide v5, v5, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_MinLook:J

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :goto_a7
    iput-wide v5, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_MinLook:J

    .line 80
    iget-object v4, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v4, v4, v0

    iget-wide v4, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_MaxLook:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_d0

    .line 81
    iget-object v4, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v4, v4, v0

    iput-wide v2, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_MaxLook:J

    .line 82
    iget-object v2, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    aget-object v12, v2, v0

    new-instance v13, Lorg/antlr/v4/runtime/atn/LookaheadEventInfo;

    const/4 v4, 0x0

    iget v7, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_startIndex:I

    iget v8, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_llStopIndex:I

    const/4 v9, 0x1

    move-object v2, v13

    move/from16 v3, p2

    move v5, v11

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v9}, Lorg/antlr/v4/runtime/atn/LookaheadEventInfo;-><init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;ILorg/antlr/v4/runtime/TokenStream;IIZ)V

    iput-object v13, v12, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_MaxLookEvent:Lorg/antlr/v4/runtime/atn/LookaheadEventInfo;
    :try_end_d0
    .catchall {:try_start_5 .. :try_end_d0} :catchall_d3

    .line 90
    :cond_d0
    iput v10, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    return v11

    :catchall_d3
    move-exception v0

    iput v10, v1, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    throw v0
.end method

.method protected computeReachSet(Lorg/antlr/v4/runtime/atn/ATNConfigSet;IZ)Lorg/antlr/v4/runtime/atn/ATNConfigSet;
    .registers 12

    if-eqz p3, :cond_a

    .line 126
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_llStopIndex:I

    .line 129
    :cond_a
    invoke-super {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->computeReachSet(Lorg/antlr/v4/runtime/atn/ATNConfigSet;IZ)Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    move-result-object p2

    const-wide/16 v0, 0x1

    if-eqz p3, :cond_3c

    .line 131
    iget-object p3, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iget v2, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    aget-object p3, p3, v2

    iget-wide v2, p3, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_ATNTransitions:J

    add-long/2addr v2, v0

    iput-wide v2, p3, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_ATNTransitions:J

    if-eqz p2, :cond_20

    goto :goto_65

    .line 136
    :cond_20
    iget-object p3, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iget v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    aget-object p3, p3, v0

    iget-object p3, p3, Lorg/antlr/v4/runtime/atn/DecisionInfo;->errors:Ljava/util/List;

    new-instance v7, Lorg/antlr/v4/runtime/atn/ErrorInfo;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    iget v4, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_startIndex:I

    iget v5, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_llStopIndex:I

    const/4 v6, 0x1

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/ErrorInfo;-><init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/TokenStream;IIZ)V

    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 142
    :cond_3c
    iget-object p3, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iget v2, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    aget-object p3, p3, v2

    iget-wide v2, p3, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_ATNTransitions:J

    add-long/2addr v2, v0

    iput-wide v2, p3, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_ATNTransitions:J

    if-eqz p2, :cond_4a

    goto :goto_65

    .line 146
    :cond_4a
    iget-object p3, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iget v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    aget-object p3, p3, v0

    iget-object p3, p3, Lorg/antlr/v4/runtime/atn/DecisionInfo;->errors:Ljava/util/List;

    new-instance v7, Lorg/antlr/v4/runtime/atn/ErrorInfo;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    iget v4, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_startIndex:I

    iget v5, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_sllStopIndex:I

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/ErrorInfo;-><init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/TokenStream;IIZ)V

    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_65
    return-object p2
.end method

.method protected computeTargetState(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;
    .registers 4

    .line 116
    invoke-super {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->computeTargetState(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object p1

    .line 117
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentState:Lorg/antlr/v4/runtime/dfa/DFAState;

    return-object p1
.end method

.method protected evalSemanticContext(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/ParserRuleContext;IZ)Z
    .registers 16

    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->evalSemanticContext(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/ParserRuleContext;IZ)Z

    move-result p2

    .line 157
    instance-of v0, p1, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;

    if-nez v0, :cond_2c

    .line 158
    iget v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_llStopIndex:I

    if-ltz v0, :cond_e

    move v4, v0

    goto :goto_11

    .line 159
    :cond_e
    iget v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_sllStopIndex:I

    move v4, v0

    .line 160
    :goto_11
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    aget-object v0, v0, v1

    iget-object v9, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->predicateEvals:Ljava/util/List;

    new-instance v10, Lorg/antlr/v4/runtime/atn/PredicateEvalInfo;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    iget v3, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_startIndex:I

    move-object v0, v10

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/antlr/v4/runtime/atn/PredicateEvalInfo;-><init>(ILorg/antlr/v4/runtime/TokenStream;IILorg/antlr/v4/runtime/atn/SemanticContext;ZIZ)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    return p2
.end method

.method public getCurrentState()Lorg/antlr/v4/runtime/dfa/DFAState;
    .registers 2

    .line 225
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentState:Lorg/antlr/v4/runtime/dfa/DFAState;

    return-object v0
.end method

.method public getDecisionInfo()[Lorg/antlr/v4/runtime/atn/DecisionInfo;
    .registers 2

    .line 221
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    return-object v0
.end method

.method protected getExistingTargetState(Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;
    .registers 12

    .line 98
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_sllStopIndex:I

    .line 100
    invoke-super {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getExistingTargetState(Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object p2

    if-eqz p2, :cond_3b

    .line 102
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    aget-object v0, v0, v1

    iget-wide v1, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_DFATransitions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_DFATransitions:J

    .line 103
    sget-object v0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->ERROR:Lorg/antlr/v4/runtime/dfa/DFAState;

    if-ne p2, v0, :cond_3b

    .line 104
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->errors:Ljava/util/List;

    new-instance v8, Lorg/antlr/v4/runtime/atn/ErrorInfo;

    iget v2, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    iget-object v3, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    iget-object v4, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    iget v5, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_startIndex:I

    iget v6, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_sllStopIndex:I

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lorg/antlr/v4/runtime/atn/ErrorInfo;-><init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/TokenStream;IIZ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_3b
    iput-object p2, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentState:Lorg/antlr/v4/runtime/dfa/DFAState;

    return-object p2
.end method

.method protected reportAmbiguity(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;IIZLjava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V
    .registers 21

    move-object v0, p0

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    const/4 v1, 0x0

    if-eqz v9, :cond_d

    .line 196
    invoke-virtual {v9, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_15

    .line 199
    :cond_d
    invoke-virtual/range {p7 .. p7}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->getAlts()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .line 201
    :goto_15
    iget-boolean v2, v10, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->fullCtx:Z

    if-eqz v2, :cond_38

    iget v2, v0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->conflictingAltResolvedBySLL:I

    if-eq v1, v2, :cond_38

    .line 207
    iget-object v1, v0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iget v2, v0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    aget-object v1, v1, v2

    iget-object v7, v1, Lorg/antlr/v4/runtime/atn/DecisionInfo;->contextSensitivities:Ljava/util/List;

    new-instance v8, Lorg/antlr/v4/runtime/atn/ContextSensitivityInfo;

    iget v2, v0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    iget-object v4, v0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    move-object v1, v8

    move-object/from16 v3, p7

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/antlr/v4/runtime/atn/ContextSensitivityInfo;-><init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/TokenStream;II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_38
    iget-object v1, v0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iget v2, v0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    aget-object v1, v1, v2

    iget-object v11, v1, Lorg/antlr/v4/runtime/atn/DecisionInfo;->ambiguities:Ljava/util/List;

    new-instance v12, Lorg/antlr/v4/runtime/atn/AmbiguityInfo;

    iget v2, v0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    iget-object v5, v0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    iget-boolean v8, v10, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->fullCtx:Z

    move-object v1, v12

    move-object/from16 v3, p7

    move-object/from16 v4, p6

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Lorg/antlr/v4/runtime/atn/AmbiguityInfo;-><init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;Ljava/util/BitSet;Lorg/antlr/v4/runtime/TokenStream;IIZ)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-super/range {p0 .. p7}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->reportAmbiguity(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;IIZLjava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    return-void
.end method

.method protected reportAttemptingFullContext(Lorg/antlr/v4/runtime/dfa/DFA;Ljava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;II)V
    .registers 11

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    .line 171
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->conflictingAltResolvedBySLL:I

    goto :goto_14

    .line 174
    :cond_a
    invoke-virtual {p3}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->getAlts()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->conflictingAltResolvedBySLL:I

    .line 176
    :goto_14
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    aget-object v0, v0, v1

    iget-wide v1, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_Fallback:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_Fallback:J

    .line 177
    invoke-super/range {p0 .. p5}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->reportAttemptingFullContext(Lorg/antlr/v4/runtime/dfa/DFA;Ljava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;II)V

    return-void
.end method

.method protected reportContextSensitivity(Lorg/antlr/v4/runtime/dfa/DFA;ILorg/antlr/v4/runtime/atn/ATNConfigSet;II)V
    .registers 14

    .line 182
    iget v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->conflictingAltResolvedBySLL:I

    if-eq p2, v0, :cond_1c

    .line 183
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisions:[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->contextSensitivities:Ljava/util/List;

    new-instance v7, Lorg/antlr/v4/runtime/atn/ContextSensitivityInfo;

    iget v2, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->currentDecision:I

    iget-object v4, p0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    move-object v1, v7

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/antlr/v4/runtime/atn/ContextSensitivityInfo;-><init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/TokenStream;II)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_1c
    invoke-super/range {p0 .. p5}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->reportContextSensitivity(Lorg/antlr/v4/runtime/dfa/DFA;ILorg/antlr/v4/runtime/atn/ATNConfigSet;II)V

    return-void
.end method
