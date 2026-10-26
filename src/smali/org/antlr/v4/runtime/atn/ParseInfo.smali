.class public Lorg/antlr/v4/runtime/atn/ParseInfo;
.super Ljava/lang/Object;
.source "ParseInfo.java"


# instance fields
.field protected final atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ParseInfo;->atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    return-void
.end method


# virtual methods
.method public getDFASize()I
    .locals 4

    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParseInfo;->atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    iget-object v3, v0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    move v0, v1

    move v2, v1

    .line 149
    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_0

    .line 150
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/atn/ParseInfo;->getDFASize(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getDFASize(I)I
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParseInfo;->atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    aget-object v0, v0, p1

    .line 161
    iget-object v0, v0, Lorg/antlr/v4/runtime/dfa/DFA;->states:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getDecisionInfo()[Lorg/antlr/v4/runtime/atn/DecisionInfo;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParseInfo;->atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->getDecisionInfo()[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLLDecisions()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParseInfo;->atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->getDecisionInfo()[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    move-result-object v1

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 49
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 50
    aget-object v3, v1, v0

    iget-wide v4, v3, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_Fallback:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getTotalATNLookaheadOps()J
    .locals 6

    .line 133
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParseInfo;->atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->getDecisionInfo()[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    move-result-object v3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 135
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 136
    aget-object v4, v3, v2

    iget-wide v4, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_ATNTransitions:J

    .line 137
    add-long/2addr v0, v4

    aget-object v4, v3, v2

    iget-wide v4, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_ATNTransitions:J

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getTotalLLATNLookaheadOps()J
    .locals 6

    .line 116
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParseInfo;->atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->getDecisionInfo()[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    move-result-object v3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 118
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 119
    aget-object v4, v3, v2

    iget-wide v4, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_ATNTransitions:J

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getTotalLLLookaheadOps()J
    .locals 6

    .line 90
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParseInfo;->atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->getDecisionInfo()[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    move-result-object v3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 92
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 93
    aget-object v4, v3, v2

    iget-wide v4, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_TotalLook:J

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getTotalSLLATNLookaheadOps()J
    .locals 6

    .line 103
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParseInfo;->atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->getDecisionInfo()[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    move-result-object v3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 105
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 106
    aget-object v4, v3, v2

    iget-wide v4, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_ATNTransitions:J

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getTotalSLLLookaheadOps()J
    .locals 6

    .line 76
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParseInfo;->atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->getDecisionInfo()[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    move-result-object v3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 78
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 79
    aget-object v4, v3, v2

    iget-wide v4, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_TotalLook:J

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getTotalTimeInPrediction()J
    .locals 6

    .line 62
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParseInfo;->atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->getDecisionInfo()[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    move-result-object v3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 64
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 65
    aget-object v4, v3, v2

    iget-wide v4, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->timeInPrediction:J

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method
