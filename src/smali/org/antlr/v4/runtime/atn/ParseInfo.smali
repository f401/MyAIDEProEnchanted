.class public Lorg/antlr/v4/runtime/atn/ParseInfo;
.super Ljava/lang/Object;
.source "ParseInfo.java"


# instance fields
.field protected final atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ParseInfo;->atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    return-void
.end method


# virtual methods
.method public getDFASize()I
    .registers 5

    .line 148
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParseInfo;->atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 149
    :goto_6
    array-length v3, v0

    if-ge v1, v3, :cond_11

    .line 150
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ParseInfo;->getDFASize(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_11
    return v2
.end method

.method public getDFASize(I)I
    .registers 3

    .line 160
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParseInfo;->atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->decisionToDFA:[Lorg/antlr/v4/runtime/dfa/DFA;

    aget-object p1, v0, p1

    .line 161
    iget-object p1, p1, Lorg/antlr/v4/runtime/dfa/DFA;->states:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    return p1
.end method

.method public getDecisionInfo()[Lorg/antlr/v4/runtime/atn/DecisionInfo;
    .registers 2

    .line 35
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParseInfo;->atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->getDecisionInfo()[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLLDecisions()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParseInfo;->atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->getDecisionInfo()[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 49
    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_23

    .line 50
    aget-object v3, v0, v2

    iget-wide v3, v3, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_Fallback:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_20

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_23
    return-object v1
.end method

.method public getTotalATNLookaheadOps()J
    .registers 7

    .line 133
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParseInfo;->atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->getDecisionInfo()[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 135
    :goto_9
    array-length v4, v0

    if-ge v3, v4, :cond_19

    .line 136
    aget-object v4, v0, v3

    iget-wide v4, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_ATNTransitions:J

    .line 137
    add-long/2addr v1, v4

    aget-object v4, v0, v3

    iget-wide v4, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_ATNTransitions:J

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_19
    return-wide v1
.end method

.method public getTotalLLATNLookaheadOps()J
    .registers 7

    .line 116
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParseInfo;->atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->getDecisionInfo()[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 118
    :goto_9
    array-length v4, v0

    if-ge v3, v4, :cond_14

    .line 119
    aget-object v4, v0, v3

    iget-wide v4, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_ATNTransitions:J

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_14
    return-wide v1
.end method

.method public getTotalLLLookaheadOps()J
    .registers 7

    .line 90
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParseInfo;->atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->getDecisionInfo()[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 92
    :goto_9
    array-length v4, v0

    if-ge v3, v4, :cond_14

    .line 93
    aget-object v4, v0, v3

    iget-wide v4, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_TotalLook:J

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_14
    return-wide v1
.end method

.method public getTotalSLLATNLookaheadOps()J
    .registers 7

    .line 103
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParseInfo;->atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->getDecisionInfo()[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 105
    :goto_9
    array-length v4, v0

    if-ge v3, v4, :cond_14

    .line 106
    aget-object v4, v0, v3

    iget-wide v4, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_ATNTransitions:J

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_14
    return-wide v1
.end method

.method public getTotalSLLLookaheadOps()J
    .registers 7

    .line 76
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParseInfo;->atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->getDecisionInfo()[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 78
    :goto_9
    array-length v4, v0

    if-ge v3, v4, :cond_14

    .line 79
    aget-object v4, v0, v3

    iget-wide v4, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_TotalLook:J

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_14
    return-wide v1
.end method

.method public getTotalTimeInPrediction()J
    .registers 7

    .line 62
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ParseInfo;->atnSimulator:Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ProfilingATNSimulator;->getDecisionInfo()[Lorg/antlr/v4/runtime/atn/DecisionInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 64
    :goto_9
    array-length v4, v0

    if-ge v3, v4, :cond_14

    .line 65
    aget-object v4, v0, v3

    iget-wide v4, v4, Lorg/antlr/v4/runtime/atn/DecisionInfo;->timeInPrediction:J

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_14
    return-wide v1
.end method
