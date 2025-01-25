.class public Lorg/antlr/v4/runtime/dfa/DFA;
.super Ljava/lang/Object;
.source "DFA.java"


# instance fields
.field public final atnStartState:Lorg/antlr/v4/runtime/atn/DecisionState;

.field public final decision:I

.field private final precedenceDfa:Z

.field public volatile s0:Lorg/antlr/v4/runtime/dfa/DFAState;

.field public final states:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/antlr/v4/runtime/dfa/DFAState;",
            "Lorg/antlr/v4/runtime/dfa/DFAState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/DecisionState;)V
    .registers 3

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/antlr/v4/runtime/dfa/DFA;-><init>(Lorg/antlr/v4/runtime/atn/DecisionState;I)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/DecisionState;I)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFA;->states:Ljava/util/Map;

    .line 50
    iput-object p1, p0, Lorg/antlr/v4/runtime/dfa/DFA;->atnStartState:Lorg/antlr/v4/runtime/atn/DecisionState;

    .line 51
    iput p2, p0, Lorg/antlr/v4/runtime/dfa/DFA;->decision:I

    .line 54
    instance-of p2, p1, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    const/4 v0, 0x0

    if-eqz p2, :cond_2e

    .line 55
    check-cast p1, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    iget-boolean p1, p1, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->isPrecedenceDecision:Z

    if-eqz p1, :cond_2e

    .line 57
    new-instance p1, Lorg/antlr/v4/runtime/dfa/DFAState;

    new-instance p2, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-direct {p2}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>()V

    invoke-direct {p1, p2}, Lorg/antlr/v4/runtime/dfa/DFAState;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    .line 58
    new-array p2, v0, [Lorg/antlr/v4/runtime/dfa/DFAState;

    iput-object p2, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    .line 59
    iput-boolean v0, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    .line 60
    iput-boolean v0, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->requiresFullContext:Z

    .line 61
    iput-object p1, p0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    const/4 v0, 0x1

    .line 65
    :cond_2e
    iput-boolean v0, p0, Lorg/antlr/v4/runtime/dfa/DFA;->precedenceDfa:Z

    return-void
.end method


# virtual methods
.method public final getPrecedenceStartState(I)Lorg/antlr/v4/runtime/dfa/DFAState;
    .registers 3

    .line 95
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/dfa/DFA;->isPrecedenceDfa()Z

    move-result v0

    if-eqz v0, :cond_19

    if-ltz p1, :cond_17

    .line 100
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    iget-object v0, v0, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    array-length v0, v0

    if-lt p1, v0, :cond_10

    goto :goto_17

    .line 104
    :cond_10
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    iget-object v0, v0, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    aget-object p1, v0, p1

    return-object p1

    :cond_17
    :goto_17
    const/4 p1, 0x0

    return-object p1

    .line 96
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Only precedence DFAs may contain a precedence start state."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStates()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/dfa/DFAState;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/antlr/v4/runtime/dfa/DFA;->states:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 163
    new-instance v1, Lorg/antlr/v4/runtime/dfa/DFA$1;

    invoke-direct {v1, p0}, Lorg/antlr/v4/runtime/dfa/DFA$1;-><init>(Lorg/antlr/v4/runtime/dfa/DFA;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final isPrecedenceDfa()Z
    .registers 2

    .line 80
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/dfa/DFA;->precedenceDfa:Z

    return v0
.end method

.method public final setPrecedenceDfa(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/dfa/DFA;->isPrecedenceDfa()Z

    move-result v0

    if-ne p1, v0, :cond_7

    return-void

    .line 153
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The precedenceDfa field cannot change after a DFA is constructed."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setPrecedenceStartState(ILorg/antlr/v4/runtime/dfa/DFAState;)V
    .registers 7

    .line 119
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/dfa/DFA;->isPrecedenceDfa()Z

    move-result v0

    if-eqz v0, :cond_2e

    if-gez p1, :cond_9

    return-void

    .line 129
    :cond_9
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    monitor-enter v0

    .line 131
    :try_start_c
    iget-object v1, p0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    iget-object v1, v1, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    array-length v1, v1

    if-lt p1, v1, :cond_23

    .line 132
    iget-object v1, p0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    iget-object v2, p0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    iget-object v2, v2, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/antlr/v4/runtime/dfa/DFAState;

    iput-object v2, v1, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    .line 135
    :cond_23
    iget-object v1, p0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    iget-object v1, v1, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    aput-object p2, v1, p1

    .line 136
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_2b

    throw p1

    .line 120
    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Only precedence DFAs may contain a precedence start state."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toLexerString()Ljava/lang/String;
    .registers 2

    .line 196
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 197
    :cond_7
    new-instance v0, Lorg/antlr/v4/runtime/dfa/LexerDFASerializer;

    invoke-direct {v0, p0}, Lorg/antlr/v4/runtime/dfa/LexerDFASerializer;-><init>(Lorg/antlr/v4/runtime/dfa/DFA;)V

    .line 198
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/dfa/DFASerializer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 174
    sget-object v0, Lorg/antlr/v4/runtime/VocabularyImpl;->EMPTY_VOCABULARY:Lorg/antlr/v4/runtime/VocabularyImpl;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/dfa/DFA;->toString(Lorg/antlr/v4/runtime/Vocabulary;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/antlr/v4/runtime/Vocabulary;)Ljava/lang/String;
    .registers 3

    .line 187
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    if-nez v0, :cond_7

    .line 188
    const-string p1, ""

    return-object p1

    .line 191
    :cond_7
    new-instance v0, Lorg/antlr/v4/runtime/dfa/DFASerializer;

    invoke-direct {v0, p0, p1}, Lorg/antlr/v4/runtime/dfa/DFASerializer;-><init>(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/Vocabulary;)V

    .line 192
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/dfa/DFASerializer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString([Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    if-nez v0, :cond_7

    const-string p1, ""

    return-object p1

    .line 182
    :cond_7
    new-instance v0, Lorg/antlr/v4/runtime/dfa/DFASerializer;

    invoke-direct {v0, p0, p1}, Lorg/antlr/v4/runtime/dfa/DFASerializer;-><init>(Lorg/antlr/v4/runtime/dfa/DFA;[Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/dfa/DFASerializer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
