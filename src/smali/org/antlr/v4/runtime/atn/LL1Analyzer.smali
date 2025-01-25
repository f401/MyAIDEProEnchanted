.class public Lorg/antlr/v4/runtime/atn/LL1Analyzer;
.super Ljava/lang/Object;
.source "LL1Analyzer.java"


# static fields
.field public static final HIT_PRED:I


# instance fields
.field public final atn:Lorg/antlr/v4/runtime/atn/ATN;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATN;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    return-void
.end method


# virtual methods
.method public LOOK(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .registers 4

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->LOOK(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object p1

    return-object p1
.end method

.method public LOOK(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .registers 14

    .line 99
    new-instance v9, Lorg/antlr/v4/runtime/misc/IntervalSet;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-direct {v9, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    if-eqz p3, :cond_11

    .line 101
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNState;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    invoke-static {v0, p3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->fromRuleContext(Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object p3

    goto :goto_12

    :cond_11
    const/4 p3, 0x0

    :goto_12
    move-object v3, p3

    .line 102
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v9

    invoke-virtual/range {v0 .. v8}, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->_LOOK(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/misc/IntervalSet;Ljava/util/Set;Ljava/util/BitSet;ZZ)V

    return-object v9
.end method

.method protected _LOOK(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/misc/IntervalSet;Ljava/util/Set;Ljava/util/BitSet;ZZ)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ATNState;",
            "Lorg/antlr/v4/runtime/atn/ATNState;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/misc/IntervalSet;",
            "Ljava/util/Set<",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            ">;",
            "Ljava/util/BitSet;",
            "ZZ)V"
        }
    .end annotation

    .line 146
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v0, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    new-instance v1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    const/4 v14, 0x0

    invoke-direct {v1, v11, v14, v0}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;ILorg/antlr/v4/runtime/atn/PredictionContext;)V

    .line 147
    move-object/from16 v15, p5

    invoke-interface {v15, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return-void

    :cond_19
    const/4 v1, -0x1

    const/4 v2, -0x2

    move-object/from16 v9, p2

    if-ne v11, v9, :cond_31

    if-nez v0, :cond_25

    .line 151
    invoke-virtual {v12, v2}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    return-void

    .line 154
    :cond_25
    invoke-virtual/range {p3 .. p3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_31

    if-eqz p8, :cond_31

    .line 155
    invoke-virtual {v12, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    return-void

    .line 160
    :cond_31
    instance-of v3, v11, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v3, :cond_96

    if-nez v0, :cond_3b

    .line 162
    invoke-virtual {v12, v2}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    return-void

    .line 165
    :cond_3b
    invoke-virtual/range {p3 .. p3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_47

    if-eqz p8, :cond_47

    .line 166
    invoke-virtual {v12, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    return-void

    .line 170
    :cond_47
    sget-object v1, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    if-eq v0, v1, :cond_96

    .line 172
    iget v1, v11, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    invoke-virtual {v13, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v16

    .line 174
    :try_start_51
    iget v1, v11, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    invoke-virtual {v13, v1}, Ljava/util/BitSet;->clear(I)V

    .line 175
    :goto_56
    invoke-virtual/range {p3 .. p3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v1

    if-ge v14, v1, :cond_85

    .line 176
    iget-object v1, v10, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-virtual {v0, v14}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 178
    invoke-virtual {v0, v14}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->_LOOK(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/misc/IntervalSet;Ljava/util/Set;Ljava/util/BitSet;ZZ)V
    :try_end_80
    .catchall {:try_start_51 .. :try_end_80} :catchall_8d

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, p2

    goto :goto_56

    :cond_85
    if-eqz v16, :cond_8c

    .line 183
    iget v0, v11, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    invoke-virtual {v13, v0}, Ljava/util/BitSet;->set(I)V

    :cond_8c
    return-void

    :catchall_8d
    move-exception v0

    if-eqz v16, :cond_95

    iget v1, v11, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    invoke-virtual {v13, v1}, Ljava/util/BitSet;->set(I)V

    :cond_95
    throw v0

    .line 190
    :cond_96
    invoke-virtual/range {p1 .. p1}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v9

    const/4 v8, 0x0

    :goto_9b
    if-ge v8, v9, :cond_171

    .line 192
    invoke-virtual {v11, v8}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/antlr/v4/runtime/atn/RuleTransition;

    if-ne v2, v3, :cond_fa

    .line 194
    move-object v7, v1

    check-cast v7, Lorg/antlr/v4/runtime/atn/RuleTransition;

    iget-object v2, v7, Lorg/antlr/v4/runtime/atn/RuleTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v2, v2, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    invoke-virtual {v13, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_bc

    move/from16 v17, v8

    move/from16 v18, v9

    goto/16 :goto_16b

    .line 198
    :cond_bc
    iget-object v2, v7, Lorg/antlr/v4/runtime/atn/RuleTransition;->followState:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v2, v2, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-static {v0, v2}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->create(Lorg/antlr/v4/runtime/atn/PredictionContext;I)Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    move-result-object v4

    .line 202
    :try_start_c4
    move-object v2, v1

    check-cast v2, Lorg/antlr/v4/runtime/atn/RuleTransition;

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/RuleTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v2, v2, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    invoke-virtual {v13, v2}, Ljava/util/BitSet;->set(I)V

    .line 203
    iget-object v2, v1, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;
    :try_end_d0
    .catchall {:try_start_c4 .. :try_end_d0} :catchall_f0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v14, v7

    move-object/from16 v7, p6

    move/from16 v17, v8

    move/from16 v8, p7

    move/from16 v18, v9

    move/from16 v9, p8

    :try_start_e3
    invoke-virtual/range {v1 .. v9}, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->_LOOK(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/misc/IntervalSet;Ljava/util/Set;Ljava/util/BitSet;ZZ)V
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_ee

    .line 206
    iget-object v1, v14, Lorg/antlr/v4/runtime/atn/RuleTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v1, v1, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    invoke-virtual {v13, v1}, Ljava/util/BitSet;->clear(I)V

    goto :goto_119

    :catchall_ee
    move-exception v0

    goto :goto_f2

    :catchall_f0
    move-exception v0

    move-object v14, v7

    :goto_f2
    iget-object v1, v14, Lorg/antlr/v4/runtime/atn/RuleTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v1, v1, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    invoke-virtual {v13, v1}, Ljava/util/BitSet;->clear(I)V

    throw v0

    .line 209
    :cond_fa
    move/from16 v17, v8

    move/from16 v18, v9

    instance-of v2, v1, Lorg/antlr/v4/runtime/atn/AbstractPredicateTransition;

    if-eqz v2, :cond_120

    if-eqz p7, :cond_11b

    .line 211
    iget-object v2, v1, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->_LOOK(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/misc/IntervalSet;Ljava/util/Set;Ljava/util/BitSet;ZZ)V

    :goto_119
    const/4 v14, 0x0

    goto :goto_16b

    .line 214
    :cond_11b
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    goto :goto_16b

    .line 217
    :cond_120
    const/4 v14, 0x0

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/Transition;->isEpsilon()Z

    move-result v2

    if-eqz v2, :cond_13d

    .line 218
    iget-object v2, v1, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->_LOOK(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/misc/IntervalSet;Ljava/util/Set;Ljava/util/BitSet;ZZ)V

    goto :goto_16b

    .line 220
    :cond_13d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/antlr/v4/runtime/atn/WildcardTransition;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_152

    .line 221
    iget-object v1, v10, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget v1, v1, Lorg/antlr/v4/runtime/atn/ATN;->maxTokenType:I

    invoke-static {v4, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->of(II)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v1

    invoke-virtual {v12, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    goto :goto_16b

    .line 225
    :cond_152
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/Transition;->label()Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v2

    if-eqz v2, :cond_16b

    .line 227
    instance-of v1, v1, Lorg/antlr/v4/runtime/atn/NotSetTransition;

    if-eqz v1, :cond_168

    .line 228
    iget-object v1, v10, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget v1, v1, Lorg/antlr/v4/runtime/atn/ATN;->maxTokenType:I

    invoke-static {v4, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->of(II)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->complement(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v2

    .line 230
    :cond_168
    invoke-virtual {v12, v2}, Lorg/antlr/v4/runtime/misc/IntervalSet;->addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    :cond_16b
    :goto_16b
    add-int/lit8 v8, v17, 0x1

    move/from16 v9, v18

    goto/16 :goto_9b

    :cond_171
    return-void
.end method

.method public getDecisionLookahead(Lorg/antlr/v4/runtime/atn/ATNState;)[Lorg/antlr/v4/runtime/misc/IntervalSet;
    .registers 18

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 43
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v2

    new-array v2, v2, [Lorg/antlr/v4/runtime/misc/IntervalSet;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 44
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v5

    if-ge v4, v5, :cond_4e

    .line 45
    new-instance v5, Lorg/antlr/v4/runtime/misc/IntervalSet;

    new-array v6, v3, [I

    invoke-direct {v5, v6}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    aput-object v5, v2, v4

    .line 46
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 48
    invoke-virtual {v0, v4}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v5

    iget-object v8, v5, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    const/4 v9, 0x0

    sget-object v10, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    aget-object v11, v2, v4

    new-instance v13, Ljava/util/BitSet;

    invoke-direct {v13}, Ljava/util/BitSet;-><init>()V

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v15}, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->_LOOK(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/misc/IntervalSet;Ljava/util/Set;Ljava/util/BitSet;ZZ)V

    .line 52
    aget-object v5, v2, v4

    invoke-virtual {v5}, Lorg/antlr/v4/runtime/misc/IntervalSet;->size()I

    move-result v5

    if-eqz v5, :cond_49

    aget-object v5, v2, v4

    invoke-virtual {v5, v3}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 53
    :cond_49
    aput-object v1, v2, v4

    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_4e
    return-object v2
.end method
