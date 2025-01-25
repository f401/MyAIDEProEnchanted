.class public Lorg/antlr/v4/runtime/atn/ATN;
.super Ljava/lang/Object;
.source "ATN.java"


# static fields
.field public static final INVALID_ALT_NUMBER:I


# instance fields
.field public final decisionToState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/atn/TokensStartState;",
            ">;"
        }
    .end annotation
.end field

.field public final modeToStartState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/atn/ATNState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNType;I)V
    .registers 4

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
    .registers 3

    if-eqz p1, :cond_c

    .line 104
    iput-object p0, p1, Lorg/antlr/v4/runtime/atn/ATNState;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    .line 105
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    .line 108
    :cond_c
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public defineDecisionState(Lorg/antlr/v4/runtime/atn/DecisionState;)I
    .registers 3

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
    iget p1, p1, Lorg/antlr/v4/runtime/atn/DecisionState;->decision:I

    return p1
.end method

.method public getDecisionState(I)Lorg/antlr/v4/runtime/atn/DecisionState;
    .registers 3

    .line 122
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->decisionToState:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 123
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->decisionToState:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/atn/DecisionState;

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExpectedTokens(ILorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .registers 7

    if-ltz p1, :cond_62

    .line 167
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_62

    .line 172
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 173
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/ATN;->nextTokens(Lorg/antlr/v4/runtime/atn/ATNState;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object p1

    .line 174
    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v1

    if-nez v1, :cond_1e

    return-object p1

    .line 178
    :cond_1e
    new-instance v1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    const/4 v2, 0x0

    new-array v3, v2, [I

    invoke-direct {v1, v3}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 179
    invoke-virtual {v1, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 180
    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->remove(I)V

    :goto_2c
    if-eqz p2, :cond_57

    .line 181
    iget v3, p2, Lorg/antlr/v4/runtime/RuleContext;->invokingState:I

    if-ltz v3, :cond_57

    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 182
    iget-object p1, p0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    iget v3, p2, Lorg/antlr/v4/runtime/RuleContext;->invokingState:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 183
    invoke-virtual {p1, v2}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/atn/RuleTransition;

    .line 184
    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/RuleTransition;->followState:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/ATN;->nextTokens(Lorg/antlr/v4/runtime/atn/ATNState;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object p1

    .line 185
    invoke-virtual {v1, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 186
    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->remove(I)V

    .line 187
    iget-object p2, p2, Lorg/antlr/v4/runtime/RuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    goto :goto_2c

    .line 190
    :cond_57
    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 191
    const/4 p1, -0x1

    invoke-virtual {v1, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    :cond_61
    return-object v1

    .line 168
    :cond_62
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid state number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6b

    :goto_6a
    throw p1

    :goto_6b
    goto :goto_6a
.end method

.method public getNumberOfDecisions()I
    .registers 2

    .line 129
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->decisionToState:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public nextTokens(Lorg/antlr/v4/runtime/atn/ATNState;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .registers 4

    .line 96
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNState;->nextTokenWithinRule:Lorg/antlr/v4/runtime/misc/IntervalSet;

    if-eqz v0, :cond_7

    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/ATNState;->nextTokenWithinRule:Lorg/antlr/v4/runtime/misc/IntervalSet;

    return-object p1

    .line 97
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/atn/ATN;->nextTokens(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    iput-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNState;->nextTokenWithinRule:Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 98
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNState;->nextTokenWithinRule:Lorg/antlr/v4/runtime/misc/IntervalSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->setReadonly(Z)V

    .line 99
    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/ATNState;->nextTokenWithinRule:Lorg/antlr/v4/runtime/misc/IntervalSet;

    return-object p1
.end method

.method public nextTokens(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .registers 4

    .line 85
    new-instance v0, Lorg/antlr/v4/runtime/atn/LL1Analyzer;

    invoke-direct {v0, p0}, Lorg/antlr/v4/runtime/atn/LL1Analyzer;-><init>(Lorg/antlr/v4/runtime/atn/ATN;)V

    .line 86
    invoke-virtual {v0, p1, p2}, Lorg/antlr/v4/runtime/atn/LL1Analyzer;->LOOK(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object p1

    return-object p1
.end method

.method public removeState(Lorg/antlr/v4/runtime/atn/ATNState;)V
    .registers 4

    .line 112
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    iget p1, p1, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
