.class public Lorg/antlr/v4/runtime/atn/LexerATNConfig;
.super Lorg/antlr/v4/runtime/atn/ATNConfig;
.source "LexerATNConfig.java"


# instance fields
.field private final lexerActionExecutor:Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

.field private final passedThroughNonGreedyDecision:Z


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNState;ILorg/antlr/v4/runtime/atn/PredictionContext;)V
    .locals 1

    .line 24
    sget-object v0, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;ILorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->passedThroughNonGreedyDecision:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->lexerActionExecutor:Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNState;ILorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/LexerActionExecutor;)V
    .locals 1

    .line 34
    sget-object v0, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;ILorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    .line 35
    iput-object p4, p0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->lexerActionExecutor:Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->passedThroughNonGreedyDecision:Z

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V
    .locals 2

    .line 40
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    .line 41
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->lexerActionExecutor:Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->lexerActionExecutor:Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    .line 42
    invoke-static {p1, p2}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->checkNonGreedyDecision(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->passedThroughNonGreedyDecision:Z

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/LexerActionExecutor;)V
    .locals 2

    .line 48
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    .line 49
    iput-object p3, p0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->lexerActionExecutor:Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    .line 50
    invoke-static {p1, p2}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->checkNonGreedyDecision(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->passedThroughNonGreedyDecision:Z

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;)V
    .locals 1

    .line 55
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    .line 56
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->lexerActionExecutor:Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->lexerActionExecutor:Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    .line 57
    invoke-static {p1, p2}, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->checkNonGreedyDecision(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->passedThroughNonGreedyDecision:Z

    return-void
.end method

.method private static checkNonGreedyDecision(Lorg/antlr/v4/runtime/atn/LexerATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->passedThroughNonGreedyDecision:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/antlr/v4/runtime/atn/DecisionState;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/antlr/v4/runtime/atn/DecisionState;

    iget-boolean v0, p1, Lorg/antlr/v4/runtime/atn/DecisionState;->nonGreedy:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    .line 90
    :cond_0
    instance-of v0, p1, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 94
    check-cast v0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;

    .line 95
    iget-boolean v2, p0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->passedThroughNonGreedyDecision:Z

    iget-boolean v3, v0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->passedThroughNonGreedyDecision:Z

    if-eq v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 99
    :cond_2
    sget-object v2, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;->INSTANCE:Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;

    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->lexerActionExecutor:Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->lexerActionExecutor:Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    invoke-virtual {v2, v3, v0}, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    .line 103
    :cond_3
    invoke-super {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNConfig;->equals(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getLexerActionExecutor()Lorg/antlr/v4/runtime/atn/LexerActionExecutor;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->lexerActionExecutor:Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    return-object v0
.end method

.method public final hasPassedThroughNonGreedyDecision()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->passedThroughNonGreedyDecision:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 74
    const/4 v0, 0x7

    invoke-static {v0}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize(I)I

    move-result v0

    .line 75
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v1, v1, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    .line 76
    iget v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->alt:I

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    .line 77
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(ILjava/lang/Object;)I

    move-result v0

    .line 78
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(ILjava/lang/Object;)I

    move-result v0

    .line 79
    iget-boolean v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->passedThroughNonGreedyDecision:Z

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    .line 80
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNConfig;->lexerActionExecutor:Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(ILjava/lang/Object;)I

    move-result v0

    .line 81
    const/4 v1, 0x6

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result v0

    return v0
.end method
