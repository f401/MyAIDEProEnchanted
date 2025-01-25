.class public Lorg/antlr/v4/runtime/atn/ParserATNSimulator;
.super Lorg/antlr/v4/runtime/atn/ATNSimulator;
.source "ParserATNSimulator.java"


# static fields
.field static final $assertionsDisabled:Z = false

.field public static final TURN_OFF_LR_LOOP_ENTRY_BRANCH_OPT:Z

.field public static final debug:Z = false

.field public static final debug_list_atn_decisions:Z = false

.field public static final dfa_debug:Z = false

.field public static final retry_debug:Z = false


# instance fields
.field protected _dfa:Lorg/antlr/v4/runtime/dfa/DFA;

.field protected _input:Lorg/antlr/v4/runtime/TokenStream;

.field protected _outerContext:Lorg/antlr/v4/runtime/ParserRuleContext;

.field protected _startIndex:I

.field public final decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

.field protected mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/antlr/v4/runtime/misc/DoubleKeyMap<",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            ">;"
        }
    .end annotation
.end field

.field private mode:Lorg/antlr/v4/runtime/atn/PredictionMode;

.field protected final parser:Lorg/antlr/v4/runtime/Parser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 273
    const-string v0, "TURN_OFF_LR_LOOP_ENTRY_BRANCH_OPT"

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getSafeEnv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->TURN_OFF_LR_LOOP_ENTRY_BRANCH_OPT:Z

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/atn/ATN;[Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V
    .registers 5

    .line 310
    invoke-direct {p0, p2, p4}, Lorg/antlr/v4/runtime/atn/ATNSimulator;-><init>(Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V

    .line 281
    sget-object p2, Lorg/antlr/v4/runtime/atn/PredictionMode;->LL:Lorg/antlr/v4/runtime/atn/PredictionMode;

    iput-object p2, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mode:Lorg/antlr/v4/runtime/atn/PredictionMode;

    .line 311
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    .line 312
    iput-object p3, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATN;[Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V
    .registers 5

    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;-><init>(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/atn/ATN;[Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V

    return-void
.end method

.method public static getSafeEnv(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 2187
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected static getUniqueAlt(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)I
    .registers 4

    .line 2034
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/ATNConfig;

    if-nez v1, :cond_17

    .line 2036
    iget v1, v2, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    goto :goto_6

    .line 2038
    :cond_17
    iget v2, v2, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    if-eq v2, v1, :cond_6

    return v0

    :cond_1c
    return v1
.end method


# virtual methods
.method protected actionTransition(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ActionTransition;)Lorg/antlr/v4/runtime/atn/ATNConfig;
    .registers 4

    .line 1805
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget-object p2, p2, Lorg/antlr/v4/runtime/atn/ActionTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {v0, p1, p2}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    return-object v0
.end method

.method public adaptivePredict(Lorg/antlr/v4/runtime/TokenStream;ILorg/antlr/v4/runtime/ParserRuleContext;)I
    .registers 12

    .line 338
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    .line 339
    invoke-interface {p1}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_startIndex:I

    .line 340
    iput-object p3, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_outerContext:Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 341
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    aget-object v2, v0, p2

    .line 342
    iput-object v2, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_dfa:Lorg/antlr/v4/runtime/dfa/DFA;

    .line 344
    invoke-interface {p1}, Lorg/antlr/v4/runtime/TokenStream;->mark()I

    move-result p2

    .line 345
    iget v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_startIndex:I

    .line 351
    const/4 v7, 0x0

    :try_start_17
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/dfa/DFA;->isPrecedenceDfa()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 354
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/Parser;->getPrecedence()I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/antlr/v4/runtime/dfa/DFA;->getPrecedenceStartState(I)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object v1

    goto :goto_2a

    .line 358
    :cond_28
    iget-object v1, v2, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    :goto_2a
    if-nez v1, :cond_6a

    if-nez p3, :cond_30

    .line 362
    sget-object p3, Lorg/antlr/v4/runtime/ParserRuleContext;->EMPTY:Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 370
    :cond_30
    iget-object v1, v2, Lorg/antlr/v4/runtime/dfa/DFA;->atnStartState:Lorg/antlr/v4/runtime/atn/DecisionState;

    sget-object v3, Lorg/antlr/v4/runtime/ParserRuleContext;->EMPTY:Lorg/antlr/v4/runtime/ParserRuleContext;

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->computeStartState(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/RuleContext;Z)Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    move-result-object v1

    .line 375
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/dfa/DFA;->isPrecedenceDfa()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 382
    iget-object v3, v2, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    iput-object v1, v3, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    .line 383
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->applyPrecedenceFilter(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    move-result-object v1

    .line 384
    new-instance v3, Lorg/antlr/v4/runtime/dfa/DFAState;

    invoke-direct {v3, v1}, Lorg/antlr/v4/runtime/dfa/DFAState;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    invoke-virtual {p0, v2, v3}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->addDFAState(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object v1

    .line 385
    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v3}, Lorg/antlr/v4/runtime/Parser;->getPrecedence()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lorg/antlr/v4/runtime/dfa/DFA;->setPrecedenceStartState(ILorg/antlr/v4/runtime/dfa/DFAState;)V

    move-object v6, p3

    move-object v3, v1

    goto :goto_6c

    .line 388
    :cond_5c
    new-instance v3, Lorg/antlr/v4/runtime/dfa/DFAState;

    invoke-direct {v3, v1}, Lorg/antlr/v4/runtime/dfa/DFAState;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    invoke-virtual {p0, v2, v3}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->addDFAState(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object v1

    .line 389
    iput-object v1, v2, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    move-object v6, p3

    move-object v3, v1

    goto :goto_6c

    .line 358
    :cond_6a
    move-object v6, p3

    move-object v3, v1

    .line 393
    :goto_6c
    move-object v1, p0

    move-object v4, p1

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->execATN(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;Lorg/antlr/v4/runtime/TokenStream;ILorg/antlr/v4/runtime/ParserRuleContext;)I

    move-result p3
    :try_end_73
    .catchall {:try_start_17 .. :try_end_73} :catchall_7e

    .line 398
    iput-object v7, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    .line 399
    iput-object v7, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_dfa:Lorg/antlr/v4/runtime/dfa/DFA;

    .line 400
    invoke-interface {p1, v0}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    .line 401
    invoke-interface {p1, p2}, Lorg/antlr/v4/runtime/TokenStream;->release(I)V

    return p3

    :catchall_7e
    move-exception p3

    .line 398
    iput-object v7, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    .line 399
    iput-object v7, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_dfa:Lorg/antlr/v4/runtime/dfa/DFA;

    .line 400
    invoke-interface {p1, v0}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    .line 401
    invoke-interface {p1, p2}, Lorg/antlr/v4/runtime/TokenStream;->release(I)V

    throw p3
.end method

.method protected addDFAEdge(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;ILorg/antlr/v4/runtime/dfa/DFAState;)Lorg/antlr/v4/runtime/dfa/DFAState;
    .registers 5

    if-nez p4, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 2078
    :cond_4
    invoke-virtual {p0, p1, p4}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->addDFAState(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object p1

    if-eqz p2, :cond_2e

    const/4 p4, -0x1

    if-lt p3, p4, :cond_2e

    .line 2079
    iget-object p4, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget p4, p4, Lorg/antlr/v4/runtime/atn/ATN;->maxTokenType:I

    if-le p3, p4, :cond_14

    goto :goto_2e

    .line 2083
    :cond_14
    monitor-enter p2

    .line 2084
    :try_start_15
    iget-object p4, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    if-nez p4, :cond_23

    .line 2085
    iget-object p4, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget p4, p4, Lorg/antlr/v4/runtime/atn/ATN;->maxTokenType:I

    add-int/lit8 p4, p4, 0x2

    new-array p4, p4, [Lorg/antlr/v4/runtime/dfa/DFAState;

    iput-object p4, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    .line 2088
    :cond_23
    iget-object p4, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    add-int/lit8 p3, p3, 0x1

    aput-object p1, p4, p3

    .line 2089
    monitor-exit p2

    return-object p1

    :catchall_2b
    move-exception p1

    monitor-exit p2
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_2b

    throw p1

    :cond_2e
    :goto_2e
    return-object p1
.end method

.method protected addDFAState(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;)Lorg/antlr/v4/runtime/dfa/DFAState;
    .registers 6

    .line 2114
    sget-object v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->ERROR:Lorg/antlr/v4/runtime/dfa/DFAState;

    if-ne p2, v0, :cond_5

    return-object p2

    .line 2118
    :cond_5
    iget-object v0, p1, Lorg/antlr/v4/runtime/dfa/DFA;->states:Ljava/util/Map;

    monitor-enter v0

    .line 2119
    :try_start_8
    iget-object v1, p1, Lorg/antlr/v4/runtime/dfa/DFA;->states:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/dfa/DFAState;

    if-eqz v1, :cond_14

    .line 2120
    monitor-exit v0

    return-object v1

    .line 2122
    :cond_14
    iget-object v1, p1, Lorg/antlr/v4/runtime/dfa/DFA;->states:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iput v1, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->stateNumber:I

    .line 2123
    iget-object v1, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->isReadonly()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 2124
    iget-object v1, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {v1, p0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->optimizeConfigs(Lorg/antlr/v4/runtime/atn/ATNSimulator;)V

    .line 2125
    iget-object v1, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->setReadonly(Z)V

    .line 2127
    :cond_2f
    iget-object p1, p1, Lorg/antlr/v4/runtime/dfa/DFA;->states:Ljava/util/Map;

    invoke-interface {p1, p2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    monitor-exit v0

    return-object p2

    :catchall_36
    move-exception p1

    .line 2130
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_36

    throw p1
.end method

.method protected applyPrecedenceFilter(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Lorg/antlr/v4/runtime/atn/ATNConfigSet;
    .registers 9

    .line 1127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1128
    new-instance v1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    iget-boolean v2, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->fullCtx:Z

    invoke-direct {v1, v2}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>(Z)V

    .line 1129
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 1131
    iget v5, v3, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    if-eq v5, v4, :cond_22

    goto :goto_10

    .line 1135
    :cond_22
    iget-object v4, v3, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    iget-object v5, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    iget-object v6, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_outerContext:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {v4, v5, v6}, Lorg/antlr/v4/runtime/atn/SemanticContext;->evalPrecedence(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/atn/SemanticContext;

    move-result-object v4

    if-nez v4, :cond_2f

    goto :goto_10

    .line 1141
    :cond_2f
    iget-object v5, v3, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v5, v5, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v3, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    iget-object v5, v3, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-eq v4, v5, :cond_4b

    .line 1143
    new-instance v5, Lorg/antlr/v4/runtime/atn/ATNConfig;

    invoke-direct {v5, v3, v4}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    invoke-virtual {v1, v5, v3}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z

    goto :goto_10

    .line 1146
    :cond_4b
    iget-object v4, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    invoke-virtual {v1, v3, v4}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z

    goto :goto_10

    .line 1150
    :cond_51
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_55
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 1151
    iget v3, v2, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    if-ne v3, v4, :cond_66

    goto :goto_55

    .line 1156
    :cond_66
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/ATNConfig;->isPrecedenceFilterSuppressed()Z

    move-result v3

    if-nez v3, :cond_85

    .line 1161
    iget-object v3, v2, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v3, v3, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v3, :cond_85

    .line 1162
    iget-object v5, v2, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v3, v5}, Lorg/antlr/v4/runtime/atn/PredictionContext;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    goto :goto_55

    .line 1168
    :cond_85
    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    invoke-virtual {v1, v2, v3}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z

    goto :goto_55

    :cond_8b
    return-object v1
.end method

.method protected canDropLoopEntryEdgeInLeftRecursiveRule(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z
    .registers 12

    .line 1681
    sget-boolean v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->TURN_OFF_LR_LOOP_ENTRY_BRANCH_OPT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 1682
    :cond_6
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 1687
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->getStateType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_c1

    move-object v2, v0

    check-cast v2, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    iget-boolean v2, v2, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->isPrecedenceDecision:Z

    if-eqz v2, :cond_c1

    iget-object v2, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c1

    iget-object v2, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->hasEmptyPath()Z

    move-result v2

    if-eqz v2, :cond_29

    goto/16 :goto_c1

    .line 1697
    :cond_29
    iget-object v2, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_30
    if-ge v3, v2, :cond_4c

    .line 1699
    iget-object v4, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    iget-object v5, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v5, v3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 1700
    iget v4, v4, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    iget v5, v0, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    if-eq v4, v5, :cond_49

    return v1

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 1703
    :cond_4c
    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v3

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    check-cast v3, Lorg/antlr/v4/runtime/atn/BlockStartState;

    .line 1704
    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/BlockStartState;->endState:Lorg/antlr/v4/runtime/atn/BlockEndState;

    iget v3, v3, Lorg/antlr/v4/runtime/atn/BlockEndState;->stateNumber:I

    .line 1705
    iget-object v4, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/atn/BlockEndState;

    const/4 v4, 0x0

    :goto_63
    const/4 v5, 0x1

    if-ge v4, v2, :cond_c0

    .line 1710
    iget-object v6, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v6, v4}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v6

    .line 1711
    iget-object v7, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v7, v7, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 1713
    invoke-virtual {v6}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v7

    if-ne v7, v5, :cond_bf

    invoke-virtual {v6, v1}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v7

    invoke-virtual {v7}, Lorg/antlr/v4/runtime/atn/Transition;->isEpsilon()Z

    move-result v7

    if-nez v7, :cond_87

    goto :goto_bf

    .line 1719
    :cond_87
    invoke-virtual {v6, v1}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v7

    iget-object v7, v7, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 1720
    invoke-virtual {v6}, Lorg/antlr/v4/runtime/atn/ATNState;->getStateType()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_98

    if-ne v7, v0, :cond_98

    goto :goto_9a

    :cond_98
    if-ne v6, v3, :cond_9b

    :goto_9a
    goto :goto_bc

    :cond_9b
    if-ne v7, v3, :cond_9e

    goto :goto_9a

    .line 1736
    :cond_9e
    invoke-virtual {v7}, Lorg/antlr/v4/runtime/atn/ATNState;->getStateType()I

    move-result v6

    if-ne v6, v9, :cond_bf

    invoke-virtual {v7}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v6

    if-ne v6, v5, :cond_bf

    invoke-virtual {v7, v1}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v5

    invoke-virtual {v5}, Lorg/antlr/v4/runtime/atn/Transition;->isEpsilon()Z

    move-result v5

    if-eqz v5, :cond_bf

    invoke-virtual {v7, v1}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v5

    iget-object v5, v5, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    if-ne v5, v0, :cond_bf

    :goto_bc
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    :cond_bf
    :goto_bf
    return v1

    :cond_c0
    return v5

    :cond_c1
    :goto_c1
    return v1
.end method

.method public clearDFA()V
    .registers 5

    const/4 v0, 0x0

    .line 324
    :goto_1
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 325
    new-instance v2, Lorg/antlr/v4/runtime/dfa/DFA;

    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    invoke-virtual {v3, v0}, Lorg/antlr/v4/runtime/atn/ATN;->getDecisionState(I)Lorg/antlr/v4/runtime/atn/DecisionState;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/antlr/v4/runtime/dfa/DFA;-><init>(Lorg/antlr/v4/runtime/atn/DecisionState;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-void
.end method

.method protected closure(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Ljava/util/Set;ZZZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            "Lorg/antlr/v4/runtime/atn/ATNConfigSet;",
            "Ljava/util/Set<",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 1448
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->closureCheckingStopState(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Ljava/util/Set;ZZIZ)V

    return-void
.end method

.method protected closureCheckingStopState(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Ljava/util/Set;ZZIZ)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            "Lorg/antlr/v4/runtime/atn/ATNConfigSet;",
            "Ljava/util/Set<",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            ">;ZZIZ)V"
        }
    .end annotation

    .line 1464
    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    iget-object v0, v9, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v0, v0, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v0, :cond_79

    .line 1467
    iget-object v0, v9, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_71

    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 1468
    :goto_13
    iget-object v0, v9, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v0

    if-ge v11, v0, :cond_70

    .line 1469
    iget-object v0, v9, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v0, v11}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_3b

    if-eqz p5, :cond_37

    .line 1471
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget-object v1, v9, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    sget-object v2, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    invoke-direct {v0, p1, v1, v2}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;)V

    iget-object v1, v8, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    invoke-virtual {p2, v0, v1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z

    goto :goto_6d

    .line 1478
    :cond_37
    invoke-virtual/range {p0 .. p7}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->closure_(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Ljava/util/Set;ZZIZ)V

    goto :goto_6d

    .line 1483
    :cond_3b
    iget-object v0, v8, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    iget-object v1, v9, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v1, v11}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 1484
    iget-object v1, v9, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v1, v11}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v1

    .line 1485
    new-instance v2, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget v3, v9, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    iget-object v4, v9, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-direct {v2, v0, v3, v1, v4}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;ILorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    .line 1494
    iget v0, v9, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    iput v0, v2, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    .line 1496
    add-int/lit8 v6, p6, -0x1

    move-object v0, p0

    move-object v1, v2

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->closureCheckingStopState(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Ljava/util/Set;ZZIZ)V

    :goto_6d
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    :cond_70
    return-void

    :cond_71
    if-eqz p5, :cond_79

    .line 1503
    iget-object v0, v8, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    invoke-virtual {p2, p1, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z

    return-void

    .line 1513
    :cond_79
    invoke-virtual/range {p0 .. p7}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->closure_(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Ljava/util/Set;ZZIZ)V

    return-void
.end method

.method protected closure_(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Ljava/util/Set;ZZIZ)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            "Lorg/antlr/v4/runtime/atn/ATNConfigSet;",
            "Ljava/util/Set<",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            ">;ZZIZ)V"
        }
    .end annotation

    .line 1526
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    iget-object v12, v9, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 1528
    invoke-virtual {v12}, Lorg/antlr/v4/runtime/atn/ATNState;->onlyHasEpsilonTransitions()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1529
    iget-object v0, v8, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    invoke-virtual {v10, v9, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z

    :cond_15
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1535
    :goto_17
    invoke-virtual {v12}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v0

    if-ge v14, v0, :cond_ab

    if-nez v14, :cond_27

    .line 1536
    invoke-virtual/range {p0 .. p1}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->canDropLoopEntryEdgeInLeftRecursiveRule(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto/16 :goto_a7

    .line 1538
    :cond_27
    invoke-virtual {v12, v14}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v7

    .line 1539
    instance-of v0, v7, Lorg/antlr/v4/runtime/atn/ActionTransition;

    const/4 v15, 0x1

    if-nez v0, :cond_35

    if-eqz p4, :cond_35

    const/16 v16, 0x1

    goto :goto_37

    :cond_35
    const/16 v16, 0x0

    :goto_37
    if-nez p6, :cond_3b

    const/4 v4, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v4, 0x0

    .line 1541
    :goto_3c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v16

    move/from16 v5, p5

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getEpsilonTarget(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/Transition;ZZZZ)Lorg/antlr/v4/runtime/atn/ATNConfig;

    move-result-object v1

    if-eqz v1, :cond_a7

    .line 1545
    iget-object v0, v9, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v0, v0, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v0, :cond_7f

    .line 1553
    iget-object v0, v8, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_dfa:Lorg/antlr/v4/runtime/dfa/DFA;

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/dfa/DFA;->isPrecedenceDfa()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1554
    check-cast v7, Lorg/antlr/v4/runtime/atn/EpsilonTransition;

    invoke-virtual {v7}, Lorg/antlr/v4/runtime/atn/EpsilonTransition;->outermostPrecedenceReturn()I

    move-result v0

    .line 1555
    iget-object v2, v8, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_dfa:Lorg/antlr/v4/runtime/dfa/DFA;

    iget-object v2, v2, Lorg/antlr/v4/runtime/dfa/DFA;->atnStartState:Lorg/antlr/v4/runtime/atn/DecisionState;

    iget v2, v2, Lorg/antlr/v4/runtime/atn/DecisionState;->ruleIndex:I

    if-ne v0, v2, :cond_6e

    .line 1556
    invoke-virtual {v1, v15}, Lorg/antlr/v4/runtime/atn/ATNConfig;->setPrecedenceFilterSuppressed(Z)V

    .line 1560
    :cond_6e
    iget v0, v1, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    add-int/2addr v0, v15

    iput v0, v1, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    .line 1562
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto :goto_a7

    .line 1567
    :cond_7a
    iput-boolean v15, v10, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->dipsIntoOuterContext:Z

    add-int/lit8 v0, p6, -0x1

    goto :goto_94

    .line 1573
    :cond_7f
    invoke-virtual {v7}, Lorg/antlr/v4/runtime/atn/Transition;->isEpsilon()Z

    move-result v0

    if-nez v0, :cond_8c

    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto :goto_a7

    .line 1578
    :cond_8c
    instance-of v0, v7, Lorg/antlr/v4/runtime/atn/RuleTransition;

    if-eqz v0, :cond_96

    if-ltz p6, :cond_96

    add-int/lit8 v0, p6, 0x1

    :goto_94
    move v6, v0

    goto :goto_98

    :cond_96
    move/from16 v6, p6

    .line 1586
    :goto_98
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v16

    move/from16 v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->closureCheckingStopState(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Ljava/util/Set;ZZIZ)V

    :cond_a7
    :goto_a7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_17

    :cond_ab
    return-void
.end method

.method protected computeReachSet(Lorg/antlr/v4/runtime/atn/ATNConfigSet;IZ)Lorg/antlr/v4/runtime/atn/ATNConfigSet;
    .registers 24

    .line 775
    move-object/from16 v7, p0

    move/from16 v8, p2

    move/from16 v9, p3

    iget-object v0, v7, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    if-nez v0, :cond_11

    .line 776
    new-instance v0, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;-><init>()V

    iput-object v0, v7, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    .line 779
    :cond_11
    new-instance v10, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-direct {v10, v9}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>(Z)V

    .line 794
    invoke-virtual/range {p1 .. p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v11, 0x0

    move-object v12, v11

    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v13, 0x0

    const/4 v14, -0x1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 797
    iget-object v2, v1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v2, v2, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v2, :cond_3f

    if-nez v9, :cond_34

    if-ne v8, v14, :cond_1c

    :cond_34
    if-nez v12, :cond_3b

    .line 801
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 804
    :cond_3b
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 810
    :cond_3f
    iget-object v2, v1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v2

    :goto_45
    if-ge v13, v2, :cond_1c

    .line 812
    iget-object v3, v1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {v3, v13}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v3

    .line 813
    invoke-virtual {v7, v3, v8}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getReachableTarget(Lorg/antlr/v4/runtime/atn/Transition;I)Lorg/antlr/v4/runtime/atn/ATNState;

    move-result-object v3

    if-eqz v3, :cond_5d

    .line 815
    new-instance v4, Lorg/antlr/v4/runtime/atn/ATNConfig;

    invoke-direct {v4, v1, v3}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    iget-object v3, v7, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    invoke-virtual {v10, v4, v3}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z

    :cond_5d
    add-int/lit8 v13, v13, 0x1

    goto :goto_45

    :cond_60
    const/4 v15, 0x1

    if-nez v12, :cond_74

    if-eq v8, v14, :cond_74

    .line 834
    invoke-virtual {v10}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->size()I

    move-result v0

    if-ne v0, v15, :cond_6c

    goto :goto_72

    .line 841
    :cond_6c
    invoke-static {v10}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getUniqueAlt(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)I

    move-result v0

    if-eqz v0, :cond_74

    :goto_72
    move-object v0, v10

    goto :goto_75

    :cond_74
    move-object v0, v11

    :goto_75
    if-nez v0, :cond_af

    .line 852
    new-instance v6, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-direct {v6, v9}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>(Z)V

    .line 853
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    if-ne v8, v14, :cond_86

    const/16 v17, 0x1

    goto :goto_88

    :cond_86
    const/16 v17, 0x0

    .line 855
    :goto_88
    invoke-virtual {v10}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_8c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 856
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v2, v6

    move-object/from16 v3, v16

    move/from16 v5, p3

    move-object/from16 v19, v6

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->closure(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Ljava/util/Set;ZZZ)V

    move-object/from16 v6, v19

    goto :goto_8c

    .line 855
    :cond_ab
    move-object/from16 v19, v6

    move-object/from16 v0, v19

    .line 856
    :cond_af
    if-ne v8, v14, :cond_b8

    if-ne v0, v10, :cond_b4

    const/4 v13, 0x1

    .line 878
    :cond_b4
    invoke-virtual {v7, v0, v13}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->removeAllConfigsNotInRuleStopState(Lorg/antlr/v4/runtime/atn/ATNConfigSet;Z)Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    move-result-object v0

    :cond_b8
    if-eqz v12, :cond_d8

    if-eqz v9, :cond_c2

    .line 889
    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/PredictionMode;->hasConfigInRuleStopState(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Z

    move-result v1

    if-nez v1, :cond_d8

    .line 891
    :cond_c2
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 892
    iget-object v3, v7, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    invoke-virtual {v0, v2, v3}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z

    goto :goto_c6

    .line 896
    :cond_d8
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_df

    return-object v11

    :cond_df
    return-object v0
.end method

.method protected computeStartState(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/RuleContext;Z)Lorg/antlr/v4/runtime/atn/ATNConfigSet;
    .registers 13

    .line 950
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    invoke-static {v0, p2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->fromRuleContext(Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object p2

    .line 951
    new-instance v7, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-direct {v7, p3}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>(Z)V

    const/4 v0, 0x0

    .line 953
    :goto_c
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 954
    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v1

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 955
    add-int/lit8 v8, v0, 0x1

    new-instance v2, Lorg/antlr/v4/runtime/atn/ATNConfig;

    invoke-direct {v2, v1, v8, p2}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;ILorg/antlr/v4/runtime/atn/PredictionContext;)V

    .line 956
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 957
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v2

    move-object v2, v7

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->closure(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Ljava/util/Set;ZZZ)V

    move v0, v8

    goto :goto_c

    :cond_2f
    return-object v7
.end method

.method protected computeTargetState(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;
    .registers 9

    .line 576
    iget-object v0, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->computeReachSet(Lorg/antlr/v4/runtime/atn/ATNConfigSet;IZ)Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    move-result-object v0

    if-nez v0, :cond_11

    .line 578
    sget-object v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->ERROR:Lorg/antlr/v4/runtime/dfa/DFAState;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->addDFAEdge(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;ILorg/antlr/v4/runtime/dfa/DFAState;)Lorg/antlr/v4/runtime/dfa/DFAState;

    .line 579
    sget-object p1, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->ERROR:Lorg/antlr/v4/runtime/dfa/DFAState;

    return-object p1

    .line 583
    :cond_11
    new-instance v2, Lorg/antlr/v4/runtime/dfa/DFAState;

    invoke-direct {v2, v0}, Lorg/antlr/v4/runtime/dfa/DFAState;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    .line 585
    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getUniqueAlt(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_26

    .line 598
    iput-boolean v4, v2, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    .line 599
    iget-object v0, v2, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    iput v3, v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    .line 600
    iput v3, v2, Lorg/antlr/v4/runtime/dfa/DFAState;->prediction:I

    goto :goto_44

    .line 602
    :cond_26
    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mode:Lorg/antlr/v4/runtime/atn/PredictionMode;

    invoke-static {v3, v0}, Lorg/antlr/v4/runtime/atn/PredictionMode;->hasSLLConflictTerminatingPrediction(Lorg/antlr/v4/runtime/atn/PredictionMode;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 604
    iget-object v3, v2, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getConflictingAlts(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, v3, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->conflictingAlts:Ljava/util/BitSet;

    .line 605
    iput-boolean v4, v2, Lorg/antlr/v4/runtime/dfa/DFAState;->requiresFullContext:Z

    .line 607
    iput-boolean v4, v2, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    .line 608
    iget-object v0, v2, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->conflictingAlts:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iput v0, v2, Lorg/antlr/v4/runtime/dfa/DFAState;->prediction:I

    .line 611
    :cond_44
    :goto_44
    iget-boolean v0, v2, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    if-eqz v0, :cond_5f

    iget-object v0, v2, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    iget-boolean v0, v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    if-eqz v0, :cond_5f

    .line 612
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget v3, p1, Lorg/antlr/v4/runtime/dfa/DFA;->decision:I

    invoke-virtual {v0, v3}, Lorg/antlr/v4/runtime/atn/ATN;->getDecisionState(I)Lorg/antlr/v4/runtime/atn/DecisionState;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->predicateDFAState(Lorg/antlr/v4/runtime/dfa/DFAState;Lorg/antlr/v4/runtime/atn/DecisionState;)V

    .line 613
    iget-object v0, v2, Lorg/antlr/v4/runtime/dfa/DFAState;->predicates:[Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    if-eqz v0, :cond_5f

    .line 614
    iput v1, v2, Lorg/antlr/v4/runtime/dfa/DFAState;->prediction:I

    .line 619
    :cond_5f
    invoke-virtual {p0, p1, p2, p3, v2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->addDFAEdge(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;ILorg/antlr/v4/runtime/dfa/DFAState;)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object p1

    return-object p1
.end method

.method public dumpDeadEndConfigs(Lorg/antlr/v4/runtime/NoViableAltException;)V
    .registers 8

    .line 2001
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "dead end configs: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2002
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/NoViableAltException;->getDeadEndConfigs()Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 2004
    iget-object v1, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v1

    if-lez v1, :cond_6f

    .line 2005
    iget-object v1, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v1

    .line 2006
    instance-of v2, v1, Lorg/antlr/v4/runtime/atn/AtomTransition;

    if-eqz v2, :cond_45

    .line 2007
    check-cast v1, Lorg/antlr/v4/runtime/atn/AtomTransition;

    .line 2008
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Atom "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lorg/antlr/v4/runtime/atn/AtomTransition;->label:I

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getTokenName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_71

    .line 2010
    :cond_45
    instance-of v2, v1, Lorg/antlr/v4/runtime/atn/SetTransition;

    if-eqz v2, :cond_6f

    .line 2011
    check-cast v1, Lorg/antlr/v4/runtime/atn/SetTransition;

    .line 2012
    instance-of v2, v1, Lorg/antlr/v4/runtime/atn/NotSetTransition;

    .line 2013
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_57

    const-string v2, "~"

    goto :goto_59

    :cond_57
    const-string v2, ""

    :goto_59
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Set "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/SetTransition;->set:Lorg/antlr/v4/runtime/misc/IntervalSet;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_71

    .line 2016
    :cond_6f
    const-string v1, "no edges"

    :goto_71
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lorg/antlr/v4/runtime/atn/ATNConfig;->toString(Lorg/antlr/v4/runtime/Recognizer;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_93
    return-void
.end method

.method protected evalSemanticContext([Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;Lorg/antlr/v4/runtime/ParserRuleContext;Z)Ljava/util/BitSet;
    .registers 11

    .line 1371
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1372
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_2f

    aget-object v4, p1, v3

    .line 1373
    iget-object v5, v4, Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;->pred:Lorg/antlr/v4/runtime/atn/SemanticContext;

    sget-object v6, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-ne v5, v6, :cond_1a

    .line 1374
    iget v4, v4, Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;->alt:I

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    if-nez p3, :cond_2c

    goto :goto_2f

    .line 1382
    :cond_1a
    iget-object v5, v4, Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;->pred:Lorg/antlr/v4/runtime/atn/SemanticContext;

    iget v6, v4, Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;->alt:I

    invoke-virtual {p0, v5, p2, v6, v2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->evalSemanticContext(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/ParserRuleContext;IZ)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1389
    iget v4, v4, Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;->alt:I

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    if-nez p3, :cond_2c

    goto :goto_2f

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_2f
    :goto_2f
    return-object v0
.end method

.method protected evalSemanticContext(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/ParserRuleContext;IZ)Z
    .registers 5

    .line 1430
    iget-object p3, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {p1, p3, p2}, Lorg/antlr/v4/runtime/atn/SemanticContext;->eval(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/RuleContext;)Z

    move-result p1

    return p1
.end method

.method protected execATN(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;Lorg/antlr/v4/runtime/TokenStream;ILorg/antlr/v4/runtime/ParserRuleContext;)I
    .registers 20

    .line 449
    move-object v8, p0

    move-object v6, p1

    move-object/from16 v7, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Lorg/antlr/v4/runtime/TokenStream;->LA(I)I

    move-result v1

    move v2, v1

    move-object/from16 v1, p2

    .line 452
    :goto_10
    invoke-virtual {p0, v1, v2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getExistingTargetState(Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object v3

    if-nez v3, :cond_1c

    .line 454
    invoke-virtual {p0, p1, v1, v2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->computeTargetState(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object v3

    move-object v11, v3

    goto :goto_1d

    .line 452
    :cond_1c
    move-object v11, v3

    .line 457
    :goto_1d
    sget-object v3, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->ERROR:Lorg/antlr/v4/runtime/dfa/DFAState;

    if-ne v11, v3, :cond_34

    .line 467
    iget-object v0, v1, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {p0, v7, v10, v0, v9}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->noViableAlt(Lorg/antlr/v4/runtime/TokenStream;Lorg/antlr/v4/runtime/ParserRuleContext;Lorg/antlr/v4/runtime/atn/ATNConfigSet;I)Lorg/antlr/v4/runtime/NoViableAltException;

    move-result-object v0

    .line 468
    invoke-interface/range {p3 .. p4}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    .line 469
    iget-object v1, v1, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {p0, v1, v10}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(Lorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/ParserRuleContext;)I

    move-result v1

    if-eqz v1, :cond_33

    return v1

    .line 473
    :cond_33
    throw v0

    .line 476
    :cond_34
    iget-boolean v1, v11, Lorg/antlr/v4/runtime/dfa/DFAState;->requiresFullContext:Z

    const/4 v12, 0x0

    if-eqz v1, :cond_88

    iget-object v1, v8, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mode:Lorg/antlr/v4/runtime/atn/PredictionMode;

    sget-object v3, Lorg/antlr/v4/runtime/atn/PredictionMode;->SLL:Lorg/antlr/v4/runtime/atn/PredictionMode;

    if-eq v1, v3, :cond_88

    .line 478
    iget-object v1, v11, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->conflictingAlts:Ljava/util/BitSet;

    .line 479
    iget-object v2, v11, Lorg/antlr/v4/runtime/dfa/DFAState;->predicates:[Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    if-eqz v2, :cond_67

    .line 481
    invoke-interface/range {p3 .. p3}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v1

    if-eq v1, v9, :cond_50

    .line 483
    invoke-interface/range {p3 .. p4}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    .line 486
    :cond_50
    iget-object v2, v11, Lorg/antlr/v4/runtime/dfa/DFAState;->predicates:[Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    invoke-virtual {p0, v2, v10, v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->evalSemanticContext([Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;Lorg/antlr/v4/runtime/ParserRuleContext;Z)Ljava/util/BitSet;

    move-result-object v2

    .line 487
    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-ne v3, v0, :cond_61

    .line 489
    invoke-virtual {v2, v12}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    return v0

    :cond_61
    if-eq v1, v9, :cond_68

    .line 495
    invoke-interface {v7, v1}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    goto :goto_68

    .line 479
    :cond_67
    move-object v2, v1

    .line 501
    :cond_68
    :goto_68
    iget-object v1, v6, Lorg/antlr/v4/runtime/dfa/DFA;->atnStartState:Lorg/antlr/v4/runtime/atn/DecisionState;

    invoke-virtual {p0, v1, v10, v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->computeStartState(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/RuleContext;Z)Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    move-result-object v12

    .line 504
    iget-object v3, v11, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-interface/range {p3 .. p3}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->reportAttemptingFullContext(Lorg/antlr/v4/runtime/dfa/DFA;Ljava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;II)V

    .line 505
    move-object v2, v11

    move-object v3, v12

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->execATNWithFullContext(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/TokenStream;ILorg/antlr/v4/runtime/ParserRuleContext;)I

    move-result v0

    return v0

    .line 511
    :cond_88
    iget-boolean v1, v11, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    if-eqz v1, :cond_c5

    .line 512
    iget-object v1, v11, Lorg/antlr/v4/runtime/dfa/DFAState;->predicates:[Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    if-nez v1, :cond_93

    .line 513
    iget v0, v11, Lorg/antlr/v4/runtime/dfa/DFAState;->prediction:I

    return v0

    .line 516
    :cond_93
    invoke-interface/range {p3 .. p3}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v4

    .line 517
    invoke-interface/range {p3 .. p4}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    .line 518
    iget-object v1, v11, Lorg/antlr/v4/runtime/dfa/DFAState;->predicates:[Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    invoke-virtual {p0, v1, v10, v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->evalSemanticContext([Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;Lorg/antlr/v4/runtime/ParserRuleContext;Z)Ljava/util/BitSet;

    move-result-object v13

    .line 519
    invoke-virtual {v13}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-eqz v1, :cond_be

    if-eq v1, v0, :cond_b9

    .line 529
    const/4 v5, 0x0

    iget-object v7, v11, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    move-object v0, p0

    move-object v1, p1

    move-object v2, v11

    move/from16 v3, p4

    move-object v6, v13

    invoke-virtual/range {v0 .. v7}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->reportAmbiguity(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;IIZLjava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    .line 530
    invoke-virtual {v13, v12}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    return v0

    .line 524
    :cond_b9
    invoke-virtual {v13, v12}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    return v0

    .line 521
    :cond_be
    iget-object v0, v11, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {p0, v7, v10, v0, v9}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->noViableAlt(Lorg/antlr/v4/runtime/TokenStream;Lorg/antlr/v4/runtime/ParserRuleContext;Lorg/antlr/v4/runtime/atn/ATNConfigSet;I)Lorg/antlr/v4/runtime/NoViableAltException;

    move-result-object v0

    throw v0

    :cond_c5
    const/4 v1, -0x1

    if-eq v2, v1, :cond_d0

    .line 537
    invoke-interface/range {p3 .. p3}, Lorg/antlr/v4/runtime/TokenStream;->consume()V

    .line 538
    invoke-interface {v7, v0}, Lorg/antlr/v4/runtime/TokenStream;->LA(I)I

    move-result v1

    move v2, v1

    :cond_d0
    move-object v1, v11

    goto/16 :goto_10
.end method

.method protected execATNWithFullContext(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/TokenStream;ILorg/antlr/v4/runtime/ParserRuleContext;)I
    .registers 18

    .line 657
    move-object v8, p0

    move-object v0, p4

    move-object/from16 v1, p6

    invoke-interface/range {p4 .. p5}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    .line 658
    const/4 v2, 0x1

    invoke-interface {p4, v2}, Lorg/antlr/v4/runtime/TokenStream;->LA(I)I

    move-result v3

    move v4, v3

    move-object v3, p3

    .line 664
    :goto_e
    invoke-virtual {p0, v3, v4, v2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->computeReachSet(Lorg/antlr/v4/runtime/atn/ATNConfigSet;IZ)Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    move-result-object v7

    if-nez v7, :cond_25

    .line 675
    move/from16 v5, p5

    invoke-virtual {p0, p4, v1, v3, v5}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->noViableAlt(Lorg/antlr/v4/runtime/TokenStream;Lorg/antlr/v4/runtime/ParserRuleContext;Lorg/antlr/v4/runtime/atn/ATNConfigSet;I)Lorg/antlr/v4/runtime/NoViableAltException;

    move-result-object v2

    .line 676
    invoke-interface/range {p4 .. p5}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    .line 677
    invoke-virtual {p0, v3, v1}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(Lorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/ParserRuleContext;)I

    move-result v0

    if-eqz v0, :cond_24

    return v0

    .line 681
    :cond_24
    throw v2

    .line 684
    :cond_25
    move/from16 v5, p5

    invoke-static {v7}, Lorg/antlr/v4/runtime/atn/PredictionMode;->getConflictingAltSubsets(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Ljava/util/Collection;

    move-result-object v3

    .line 694
    invoke-static {v7}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getUniqueAlt(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)I

    move-result v6

    iput v6, v7, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    .line 696
    iget v6, v7, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    if-eqz v6, :cond_38

    .line 697
    iget v1, v7, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    goto :goto_45

    .line 700
    :cond_38
    iget-object v6, v8, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mode:Lorg/antlr/v4/runtime/atn/PredictionMode;

    sget-object v9, Lorg/antlr/v4/runtime/atn/PredictionMode;->LL_EXACT_AMBIG_DETECTION:Lorg/antlr/v4/runtime/atn/PredictionMode;

    if-eq v6, v9, :cond_49

    .line 701
    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/PredictionMode;->resolvesToJustOneViableAlt(Ljava/util/Collection;)I

    move-result v3

    if-eqz v3, :cond_81

    move v1, v3

    .line 697
    :goto_45
    const/4 v2, 0x0

    move v9, v1

    const/4 v6, 0x0

    goto :goto_5b

    .line 709
    :cond_49
    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/PredictionMode;->allSubsetsConflict(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_81

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/PredictionMode;->allSubsetsEqual(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 713
    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/PredictionMode;->getSingleViableAlt(Ljava/util/Collection;)I

    move-result v1

    move v9, v1

    const/4 v6, 0x1

    .line 731
    :goto_5b
    iget v1, v7, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    if-eqz v1, :cond_6e

    .line 732
    invoke-interface {p4}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, v9

    move-object v3, v7

    move/from16 v4, p5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->reportContextSensitivity(Lorg/antlr/v4/runtime/dfa/DFA;ILorg/antlr/v4/runtime/atn/ATNConfigSet;II)V

    return v9

    .line 763
    :cond_6e
    invoke-interface {p4}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v4

    invoke-virtual {v7}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->getAlts()Ljava/util/BitSet;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p5

    move v5, v6

    move-object v6, v10

    invoke-virtual/range {v0 .. v7}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->reportAmbiguity(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;IIZLjava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    return v9

    :cond_81
    const/4 v3, -0x1

    if-eq v4, v3, :cond_8c

    .line 723
    invoke-interface {p4}, Lorg/antlr/v4/runtime/TokenStream;->consume()V

    .line 724
    invoke-interface {p4, v2}, Lorg/antlr/v4/runtime/TokenStream;->LA(I)I

    move-result v3

    move v4, v3

    :cond_8c
    move-object v3, v7

    goto :goto_e
.end method

.method protected getAltThatFinishedDecisionEntryRule(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)I
    .registers 6

    .line 1319
    new-instance v0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-direct {v0, v2}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 1320
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 1321
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/ATNConfig;->getOuterContextDepth()I

    move-result v3

    if-gtz v3, :cond_2c

    iget-object v3, v2, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v3, v3, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v3, :cond_c

    iget-object v3, v2, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->hasEmptyPath()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1322
    :cond_2c
    iget v2, v2, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    invoke-virtual {v0, v2}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    goto :goto_c

    .line 1325
    :cond_32
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->size()I

    move-result p1

    if-nez p1, :cond_39

    return v1

    .line 1326
    :cond_39
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->getMinElement()I

    move-result p1

    return p1
.end method

.method protected getConflictingAlts(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Ljava/util/BitSet;
    .registers 2

    .line 1925
    invoke-static {p1}, Lorg/antlr/v4/runtime/atn/PredictionMode;->getConflictingAltSubsets(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Ljava/util/Collection;

    move-result-object p1

    .line 1926
    invoke-static {p1}, Lorg/antlr/v4/runtime/atn/PredictionMode;->getAlts(Ljava/util/Collection;)Ljava/util/BitSet;

    move-result-object p1

    return-object p1
.end method

.method protected getConflictingAltsOrUniqueAlt(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Ljava/util/BitSet;
    .registers 3

    .line 1967
    iget v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    if-eqz v0, :cond_f

    .line 1968
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1969
    iget p1, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_11

    .line 1972
    :cond_f
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->conflictingAlts:Ljava/util/BitSet;

    :goto_11
    return-object v0
.end method

.method protected getEpsilonTarget(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/Transition;ZZZZ)Lorg/antlr/v4/runtime/atn/ATNConfig;
    .registers 13

    .line 1765
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/Transition;->getSerializationType()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_44

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_52

    return-object v1

    .line 1779
    :pswitch_d  #0x6
    check-cast p2, Lorg/antlr/v4/runtime/atn/ActionTransition;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->actionTransition(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ActionTransition;)Lorg/antlr/v4/runtime/atn/ATNConfig;

    move-result-object p1

    return-object p1

    .line 1773
    :pswitch_14  #0x4
    move-object v2, p2

    check-cast v2, Lorg/antlr/v4/runtime/atn/PredicateTransition;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->predTransition(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/PredicateTransition;ZZZ)Lorg/antlr/v4/runtime/atn/ATNConfig;

    move-result-object p1

    return-object p1

    .line 1767
    :pswitch_21  #0x3
    check-cast p2, Lorg/antlr/v4/runtime/atn/RuleTransition;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->ruleTransition(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/RuleTransition;)Lorg/antlr/v4/runtime/atn/ATNConfig;

    move-result-object p1

    return-object p1

    :pswitch_28  #0x2, 0x5, 0x7
    if-eqz p6, :cond_3b

    .line 1790
    const/4 p3, 0x0

    const/4 p4, 0x1

    const/4 p5, -0x1

    invoke-virtual {p2, p5, p3, p4}, Lorg/antlr/v4/runtime/atn/Transition;->matches(III)Z

    move-result p3

    if-eqz p3, :cond_3b

    .line 1791
    new-instance p3, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget-object p2, p2, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {p3, p1, p2}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    return-object p3

    :cond_3b
    return-object v1

    .line 1782
    :pswitch_3c  #0x1
    new-instance p3, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget-object p2, p2, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {p3, p1, p2}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    return-object p3

    .line 1770
    :cond_44
    move-object v2, p2

    check-cast v2, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->precedenceTransition(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;ZZZ)Lorg/antlr/v4/runtime/atn/ATNConfig;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_3c  #00000001
        :pswitch_28  #00000002
        :pswitch_21  #00000003
        :pswitch_14  #00000004
        :pswitch_28  #00000005
        :pswitch_d  #00000006
        :pswitch_28  #00000007
    .end packed-switch
.end method

.method protected getExistingTargetState(Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;
    .registers 4

    .line 555
    iget-object p1, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    if-eqz p1, :cond_f

    add-int/lit8 p2, p2, 0x1

    if-ltz p2, :cond_f

    .line 556
    array-length v0, p1

    if-lt p2, v0, :cond_c

    goto :goto_f

    .line 560
    :cond_c
    aget-object p1, p1, p2

    return-object p1

    :cond_f
    :goto_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLookaheadName(Lorg/antlr/v4/runtime/TokenStream;)Ljava/lang/String;
    .registers 3

    .line 1993
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/antlr/v4/runtime/TokenStream;->LA(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getTokenName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getParser()Lorg/antlr/v4/runtime/Parser;
    .registers 2

    .line 2182
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    return-object v0
.end method

.method protected getPredicatePredictions(Ljava/util/BitSet;[Lorg/antlr/v4/runtime/atn/SemanticContext;)[Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;
    .registers 9

    .line 1229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 1231
    :goto_8
    array-length v4, p2

    if-ge v3, v4, :cond_25

    .line 1232
    aget-object v4, p2, v3

    if-eqz p1, :cond_1d

    .line 1237
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1238
    new-instance v5, Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    invoke-direct {v5, v4, v3}, Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;-><init>(Lorg/antlr/v4/runtime/atn/SemanticContext;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1240
    :cond_1d
    sget-object v5, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-eq v4, v5, :cond_22

    const/4 v1, 0x1

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_25
    if-nez v1, :cond_29

    const/4 p1, 0x0

    return-object p1

    .line 1248
    :cond_29
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    return-object p1
.end method

.method public final getPredictionMode()Lorg/antlr/v4/runtime/atn/PredictionMode;
    .registers 2

    .line 2175
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mode:Lorg/antlr/v4/runtime/atn/PredictionMode;

    return-object v0
.end method

.method protected getPredsForAmbigAlts(Ljava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;I)[Lorg/antlr/v4/runtime/atn/SemanticContext;
    .registers 8

    .line 1198
    add-int/lit8 v0, p3, 0x1

    new-array v0, v0, [Lorg/antlr/v4/runtime/atn/SemanticContext;

    .line 1199
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 1200
    iget v2, v1, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1201
    iget v2, v1, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    iget v3, v1, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    aget-object v3, v0, v3

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-static {v3, v1}, Lorg/antlr/v4/runtime/atn/SemanticContext;->or(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)Lorg/antlr/v4/runtime/atn/SemanticContext;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_8

    :cond_2b
    const/4 p1, 0x1

    const/4 p2, 0x0

    :goto_2d
    if-gt p1, p3, :cond_41

    .line 1207
    aget-object v1, v0, p1

    if-nez v1, :cond_38

    .line 1208
    sget-object v1, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    aput-object v1, v0, p1

    goto :goto_3e

    .line 1210
    :cond_38
    sget-object v2, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-eq v1, v2, :cond_3e

    add-int/lit8 p2, p2, 0x1

    :cond_3e
    :goto_3e
    add-int/lit8 p1, p1, 0x1

    goto :goto_2d

    :cond_41
    if-nez p2, :cond_44

    const/4 v0, 0x0

    :cond_44
    return-object v0
.end method

.method protected getReachableTarget(Lorg/antlr/v4/runtime/atn/Transition;I)Lorg/antlr/v4/runtime/atn/ATNState;
    .registers 5

    .line 1175
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->maxTokenType:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lorg/antlr/v4/runtime/atn/Transition;->matches(III)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 1176
    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    return-object p1

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRuleName(I)Ljava/lang/String;
    .registers 4

    .line 1753
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    if-eqz v0, :cond_d

    if-ltz p1, :cond_d

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/Parser;->getRuleNames()[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1

    .line 1754
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<rule "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(Lorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/ParserRuleContext;)I
    .registers 3

    .line 1300
    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->splitAccordingToSemanticValidity(Lorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/ParserRuleContext;)Lorg/antlr/v4/runtime/misc/Pair;

    move-result-object p1

    .line 1302
    iget-object p2, p1, Lorg/antlr/v4/runtime/misc/Pair;->a:Ljava/lang/Object;

    check-cast p2, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    .line 1303
    iget-object p1, p1, Lorg/antlr/v4/runtime/misc/Pair;->b:Ljava/lang/Object;

    check-cast p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    .line 1304
    invoke-virtual {p0, p2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getAltThatFinishedDecisionEntryRule(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)I

    move-result p2

    if-eqz p2, :cond_13

    return p2

    .line 1309
    :cond_13
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->size()I

    move-result p2

    if-lez p2, :cond_20

    .line 1310
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getAltThatFinishedDecisionEntryRule(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)I

    move-result p1

    if-eqz p1, :cond_20

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method public getTokenName(I)Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    .line 1980
    const-string p1, "EOF"

    return-object p1

    .line 1983
    :cond_6
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/Parser;->getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v0

    goto :goto_11

    :cond_f
    sget-object v0, Lorg/antlr/v4/runtime/VocabularyImpl;->EMPTY_VOCABULARY:Lorg/antlr/v4/runtime/VocabularyImpl;

    .line 1984
    :goto_11
    invoke-interface {v0, p1}, Lorg/antlr/v4/runtime/Vocabulary;->getDisplayName(I)Ljava/lang/String;

    move-result-object v0

    .line 1985
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    return-object v0

    .line 1989
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected noViableAlt(Lorg/antlr/v4/runtime/TokenStream;Lorg/antlr/v4/runtime/ParserRuleContext;Lorg/antlr/v4/runtime/atn/ATNConfigSet;I)Lorg/antlr/v4/runtime/NoViableAltException;
    .registers 13

    .line 2026
    new-instance v7, Lorg/antlr/v4/runtime/NoViableAltException;

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-interface {p1, p4}, Lorg/antlr/v4/runtime/TokenStream;->get(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v3

    const/4 p4, 0x1

    invoke-interface {p1, p4}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v4

    move-object v0, v7

    move-object v2, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/antlr/v4/runtime/NoViableAltException;-><init>(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/TokenStream;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/ParserRuleContext;)V

    return-object v7
.end method

.method public precedenceTransition(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;ZZZ)Lorg/antlr/v4/runtime/atn/ATNConfig;
    .registers 8

    if-eqz p3, :cond_43

    if-eqz p4, :cond_43

    if-eqz p5, :cond_30

    .line 1832
    iget-object p3, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {p3}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result p3

    .line 1833
    iget-object p4, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    iget v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_startIndex:I

    invoke-interface {p4, v0}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    .line 1834
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;->getPredicate()Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;

    move-result-object p4

    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_outerContext:Lorg/antlr/v4/runtime/ParserRuleContext;

    iget v1, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    invoke-virtual {p0, p4, v0, v1, p5}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->evalSemanticContext(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/ParserRuleContext;IZ)Z

    move-result p4

    .line 1835
    iget-object p5, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {p5, p3}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    if-eqz p4, :cond_2e

    .line 1837
    new-instance p3, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget-object p2, p2, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {p3, p1, p2}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    goto :goto_4a

    :cond_2e
    const/4 p3, 0x0

    goto :goto_4a

    .line 1841
    :cond_30
    iget-object p3, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;->getPredicate()Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;

    move-result-object p4

    invoke-static {p3, p4}, Lorg/antlr/v4/runtime/atn/SemanticContext;->and(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)Lorg/antlr/v4/runtime/atn/SemanticContext;

    move-result-object p3

    .line 1843
    new-instance p4, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget-object p2, p2, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {p4, p1, p2, p3}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    move-object p3, p4

    goto :goto_4a

    .line 1847
    :cond_43
    new-instance p3, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget-object p2, p2, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {p3, p1, p2}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    :goto_4a
    return-object p3
.end method

.method protected predTransition(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/PredicateTransition;ZZZ)Lorg/antlr/v4/runtime/atn/ATNConfig;
    .registers 8

    if-eqz p3, :cond_4b

    .line 1872
    iget-boolean p3, p2, Lorg/antlr/v4/runtime/atn/PredicateTransition;->isCtxDependent:Z

    if-eqz p3, :cond_c

    iget-boolean p3, p2, Lorg/antlr/v4/runtime/atn/PredicateTransition;->isCtxDependent:Z

    if-eqz p3, :cond_4b

    if-eqz p4, :cond_4b

    :cond_c
    if-eqz p5, :cond_38

    .line 1880
    iget-object p3, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {p3}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result p3

    .line 1881
    iget-object p4, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    iget v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_startIndex:I

    invoke-interface {p4, v0}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    .line 1882
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/PredicateTransition;->getPredicate()Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;

    move-result-object p4

    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_outerContext:Lorg/antlr/v4/runtime/ParserRuleContext;

    iget v1, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    invoke-virtual {p0, p4, v0, v1, p5}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->evalSemanticContext(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/ParserRuleContext;IZ)Z

    move-result p4

    .line 1883
    iget-object p5, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {p5, p3}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    if-eqz p4, :cond_36

    .line 1885
    new-instance p3, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget-object p2, p2, Lorg/antlr/v4/runtime/atn/PredicateTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {p3, p1, p2}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    goto :goto_52

    :cond_36
    const/4 p3, 0x0

    goto :goto_52

    .line 1889
    :cond_38
    iget-object p3, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/PredicateTransition;->getPredicate()Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;

    move-result-object p4

    invoke-static {p3, p4}, Lorg/antlr/v4/runtime/atn/SemanticContext;->and(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)Lorg/antlr/v4/runtime/atn/SemanticContext;

    move-result-object p3

    .line 1891
    new-instance p4, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget-object p2, p2, Lorg/antlr/v4/runtime/atn/PredicateTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {p4, p1, p2, p3}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    move-object p3, p4

    goto :goto_52

    .line 1895
    :cond_4b
    new-instance p3, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget-object p2, p2, Lorg/antlr/v4/runtime/atn/PredicateTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {p3, p1, p2}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    :goto_52
    return-object p3
.end method

.method protected predicateDFAState(Lorg/antlr/v4/runtime/dfa/DFAState;Lorg/antlr/v4/runtime/atn/DecisionState;)V
    .registers 5

    .line 626
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/DecisionState;->getNumberOfTransitions()I

    move-result p2

    .line 629
    iget-object v0, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getConflictingAltsOrUniqueAlt(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Ljava/util/BitSet;

    move-result-object v0

    .line 630
    iget-object v1, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {p0, v0, v1, p2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getPredsForAmbigAlts(Ljava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;I)[Lorg/antlr/v4/runtime/atn/SemanticContext;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1c

    .line 632
    invoke-virtual {p0, v0, p2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getPredicatePredictions(Ljava/util/BitSet;[Lorg/antlr/v4/runtime/atn/SemanticContext;)[Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    move-result-object p2

    iput-object p2, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->predicates:[Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    .line 633
    iput v1, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->prediction:I

    goto :goto_22

    .line 639
    :cond_1c
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p2

    iput p2, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->prediction:I

    :goto_22
    return-void
.end method

.method protected removeAllConfigsNotInRuleStopState(Lorg/antlr/v4/runtime/atn/ATNConfigSet;Z)Lorg/antlr/v4/runtime/atn/ATNConfigSet;
    .registers 7

    .line 921
    invoke-static {p1}, Lorg/antlr/v4/runtime/atn/PredictionMode;->allConfigsInRuleStopStates(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    .line 925
    :cond_7
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    iget-boolean v1, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->fullCtx:Z

    invoke-direct {v0, v1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>(Z)V

    .line 926
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 927
    iget-object v2, v1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v2, v2, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v2, :cond_2a

    .line 928
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    invoke-virtual {v0, v1, v2}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z

    goto :goto_12

    :cond_2a
    if-eqz p2, :cond_12

    .line 932
    iget-object v2, v1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/ATNState;->onlyHasEpsilonTransitions()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 933
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v3, v1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {v2, v3}, Lorg/antlr/v4/runtime/atn/ATN;->nextTokens(Lorg/antlr/v4/runtime/atn/ATNState;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v2

    .line 934
    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 935
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStopState:[Lorg/antlr/v4/runtime/atn/RuleStopState;

    iget-object v3, v1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v3, v3, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    aget-object v2, v2, v3

    .line 936
    new-instance v3, Lorg/antlr/v4/runtime/atn/ATNConfig;

    invoke-direct {v3, v1, v2}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    invoke-virtual {v0, v3, v1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z

    goto :goto_12

    :cond_58
    return-object v0
.end method

.method protected reportAmbiguity(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;IIZLjava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V
    .registers 16

    .line 2165
    iget-object p2, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/Parser;->getErrorListenerDispatch()Lorg/antlr/v4/runtime/ANTLRErrorListener;

    move-result-object v0

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lorg/antlr/v4/runtime/ANTLRErrorListener;->reportAmbiguity(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;IIZLjava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    :cond_13
    return-void
.end method

.method protected reportAttemptingFullContext(Lorg/antlr/v4/runtime/dfa/DFA;Ljava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;II)V
    .registers 14

    .line 2139
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/Parser;->getErrorListenerDispatch()Lorg/antlr/v4/runtime/ANTLRErrorListener;

    move-result-object v1

    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    move-object v3, p1

    move v4, p4

    move v5, p5

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lorg/antlr/v4/runtime/ANTLRErrorListener;->reportAttemptingFullContext(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;IILjava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    :cond_12
    return-void
.end method

.method protected reportContextSensitivity(Lorg/antlr/v4/runtime/dfa/DFA;ILorg/antlr/v4/runtime/atn/ATNConfigSet;II)V
    .registers 14

    .line 2148
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/Parser;->getErrorListenerDispatch()Lorg/antlr/v4/runtime/ANTLRErrorListener;

    move-result-object v1

    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    move-object v3, p1

    move v4, p4

    move v5, p5

    move v6, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lorg/antlr/v4/runtime/ANTLRErrorListener;->reportContextSensitivity(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;IIILorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    :cond_12
    return-void
.end method

.method public reset()V
    .registers 1

    return-void
.end method

.method protected ruleTransition(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/RuleTransition;)Lorg/antlr/v4/runtime/atn/ATNConfig;
    .registers 5

    .line 1909
    iget-object v0, p2, Lorg/antlr/v4/runtime/atn/RuleTransition;->followState:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 1910
    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-static {v1, v0}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->create(Lorg/antlr/v4/runtime/atn/PredictionContext;I)Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    move-result-object v0

    .line 1912
    new-instance v1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget-object p2, p2, Lorg/antlr/v4/runtime/atn/RuleTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {v1, p1, p2, v0}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;)V

    return-object v1
.end method

.method public final setPredictionMode(Lorg/antlr/v4/runtime/atn/PredictionMode;)V
    .registers 2

    .line 2170
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mode:Lorg/antlr/v4/runtime/atn/PredictionMode;

    return-void
.end method

.method protected splitAccordingToSemanticValidity(Lorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/ParserRuleContext;)Lorg/antlr/v4/runtime/misc/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ATNConfigSet;",
            "Lorg/antlr/v4/runtime/ParserRuleContext;",
            ")",
            "Lorg/antlr/v4/runtime/misc/Pair<",
            "Lorg/antlr/v4/runtime/atn/ATNConfigSet;",
            "Lorg/antlr/v4/runtime/atn/ATNConfigSet;",
            ">;"
        }
    .end annotation

    .line 1342
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    iget-boolean v1, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->fullCtx:Z

    invoke-direct {v0, v1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>(Z)V

    .line 1343
    new-instance v1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    iget-boolean v2, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->fullCtx:Z

    invoke-direct {v1, v2}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>(Z)V

    .line 1344
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 1345
    iget-object v4, v3, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    sget-object v5, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-eq v4, v5, :cond_38

    .line 1346
    iget-object v4, v3, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    iget v5, v3, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    iget-boolean v6, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->fullCtx:Z

    invoke-virtual {p0, v4, p2, v5, v6}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->evalSemanticContext(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/ParserRuleContext;IZ)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1348
    invoke-virtual {v0, v3}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    goto :goto_12

    .line 1351
    :cond_34
    invoke-virtual {v1, v3}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    goto :goto_12

    .line 1355
    :cond_38
    invoke-virtual {v0, v3}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    goto :goto_12

    .line 1358
    :cond_3c
    new-instance p1, Lorg/antlr/v4/runtime/misc/Pair;

    invoke-direct {p1, v0, v1}, Lorg/antlr/v4/runtime/misc/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
