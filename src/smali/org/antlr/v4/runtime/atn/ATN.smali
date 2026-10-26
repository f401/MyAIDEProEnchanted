.class public Lorg/antlr/v4/runtime/atn/ATN;
.super Ljava/lang/Object;
.source "ATN.java"


# static fields
.field public static final INVALID_ALT_NUMBER:I


# instance fields
.field public final decisionToState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/atn/DecisionState;",
            ">;"
        }
    .end annotation
.end field

.field public final grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

.field public lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

.field public final maxTokenType:I

.field public final modeNameToStartState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/atn/TokensStartState;",
            ">;"
        }
    .end annotation
.end field

.field public final modeToStartState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/atn/TokensStartState;",
            ">;"
        }
    .end annotation
.end field

.field public ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

.field public ruleToStopState:[Lorg/antlr/v4/runtime/atn/RuleStopState;

.field public ruleToTokenType:[I

.field public final states:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/atn/ATNState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNType;I)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->decisionToState:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->modeNameToStartState:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->modeToStartState:Ljava/util/List;

    .line 75
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    .line 76
    iput p2, p0, Lorg/antlr/v4/runtime/atn/ATN;->maxTokenType:I

    return-void
.end method


# virtual methods
.method public addState(Lorg/antlr/v4/runtime/atn/ATNState;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 104
    iput-object p0, p1, Lorg/antlr/v4/runtime/atn/ATNState;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    .line 105
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public defineDecisionState(Lorg/antlr/v4/runtime/atn/DecisionState;)I
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->decisionToState:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->decisionToState:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lorg/antlr/v4/runtime/atn/DecisionState;->decision:I

    .line 118
    iget v0, p1, Lorg/antlr/v4/runtime/atn/DecisionState;->decision:I

    return v0
.end method

.method public getDecisionState(I)Lorg/antlr/v4/runtime/atn/DecisionState;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->decisionToState:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->decisionToState:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/DecisionState;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExpectedTokens(ILorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    if-ltz p1, :cond_3

    .line 167
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 172
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 173
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/ATN;->nextTokens(Lorg/antlr/v4/runtime/atn/ATNState;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    .line 174
    invoke-virtual {v0, v3}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    :goto_0
    return-object v0

    .line 178
    :cond_0
    new-instance v1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    new-array v2, v4, [I

    invoke-direct {v1, v2}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 179
    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 180
    invoke-virtual {v1, v3}, Lorg/antlr/v4/runtime/misc/IntervalSet;->remove(I)V

    :goto_1
    if-eqz p2, :cond_1

    .line 181
    iget v2, p2, Lorg/antlr/v4/runtime/RuleContext;->invokingState:I

    if-ltz v2, :cond_1

    invoke-virtual {v0, v3}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    iget v2, p2, Lorg/antlr/v4/runtime/RuleContext;->invokingState:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 183
    invoke-virtual {v0, v4}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/RuleTransition;

    .line 184
    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/RuleTransition;->followState:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/ATN;->nextTokens(Lorg/antlr/v4/runtime/atn/ATNState;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    .line 185
    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 186
    invoke-virtual {v1, v3}, Lorg/antlr/v4/runtime/misc/IntervalSet;->remove(I)V

    .line 187
    iget-object p2, p2, Lorg/antlr/v4/runtime/RuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    goto :goto_1

    .line 190
    :cond_1
    invoke-virtual {v0, v3}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 168
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid state number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumberOfDecisions()I
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->decisionToState:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public nextTokens(Lorg/antlr/v4/runtime/atn/ATNState;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .locals 2

    .line 96
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNState;->nextTokenWithinRule:Lorg/antlr/v4/runtime/misc/IntervalSet;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNState;->nextTokenWithinRule:Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 99
    :goto_0
    return-object v0

    .line 97
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/atn/ATN;->nextTokens(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    iput-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNState;->nextTokenWithinRule:Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 98
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNState;->nextTokenWithinRule:Lorg/antlr/v4/runtime/misc/IntervalSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->setReadonly(Z)V

    .line 99
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNState;->nextTokenWithinRule:Lorg/antlr/v4/runtime/misc/IntervalSet;

    goto :goto_0
.end method

.method public nextTokens(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .locals 1

    .line 85
    new-instance v0, Lorg/antlr/v4/runtime/atn/LL1Analyzer;

    invoke-direct {v0, p0}, Lorg/antlr/v4/runtime/atn/LL1Analyzer;-><init>(Lorg/antlr/v4/runtime/atn/ATN;)V

    .line 86
    invoke-virtual {v0, p1, p2}, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->LOOK(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    return-object v0
.end method

.method public removeState(Lorg/antlr/v4/runtime/atn/ATNState;)V
    .locals 3

    .line 112
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    iget v1, p1, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
