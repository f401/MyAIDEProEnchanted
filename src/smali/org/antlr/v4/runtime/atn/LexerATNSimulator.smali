.class public Lorg/antlr/v4/runtime/atn/LexerATNSimulator;
.super Lorg/antlr/v4/runtime/atn/ATNSimulator;
.source "LexerATNSimulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z = false

.field public static final MAX_DFA_EDGE:I = 0x7f

.field public static final MIN_DFA_EDGE:I = 0x0

.field public static final debug:Z = false

.field public static final dfa_debug:Z = false


# instance fields
.field protected charPositionInLine:I

.field public final decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

.field protected line:I

.field protected mode:I

.field protected final prevAccept:Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;

.field protected final recog:Lorg/antlr/v4/runtime/Lexer;

.field protected startIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/Lexer;Lorg/antlr/v4/runtime/atn/ATN;[Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V
    .registers 5

    .line 91
    invoke-direct {p0, p2, p4}, Lorg/antlr/v4/runtime/atn/ATNSimulator;-><init>(Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V

    .line 65
    const/4 p2, -0x1

    iput p2, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->startIndex:I

    .line 68
    const/4 p2, 0x1

    iput p2, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    .line 71
    const/4 p2, 0x0

    iput p2, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    .line 75
    iput p2, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->mode:I

    .line 79
    new-instance p2, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;

    invoke-direct {p2}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;-><init>()V

    iput-object p2, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->prevAccept:Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;

    .line 92
    iput-object p3, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    .line 93
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->recog:Lorg/antlr/v4/runtime/Lexer;

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATN;[Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V
    .registers 5

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;-><init>(Lorg/antlr/v4/runtime/Lexer;Lorg/antlr/v4/runtime/atn/ATN;[Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V

    return-void
.end method


# virtual methods
.method protected accept(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/LexerActionExecutor;IIII)V
    .registers 7

    .line 361
    invoke-interface {p1, p4}, Lorg/antlr/v4/runtime/CharStream;->seek(I)V

    .line 362
    iput p5, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    .line 363
    iput p6, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    if-eqz p2, :cond_10

    .line 365
    iget-object p4, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->recog:Lorg/antlr/v4/runtime/Lexer;

    if-eqz p4, :cond_10

    .line 366
    invoke-virtual {p2, p4, p1, p3}, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->execute(Lorg/antlr/v4/runtime/Lexer;Lorg/antlr/v4/runtime/CharStream;I)V

    :cond_10
    return-void
.end method

.method protected addDFAEdge(Lorg/antlr/v4/runtime/dfa/DFAState;ILorg/antlr/v4/runtime/atn/ATNConfigSet;)Lorg/antlr/v4/runtime/dfa/DFAState;
    .registers 6

    .line 629
    iget-boolean v0, p3, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    .line 630
    const/4 v1, 0x0

    iput-boolean v1, p3, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    .line 633
    invoke-virtual {p0, p3}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->addDFAState(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object p3

    if-eqz v0, :cond_c

    return-object p3

    .line 639
    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->addDFAEdge(Lorg/antlr/v4/runtime/dfa/DFAState;ILorg/antlr/v4/runtime/dfa/DFAState;)V

    return-object p3
.end method

.method protected addDFAEdge(Lorg/antlr/v4/runtime/dfa/DFAState;ILorg/antlr/v4/runtime/dfa/DFAState;)V
    .registers 5

    if-ltz p2, :cond_1b

    const/16 v0, 0x7f

    if-le p2, v0, :cond_7

    goto :goto_1b

    .line 653
    :cond_7
    monitor-enter p1

    .line 654
    :try_start_8
    iget-object v0, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    if-nez v0, :cond_12

    .line 656
    const/16 v0, 0x80

    new-array v0, v0, [Lorg/antlr/v4/runtime/dfa/DFAState;

    iput-object v0, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    .line 658
    :cond_12
    iget-object v0, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    aput-object p3, v0, p2

    .line 659
    monitor-exit p1

    return-void

    :catchall_18
    move-exception p2

    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    throw p2

    :cond_1b
    :goto_1b
    return-void
.end method

.method protected addDFAState(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Lorg/antlr/v4/runtime/dfa/DFAState;
    .registers 7

    .line 674
    new-instance v0, Lorg/antlr/v4/runtime/dfa/DFAState;

    invoke-direct {v0, p1}, Lorg/antlr/v4/runtime/dfa/DFAState;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    .line 676
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 677
    iget-object v3, v2, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v3, v3, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v3, :cond_9

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    const/4 v1, 0x1

    if-eqz v2, :cond_37

    .line 684
    iput-boolean v1, v0, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    .line 685
    move-object v3, v2

    check-cast v3, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    invoke-virtual {v3}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->getLexerActionExecutor()Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    move-result-object v3

    iput-object v3, v0, Lorg/antlr/v4/runtime/dfa/DFAState;->lexerActionExecutor:Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    .line 686
    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/ATN;->ruleToTokenType:[I

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v2, v2, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    aget v2, v3, v2

    iput v2, v0, Lorg/antlr/v4/runtime/dfa/DFAState;->prediction:I

    .line 689
    :cond_37
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    iget v3, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->mode:I

    aget-object v2, v2, v3

    .line 690
    iget-object v3, v2, Lorg/antlr/v4/runtime/dfa/DFA;->states:Ljava/util/Map;

    monitor-enter v3

    .line 691
    :try_start_40
    iget-object v4, v2, Lorg/antlr/v4/runtime/dfa/DFA;->states:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/antlr/v4/runtime/dfa/DFAState;

    if-eqz v4, :cond_4c

    .line 692
    monitor-exit v3

    return-object v4

    .line 696
    :cond_4c
    iget-object v4, v2, Lorg/antlr/v4/runtime/dfa/DFA;->states:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    iput v4, v0, Lorg/antlr/v4/runtime/dfa/DFAState;->stateNumber:I

    .line 697
    invoke-virtual {p1, v1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->setReadonly(Z)V

    .line 698
    iput-object p1, v0, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    .line 699
    iget-object p1, v2, Lorg/antlr/v4/runtime/dfa/DFA;->states:Ljava/util/Map;

    invoke-interface {p1, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    monitor-exit v3

    return-object v0

    :catchall_60
    move-exception p1

    .line 701
    monitor-exit v3
    :try_end_62
    .catchall {:try_start_40 .. :try_end_62} :catchall_60

    goto :goto_64

    :goto_63
    throw p1

    :goto_64
    goto :goto_63
.end method

.method protected captureSimState(Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/dfa/DFAState;)V
    .registers 4

    .line 607
    invoke-interface {p2}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result p2

    iput p2, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->index:I

    .line 608
    iget p2, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    iput p2, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->line:I

    .line 609
    iget p2, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    iput p2, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->charPos:I

    .line 610
    iput-object p3, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->dfaState:Lorg/antlr/v4/runtime/dfa/DFAState;

    return-void
.end method

.method public clearDFA()V
    .registers 5

    const/4 v0, 0x0

    .line 133
    :goto_1
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 134
    new-instance v2, Lorg/antlr/v4/runtime/dfa/DFA;

    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    invoke-virtual {v3, v0}, Lorg/antlr/v4/runtime/atn/ATN;->getDecisionState(I)Lorg/antlr/v4/runtime/atn/DecisionState;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/antlr/v4/runtime/dfa/DFA;-><init>(Lorg/antlr/v4/runtime/atn/DecisionState;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-void
.end method

.method protected closure(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;ZZZ)Z
    .registers 20

    .line 408
    move-object v7, p2

    move-object/from16 v8, p3

    iget-object v0, v7, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v0, v0, Lorg/antlr/v4/runtime/atn/RuleStopState;

    const/4 v1, 0x0

    if-eqz v0, :cond_8e

    .line 418
    iget-object v0, v7, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v0, :cond_1a

    iget-object v0, v7, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->hasEmptyPath()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_1a

    :cond_17
    move/from16 v2, p4

    goto :goto_36

    .line 419
    :cond_1a
    :goto_1a
    iget-object v0, v7, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    const/4 v2, 0x1

    if-eqz v0, :cond_89

    iget-object v0, v7, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    move-object v10, p0

    goto/16 :goto_8a

    .line 424
    :cond_2a
    new-instance v0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    iget-object v3, v7, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    sget-object v4, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    invoke-direct {v0, p2, v3, v4}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;)V

    invoke-virtual {v8, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    .line 429
    :goto_36
    iget-object v0, v7, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v0, :cond_87

    iget-object v0, v7, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_87

    move v4, v2

    const/4 v9, 0x0

    .line 430
    :goto_44
    iget-object v0, v7, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v0

    if-ge v9, v0, :cond_84

    .line 431
    iget-object v0, v7, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v0, v9}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_80

    .line 432
    iget-object v0, v7, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v0, v9}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v0

    .line 433
    move-object v10, p0

    iget-object v1, v10, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    iget-object v2, v7, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v2, v9}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 434
    new-instance v2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    invoke-direct {v2, p2, v1, v0}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;)V

    .line 435
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->closure(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;ZZZ)Z

    move-result v4

    goto :goto_81

    .line 431
    :cond_80
    move-object v10, p0

    .line 435
    :goto_81
    add-int/lit8 v9, v9, 0x1

    goto :goto_44

    :cond_84
    move-object v10, p0

    move v2, v4

    goto :goto_88

    .line 429
    :cond_87
    move-object v10, p0

    .line 435
    :goto_88
    return v2

    .line 419
    :cond_89
    move-object v10, p0

    .line 420
    :goto_8a
    invoke-virtual {v8, p2}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    return v2

    .line 444
    :cond_8e
    move-object v10, p0

    iget-object v0, v7, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->onlyHasEpsilonTransitions()Z

    move-result v0

    if-nez v0, :cond_a2

    if-eqz p4, :cond_9f

    .line 445
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->hasPassedThroughNonGreedyDecision()Z

    move-result v0

    if-nez v0, :cond_a2

    .line 446
    :cond_9f
    invoke-virtual {v8, p2}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    .line 450
    :cond_a2
    iget-object v9, v7, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    move/from16 v12, p4

    const/4 v11, 0x0

    .line 451
    :goto_a7
    invoke-virtual {v9}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v0

    if-ge v11, v0, :cond_d1

    .line 452
    invoke-virtual {v9, v11}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v3

    .line 453
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->getEpsilonTarget(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/Transition;Lorg/antlr/v4/runtime/atn/ATNConfigSet;ZZ)Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    move-result-object v2

    if-eqz v2, :cond_ce

    .line 455
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p3

    move v4, v12

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->closure(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;ZZZ)Z

    move-result v0

    move v12, v0

    :cond_ce
    add-int/lit8 v11, v11, 0x1

    goto :goto_a7

    :cond_d1
    return v12
.end method

.method protected computeStartState(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/ATNState;)Lorg/antlr/v4/runtime/atn/ATNConfigSet;
    .registers 13

    .line 383
    sget-object v0, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    .line 384
    new-instance v8, Lorg/antlr/v4/runtime/atn/OrderedATNConfigSet;

    invoke-direct {v8}, Lorg/antlr/v4/runtime/atn/OrderedATNConfigSet;-><init>()V

    const/4 v1, 0x0

    .line 385
    :goto_8
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 386
    invoke-virtual {p2, v1}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v2

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 387
    add-int/lit8 v9, v1, 0x1

    new-instance v3, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    invoke-direct {v3, v2, v9, v0}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;ILorg/antlr/v4/runtime/atn/PredictionContext;)V

    .line 388
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v8

    invoke-virtual/range {v1 .. v7}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->closure(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;ZZZ)Z

    move v1, v9

    goto :goto_8

    :cond_26
    return-object v8
.end method

.method protected computeTargetState(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;
    .registers 6

    .line 273
    new-instance v0, Lorg/antlr/v4/runtime/atn/OrderedATNConfigSet;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/OrderedATNConfigSet;-><init>()V

    .line 277
    iget-object v1, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {p0, p1, v1, v0, p3}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->getReachableConfigSet(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;I)V

    .line 279
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 280
    iget-boolean p1, v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    if-nez p1, :cond_19

    .line 283
    sget-object p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->ERROR:Lorg/antlr/v4/runtime/dfa/DFAState;

    invoke-virtual {p0, p2, p3, p1}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->addDFAEdge(Lorg/antlr/v4/runtime/dfa/DFAState;ILorg/antlr/v4/runtime/dfa/DFAState;)V

    .line 287
    :cond_19
    sget-object p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->ERROR:Lorg/antlr/v4/runtime/dfa/DFAState;

    return-object p1

    .line 291
    :cond_1c
    invoke-virtual {p0, p2, p3, v0}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->addDFAEdge(Lorg/antlr/v4/runtime/dfa/DFAState;ILorg/antlr/v4/runtime/atn/ATNConfigSet;)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object p1

    return-object p1
.end method

.method public consume(Lorg/antlr/v4/runtime/CharStream;)V
    .registers 5

    .line 734
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/antlr/v4/runtime/CharStream;->LA(I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_12

    .line 736
    iget v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    .line 737
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    goto :goto_17

    .line 740
    :cond_12
    iget v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    .line 742
    :goto_17
    invoke-interface {p1}, Lorg/antlr/v4/runtime/CharStream;->consume()V

    return-void
.end method

.method public copyState(Lorg/antlr/v4/runtime/atn/LexerATNSimulator;)V
    .registers 3

    .line 97
    iget v0, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    iput v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    .line 98
    iget v0, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    iput v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    .line 99
    iget v0, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->mode:I

    iput v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->mode:I

    .line 100
    iget p1, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->startIndex:I

    iput p1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->startIndex:I

    return-void
.end method

.method protected evaluatePredicate(Lorg/antlr/v4/runtime/CharStream;IIZ)Z
    .registers 10

    .line 579
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->recog:Lorg/antlr/v4/runtime/Lexer;

    if-nez v0, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 v1, 0x0

    if-nez p4, :cond_e

    .line 584
    invoke-virtual {v0, v1, p2, p3}, Lorg/antlr/v4/runtime/Lexer;->sempred(Lorg/antlr/v4/runtime/RuleContext;II)Z

    move-result p1

    return p1

    .line 587
    :cond_e
    iget p4, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    .line 588
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    .line 589
    invoke-interface {p1}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v2

    .line 590
    invoke-interface {p1}, Lorg/antlr/v4/runtime/CharStream;->mark()I

    move-result v3

    .line 592
    :try_start_1a
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->consume(Lorg/antlr/v4/runtime/CharStream;)V

    .line 593
    iget-object v4, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->recog:Lorg/antlr/v4/runtime/Lexer;

    invoke-virtual {v4, v1, p2, p3}, Lorg/antlr/v4/runtime/Lexer;->sempred(Lorg/antlr/v4/runtime/RuleContext;II)Z

    move-result p2
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_2e

    .line 596
    iput p4, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    .line 597
    iput v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    .line 598
    invoke-interface {p1, v2}, Lorg/antlr/v4/runtime/CharStream;->seek(I)V

    .line 599
    invoke-interface {p1, v3}, Lorg/antlr/v4/runtime/CharStream;->release(I)V

    return p2

    :catchall_2e
    move-exception p2

    .line 596
    iput p4, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    .line 597
    iput v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    .line 598
    invoke-interface {p1, v2}, Lorg/antlr/v4/runtime/CharStream;->seek(I)V

    .line 599
    invoke-interface {p1, v3}, Lorg/antlr/v4/runtime/CharStream;->release(I)V

    throw p2
.end method

.method protected execATN(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/dfa/DFAState;)I
    .registers 8

    .line 171
    iget-boolean v0, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    if-eqz v0, :cond_9

    .line 173
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->prevAccept:Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;

    invoke-virtual {p0, v0, p1, p2}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->captureSimState(Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/dfa/DFAState;)V

    .line 176
    :cond_9
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/antlr/v4/runtime/CharStream;->LA(I)I

    move-result v1

    .line 202
    :goto_e
    invoke-virtual {p0, p2, v1}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->getExistingTargetState(Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object v2

    if-nez v2, :cond_18

    .line 204
    invoke-virtual {p0, p1, p2, v1}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->computeTargetState(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object v2

    .line 207
    :cond_18
    sget-object v3, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->ERROR:Lorg/antlr/v4/runtime/dfa/DFAState;

    if-ne v2, v3, :cond_1d

    goto :goto_2e

    :cond_1d
    const/4 v3, -0x1

    if-eq v1, v3, :cond_23

    .line 216
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->consume(Lorg/antlr/v4/runtime/CharStream;)V

    .line 219
    :cond_23
    iget-boolean v4, v2, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    if-eqz v4, :cond_37

    .line 220
    iget-object v4, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->prevAccept:Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;

    invoke-virtual {p0, v4, p1, v2}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->captureSimState(Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/dfa/DFAState;)V

    if-ne v1, v3, :cond_37

    .line 230
    :goto_2e
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->prevAccept:Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;

    iget-object p2, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->failOrAccept(Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/ATNConfigSet;I)I

    move-result p1

    return p1

    .line 226
    :cond_37
    invoke-interface {p1, v0}, Lorg/antlr/v4/runtime/CharStream;->LA(I)I

    move-result v1

    move-object p2, v2

    goto :goto_e
.end method

.method protected failOrAccept(Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/ATNConfigSet;I)I
    .registers 12

    .line 297
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->dfaState:Lorg/antlr/v4/runtime/dfa/DFAState;

    if-eqz v0, :cond_1a

    .line 298
    iget-object p3, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->dfaState:Lorg/antlr/v4/runtime/dfa/DFAState;

    iget-object v2, p3, Lorg/antlr/v4/runtime/dfa/DFAState;->lexerActionExecutor:Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    .line 299
    iget v3, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->startIndex:I

    iget v4, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->index:I

    iget v5, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->line:I

    iget v6, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->charPos:I

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->accept(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/LexerActionExecutor;IIII)V

    .line 301
    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->dfaState:Lorg/antlr/v4/runtime/dfa/DFAState;

    iget p1, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->prediction:I

    return p1

    :cond_1a
    const/4 p1, -0x1

    if-ne p4, p1, :cond_26

    .line 305
    invoke-interface {p2}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result p4

    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->startIndex:I

    if-ne p4, v0, :cond_26

    return p1

    .line 309
    :cond_26
    new-instance p1, Lorg/antlr/v4/runtime/LexerNoViableAltException;

    iget-object p4, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->recog:Lorg/antlr/v4/runtime/Lexer;

    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->startIndex:I

    invoke-direct {p1, p4, p2, v0, p3}, Lorg/antlr/v4/runtime/LexerNoViableAltException;-><init>(Lorg/antlr/v4/runtime/Lexer;Lorg/antlr/v4/runtime/CharStream;ILorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    throw p1
.end method

.method public getCharPositionInLine()I
    .registers 2

    .line 726
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    return v0
.end method

.method public final getDFA(I)Lorg/antlr/v4/runtime/dfa/DFA;
    .registers 3

    .line 706
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected getEpsilonTarget(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/Transition;Lorg/antlr/v4/runtime/atn/ATNConfigSet;ZZ)Lorg/antlr/v4/runtime/atn/LexerATNConfig;
    .registers 9

    .line 472
    invoke-virtual {p3}, Lorg/antlr/v4/runtime/atn/Transition;->getSerializationType()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_8b

    packed-switch v0, :pswitch_data_94

    goto/16 :goto_89

    .line 513
    :pswitch_d  #0x6
    iget-object p1, p2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz p1, :cond_22

    iget-object p1, p2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/PredictionContext;->hasEmptyPath()Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_22

    .line 532
    :cond_1a
    new-instance p1, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    iget-object p3, p3, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {p1, p2, p3}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    goto :goto_8a

    .line 526
    :cond_22
    :goto_22
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->getLexerActionExecutor()Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    move-result-object p1

    iget-object p4, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object p4, p4, Lorg/antlr/v4/runtime/atn/ATN;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    move-object p5, p3

    check-cast p5, Lorg/antlr/v4/runtime/atn/ActionTransition;

    iget p5, p5, Lorg/antlr/v4/runtime/atn/ActionTransition;->actionIndex:I

    aget-object p4, p4, p5

    invoke-static {p1, p4}, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->append(Lorg/antlr/v4/runtime/atn/LexerActionExecutor;Lorg/antlr/v4/runtime/atn/LexerAction;)Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    move-result-object p1

    .line 527
    new-instance p4, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    iget-object p3, p3, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {p4, p2, p3, p1}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/LexerActionExecutor;)V

    move-object p1, p4

    goto :goto_6b

    .line 502
    :pswitch_3e  #0x4
    move-object p6, p3

    check-cast p6, Lorg/antlr/v4/runtime/atn/PredicateTransition;

    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p4, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    .line 507
    iget p4, p6, Lorg/antlr/v4/runtime/atn/PredicateTransition;->ruleIndex:I

    iget p6, p6, Lorg/antlr/v4/runtime/atn/PredicateTransition;->predIndex:I

    invoke-virtual {p0, p1, p4, p6, p5}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->evaluatePredicate(Lorg/antlr/v4/runtime/CharStream;IIZ)Z

    move-result p1

    if-eqz p1, :cond_89

    .line 508
    new-instance p1, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    iget-object p3, p3, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {p1, p2, p3}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    goto :goto_8a

    .line 474
    :pswitch_56  #0x3
    move-object p1, p3

    check-cast p1, Lorg/antlr/v4/runtime/atn/RuleTransition;

    .line 475
    iget-object p4, p2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/RuleTransition;->followState:Lorg/antlr/v4/runtime/atn/ATNState;

    iget p1, p1, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-static {p4, p1}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->create(Lorg/antlr/v4/runtime/atn/PredictionContext;I)Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    move-result-object p1

    .line 477
    new-instance p4, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    iget-object p3, p3, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {p4, p2, p3, p1}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;)V

    move-object p1, p4

    :goto_6b
    goto :goto_8a

    :pswitch_6c  #0x2, 0x5, 0x7
    if-eqz p6, :cond_89

    .line 544
    const/4 p1, 0x0

    const p4, 0x10ffff

    const/4 p5, -0x1

    invoke-virtual {p3, p5, p1, p4}, Lorg/antlr/v4/runtime/atn/Transition;->matches(III)Z

    move-result p1

    if-eqz p1, :cond_89

    .line 545
    new-instance p1, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    iget-object p3, p3, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {p1, p2, p3}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    goto :goto_8a

    .line 537
    :pswitch_81  #0x1
    new-instance p1, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    iget-object p3, p3, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {p1, p2, p3}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    goto :goto_8a

    .line 545
    :cond_89
    :goto_89
    const/4 p1, 0x0

    .line 537
    :goto_8a
    return-object p1

    .line 481
    :cond_8b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Precedence predicates are not supported in lexers."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_81  #00000001
        :pswitch_6c  #00000002
        :pswitch_56  #00000003
        :pswitch_3e  #00000004
        :pswitch_6c  #00000005
        :pswitch_d  #00000006
        :pswitch_6c  #00000007
    .end packed-switch
.end method

.method protected getExistingTargetState(Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;
    .registers 4

    .line 246
    iget-object v0, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    if-eqz v0, :cond_10

    if-ltz p2, :cond_10

    const/16 v0, 0x7f

    if-le p2, v0, :cond_b

    goto :goto_10

    .line 250
    :cond_b
    iget-object p1, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    aget-object p1, p1, p2

    return-object p1

    :cond_10
    :goto_10
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLine()I
    .registers 2

    .line 718
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    return v0
.end method

.method protected getReachableConfigSet(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;I)V
    .registers 23

    .line 321
    move-object/from16 v7, p0

    move/from16 v8, p4

    invoke-virtual/range {p2 .. p2}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :cond_a
    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 322
    iget v0, v12, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    const/4 v13, 0x1

    if-ne v0, v11, :cond_1e

    const/4 v14, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v14, 0x0

    :goto_1f
    if-eqz v14, :cond_2b

    .line 323
    move-object v0, v12

    check-cast v0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->hasPassedThroughNonGreedyDecision()Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_a

    .line 331
    :cond_2b
    iget-object v0, v12, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v15

    const/4 v6, 0x0

    :goto_32
    if-ge v6, v15, :cond_a

    .line 333
    iget-object v0, v12, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {v0, v6}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v0

    .line 334
    invoke-virtual {v7, v0, v8}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->getReachableTarget(Lorg/antlr/v4/runtime/atn/Transition;I)Lorg/antlr/v4/runtime/atn/ATNState;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 336
    move-object v1, v12

    check-cast v1, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->getLexerActionExecutor()Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    move-result-object v2

    if-eqz v2, :cond_54

    .line 338
    invoke-interface/range {p1 .. p1}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v3

    iget v4, v7, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->startIndex:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->fixOffsetBeforeMatch(I)Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    move-result-object v2

    :cond_54
    const/4 v3, -0x1

    if-ne v8, v3, :cond_5a

    const/16 v16, 0x1

    goto :goto_5c

    :cond_5a
    const/16 v16, 0x0

    .line 342
    :goto_5c
    new-instance v3, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    invoke-direct {v3, v1, v0, v2}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/LexerActionExecutor;)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    move-object/from16 v3, p3

    move v4, v14

    move/from16 v17, v6

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->closure(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;ZZZ)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 345
    iget v11, v12, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    goto :goto_a

    .line 334
    :cond_77
    move/from16 v17, v6

    .line 345
    :cond_79
    add-int/lit8 v6, v17, 0x1

    goto :goto_32

    :cond_7c
    return-void
.end method

.method protected getReachableTarget(Lorg/antlr/v4/runtime/atn/Transition;I)Lorg/antlr/v4/runtime/atn/ATNState;
    .registers 5

    .line 372
    const/4 v0, 0x0

    const v1, 0x10ffff

    invoke-virtual {p1, p2, v0, v1}, Lorg/antlr/v4/runtime/atn/Transition;->matches(III)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 373
    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getText(Lorg/antlr/v4/runtime/CharStream;)Ljava/lang/String;
    .registers 4

    .line 714
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->startIndex:I

    invoke-interface {p1}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/antlr/v4/runtime/CharStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTokenName(I)Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    .line 747
    const-string p1, "EOF"

    return-object p1

    .line 749
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public match(Lorg/antlr/v4/runtime/CharStream;I)I
    .registers 5

    .line 104
    iput p2, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->mode:I

    .line 105
    invoke-interface {p1}, Lorg/antlr/v4/runtime/CharStream;->mark()I

    move-result v0

    .line 107
    :try_start_6
    invoke-interface {p1}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v1

    iput v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->startIndex:I

    .line 108
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->prevAccept:Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->reset()V

    .line 109
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    aget-object p2, v1, p2

    .line 110
    iget-object v1, p2, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    if-nez v1, :cond_21

    .line 111
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->matchATN(Lorg/antlr/v4/runtime/CharStream;)I

    move-result p2
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_28

    .line 118
    :goto_1d
    invoke-interface {p1, v0}, Lorg/antlr/v4/runtime/CharStream;->release(I)V

    return p2

    .line 114
    :cond_21
    :try_start_21
    iget-object p2, p2, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->execATN(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/dfa/DFAState;)I

    move-result p2
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_28

    goto :goto_1d

    .line 118
    :catchall_28
    move-exception p2

    invoke-interface {p1, v0}, Lorg/antlr/v4/runtime/CharStream;->release(I)V

    goto :goto_2e

    :goto_2d
    throw p2

    :goto_2e
    goto :goto_2d
.end method

.method protected matchATN(Lorg/antlr/v4/runtime/CharStream;)I
    .registers 5

    .line 139
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->modeToStartState:Ljava/util/List;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->mode:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 147
    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->computeStartState(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/ATNState;)Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    move-result-object v0

    .line 148
    iget-boolean v1, v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    .line 149
    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    .line 151
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->addDFAState(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object v0

    if-nez v1, :cond_23

    .line 153
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    iget v2, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->mode:I

    aget-object v1, v1, v2

    iput-object v0, v1, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    .line 156
    :cond_23
    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->execATN(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/dfa/DFAState;)I

    move-result p1

    return p1
.end method

.method public reset()V
    .registers 2

    .line 124
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->prevAccept:Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->reset()V

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->startIndex:I

    .line 126
    const/4 v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    .line 128
    iput v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->mode:I

    return-void
.end method

.method public setCharPositionInLine(I)V
    .registers 2

    .line 730
    iput p1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    return-void
.end method

.method public setLine(I)V
    .registers 2

    .line 722
    iput p1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    return-void
.end method
