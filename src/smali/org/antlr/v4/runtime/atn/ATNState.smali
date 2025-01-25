.class public abstract Lorg/antlr/v4/runtime/atn/ATNState;
.super Ljava/lang/Object;
.source "ATNState.java"


# static fields
.field public static final BASIC:I = 0x1

.field public static final BLOCK_END:I = 0x8

.field public static final BLOCK_START:I = 0x3

.field public static final INITIAL_NUM_TRANSITIONS:I = 0x4

.field public static final INVALID_STATE_NUMBER:I = -0x1

.field public static final INVALID_TYPE:I = 0x0

.field public static final LOOP_END:I = 0xc

.field public static final PLUS_BLOCK_START:I = 0x4

.field public static final PLUS_LOOP_BACK:I = 0xb

.field public static final RULE_START:I = 0x2

.field public static final RULE_STOP:I = 0x7

.field public static final STAR_BLOCK_START:I = 0x5

.field public static final STAR_LOOP_BACK:I = 0x9

.field public static final STAR_LOOP_ENTRY:I = 0xa

.field public static final TOKEN_START:I = 0x6

.field public static final serializationNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public atn:Lorg/antlr/v4/runtime/atn/ATN;

.field public epsilonOnlyTransitions:Z

.field public nextTokenWithinRule:Lorg/antlr/v4/runtime/misc/IntervalSet;

.field public ruleIndex:I

.field public stateNumber:I

.field protected final transitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/atn/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 95
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "BASIC"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "RULE_START"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "BLOCK_START"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PLUS_BLOCK_START"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "STAR_BLOCK_START"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TOKEN_START"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "RULE_STOP"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "BLOCK_END"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "STAR_LOOP_BACK"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "STAR_LOOP_ENTRY"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "PLUS_LOOP_BACK"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "LOOP_END"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/antlr/v4/runtime/atn/ATNState;->serializationNames:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNState;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNState;->epsilonOnlyTransitions:Z

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNState;->transitions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addTransition(ILorg/antlr/v4/runtime/atn/Transition;)V
    .registers 8

    .line 162
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNState;->transitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 163
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/Transition;->isEpsilon()Z

    move-result v0

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNState;->epsilonOnlyTransitions:Z

    goto :goto_30

    .line 165
    :cond_f
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNState;->epsilonOnlyTransitions:Z

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/Transition;->isEpsilon()Z

    move-result v1

    if-eq v0, v1, :cond_30

    .line 166
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "ATN state %d has both epsilon and non-epsilon transitions.\n"

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 167
    iput-boolean v4, p0, Lorg/antlr/v4/runtime/atn/ATNState;->epsilonOnlyTransitions:Z

    .line 171
    :cond_30
    :goto_30
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNState;->transitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/atn/Transition;

    .line 172
    iget-object v2, v1, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v2, v2, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    iget-object v3, p2, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v3, v3, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    if-ne v2, v3, :cond_36

    .line 173
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/Transition;->label()Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v2

    if-eqz v2, :cond_67

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/Transition;->label()Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v2

    if-eqz v2, :cond_67

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/Transition;->label()Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v2

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/Transition;->label()Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/antlr/v4/runtime/misc/IntervalSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    goto :goto_79

    .line 178
    :cond_67
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/Transition;->isEpsilon()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/Transition;->isEpsilon()Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_79

    .line 186
    :cond_74
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNState;->transitions:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_79
    return-void
.end method

.method public addTransition(Lorg/antlr/v4/runtime/atn/Transition;)V
    .registers 3

    .line 158
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNState;->transitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/antlr/v4/runtime/atn/ATNState;->addTransition(ILorg/antlr/v4/runtime/atn/Transition;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 136
    instance-of v0, p1, Lorg/antlr/v4/runtime/atn/ATNState;

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    check-cast p1, Lorg/antlr/v4/runtime/atn/ATNState;

    iget p1, p1, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    if-ne v0, p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public getNumberOfTransitions()I
    .registers 2

    .line 154
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNState;->transitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public abstract getStateType()I
.end method

.method public getTransitions()[Lorg/antlr/v4/runtime/atn/Transition;
    .registers 3

    .line 150
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNState;->transitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/antlr/v4/runtime/atn/Transition;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/atn/Transition;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 131
    iget v0, p0, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    return v0
.end method

.method public isNonGreedyExitState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final onlyHasEpsilonTransitions()Z
    .registers 2

    .line 203
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNState;->epsilonOnlyTransitions:Z

    return v0
.end method

.method public removeTransition(I)Lorg/antlr/v4/runtime/atn/Transition;
    .registers 3

    .line 197
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNState;->transitions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/atn/Transition;

    return-object p1
.end method

.method public setRuleIndex(I)V
    .registers 2

    .line 206
    iput p1, p0, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    return-void
.end method

.method public setTransition(ILorg/antlr/v4/runtime/atn/Transition;)V
    .registers 4

    .line 193
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNState;->transitions:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 146
    iget v0, p0, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transition(I)Lorg/antlr/v4/runtime/atn/Transition;
    .registers 3

    .line 190
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNState;->transitions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/atn/Transition;

    return-object p1
.end method
