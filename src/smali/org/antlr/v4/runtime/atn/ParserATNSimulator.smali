.class public Lorg/antlr/v4/runtime/atn/ParserATNSimulator;
.super Lorg/antlr/v4/runtime/atn/ATNSimulator;
.source "ParserATNSimulator.java"


# static fields
.field static final $assertionsDisabled:Z

.field public static final TURN_OFF_LR_LOOP_ENTRY_BRANCH_OPT:Z

.field public static final debug:Z

.field public static final debug_list_atn_decisions:Z

.field public static final dfa_debug:Z

.field public static final retry_debug:Z


# instance fields
.field protected _dfa:Lorg/antlr/v4/runtime/dfa/DFA;

.field protected _input:Lorg/antlr/v4/runtime/TokenStream;

.field protected _outerContext:Lorg/antlr/v4/runtime/ParserRuleContext;

.field protected _startIndex:I

.field public final decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

.field protected mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/antlr/v4/runtime/misc/DoubleKeyMap",
            "<",
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
    .locals 1

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
    .locals 1

    .line 310
    invoke-direct {p0, p2, p4}, Lorg/antlr/v4/runtime/atn/ATNSimulator;-><init>(Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V

    .line 281
    sget-object v0, Lorg/antlr/v4/runtime/atn/PredictionMode;->LL:Lorg/antlr/v4/runtime/atn/PredictionMode;

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mode:Lorg/antlr/v4/runtime/atn/PredictionMode;

    .line 311
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    .line 312
    iput-object p3, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATN;[Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V
    .locals 1

    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;-><init>(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/atn/ATN;[Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/atn/PredictionContextCache;)V

    return-void
.end method

.method public static getSafeEnv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2187
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static getUniqueAlt(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)I
    .locals 4

    const/4 v2, 0x0

    .line 2034
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    if-nez v1, :cond_1

    .line 2036
    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    move v1, v0

    goto :goto_0

    .line 2038
    :cond_1
    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    if-eq v0, v1, :cond_0

    :goto_1
    return v2

    :cond_2
    move v2, v1

    goto :goto_1
.end method


# virtual methods
.method protected actionTransition(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ActionTransition;)Lorg/antlr/v4/runtime/atn/ATNConfig;
    .locals 2

    .line 1805
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget-object v1, p2, Lorg/antlr/v4/runtime/atn/ActionTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {v0, p1, v1}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    return-object v0
.end method

.method public adaptivePredict(Lorg/antlr/v4/runtime/TokenStream;ILorg/antlr/v4/runtime/ParserRuleContext;)I
    .locals 8

    const/4 v7, 0x0

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

    aget-object v1, v0, p2

    .line 342
    iput-object v1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_dfa:Lorg/antlr/v4/runtime/dfa/DFA;

    .line 344
    invoke-interface {p1}, Lorg/antlr/v4/runtime/TokenStream;->mark()I

    move-result v6

    .line 345
    iget v4, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_startIndex:I

    .line 351
    :try_start_0
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/dfa/DFA;->isPrecedenceDfa()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/Parser;->getPrecedence()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/dfa/DFA;->getPrecedenceStartState(I)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object v2

    .line 358
    :goto_0
    if-nez v2, :cond_2

    if-nez p3, :cond_3

    .line 362
    sget-object v5, Lorg/antlr/v4/runtime/ParserRuleContext;->EMPTY:Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 370
    :goto_1
    iget-object v0, v1, Lorg/antlr/v4/runtime/dfa/DFA;->atnStartState:Lorg/antlr/v4/runtime/atn/DecisionState;

    sget-object v2, Lorg/antlr/v4/runtime/ParserRuleContext;->EMPTY:Lorg/antlr/v4/runtime/ParserRuleContext;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->computeStartState(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/RuleContext;Z)Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    move-result-object v0

    .line 375
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/dfa/DFA;->isPrecedenceDfa()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    iget-object v2, v1, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    iput-object v0, v2, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    .line 383
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->applyPrecedenceFilter(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    move-result-object v0

    .line 384
    new-instance v2, Lorg/antlr/v4/runtime/dfa/DFAState;

    invoke-direct {v2, v0}, Lorg/antlr/v4/runtime/dfa/DFAState;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    invoke-virtual {p0, v1, v2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->addDFAState(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object v2

    .line 385
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/Parser;->getPrecedence()I

    move-result v0

    invoke-virtual {v1, v0, v2}, Lorg/antlr/v4/runtime/dfa/DFA;->setPrecedenceStartState(ILorg/antlr/v4/runtime/dfa/DFAState;)V

    :goto_2
    move-object v0, p0

    move-object v3, p1

    .line 393
    invoke-virtual/range {v0 .. v5}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->execATN(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;Lorg/antlr/v4/runtime/TokenStream;ILorg/antlr/v4/runtime/ParserRuleContext;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 398
    iput-object v7, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    .line 399
    iput-object v7, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_dfa:Lorg/antlr/v4/runtime/dfa/DFA;

    .line 400
    invoke-interface {p1, v4}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    .line 401
    invoke-interface {p1, v6}, Lorg/antlr/v4/runtime/TokenStream;->release(I)V

    return v0

    .line 358
    :cond_0
    :try_start_1
    iget-object v2, v1, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    goto :goto_0

    .line 388
    :cond_1
    new-instance v2, Lorg/antlr/v4/runtime/dfa/DFAState;

    invoke-direct {v2, v0}, Lorg/antlr/v4/runtime/dfa/DFAState;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    invoke-virtual {p0, v1, v2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->addDFAState(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object v2

    .line 389
    iput-object v2, v1, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 401
    :catchall_0
    move-exception v0

    .line 398
    iput-object v7, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    .line 399
    iput-object v7, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_dfa:Lorg/antlr/v4/runtime/dfa/DFA;

    .line 400
    invoke-interface {p1, v4}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    .line 401
    invoke-interface {p1, v6}, Lorg/antlr/v4/runtime/TokenStream;->release(I)V

    throw v0

    :cond_2
    move-object v5, p3

    .line 358
    goto :goto_2

    :cond_3
    move-object v5, p3

    goto :goto_1
.end method

.method protected addDFAEdge(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;ILorg/antlr/v4/runtime/dfa/DFAState;)Lorg/antlr/v4/runtime/dfa/DFAState;
    .locals 3

    if-nez p4, :cond_1

    const/4 v0, 0x0

    .line 2089
    :cond_0
    :goto_0
    return-object v0

    .line 2078
    :cond_1
    invoke-virtual {p0, p1, p4}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->addDFAState(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 v1, -0x1

    if-lt p3, v1, :cond_0

    .line 2079
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget v1, v1, Lorg/antlr/v4/runtime/atn/ATN;->maxTokenType:I

    if-gt p3, v1, :cond_0

    .line 2083
    monitor-enter p2

    .line 2084
    :try_start_0
    iget-object v1, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    if-nez v1, :cond_2

    .line 2085
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget v1, v1, Lorg/antlr/v4/runtime/atn/ATN;->maxTokenType:I

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lorg/antlr/v4/runtime/dfa/DFAState;

    iput-object v1, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    .line 2088
    :cond_2
    iget-object v1, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    add-int/lit8 v2, p3, 0x1

    aput-object v0, v1, v2

    .line 2089
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected addDFAState(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;)Lorg/antlr/v4/runtime/dfa/DFAState;
    .locals 3

    .line 2114
    sget-object v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->ERROR:Lorg/antlr/v4/runtime/dfa/DFAState;

    if-ne p2, v0, :cond_0

    .line 2129
    :goto_0
    return-object p2

    .line 2118
    :cond_0
    iget-object v1, p1, Lorg/antlr/v4/runtime/dfa/DFA;->states:Ljava/util/Map;

    monitor-enter v1

    .line 2119
    :try_start_0
    iget-object v0, p1, Lorg/antlr/v4/runtime/dfa/DFA;->states:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/dfa/DFAState;

    if-eqz v0, :cond_1

    .line 2120
    monitor-exit v1

    move-object p2, v0

    goto :goto_0

    .line 2122
    :cond_1
    iget-object v0, p1, Lorg/antlr/v4/runtime/dfa/DFA;->states:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->stateNumber:I

    .line 2123
    iget-object v0, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->isReadonly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2124
    iget-object v0, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {v0, p0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->optimizeConfigs(Lorg/antlr/v4/runtime/atn/ATNSimulator;)V

    .line 2125
    iget-object v0, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->setReadonly(Z)V

    .line 2127
    :cond_2
    iget-object v0, p1, Lorg/antlr/v4/runtime/dfa/DFA;->states:Ljava/util/Map;

    invoke-interface {v0, p2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2130
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected applyPrecedenceFilter(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Lorg/antlr/v4/runtime/atn/ATNConfigSet;
    .locals 8

    const/4 v7, 0x1

    .line 1127
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1128
    new-instance v3, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    iget-boolean v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->fullCtx:Z

    invoke-direct {v3, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>(Z)V

    .line 1129
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 1131
    iget v4, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    if-ne v4, v7, :cond_0

    .line 1135
    iget-object v4, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    iget-object v5, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    iget-object v6, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_outerContext:Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-virtual {v4, v5, v6}, Lorg/antlr/v4/runtime/atn/SemanticContext;->evalPrecedence(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/atn/SemanticContext;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1141
    iget-object v5, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v5, v5, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    iget-object v5, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-eq v4, v5, :cond_1

    .line 1143
    new-instance v5, Lorg/antlr/v4/runtime/atn/ATNConfig;

    invoke-direct {v5, v0, v4}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    invoke-virtual {v3, v5, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z

    goto :goto_0

    .line 1146
    :cond_1
    iget-object v4, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    invoke-virtual {v3, v0, v4}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z

    goto :goto_0

    .line 1150
    :cond_2
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 1151
    iget v1, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    if-eq v1, v7, :cond_3

    .line 1156
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNConfig;->isPrecedenceFilterSuppressed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1161
    iget-object v1, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v1, v1, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v1, :cond_4

    .line 1162
    iget-object v5, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v1, v5}, Lorg/antlr/v4/runtime/atn/PredictionContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1168
    :cond_4
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    invoke-virtual {v3, v0, v1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z

    goto :goto_1

    :cond_5
    return-object v3
.end method

.method protected canDropLoopEntryEdgeInLeftRecursiveRule(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z
    .locals 10

    const/16 v9, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1681
    sget-boolean v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->TURN_OFF_LR_LOOP_ENTRY_BRANCH_OPT:Z

    if-eqz v0, :cond_0

    move v0, v3

    .line 1736
    :goto_0
    return v0

    .line 1682
    :cond_0
    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 1687
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/ATNState;->getStateType()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    move-object v0, v1

    check-cast v0, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    iget-boolean v0, v0, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->isPrecedenceDecision:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->hasEmptyPath()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v3

    .line 1736
    goto :goto_0

    .line 1697
    :cond_2
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v6

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_4

    .line 1699
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    iget-object v5, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v5, v2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 1700
    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    iget v5, v1, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    if-eq v0, v5, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1703
    :cond_4
    invoke-virtual {v1, v3}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v0

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    check-cast v0, Lorg/antlr/v4/runtime/atn/BlockStartState;

    .line 1704
    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/BlockStartState;->endState:Lorg/antlr/v4/runtime/atn/BlockEndState;

    iget v0, v0, Lorg/antlr/v4/runtime/atn/BlockEndState;->stateNumber:I

    .line 1705
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/BlockEndState;

    move v5, v3

    :goto_2
    if-ge v5, v6, :cond_9

    .line 1710
    iget-object v2, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v2, v5}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v2

    .line 1711
    iget-object v7, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v7, v7, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 1713
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v7

    if-ne v7, v4, :cond_5

    invoke-virtual {v2, v3}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v7

    invoke-virtual {v7}, Lorg/antlr/v4/runtime/atn/Transition;->isEpsilon()Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    move v0, v3

    .line 1736
    goto/16 :goto_0

    .line 1719
    :cond_6
    invoke-virtual {v2, v3}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v7

    iget-object v7, v7, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 1720
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/ATNState;->getStateType()I

    move-result v8

    if-ne v8, v9, :cond_8

    if-ne v7, v1, :cond_8

    .line 1736
    :cond_7
    :goto_3
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    .line 1720
    :cond_8
    if-eq v2, v0, :cond_7

    if-eq v7, v0, :cond_7

    .line 1736
    invoke-virtual {v7}, Lorg/antlr/v4/runtime/atn/ATNState;->getStateType()I

    move-result v2

    if-ne v2, v9, :cond_5

    invoke-virtual {v7}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v2

    if-ne v2, v4, :cond_5

    invoke-virtual {v7, v3}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v2

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/Transition;->isEpsilon()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v7, v3}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v2

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    if-ne v2, v1, :cond_5

    goto :goto_3

    :cond_9
    move v0, v4

    goto/16 :goto_0
.end method

.method public clearDFA()V
    .locals 4

    const/4 v0, 0x0

    .line 324
    :goto_0
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 325
    new-instance v2, Lorg/antlr/v4/runtime/dfa/DFA;

    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    invoke-virtual {v3, v0}, Lorg/antlr/v4/runtime/atn/ATN;->getDecisionState(I)Lorg/antlr/v4/runtime/atn/DecisionState;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/antlr/v4/runtime/dfa/DFA;-><init>(Lorg/antlr/v4/runtime/atn/DecisionState;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected closure(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Ljava/util/Set;ZZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            "Lorg/antlr/v4/runtime/atn/ATNConfigSet;",
            "Ljava/util/Set",
            "<",
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
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            "Lorg/antlr/v4/runtime/atn/ATNConfigSet;",
            "Ljava/util/Set",
            "<",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            ">;ZZIZ)V"
        }
    .end annotation

    .line 1464
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v0, v0, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v0, :cond_4

    .line 1467
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move v8, v0

    .line 1468
    :goto_0
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 1469
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v0, v8}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    if-eqz p5, :cond_0

    .line 1471
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    sget-object v2, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    invoke-direct {v0, p1, v1, v2}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;)V

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    invoke-virtual {p2, v0, v1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z

    .line 1496
    :goto_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 1478
    :cond_0
    invoke-virtual/range {p0 .. p7}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->closure_(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Ljava/util/Set;ZZIZ)V

    goto :goto_1

    .line 1483
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v1, v8}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 1484
    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v1, v8}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v2

    .line 1485
    new-instance v1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    iget-object v4, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-direct {v1, v0, v3, v2, v4}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;ILorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    .line 1494
    iget v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    iput v0, v1, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    .line 1496
    add-int/lit8 v6, p6, -0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->closureCheckingStopState(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Ljava/util/Set;ZZIZ)V

    goto :goto_1

    :cond_2
    if-eqz p5, :cond_4

    .line 1503
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    invoke-virtual {p2, p1, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z

    .line 1513
    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-virtual/range {p0 .. p7}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->closure_(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Ljava/util/Set;ZZIZ)V

    goto :goto_2
.end method

.method protected closure_(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Ljava/util/Set;ZZIZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            "Lorg/antlr/v4/runtime/atn/ATNConfigSet;",
            "Ljava/util/Set",
            "<",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            ">;ZZIZ)V"
        }
    .end annotation

    .line 1526
    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 1528
    invoke-virtual {v15}, Lorg/antlr/v4/runtime/atn/ATNState;->onlyHasEpsilonTransitions()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1529
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z

    :cond_0
    const/4 v2, 0x0

    move v14, v2

    .line 1535
    :goto_0
    invoke-virtual {v15}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v2

    if-ge v14, v2, :cond_9

    if-nez v14, :cond_2

    .line 1536
    invoke-virtual/range {p0 .. p1}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->canDropLoopEntryEdgeInLeftRecursiveRule(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1586
    :cond_1
    :goto_1
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_0

    .line 1538
    :cond_2
    invoke-virtual {v15, v14}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v4

    .line 1539
    instance-of v2, v4, Lorg/antlr/v4/runtime/atn/ActionTransition;

    if-nez v2, :cond_4

    if-eqz p4, :cond_4

    const/4 v5, 0x1

    :goto_2
    if-nez p6, :cond_5

    const/4 v6, 0x1

    :goto_3
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v7, p5

    move/from16 v8, p7

    .line 1541
    invoke-virtual/range {v2 .. v8}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getEpsilonTarget(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/Transition;ZZZZ)Lorg/antlr/v4/runtime/atn/ATNConfig;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1545
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v2, v2, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v2, :cond_6

    .line 1553
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_dfa:Lorg/antlr/v4/runtime/dfa/DFA;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/dfa/DFA;->isPrecedenceDfa()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1554
    check-cast v4, Lorg/antlr/v4/runtime/atn/EpsilonTransition;

    invoke-virtual {v4}, Lorg/antlr/v4/runtime/atn/EpsilonTransition;->outermostPrecedenceReturn()I

    move-result v2

    .line 1555
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_dfa:Lorg/antlr/v4/runtime/dfa/DFA;

    iget-object v3, v3, Lorg/antlr/v4/runtime/dfa/DFA;->atnStartState:Lorg/antlr/v4/runtime/atn/DecisionState;

    iget v3, v3, Lorg/antlr/v4/runtime/atn/DecisionState;->ruleIndex:I

    if-ne v2, v3, :cond_3

    .line 1556
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lorg/antlr/v4/runtime/atn/ATNConfig;->setPrecedenceFilterSuppressed(Z)V

    .line 1560
    :cond_3
    iget v2, v7, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v7, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    .line 1562
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1567
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->dipsIntoOuterContext:Z

    add-int/lit8 v2, p6, -0x1

    :goto_4
    move v12, v2

    :goto_5
    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move v10, v5

    move/from16 v11, p5

    move/from16 v13, p7

    .line 1586
    invoke-virtual/range {v6 .. v13}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->closureCheckingStopState(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Ljava/util/Set;ZZIZ)V

    goto :goto_1

    .line 1539
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 1573
    :cond_6
    invoke-virtual {v4}, Lorg/antlr/v4/runtime/atn/Transition;->isEpsilon()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1578
    :cond_7
    instance-of v2, v4, Lorg/antlr/v4/runtime/atn/RuleTransition;

    if-eqz v2, :cond_8

    if-ltz p6, :cond_8

    add-int/lit8 v2, p6, 0x1

    goto :goto_4

    :cond_8
    move/from16 v12, p6

    goto :goto_5

    .line 1586
    :cond_9
    return-void
.end method

.method protected computeReachSet(Lorg/antlr/v4/runtime/atn/ATNConfigSet;IZ)Lorg/antlr/v4/runtime/atn/ATNConfigSet;
    .locals 11

    .line 775
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    if-nez v0, :cond_0

    .line 776
    new-instance v0, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    .line 779
    :cond_0
    new-instance v9, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-direct {v9, p3}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>(Z)V

    .line 794
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move-object v7, v0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v8, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 797
    iget-object v3, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v3, v3, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v3, :cond_3

    if-nez p3, :cond_2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    :cond_2
    if-nez v7, :cond_11

    .line 801
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 804
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v7, v1

    goto :goto_0

    .line 810
    :cond_3
    iget-object v3, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {v3}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v3

    :goto_2
    if-ge v1, v3, :cond_1

    .line 812
    iget-object v4, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {v4, v1}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v4

    .line 813
    invoke-virtual {p0, v4, p2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getReachableTarget(Lorg/antlr/v4/runtime/atn/Transition;I)Lorg/antlr/v4/runtime/atn/ATNState;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 815
    new-instance v5, Lorg/antlr/v4/runtime/atn/ATNConfig;

    invoke-direct {v5, v0, v4}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    iget-object v4, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    invoke-virtual {v9, v5, v4}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    if-nez v7, :cond_8

    const/4 v0, -0x1

    if-eq p2, v0, :cond_8

    .line 834
    invoke-virtual {v9}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    :cond_6
    move-object v1, v9

    .line 841
    :goto_3
    if-nez v1, :cond_b

    .line 852
    new-instance v2, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-direct {v2, p3}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>(Z)V

    .line 853
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    const/4 v6, 0x1

    .line 855
    :goto_4
    invoke-virtual {v9}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 856
    const/4 v4, 0x0

    move-object v0, p0

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->closure(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Ljava/util/Set;ZZZ)V

    goto :goto_5

    .line 841
    :cond_7
    invoke-static {v9}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getUniqueAlt(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)I

    move-result v0

    if-nez v0, :cond_6

    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 853
    :cond_9
    const/4 v6, 0x0

    goto :goto_4

    :cond_a
    move-object v1, v2

    .line 855
    :cond_b
    const/4 v0, -0x1

    if-ne p2, v0, :cond_c

    if-ne v1, v9, :cond_10

    const/4 v0, 0x1

    .line 878
    :goto_6
    invoke-virtual {p0, v1, v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->removeAllConfigsNotInRuleStopState(Lorg/antlr/v4/runtime/atn/ATNConfigSet;Z)Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    move-result-object v1

    :cond_c
    if-eqz v7, :cond_e

    if-eqz p3, :cond_d

    .line 889
    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/PredictionMode;->hasConfigInRuleStopState(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 891
    :cond_d
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 892
    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    invoke-virtual {v1, v0, v3}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z

    goto :goto_7

    .line 896
    :cond_e
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_f
    move-object v0, v1

    goto :goto_8

    :cond_10
    move v0, v8

    goto :goto_6

    :cond_11
    move-object v1, v7

    goto/16 :goto_1
.end method

.method protected computeStartState(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/RuleContext;Z)Lorg/antlr/v4/runtime/atn/ATNConfigSet;
    .locals 9

    const/4 v6, 0x0

    .line 950
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    invoke-static {v0, p2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->fromRuleContext(Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v8

    .line 951
    new-instance v2, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-direct {v2, p3}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>(Z)V

    move v0, v6

    .line 953
    :goto_0
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 954
    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v1

    iget-object v3, v1, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 955
    add-int/lit8 v7, v0, 0x1

    new-instance v1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    invoke-direct {v1, v3, v7, v8}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;ILorg/antlr/v4/runtime/atn/PredictionContext;)V

    .line 956
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 957
    const/4 v4, 0x1

    move-object v0, p0

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->closure(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Ljava/util/Set;ZZZ)V

    move v0, v7

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method protected computeTargetState(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 576
    iget-object v0, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {p0, v0, p3, v3}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->computeReachSet(Lorg/antlr/v4/runtime/atn/ATNConfigSet;IZ)Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    move-result-object v0

    if-nez v0, :cond_0

    .line 578
    sget-object v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->ERROR:Lorg/antlr/v4/runtime/dfa/DFAState;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->addDFAEdge(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;ILorg/antlr/v4/runtime/dfa/DFAState;)Lorg/antlr/v4/runtime/dfa/DFAState;

    .line 579
    sget-object v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->ERROR:Lorg/antlr/v4/runtime/dfa/DFAState;

    .line 619
    :goto_0
    return-object v0

    .line 583
    :cond_0
    new-instance v1, Lorg/antlr/v4/runtime/dfa/DFAState;

    invoke-direct {v1, v0}, Lorg/antlr/v4/runtime/dfa/DFAState;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    .line 585
    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getUniqueAlt(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 598
    iput-boolean v4, v1, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    .line 599
    iget-object v0, v1, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    iput v2, v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    .line 600
    iput v2, v1, Lorg/antlr/v4/runtime/dfa/DFAState;->prediction:I

    .line 611
    :cond_1
    :goto_1
    iget-boolean v0, v1, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    iget-boolean v0, v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    if-eqz v0, :cond_2

    .line 612
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget v2, p1, Lorg/antlr/v4/runtime/dfa/DFA;->decision:I

    invoke-virtual {v0, v2}, Lorg/antlr/v4/runtime/atn/ATN;->getDecisionState(I)Lorg/antlr/v4/runtime/atn/DecisionState;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->predicateDFAState(Lorg/antlr/v4/runtime/dfa/DFAState;Lorg/antlr/v4/runtime/atn/DecisionState;)V

    .line 613
    iget-object v0, v1, Lorg/antlr/v4/runtime/dfa/DFAState;->predicates:[Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    if-eqz v0, :cond_2

    .line 614
    iput v3, v1, Lorg/antlr/v4/runtime/dfa/DFAState;->prediction:I

    .line 619
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->addDFAEdge(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;ILorg/antlr/v4/runtime/dfa/DFAState;)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object v0

    goto :goto_0

    .line 602
    :cond_3
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mode:Lorg/antlr/v4/runtime/atn/PredictionMode;

    invoke-static {v2, v0}, Lorg/antlr/v4/runtime/atn/PredictionMode;->hasSLLConflictTerminatingPrediction(Lorg/antlr/v4/runtime/atn/PredictionMode;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 604
    iget-object v2, v1, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getConflictingAlts(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, v2, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->conflictingAlts:Ljava/util/BitSet;

    .line 605
    iput-boolean v4, v1, Lorg/antlr/v4/runtime/dfa/DFAState;->requiresFullContext:Z

    .line 607
    iput-boolean v4, v1, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    .line 608
    iget-object v0, v1, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->conflictingAlts:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iput v0, v1, Lorg/antlr/v4/runtime/dfa/DFAState;->prediction:I

    goto :goto_1
.end method

.method public dumpDeadEndConfigs(Lorg/antlr/v4/runtime/NoViableAltException;)V
    .locals 7

    .line 2001
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "dead end configs: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2002
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/NoViableAltException;->getDeadEndConfigs()Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 2004
    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v0

    if-lez v0, :cond_2

    .line 2005
    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v0

    .line 2006
    instance-of v2, v0, Lorg/antlr/v4/runtime/atn/AtomTransition;

    if-eqz v2, :cond_0

    .line 2007
    check-cast v0, Lorg/antlr/v4/runtime/atn/AtomTransition;

    .line 2008
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Atom "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lorg/antlr/v4/runtime/atn/AtomTransition;->label:I

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getTokenName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2016
    :goto_1
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lorg/antlr/v4/runtime/atn/ATNConfig;->toString(Lorg/antlr/v4/runtime/Recognizer;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2010
    :cond_0
    instance-of v2, v0, Lorg/antlr/v4/runtime/atn/SetTransition;

    if-eqz v2, :cond_2

    .line 2011
    check-cast v0, Lorg/antlr/v4/runtime/atn/SetTransition;

    .line 2012
    instance-of v2, v0, Lorg/antlr/v4/runtime/atn/NotSetTransition;

    .line 2013
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_1

    const-string v2, "~"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Set "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/SetTransition;->set:Lorg/antlr/v4/runtime/misc/IntervalSet;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v2, ""

    goto :goto_2

    .line 2016
    :cond_2
    const-string v0, "no edges"

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected evalSemanticContext([Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;Lorg/antlr/v4/runtime/ParserRuleContext;Z)Ljava/util/BitSet;
    .locals 7

    const/4 v1, 0x0

    .line 1371
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 1372
    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p1, v0

    .line 1373
    iget-object v5, v4, Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;->pred:Lorg/antlr/v4/runtime/atn/SemanticContext;

    sget-object v6, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-ne v5, v6, :cond_1

    .line 1374
    iget v4, v4, Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;->alt:I

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    if-nez p3, :cond_2

    .line 1389
    :cond_0
    return-object v2

    .line 1382
    :cond_1
    iget-object v5, v4, Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;->pred:Lorg/antlr/v4/runtime/atn/SemanticContext;

    iget v6, v4, Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;->alt:I

    invoke-virtual {p0, v5, p2, v6, v1}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->evalSemanticContext(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/ParserRuleContext;IZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1389
    iget v4, v4, Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;->alt:I

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    if-eqz p3, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected evalSemanticContext(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/ParserRuleContext;IZ)Z
    .locals 1

    .line 1430
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {p1, v0, p2}, Lorg/antlr/v4/runtime/atn/SemanticContext;->eval(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/RuleContext;)Z

    move-result v0

    return v0
.end method

.method protected execATN(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;Lorg/antlr/v4/runtime/TokenStream;ILorg/antlr/v4/runtime/ParserRuleContext;)I
    .locals 9

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 449
    invoke-interface {p3, v3}, Lorg/antlr/v4/runtime/TokenStream;->LA(I)I

    move-result v0

    .line 452
    :goto_0
    invoke-virtual {p0, p2, v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getExistingTargetState(Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object v8

    if-nez v8, :cond_0

    .line 454
    invoke-virtual {p0, p1, p2, v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->computeTargetState(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;I)Lorg/antlr/v4/runtime/dfa/DFAState;

    move-result-object v8

    .line 452
    :cond_0
    sget-object v1, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->ERROR:Lorg/antlr/v4/runtime/dfa/DFAState;

    if-ne v8, v1, :cond_2

    .line 467
    iget-object v0, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {p0, p3, p5, v0, p4}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->noViableAlt(Lorg/antlr/v4/runtime/TokenStream;Lorg/antlr/v4/runtime/ParserRuleContext;Lorg/antlr/v4/runtime/atn/ATNConfigSet;I)Lorg/antlr/v4/runtime/NoViableAltException;

    move-result-object v1

    .line 468
    invoke-interface {p3, p4}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    .line 469
    iget-object v0, p2, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {p0, v0, p5}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(Lorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/ParserRuleContext;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    :goto_1
    return v0

    .line 473
    :cond_1
    throw v1

    .line 476
    :cond_2
    iget-boolean v1, v8, Lorg/antlr/v4/runtime/dfa/DFAState;->requiresFullContext:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mode:Lorg/antlr/v4/runtime/atn/PredictionMode;

    sget-object v2, Lorg/antlr/v4/runtime/atn/PredictionMode;->SLL:Lorg/antlr/v4/runtime/atn/PredictionMode;

    if-eq v1, v2, :cond_6

    .line 478
    iget-object v0, v8, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->conflictingAlts:Ljava/util/BitSet;

    .line 479
    iget-object v0, v8, Lorg/antlr/v4/runtime/dfa/DFAState;->predicates:[Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    if-eqz v0, :cond_5

    .line 481
    invoke-interface {p3}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v0

    if-eq v0, p4, :cond_3

    .line 483
    invoke-interface {p3, p4}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    .line 486
    :cond_3
    iget-object v1, v8, Lorg/antlr/v4/runtime/dfa/DFAState;->predicates:[Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    invoke-virtual {p0, v1, p5, v3}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->evalSemanticContext([Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;Lorg/antlr/v4/runtime/ParserRuleContext;Z)Ljava/util/BitSet;

    move-result-object v2

    .line 487
    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 489
    invoke-virtual {v2, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_1

    :cond_4
    if-eq v0, p4, :cond_5

    .line 495
    invoke-interface {p3, v0}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    .line 479
    :cond_5
    iget-object v0, p1, Lorg/antlr/v4/runtime/dfa/DFA;->atnStartState:Lorg/antlr/v4/runtime/atn/DecisionState;

    invoke-virtual {p0, v0, p5, v3}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->computeStartState(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/RuleContext;Z)Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    move-result-object v6

    .line 504
    iget-object v3, v8, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-interface {p3}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->reportAttemptingFullContext(Lorg/antlr/v4/runtime/dfa/DFA;Ljava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;II)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, v8

    move-object v3, v6

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 505
    invoke-virtual/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->execATNWithFullContext(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/TokenStream;ILorg/antlr/v4/runtime/ParserRuleContext;)I

    move-result v0

    goto :goto_1

    .line 511
    :cond_6
    iget-boolean v1, v8, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    if-eqz v1, :cond_a

    .line 512
    iget-object v0, v8, Lorg/antlr/v4/runtime/dfa/DFAState;->predicates:[Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    if-nez v0, :cond_7

    .line 513
    iget v0, v8, Lorg/antlr/v4/runtime/dfa/DFAState;->prediction:I

    goto :goto_1

    .line 516
    :cond_7
    invoke-interface {p3}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v4

    .line 517
    invoke-interface {p3, p4}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    .line 518
    iget-object v0, v8, Lorg/antlr/v4/runtime/dfa/DFAState;->predicates:[Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    invoke-virtual {p0, v0, p5, v3}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->evalSemanticContext([Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;Lorg/antlr/v4/runtime/ParserRuleContext;Z)Ljava/util/BitSet;

    move-result-object v6

    .line 519
    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-eqz v0, :cond_9

    if-eq v0, v3, :cond_8

    .line 529
    iget-object v7, v8, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    move-object v0, p0

    move-object v1, p1

    move-object v2, v8

    move v3, p4

    invoke-virtual/range {v0 .. v7}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->reportAmbiguity(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;IIZLjava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    .line 530
    invoke-virtual {v6, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_1

    .line 524
    :cond_8
    invoke-virtual {v6, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto/16 :goto_1

    .line 521
    :cond_9
    iget-object v0, v8, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {p0, p3, p5, v0, p4}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->noViableAlt(Lorg/antlr/v4/runtime/TokenStream;Lorg/antlr/v4/runtime/ParserRuleContext;Lorg/antlr/v4/runtime/atn/ATNConfigSet;I)Lorg/antlr/v4/runtime/NoViableAltException;

    move-result-object v0

    throw v0

    :cond_a
    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 537
    invoke-interface {p3}, Lorg/antlr/v4/runtime/TokenStream;->consume()V

    .line 538
    invoke-interface {p3, v3}, Lorg/antlr/v4/runtime/TokenStream;->LA(I)I

    move-result v0

    :cond_b
    move-object p2, v8

    goto/16 :goto_0
.end method

.method protected execATNWithFullContext(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/TokenStream;ILorg/antlr/v4/runtime/ParserRuleContext;)I
    .locals 17

    .line 657
    invoke-interface/range {p4 .. p5}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    .line 658
    const/4 v5, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Lorg/antlr/v4/runtime/TokenStream;->LA(I)I

    move-result v5

    .line 664
    :goto_0
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5, v6}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->computeReachSet(Lorg/antlr/v4/runtime/atn/ATNConfigSet;IZ)Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    move-result-object v8

    if-nez v8, :cond_1

    .line 675
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    move-object/from16 v3, p3

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->noViableAlt(Lorg/antlr/v4/runtime/TokenStream;Lorg/antlr/v4/runtime/ParserRuleContext;Lorg/antlr/v4/runtime/atn/ATNConfigSet;I)Lorg/antlr/v4/runtime/NoViableAltException;

    move-result-object v5

    .line 676
    invoke-interface/range {p4 .. p5}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    .line 677
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(Lorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/ParserRuleContext;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 763
    :goto_1
    return v7

    .line 681
    :cond_0
    throw v5

    .line 684
    :cond_1
    invoke-static {v8}, Lorg/antlr/v4/runtime/atn/PredictionMode;->getConflictingAltSubsets(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Ljava/util/Collection;

    move-result-object v6

    .line 694
    invoke-static {v8}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getUniqueAlt(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)I

    move-result v7

    iput v7, v8, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    .line 696
    iget v7, v8, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    if-eqz v7, :cond_2

    .line 697
    iget v5, v8, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    :goto_2
    const/4 v14, 0x0

    move v7, v5

    .line 731
    :goto_3
    iget v5, v8, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    if-eqz v5, :cond_4

    .line 732
    invoke-interface/range {p4 .. p4}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v10

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v9, p5

    invoke-virtual/range {v5 .. v10}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->reportContextSensitivity(Lorg/antlr/v4/runtime/dfa/DFA;ILorg/antlr/v4/runtime/atn/ATNConfigSet;II)V

    goto :goto_1

    .line 700
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mode:Lorg/antlr/v4/runtime/atn/PredictionMode;

    sget-object v9, Lorg/antlr/v4/runtime/atn/PredictionMode;->LL_EXACT_AMBIG_DETECTION:Lorg/antlr/v4/runtime/atn/PredictionMode;

    if-eq v7, v9, :cond_3

    .line 701
    invoke-static {v6}, Lorg/antlr/v4/runtime/atn/PredictionMode;->resolvesToJustOneViableAlt(Ljava/util/Collection;)I

    move-result v6

    if-eqz v6, :cond_5

    move v5, v6

    goto :goto_2

    .line 709
    :cond_3
    invoke-static {v6}, Lorg/antlr/v4/runtime/atn/PredictionMode;->allSubsetsConflict(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v6}, Lorg/antlr/v4/runtime/atn/PredictionMode;->allSubsetsEqual(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 713
    invoke-static {v6}, Lorg/antlr/v4/runtime/atn/PredictionMode;->getSingleViableAlt(Ljava/util/Collection;)I

    move-result v7

    const/4 v14, 0x1

    goto :goto_3

    .line 763
    :cond_4
    invoke-interface/range {p4 .. p4}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v13

    invoke-virtual {v8}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->getAlts()Ljava/util/BitSet;

    move-result-object v15

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p5

    move-object/from16 v16, v8

    invoke-virtual/range {v9 .. v16}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->reportAmbiguity(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;IIZLjava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    goto :goto_1

    :cond_5
    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 723
    invoke-interface/range {p4 .. p4}, Lorg/antlr/v4/runtime/TokenStream;->consume()V

    .line 724
    const/4 v5, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Lorg/antlr/v4/runtime/TokenStream;->LA(I)I

    move-result v5

    :cond_6
    move-object/from16 p3, v8

    goto/16 :goto_0
.end method

.method protected getAltThatFinishedDecisionEntryRule(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)I
    .locals 5

    const/4 v1, 0x0

    .line 1319
    new-instance v2, Lorg/antlr/v4/runtime/misc/IntervalSet;

    new-array v0, v1, [I

    invoke-direct {v2, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 1320
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 1321
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNConfig;->getOuterContextDepth()I

    move-result v4

    if-gtz v4, :cond_1

    iget-object v4, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v4, v4, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v4}, Lorg/antlr/v4/runtime/atn/PredictionContext;->hasEmptyPath()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1322
    :cond_1
    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    invoke-virtual {v2, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    goto :goto_0

    .line 1325
    :cond_2
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/misc/IntervalSet;->size()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 1326
    :goto_1
    return v0

    :cond_3
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/misc/IntervalSet;->getMinElement()I

    move-result v0

    goto :goto_1
.end method

.method protected getConflictingAlts(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Ljava/util/BitSet;
    .locals 1

    .line 1925
    invoke-static {p1}, Lorg/antlr/v4/runtime/atn/PredictionMode;->getConflictingAltSubsets(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Ljava/util/Collection;

    move-result-object v0

    .line 1926
    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/PredictionMode;->getAlts(Ljava/util/Collection;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method protected getConflictingAltsOrUniqueAlt(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Ljava/util/BitSet;
    .locals 2

    .line 1967
    iget v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    if-eqz v0, :cond_0

    .line 1968
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1969
    iget v1, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1972
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->conflictingAlts:Ljava/util/BitSet;

    goto :goto_0
.end method

.method protected getEpsilonTarget(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/Transition;ZZZZ)Lorg/antlr/v4/runtime/atn/ATNConfig;
    .locals 6

    const/4 v0, 0x0

    .line 1765
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/Transition;->getSerializationType()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 1791
    :cond_0
    :goto_0
    return-object v0

    .line 1779
    :pswitch_0
    check-cast p2, Lorg/antlr/v4/runtime/atn/ActionTransition;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->actionTransition(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ActionTransition;)Lorg/antlr/v4/runtime/atn/ATNConfig;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    move-object v2, p2

    .line 1773
    check-cast v2, Lorg/antlr/v4/runtime/atn/PredicateTransition;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->predTransition(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/PredicateTransition;ZZZ)Lorg/antlr/v4/runtime/atn/ATNConfig;

    move-result-object v0

    goto :goto_0

    .line 1767
    :pswitch_2
    check-cast p2, Lorg/antlr/v4/runtime/atn/RuleTransition;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->ruleTransition(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/RuleTransition;)Lorg/antlr/v4/runtime/atn/ATNConfig;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    if-eqz p6, :cond_0

    .line 1790
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v2, v3}, Lorg/antlr/v4/runtime/atn/Transition;->matches(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1791
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget-object v1, p2, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {v0, p1, v1}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    goto :goto_0

    .line 1782
    :pswitch_4
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget-object v1, p2, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {v0, p1, v1}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    goto :goto_0

    :cond_1
    move-object v2, p2

    .line 1770
    check-cast v2, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->precedenceTransition(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;ZZZ)Lorg/antlr/v4/runtime/atn/ATNConfig;

    move-result-object v0

    goto :goto_0

    .line 1765
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
    .locals 3

    .line 555
    iget-object v0, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    if-eqz v0, :cond_0

    add-int/lit8 v1, p2, 0x1

    if-ltz v1, :cond_0

    .line 556
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 560
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getLookaheadName(Lorg/antlr/v4/runtime/TokenStream;)Ljava/lang/String;
    .locals 1

    .line 1993
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/antlr/v4/runtime/TokenStream;->LA(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getTokenName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParser()Lorg/antlr/v4/runtime/Parser;
    .locals 1

    .line 2182
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    return-object v0
.end method

.method protected getPredicatePredictions(Ljava/util/BitSet;[Lorg/antlr/v4/runtime/atn/SemanticContext;)[Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;
    .locals 6

    const/4 v2, 0x1

    .line 1229
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v2

    .line 1231
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_2

    .line 1232
    aget-object v4, p2, v1

    if-eqz p1, :cond_0

    .line 1237
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1238
    new-instance v5, Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    invoke-direct {v5, v4, v1}, Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;-><init>(Lorg/antlr/v4/runtime/atn/SemanticContext;I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1240
    :cond_0
    sget-object v5, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-eq v4, v5, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 1248
    :goto_1
    return-object v0

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    goto :goto_1
.end method

.method public final getPredictionMode()Lorg/antlr/v4/runtime/atn/PredictionMode;
    .locals 1

    .line 2175
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mode:Lorg/antlr/v4/runtime/atn/PredictionMode;

    return-object v0
.end method

.method protected getPredsForAmbigAlts(Ljava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;I)[Lorg/antlr/v4/runtime/atn/SemanticContext;
    .locals 5

    .line 1198
    add-int/lit8 v0, p3, 0x1

    new-array v1, v0, [Lorg/antlr/v4/runtime/atn/SemanticContext;

    .line 1199
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 1200
    iget v3, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1201
    iget v3, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    iget v4, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    aget-object v4, v1, v4

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-static {v4, v0}, Lorg/antlr/v4/runtime/atn/SemanticContext;->or(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)Lorg/antlr/v4/runtime/atn/SemanticContext;

    move-result-object v0

    aput-object v0, v1, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_1
    if-gt v2, p3, :cond_4

    .line 1207
    aget-object v3, v1, v2

    if-nez v3, :cond_3

    .line 1208
    sget-object v3, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    aput-object v3, v1, v2

    .line 1210
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sget-object v4, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-eq v3, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method

.method protected getReachableTarget(Lorg/antlr/v4/runtime/atn/Transition;I)Lorg/antlr/v4/runtime/atn/ATNState;
    .locals 2

    .line 1175
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget v1, v1, Lorg/antlr/v4/runtime/atn/ATN;->maxTokenType:I

    invoke-virtual {p1, p2, v0, v1}, Lorg/antlr/v4/runtime/atn/Transition;->matches(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRuleName(I)Ljava/lang/String;
    .locals 2

    .line 1753
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/Parser;->getRuleNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    .line 1754
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<rule "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(Lorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/ParserRuleContext;)I
    .locals 2

    .line 1300
    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->splitAccordingToSemanticValidity(Lorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/ParserRuleContext;)Lorg/antlr/v4/runtime/misc/Pair;

    move-result-object v1

    .line 1302
    iget-object v0, v1, Lorg/antlr/v4/runtime/misc/Pair;->a:Ljava/lang/Object;

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    .line 1303
    iget-object v1, v1, Lorg/antlr/v4/runtime/misc/Pair;->b:Ljava/lang/Object;

    check-cast v1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    .line 1304
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getAltThatFinishedDecisionEntryRule(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1310
    :cond_0
    :goto_0
    return v0

    .line 1309
    :cond_1
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1310
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getAltThatFinishedDecisionEntryRule(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTokenName(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1980
    const-string v0, "EOF"

    .line 1989
    :cond_0
    :goto_0
    return-object v0

    .line 1983
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/Parser;->getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v0

    .line 1984
    :goto_1
    invoke-interface {v0, p1}, Lorg/antlr/v4/runtime/Vocabulary;->getDisplayName(I)Ljava/lang/String;

    move-result-object v0

    .line 1985
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1989
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1983
    :cond_2
    sget-object v0, Lorg/antlr/v4/runtime/VocabularyImpl;->EMPTY_VOCABULARY:Lorg/antlr/v4/runtime/VocabularyImpl;

    goto :goto_1
.end method

.method protected noViableAlt(Lorg/antlr/v4/runtime/TokenStream;Lorg/antlr/v4/runtime/ParserRuleContext;Lorg/antlr/v4/runtime/atn/ATNConfigSet;I)Lorg/antlr/v4/runtime/NoViableAltException;
    .locals 7

    .line 2026
    new-instance v0, Lorg/antlr/v4/runtime/NoViableAltException;

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-interface {p1, p4}, Lorg/antlr/v4/runtime/TokenStream;->get(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v3

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v4

    move-object v2, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/antlr/v4/runtime/NoViableAltException;-><init>(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/TokenStream;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/ParserRuleContext;)V

    return-object v0
.end method

.method public precedenceTransition(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;ZZZ)Lorg/antlr/v4/runtime/atn/ATNConfig;
    .locals 4

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    .line 1832
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v0

    .line 1833
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    iget v2, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_startIndex:I

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    .line 1834
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;->getPredicate()Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;

    move-result-object v1

    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_outerContext:Lorg/antlr/v4/runtime/ParserRuleContext;

    iget v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    invoke-virtual {p0, v1, v2, v3, p5}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->evalSemanticContext(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/ParserRuleContext;IZ)Z

    move-result v1

    .line 1835
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v2, v0}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    if-eqz v1, :cond_0

    .line 1837
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget-object v1, p2, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {v0, p1, v1}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    .line 1847
    :goto_0
    return-object v0

    .line 1837
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1841
    :cond_1
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;->getPredicate()Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/atn/SemanticContext;->and(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)Lorg/antlr/v4/runtime/atn/SemanticContext;

    move-result-object v1

    .line 1843
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget-object v2, p2, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {v0, p1, v2, v1}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    goto :goto_0

    .line 1847
    :cond_2
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget-object v1, p2, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {v0, p1, v1}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    goto :goto_0
.end method

.method protected predTransition(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/PredicateTransition;ZZZ)Lorg/antlr/v4/runtime/atn/ATNConfig;
    .locals 4

    if-eqz p3, :cond_3

    .line 1872
    iget-boolean v0, p2, Lorg/antlr/v4/runtime/atn/PredicateTransition;->isCtxDependent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lorg/antlr/v4/runtime/atn/PredicateTransition;->isCtxDependent:Z

    if-eqz v0, :cond_3

    if-eqz p4, :cond_3

    :cond_0
    if-eqz p5, :cond_2

    .line 1880
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->index()I

    move-result v0

    .line 1881
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    iget v2, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_startIndex:I

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    .line 1882
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/PredicateTransition;->getPredicate()Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;

    move-result-object v1

    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_outerContext:Lorg/antlr/v4/runtime/ParserRuleContext;

    iget v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    invoke-virtual {p0, v1, v2, v3, p5}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->evalSemanticContext(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/ParserRuleContext;IZ)Z

    move-result v1

    .line 1883
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->_input:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v2, v0}, Lorg/antlr/v4/runtime/TokenStream;->seek(I)V

    if-eqz v1, :cond_1

    .line 1885
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget-object v1, p2, Lorg/antlr/v4/runtime/atn/PredicateTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {v0, p1, v1}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    .line 1895
    :goto_0
    return-object v0

    .line 1885
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1889
    :cond_2
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/PredicateTransition;->getPredicate()Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/atn/SemanticContext;->and(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)Lorg/antlr/v4/runtime/atn/SemanticContext;

    move-result-object v1

    .line 1891
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget-object v2, p2, Lorg/antlr/v4/runtime/atn/PredicateTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {v0, p1, v2, v1}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    goto :goto_0

    .line 1895
    :cond_3
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget-object v1, p2, Lorg/antlr/v4/runtime/atn/PredicateTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {v0, p1, v1}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    goto :goto_0
.end method

.method protected predicateDFAState(Lorg/antlr/v4/runtime/dfa/DFAState;Lorg/antlr/v4/runtime/atn/DecisionState;)V
    .locals 4

    const/4 v3, 0x0

    .line 626
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/DecisionState;->getNumberOfTransitions()I

    move-result v0

    .line 629
    iget-object v1, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getConflictingAltsOrUniqueAlt(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Ljava/util/BitSet;

    move-result-object v1

    .line 630
    iget-object v2, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {p0, v1, v2, v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getPredsForAmbigAlts(Ljava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;I)[Lorg/antlr/v4/runtime/atn/SemanticContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {p0, v1, v0}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->getPredicatePredictions(Ljava/util/BitSet;[Lorg/antlr/v4/runtime/atn/SemanticContext;)[Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    move-result-object v0

    iput-object v0, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->predicates:[Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    .line 633
    iput v3, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->prediction:I

    .line 639
    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iput v0, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->prediction:I

    goto :goto_0
.end method

.method protected removeAllConfigsNotInRuleStopState(Lorg/antlr/v4/runtime/atn/ATNConfigSet;Z)Lorg/antlr/v4/runtime/atn/ATNConfigSet;
    .locals 5

    .line 921
    invoke-static {p1}, Lorg/antlr/v4/runtime/atn/PredictionMode;->allConfigsInRuleStopStates(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    :goto_0
    return-object p1

    .line 925
    :cond_0
    new-instance v1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    iget-boolean v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->fullCtx:Z

    invoke-direct {v1, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>(Z)V

    .line 926
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 927
    iget-object v3, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v3, v3, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v3, :cond_2

    .line 928
    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    invoke-virtual {v1, v0, v3}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_1

    .line 932
    iget-object v3, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {v3}, Lorg/antlr/v4/runtime/atn/ATNState;->onlyHasEpsilonTransitions()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 933
    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v4, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {v3, v4}, Lorg/antlr/v4/runtime/atn/ATN;->nextTokens(Lorg/antlr/v4/runtime/atn/ATNState;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v3

    .line 934
    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 935
    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStopState:[Lorg/antlr/v4/runtime/atn/RuleStopState;

    iget-object v4, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v4, v4, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    aget-object v3, v3, v4

    .line 936
    new-instance v4, Lorg/antlr/v4/runtime/atn/ATNConfig;

    invoke-direct {v4, v0, v3}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V

    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mergeCache:Lorg/antlr/v4/runtime/misc/DoubleKeyMap;

    invoke-virtual {v1, v4, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z

    goto :goto_1

    :cond_3
    move-object p1, v1

    goto :goto_0
.end method

.method protected reportAmbiguity(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/dfa/DFAState;IIZLjava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V
    .locals 8

    .line 2165
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/Parser;->getErrorListenerDispatch()Lorg/antlr/v4/runtime/ANTLRErrorListener;

    move-result-object v0

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lorg/antlr/v4/runtime/ANTLRErrorListener;->reportAmbiguity(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;IIZLjava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    :cond_0
    return-void
.end method

.method protected reportAttemptingFullContext(Lorg/antlr/v4/runtime/dfa/DFA;Ljava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;II)V
    .locals 7

    .line 2139
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/Parser;->getErrorListenerDispatch()Lorg/antlr/v4/runtime/ANTLRErrorListener;

    move-result-object v0

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    move-object v2, p1

    move v3, p4

    move v4, p5

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lorg/antlr/v4/runtime/ANTLRErrorListener;->reportAttemptingFullContext(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;IILjava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    :cond_0
    return-void
.end method

.method protected reportContextSensitivity(Lorg/antlr/v4/runtime/dfa/DFA;ILorg/antlr/v4/runtime/atn/ATNConfigSet;II)V
    .locals 7

    .line 2148
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/Parser;->getErrorListenerDispatch()Lorg/antlr/v4/runtime/ANTLRErrorListener;

    move-result-object v0

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->parser:Lorg/antlr/v4/runtime/Parser;

    move-object v2, p1

    move v3, p4

    move v4, p5

    move v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lorg/antlr/v4/runtime/ANTLRErrorListener;->reportContextSensitivity(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;IIILorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method protected ruleTransition(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/RuleTransition;)Lorg/antlr/v4/runtime/atn/ATNConfig;
    .locals 3

    .line 1909
    iget-object v0, p2, Lorg/antlr/v4/runtime/atn/RuleTransition;->followState:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 1910
    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-static {v1, v0}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->create(Lorg/antlr/v4/runtime/atn/PredictionContext;I)Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    move-result-object v0

    .line 1912
    new-instance v1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    iget-object v2, p2, Lorg/antlr/v4/runtime/atn/RuleTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {v1, p1, v2, v0}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;)V

    return-object v1
.end method

.method public final setPredictionMode(Lorg/antlr/v4/runtime/atn/PredictionMode;)V
    .locals 0

    .line 2170
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->mode:Lorg/antlr/v4/runtime/atn/PredictionMode;

    return-void
.end method

.method protected splitAccordingToSemanticValidity(Lorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/ParserRuleContext;)Lorg/antlr/v4/runtime/misc/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ATNConfigSet;",
            "Lorg/antlr/v4/runtime/ParserRuleContext;",
            ")",
            "Lorg/antlr/v4/runtime/misc/Pair",
            "<",
            "Lorg/antlr/v4/runtime/atn/ATNConfigSet;",
            "Lorg/antlr/v4/runtime/atn/ATNConfigSet;",
            ">;"
        }
    .end annotation

    .line 1342
    new-instance v1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    iget-boolean v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->fullCtx:Z

    invoke-direct {v1, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>(Z)V

    .line 1343
    new-instance v2, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    iget-boolean v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->fullCtx:Z

    invoke-direct {v2, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>(Z)V

    .line 1344
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 1345
    iget-object v4, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    sget-object v5, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-eq v4, v5, :cond_1

    .line 1346
    iget-object v4, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    iget v5, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    iget-boolean v6, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->fullCtx:Z

    invoke-virtual {p0, v4, p2, v5, v6}, Lorg/antlr/v4/runtime/atn/ParserATNSimulator;->evalSemanticContext(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/ParserRuleContext;IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1348
    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    goto :goto_0

    .line 1351
    :cond_0
    invoke-virtual {v2, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    goto :goto_0

    .line 1355
    :cond_1
    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    goto :goto_0

    .line 1358
    :cond_2
    new-instance v0, Lorg/antlr/v4/runtime/misc/Pair;

    invoke-direct {v0, v1, v2}, Lorg/antlr/v4/runtime/misc/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
