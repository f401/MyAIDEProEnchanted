.class public Lorg/antlr/v4/runtime/atn/LL1Analyzer;
.super Ljava/lang/Object;
.source "LL1Analyzer.java"


# static fields
.field public static final HIT_PRED:I


# instance fields
.field public final atn:Lorg/antlr/v4/runtime/atn/ATN;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATN;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    return-void
.end method


# virtual methods
.method public LOOK(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .locals 1

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->LOOK(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    return-object v0
.end method

.method public LOOK(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .locals 9

    const/4 v7, 0x1

    .line 99
    new-instance v4, Lorg/antlr/v4/runtime/misc/IntervalSet;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-direct {v4, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    if-eqz p3, :cond_0

    .line 101
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNState;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    invoke-static {v0, p3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->fromRuleContext(Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v3

    .line 102
    :goto_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->_LOOK(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/misc/IntervalSet;Ljava/util/Set;Ljava/util/BitSet;ZZ)V

    return-object v4

    .line 101
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected _LOOK(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/misc/IntervalSet;Ljava/util/Set;Ljava/util/BitSet;ZZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ATNState;",
            "Lorg/antlr/v4/runtime/atn/ATNState;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/misc/IntervalSet;",
            "Ljava/util/Set",
            "<",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            ">;",
            "Ljava/util/BitSet;",
            "ZZ)V"
        }
    .end annotation

    .line 146
    const/4 v1, 0x0

    new-instance v2, Lorg/antlr/v4/runtime/atn/ATNConfig;

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-direct {v2, p1, v3, v0}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;ILorg/antlr/v4/runtime/atn/PredictionContext;)V

    .line 147
    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    if-ne p1, p2, :cond_3

    if-nez p3, :cond_2

    .line 151
    const/4 v1, -0x2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p8, :cond_3

    .line 155
    const/4 v1, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    goto :goto_0

    .line 160
    :cond_3
    instance-of v2, p1, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v2, :cond_8

    if-nez p3, :cond_4

    .line 162
    const/4 v1, -0x2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    goto :goto_0

    .line 165
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p8, :cond_5

    .line 166
    const/4 v1, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    goto :goto_0

    .line 170
    :cond_5
    sget-object v2, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_8

    .line 172
    iget v2, p1, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    .line 174
    :try_start_0
    iget v2, p1, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->clear(I)V

    move v10, v1

    .line 175
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v1

    if-ge v10, v1, :cond_6

    .line 176
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 178
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v4

    move-object v1, p0

    move-object v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->_LOOK(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/misc/IntervalSet;Ljava/util/Set;Ljava/util/BitSet;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_1

    :cond_6
    if-eqz v11, :cond_0

    .line 183
    iget v1, p1, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    if-eqz v11, :cond_7

    iget v2, p1, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    :cond_7
    throw v1

    .line 190
    :cond_8
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v12

    const/4 v1, 0x0

    move v11, v1

    :goto_2
    if-ge v11, v12, :cond_0

    .line 192
    invoke-virtual {p1, v11}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/antlr/v4/runtime/atn/RuleTransition;

    if-ne v1, v3, :cond_b

    move-object v10, v2

    .line 194
    check-cast v10, Lorg/antlr/v4/runtime/atn/RuleTransition;

    iget-object v1, v10, Lorg/antlr/v4/runtime/atn/RuleTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v1, v1, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 230
    :cond_9
    :goto_3
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_2

    .line 198
    :cond_a
    iget-object v1, v10, Lorg/antlr/v4/runtime/atn/RuleTransition;->followState:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v1, v1, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->create(Lorg/antlr/v4/runtime/atn/PredictionContext;I)Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    move-result-object v4

    .line 202
    :try_start_1
    move-object v0, v2

    check-cast v0, Lorg/antlr/v4/runtime/atn/RuleTransition;

    move-object v1, v0

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/RuleTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v1, v1, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 203
    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v1, p0

    move-object v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    :try_start_2
    invoke-virtual/range {v1 .. v9}, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->_LOOK(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/misc/IntervalSet;Ljava/util/Set;Ljava/util/BitSet;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 206
    iget-object v1, v10, Lorg/antlr/v4/runtime/atn/RuleTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v1, v1, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    goto :goto_3

    :catchall_1
    move-exception v1

    :goto_4
    iget-object v2, v10, Lorg/antlr/v4/runtime/atn/RuleTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v2, v2, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->clear(I)V

    throw v1

    .line 209
    :cond_b
    instance-of v1, v2, Lorg/antlr/v4/runtime/atn/AbstractPredicateTransition;

    if-eqz v1, :cond_d

    if-eqz p7, :cond_c

    .line 211
    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    move-object v1, p0

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->_LOOK(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/misc/IntervalSet;Ljava/util/Set;Ljava/util/BitSet;ZZ)V

    goto :goto_3

    .line 214
    :cond_c
    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    goto :goto_3

    .line 217
    :cond_d
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/Transition;->isEpsilon()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 218
    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    move-object v1, p0

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->_LOOK(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/misc/IntervalSet;Ljava/util/Set;Ljava/util/BitSet;ZZ)V

    goto :goto_3

    .line 220
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/antlr/v4/runtime/atn/WildcardTransition;

    if-ne v1, v3, :cond_f

    .line 221
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget v2, v2, Lorg/antlr/v4/runtime/atn/ATN;->maxTokenType:I

    invoke-static {v1, v2}, Lorg/antlr/v4/runtime/misc/IntervalSet;->of(II)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    goto/16 :goto_3

    .line 225
    :cond_f
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/Transition;->label()Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 227
    instance-of v2, v2, Lorg/antlr/v4/runtime/atn/NotSetTransition;

    if-eqz v2, :cond_10

    .line 228
    const/4 v2, 0x1

    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget v3, v3, Lorg/antlr/v4/runtime/atn/ATN;->maxTokenType:I

    invoke-static {v2, v3}, Lorg/antlr/v4/runtime/misc/IntervalSet;->of(II)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/misc/IntervalSet;->complement(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v1

    .line 230
    :cond_10
    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    goto/16 :goto_3

    .line 206
    :catchall_2
    move-exception v1

    goto :goto_4
.end method

.method public getDecisionLookahead(Lorg/antlr/v4/runtime/atn/ATNState;)[Lorg/antlr/v4/runtime/misc/IntervalSet;
    .locals 11

    const/4 v2, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_0

    .line 53
    :goto_0
    return-object v2

    .line 43
    :cond_0
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v0

    new-array v10, v0, [Lorg/antlr/v4/runtime/misc/IntervalSet;

    move v9, v7

    .line 44
    :goto_1
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 45
    new-instance v0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    new-array v1, v7, [I

    invoke-direct {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    aput-object v0, v10, v9

    .line 46
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 48
    invoke-virtual {p1, v9}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v0

    iget-object v1, v0, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    sget-object v3, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    aget-object v4, v10, v9

    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    move-object v0, p0

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->_LOOK(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/misc/IntervalSet;Ljava/util/Set;Ljava/util/BitSet;ZZ)V

    .line 52
    aget-object v0, v10, v9

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->size()I

    move-result v0

    if-eqz v0, :cond_1

    aget-object v0, v10, v9

    invoke-virtual {v0, v7}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    :cond_1
    aput-object v2, v10, v9

    :cond_2
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_3
    move-object v2, v10

    goto :goto_0
.end method
