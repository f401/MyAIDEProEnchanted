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

.field public static final MIN_DFA_EDGE:I

.field public static final debug:Z

.field public static final dfa_debug:Z


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
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/Lexer;Lorg/antlr/v4/runtime/atn/ATN;[Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V
    .locals 2

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p2, p4}, Lorg/antlr/v4/runtime/atn/ATNSimulator;-><init>(Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->startIndex:I

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    .line 71
    iput v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    .line 75
    iput v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->mode:I

    .line 79
    new-instance v0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->prevAccept:Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;

    .line 92
    iput-object p3, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    .line 93
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->recog:Lorg/antlr/v4/runtime/Lexer;

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATN;[Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V
    .locals 1

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;-><init>(Lorg/antlr/v4/runtime/Lexer;Lorg/antlr/v4/runtime/atn/ATN;[Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V

    return-void
.end method


# virtual methods
.method protected accept(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/LexerActionExecutor;IIII)V
    .locals 1

    .line 361
    invoke-interface {p1, p4}, Lorg/antlr/v4/runtime/CharStream;->seek(I)V

    .line 362
    iput p5, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    .line 363
    iput p6, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    if-eqz p2, :cond_0

    .line 365
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->recog:Lorg/antlr/v4/runtime/Lexer;

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p2, v0, p1, p3}, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->execute(Lorg/antlr/v4/runtime/Lexer;Lorg/antlr/v4/runtime/CharStream;I)V

    :cond_0
    return-void
.end method

.method protected addDFAEdge(Lorg/antlr/v4/runtime/dfa/DFAState;ILorg/antlr/v4/runtime/atn/ATNConfigSet;)Lorg/antlr/v4/runtime/dfa/DFAState;
    .locals 2

    .line 629
    iget-boolean v1, p3, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    .line 630
    const/4 v0, 0x0

    iput-boolean v0, p3, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    .line 633
    invoke-virtual {p0, p3}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->addDFAState(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object v0

    if-eqz v1, :cond_0

    .line 639
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->addDFAEdge(Lorg/antlr/v4/runtime/dfa/DFAState;ILorg/antlr/v4/runtime/dfa/DFAState;)V

    goto :goto_0
.end method

.method protected addDFAEdge(Lorg/antlr/v4/runtime/dfa/DFAState;ILorg/antlr/v4/runtime/dfa/DFAState;)V
    .locals 1

    if-ltz p2, :cond_0

    const/16 v0, 0x7f

    if-le p2, v0, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    monitor-enter p1

    .line 654
    :try_start_0
    iget-object v0, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    if-nez v0, :cond_2

    .line 656
    const/16 v0, 0x80

    new-array v0, v0, [Lorg/antlr/v4/runtime/dfa/DFAState;

    iput-object v0, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    .line 658
    :cond_2
    iget-object v0, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    aput-object p3, v0, p2

    .line 659
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected addDFAState(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Lorg/antlr/v4/runtime/dfa/DFAState;
    .locals 5

    const/4 v4, 0x1

    .line 674
    new-instance v2, Lorg/antlr/v4/runtime/dfa/DFAState;

    invoke-direct {v2, p1}, Lorg/antlr/v4/runtime/dfa/DFAState;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    .line 676
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 677
    iget-object v3, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v3, v3, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v3, :cond_0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 684
    iput-boolean v4, v2, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    move-object v0, v1

    .line 685
    check-cast v0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->getLexerActionExecutor()Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    move-result-object v0

    iput-object v0, v2, Lorg/antlr/v4/runtime/dfa/DFAState;->lexerActionExecutor:Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    .line 686
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->ruleToTokenType:[I

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v1, v1, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    aget v0, v0, v1

    iput v0, v2, Lorg/antlr/v4/runtime/dfa/DFAState;->prediction:I

    .line 689
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->mode:I

    aget-object v1, v0, v1

    .line 690
    iget-object v3, v1, Lorg/antlr/v4/runtime/dfa/DFA;->states:Ljava/util/Map;

    monitor-enter v3

    .line 691
    :try_start_0
    iget-object v0, v1, Lorg/antlr/v4/runtime/dfa/DFA;->states:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/dfa/DFAState;

    if-eqz v0, :cond_3

    .line 692
    monitor-exit v3

    .line 700
    :goto_1
    return-object v0

    .line 677
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 696
    :cond_3
    iget-object v0, v1, Lorg/antlr/v4/runtime/dfa/DFA;->states:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, v2, Lorg/antlr/v4/runtime/dfa/DFAState;->stateNumber:I

    .line 697
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->setReadonly(Z)V

    .line 698
    iput-object p1, v2, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    .line 699
    iget-object v0, v1, Lorg/antlr/v4/runtime/dfa/DFA;->states:Ljava/util/Map;

    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    monitor-exit v3

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 701
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected captureSimState(Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/dfa/DFAState;)V
    .locals 1

    .line 607
    invoke-interface {p2}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v0

    iput v0, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->index:I

    .line 608
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    iput v0, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->line:I

    .line 609
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    iput v0, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->charPos:I

    .line 610
    iput-object p3, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->dfaState:Lorg/antlr/v4/runtime/dfa/DFAState;

    return-void
.end method

.method public clearDFA()V
    .locals 4

    const/4 v0, 0x0

    .line 133
    :goto_0
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 134
    new-instance v2, Lorg/antlr/v4/runtime/dfa/DFA;

    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    invoke-virtual {v3, v0}, Lorg/antlr/v4/runtime/atn/ATN;->getDecisionState(I)Lorg/antlr/v4/runtime/atn/DecisionState;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/antlr/v4/runtime/dfa/DFA;-><init>(Lorg/antlr/v4/runtime/atn/DecisionState;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected closure(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;ZZZ)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 408
    iget-object v2, p2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v2, v2, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v2, :cond_7

    .line 418
    iget-object v2, p2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v2, :cond_0

    iget-object v2, p2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->hasEmptyPath()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 419
    :cond_0
    iget-object v2, p2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v2, :cond_1

    iget-object v2, p2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    invoke-virtual {p3, p2}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    move p4, v0

    .line 455
    :cond_2
    :goto_0
    return p4

    .line 424
    :cond_3
    new-instance v2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    iget-object v3, p2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    sget-object v4, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    invoke-direct {v2, p2, v3, v4}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;)V

    invoke-virtual {p3, v2}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    move p4, v0

    .line 429
    :cond_4
    iget-object v0, p2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v7, v1

    move v4, p4

    .line 430
    :goto_1
    iget-object v0, p2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v0

    if-ge v7, v0, :cond_6

    .line 431
    iget-object v0, p2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v0, v7}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_5

    .line 432
    iget-object v0, p2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v0, v7}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v1

    .line 433
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    iget-object v2, p2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v2, v7}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 434
    new-instance v2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    invoke-direct {v2, p2, v0, v1}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v5, p5

    move v6, p6

    .line 435
    invoke-virtual/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->closure(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;ZZZ)Z

    move-result v4

    .line 431
    :cond_5
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_6
    move p4, v4

    goto :goto_0

    .line 444
    :cond_7
    iget-object v0, p2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->onlyHasEpsilonTransitions()Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz p4, :cond_8

    .line 445
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->hasPassedThroughNonGreedyDecision()Z

    move-result v0

    if-nez v0, :cond_9

    .line 446
    :cond_8
    invoke-virtual {p3, p2}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    .line 450
    :cond_9
    iget-object v8, p2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    move v7, v1

    .line 451
    :goto_2
    invoke-virtual {v8}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 452
    invoke-virtual {v8, v7}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p5

    move v6, p6

    .line 453
    invoke-virtual/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->getEpsilonTarget(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/Transition;Lorg/antlr/v4/runtime/atn/ATNConfigSet;ZZ)Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    move-result-object v2

    if-eqz v2, :cond_a

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 455
    invoke-virtual/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->closure(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;ZZZ)Z

    move-result p4

    :cond_a
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_2
.end method

.method protected computeStartState(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/ATNState;)Lorg/antlr/v4/runtime/atn/ATNConfigSet;
    .locals 9

    const/4 v4, 0x0

    .line 383
    sget-object v8, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    .line 384
    new-instance v3, Lorg/antlr/v4/runtime/atn/OrderedATNConfigSet;

    invoke-direct {v3}, Lorg/antlr/v4/runtime/atn/OrderedATNConfigSet;-><init>()V

    move v0, v4

    .line 385
    :goto_0
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 386
    invoke-virtual {p2, v0}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v1

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 387
    add-int/lit8 v7, v0, 0x1

    new-instance v2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    invoke-direct {v2, v1, v7, v8}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;ILorg/antlr/v4/runtime/atn/PredictionContext;)V

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v6, v4

    .line 388
    invoke-virtual/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->closure(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;ZZZ)Z

    move v0, v7

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method protected computeTargetState(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;
    .locals 2

    .line 273
    new-instance v0, Lorg/antlr/v4/runtime/atn/OrderedATNConfigSet;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/OrderedATNConfigSet;-><init>()V

    .line 277
    iget-object v1, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {p0, p1, v1, v0, p3}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->getReachableConfigSet(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;I)V

    .line 279
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    iget-boolean v0, v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    if-nez v0, :cond_0

    .line 283
    sget-object v0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->ERROR:Lorg/antlr/v4/runtime/dfa/DFAState;

    invoke-virtual {p0, p2, p3, v0}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->addDFAEdge(Lorg/antlr/v4/runtime/dfa/DFAState;ILorg/antlr/v4/runtime/dfa/DFAState;)V

    .line 287
    :cond_0
    sget-object v0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->ERROR:Lorg/antlr/v4/runtime/dfa/DFAState;

    .line 291
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p2, p3, v0}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->addDFAEdge(Lorg/antlr/v4/runtime/dfa/DFAState;ILorg/antlr/v4/runtime/atn/ATNConfigSet;)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object v0

    goto :goto_0
.end method

.method public consume(Lorg/antlr/v4/runtime/CharStream;)V
    .locals 2

    .line 734
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/antlr/v4/runtime/CharStream;->LA(I)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 736
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    .line 737
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    .line 742
    :goto_0
    invoke-interface {p1}, Lorg/antlr/v4/runtime/CharStream;->consume()V

    return-void

    .line 740
    :cond_0
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    goto :goto_0
.end method

.method public copyState(Lorg/antlr/v4/runtime/atn/LexerATNSimulator;)V
    .locals 1

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
    iget v0, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->startIndex:I

    iput v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->startIndex:I

    return-void
.end method

.method protected evaluatePredicate(Lorg/antlr/v4/runtime/CharStream;IIZ)Z
    .locals 6

    const/4 v1, 0x0

    .line 579
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->recog:Lorg/antlr/v4/runtime/Lexer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 599
    :goto_0
    return v0

    .line 579
    :cond_0
    if-nez p4, :cond_1

    .line 584
    invoke-virtual {v0, v1, p2, p3}, Lorg/antlr/v4/runtime/Lexer;->sempred(Lorg/antlr/v4/runtime/RuleContext;II)Z

    move-result v0

    goto :goto_0

    .line 587
    :cond_1
    iget v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    .line 588
    iget v2, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    .line 589
    invoke-interface {p1}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v3

    .line 590
    invoke-interface {p1}, Lorg/antlr/v4/runtime/CharStream;->mark()I

    move-result v4

    .line 592
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->consume(Lorg/antlr/v4/runtime/CharStream;)V

    .line 593
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->recog:Lorg/antlr/v4/runtime/Lexer;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, p2, p3}, Lorg/antlr/v4/runtime/Lexer;->sempred(Lorg/antlr/v4/runtime/RuleContext;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 596
    iput v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    .line 597
    iput v2, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    .line 598
    invoke-interface {p1, v3}, Lorg/antlr/v4/runtime/CharStream;->seek(I)V

    .line 599
    invoke-interface {p1, v4}, Lorg/antlr/v4/runtime/CharStream;->release(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 596
    iput v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    .line 597
    iput v2, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    .line 598
    invoke-interface {p1, v3}, Lorg/antlr/v4/runtime/CharStream;->seek(I)V

    .line 599
    invoke-interface {p1, v4}, Lorg/antlr/v4/runtime/CharStream;->release(I)V

    throw v0
.end method

.method protected execATN(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/dfa/DFAState;)I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 171
    iget-boolean v0, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->prevAccept:Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;

    invoke-virtual {p0, v0, p1, p2}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->captureSimState(Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/dfa/DFAState;)V

    .line 176
    :cond_0
    invoke-interface {p1, v4}, Lorg/antlr/v4/runtime/CharStream;->LA(I)I

    move-result v0

    move v1, v0

    .line 202
    :goto_0
    invoke-virtual {p0, p2, v1}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->getExistingTargetState(Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object v0

    if-nez v0, :cond_1

    .line 204
    invoke-virtual {p0, p1, p2, v1}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->computeTargetState(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object v0

    .line 207
    :cond_1
    sget-object v2, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->ERROR:Lorg/antlr/v4/runtime/dfa/DFAState;

    if-ne v0, v2, :cond_3

    .line 230
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->prevAccept:Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;

    iget-object v2, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {p0, v0, p1, v2, v1}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->failOrAccept(Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/ATNConfigSet;I)I

    move-result v0

    return v0

    .line 207
    :cond_3
    if-eq v1, v3, :cond_4

    .line 216
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->consume(Lorg/antlr/v4/runtime/CharStream;)V

    .line 219
    :cond_4
    iget-boolean v2, v0, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    if-eqz v2, :cond_5

    .line 220
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->prevAccept:Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;

    invoke-virtual {p0, v2, p1, v0}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->captureSimState(Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/dfa/DFAState;)V

    if-eq v1, v3, :cond_2

    .line 226
    :cond_5
    invoke-interface {p1, v4}, Lorg/antlr/v4/runtime/CharStream;->LA(I)I

    move-result v1

    move-object p2, v0

    goto :goto_0
.end method

.method protected failOrAccept(Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/ATNConfigSet;I)I
    .locals 7

    const/4 v0, -0x1

    .line 297
    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->dfaState:Lorg/antlr/v4/runtime/dfa/DFAState;

    if-eqz v1, :cond_1

    .line 298
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->dfaState:Lorg/antlr/v4/runtime/dfa/DFAState;

    iget-object v2, v0, Lorg/antlr/v4/runtime/dfa/DFAState;->lexerActionExecutor:Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    .line 299
    iget v3, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->startIndex:I

    iget v4, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->index:I

    iget v5, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->line:I

    iget v6, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->charPos:I

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->accept(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/LexerActionExecutor;IIII)V

    .line 301
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->dfaState:Lorg/antlr/v4/runtime/dfa/DFAState;

    iget v0, v0, Lorg/antlr/v4/runtime/dfa/DFAState;->prediction:I

    .line 305
    :cond_0
    return v0

    .line 301
    :cond_1
    if-ne p4, v0, :cond_2

    .line 305
    invoke-interface {p2}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v1

    iget v2, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->startIndex:I

    if-eq v1, v2, :cond_0

    .line 309
    :cond_2
    new-instance v0, Lorg/antlr/v4/runtime/LexerNoViableAltException;

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->recog:Lorg/antlr/v4/runtime/Lexer;

    iget v2, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->startIndex:I

    invoke-direct {v0, v1, p2, v2, p3}, Lorg/antlr/v4/runtime/LexerNoViableAltException;-><init>(Lorg/antlr/v4/runtime/Lexer;Lorg/antlr/v4/runtime/CharStream;ILorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    throw v0
.end method

.method public getCharPositionInLine()I
    .locals 1

    .line 726
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    return v0
.end method

.method public final getDFA(I)Lorg/antlr/v4/runtime/dfa/DFA;
    .locals 1

    .line 706
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getEpsilonTarget(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/Transition;Lorg/antlr/v4/runtime/atn/ATNConfigSet;ZZ)Lorg/antlr/v4/runtime/atn/LexerATNConfig;
    .locals 3

    .line 472
    invoke-virtual {p3}, Lorg/antlr/v4/runtime/atn/Transition;->getSerializationType()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 545
    :cond_0
    const/4 v0, 0x0

    .line 537
    :goto_0
    return-object v0

    .line 513
    :pswitch_0
    iget-object v0, p2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->hasEmptyPath()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    :cond_1
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->getLexerActionExecutor()Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    move-result-object v1

    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ATN;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    move-object v0, p3

    check-cast v0, Lorg/antlr/v4/runtime/atn/ActionTransition;

    iget v0, v0, Lorg/antlr/v4/runtime/atn/ActionTransition;->actionIndex:I

    aget-object v0, v2, v0

    invoke-static {v1, v0}, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->append(Lorg/antlr/v4/runtime/atn/LexerActionExecutor;Lorg/antlr/v4/runtime/atn/LexerAction;)Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    move-result-object v1

    .line 527
    new-instance v0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    iget-object v2, p3, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {v0, p2, v2, v1}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/LexerActionExecutor;)V

    goto :goto_0

    .line 532
    :cond_2
    new-instance v0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    iget-object v1, p3, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {v0, p2, v1}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    goto :goto_0

    :pswitch_1
    move-object v0, p3

    .line 502
    check-cast v0, Lorg/antlr/v4/runtime/atn/PredicateTransition;

    .line 506
    const/4 v1, 0x1

    iput-boolean v1, p4, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    .line 507
    iget v1, v0, Lorg/antlr/v4/runtime/atn/PredicateTransition;->ruleIndex:I

    iget v0, v0, Lorg/antlr/v4/runtime/atn/PredicateTransition;->predIndex:I

    invoke-virtual {p0, p1, v1, v0, p5}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->evaluatePredicate(Lorg/antlr/v4/runtime/CharStream;IIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    new-instance v0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    iget-object v1, p3, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {v0, p2, v1}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    goto :goto_0

    :pswitch_2
    move-object v0, p3

    .line 474
    check-cast v0, Lorg/antlr/v4/runtime/atn/RuleTransition;

    .line 475
    iget-object v1, p2, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/RuleTransition;->followState:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-static {v1, v0}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->create(Lorg/antlr/v4/runtime/atn/PredictionContext;I)Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    move-result-object v1

    .line 477
    new-instance v0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    iget-object v2, p3, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {v0, p2, v2, v1}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;)V

    goto :goto_0

    :pswitch_3
    if-eqz p6, :cond_0

    .line 544
    const/4 v0, -0x1

    const/4 v1, 0x0

    const v2, 0x10ffff

    invoke-virtual {p3, v0, v1, v2}, Lorg/antlr/v4/runtime/atn/Transition;->matches(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    new-instance v0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    iget-object v1, p3, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {v0, p2, v1}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    goto :goto_0

    .line 537
    :pswitch_4
    new-instance v0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    iget-object v1, p3, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {v0, p2, v1}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    goto :goto_0

    .line 481
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Precedence predicates are not supported in lexers."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected getExistingTargetState(Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;
    .locals 1

    .line 246
    iget-object v0, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    const/16 v0, 0x7f

    if-le p2, v0, :cond_1

    .line 250
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    aget-object v0, v0, p2

    goto :goto_0
.end method

.method public getLine()I
    .locals 1

    .line 718
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    return v0
.end method

.method protected getReachableConfigSet(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;I)V
    .locals 13

    .line 321
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v1, 0x0

    move v9, v1

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 322
    iget v1, v8, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    if-ne v1, v9, :cond_3

    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_1

    move-object v1, v8

    .line 323
    check-cast v1, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->hasPassedThroughNonGreedyDecision()Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    :cond_1
    iget-object v1, v8, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v12

    const/4 v1, 0x0

    move v10, v1

    :goto_2
    if-ge v10, v12, :cond_0

    .line 333
    iget-object v1, v8, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {v1, v10}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v1

    .line 334
    move/from16 v0, p4

    invoke-virtual {p0, v1, v0}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->getReachableTarget(Lorg/antlr/v4/runtime/atn/Transition;I)Lorg/antlr/v4/runtime/atn/ATNState;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object v1, v8

    .line 336
    check-cast v1, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->getLexerActionExecutor()Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 338
    invoke-interface {p1}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v3

    iget v6, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->startIndex:I

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->fixOffsetBeforeMatch(I)Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    move-result-object v2

    :cond_2
    const/4 v3, -0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_4

    const/4 v7, 0x1

    .line 342
    :goto_3
    new-instance v3, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    invoke-direct {v3, v1, v4, v2}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/LexerActionExecutor;)V

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v7}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->closure(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;ZZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 345
    iget v1, v8, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    move v9, v1

    goto :goto_0

    .line 322
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 338
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 334
    :cond_5
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_2

    :cond_6
    return-void
.end method

.method protected getReachableTarget(Lorg/antlr/v4/runtime/atn/Transition;I)Lorg/antlr/v4/runtime/atn/ATNState;
    .locals 2

    .line 372
    const/4 v0, 0x0

    const v1, 0x10ffff

    invoke-virtual {p1, p2, v0, v1}, Lorg/antlr/v4/runtime/atn/Transition;->matches(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getText(Lorg/antlr/v4/runtime/CharStream;)Ljava/lang/String;
    .locals 2

    .line 714
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->startIndex:I

    invoke-interface {p1}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/antlr/v4/runtime/CharStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenName(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 747
    const-string v0, "EOF"

    .line 749
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public match(Lorg/antlr/v4/runtime/CharStream;I)I
    .locals 3

    .line 104
    iput p2, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->mode:I

    .line 105
    invoke-interface {p1}, Lorg/antlr/v4/runtime/CharStream;->mark()I

    move-result v1

    .line 107
    :try_start_0
    invoke-interface {p1}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->startIndex:I

    .line 108
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->prevAccept:Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->reset()V

    .line 109
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    aget-object v0, v0, p2

    .line 110
    iget-object v2, v0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    if-nez v2, :cond_0

    .line 111
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->matchATN(Lorg/antlr/v4/runtime/CharStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 118
    :goto_0
    invoke-interface {p1, v1}, Lorg/antlr/v4/runtime/CharStream;->release(I)V

    return v0

    .line 114
    :cond_0
    :try_start_1
    iget-object v0, v0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->execATN(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/dfa/DFAState;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    invoke-interface {p1, v1}, Lorg/antlr/v4/runtime/CharStream;->release(I)V

    throw v0
.end method

.method protected matchATN(Lorg/antlr/v4/runtime/CharStream;)I
    .locals 3

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

    if-nez v1, :cond_0

    .line 153
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    iget v2, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->mode:I

    aget-object v1, v1, v2

    iput-object v0, v1, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    .line 156
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->execATN(Lorg/antlr/v4/runtime/CharStream;Lorg/antlr/v4/runtime/dfa/DFAState;)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

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
    iput v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    .line 128
    iput v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->mode:I

    return-void
.end method

.method public setCharPositionInLine(I)V
    .locals 0

    .line 730
    iput p1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->charPositionInLine:I

    return-void
.end method

.method public setLine(I)V
    .locals 0

    .line 722
    iput p1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->line:I

    return-void
.end method
