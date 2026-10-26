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
            "Ljava/util/Map",
            "<",
            "Lorg/antlr/v4/runtime/dfa/DFAState;",
            "Lorg/antlr/v4/runtime/dfa/DFAState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/DecisionState;)V
    .locals 1

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/antlr/v4/runtime/dfa/DFA;-><init>(Lorg/antlr/v4/runtime/atn/DecisionState;I)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/DecisionState;I)V
    .locals 3

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/antlr/v4/runtime/dfa/DFA;->states:Ljava/util/Map;

    .line 50
    iput-object p1, p0, Lorg/antlr/v4/runtime/dfa/DFA;->atnStartState:Lorg/antlr/v4/runtime/atn/DecisionState;

    .line 51
    iput p2, p0, Lorg/antlr/v4/runtime/dfa/DFA;->decision:I

    .line 54
    instance-of v1, p1, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    if-eqz v1, :cond_0

    .line 55
    check-cast p1, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    iget-boolean v1, p1, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->isPrecedenceDecision:Z

    if-eqz v1, :cond_0

    .line 57
    new-instance v1, Lorg/antlr/v4/runtime/dfa/DFAState;

    new-instance v2, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-direct {v2}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>()V

    invoke-direct {v1, v2}, Lorg/antlr/v4/runtime/dfa/DFAState;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    .line 58
    new-array v2, v0, [Lorg/antlr/v4/runtime/dfa/DFAState;

    iput-object v2, v1, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    .line 59
    iput-boolean v0, v1, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    .line 60
    iput-boolean v0, v1, Lorg/antlr/v4/runtime/dfa/DFAState;->requiresFullContext:Z

    .line 61
    iput-object v1, p0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    const/4 v0, 0x1

    .line 65
    :cond_0
    iput-boolean v0, p0, Lorg/antlr/v4/runtime/dfa/DFA;->precedenceDfa:Z

    return-void
.end method


# virtual methods
.method public final getPrecedenceStartState(I)Lorg/antlr/v4/runtime/dfa/DFAState;
    .locals 2

    .line 95
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/dfa/DFA;->isPrecedenceDfa()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_0

    .line 100
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    iget-object v0, v0, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 104
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    iget-object v0, v0, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    aget-object v0, v0, p1

    goto :goto_0

    .line 96
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only precedence DFAs may contain a precedence start state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
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
    .locals 1

    .line 80
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/dfa/DFA;->precedenceDfa:Z

    return v0
.end method

.method public final setPrecedenceDfa(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/dfa/DFA;->isPrecedenceDfa()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The precedenceDfa field cannot change after a DFA is constructed."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setPrecedenceStartState(ILorg/antlr/v4/runtime/dfa/DFAState;)V
    .locals 4

    .line 119
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/dfa/DFA;->isPrecedenceDfa()Z

    move-result v0

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v1, p0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    iget-object v0, v0, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 132
    iget-object v2, p0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    iget-object v0, v0, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/dfa/DFAState;

    iput-object v0, v2, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    .line 135
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    iget-object v0, v0, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    aput-object p2, v0, p1

    .line 136
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 120
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only precedence DFAs may contain a precedence start state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toLexerString()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 198
    :goto_0
    return-object v0

    .line 197
    :cond_0
    new-instance v0, Lorg/antlr/v4/runtime/dfa/LexerDFASerializer;

    invoke-direct {v0, p0}, Lorg/antlr/v4/runtime/dfa/LexerDFASerializer;-><init>(Lorg/antlr/v4/runtime/dfa/DFA;)V

    .line 198
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/dfa/DFASerializer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 174
    sget-object v0, Lorg/antlr/v4/runtime/VocabularyImpl;->EMPTY_VOCABULARY:Lorg/antlr/v4/runtime/VocabularyImpl;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/dfa/DFA;->toString(Lorg/antlr/v4/runtime/Vocabulary;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/antlr/v4/runtime/Vocabulary;)Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    if-nez v0, :cond_0

    .line 188
    const-string v0, ""

    .line 192
    :goto_0
    return-object v0

    .line 191
    :cond_0
    new-instance v0, Lorg/antlr/v4/runtime/dfa/DFASerializer;

    invoke-direct {v0, p0, p1}, Lorg/antlr/v4/runtime/dfa/DFASerializer;-><init>(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/Vocabulary;)V

    .line 192
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/dfa/DFASerializer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 183
    :goto_0
    return-object v0

    .line 182
    :cond_0
    new-instance v0, Lorg/antlr/v4/runtime/dfa/DFASerializer;

    invoke-direct {v0, p0, p1}, Lorg/antlr/v4/runtime/dfa/DFASerializer;-><init>(Lorg/antlr/v4/runtime/dfa/DFA;[Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/dfa/DFASerializer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
