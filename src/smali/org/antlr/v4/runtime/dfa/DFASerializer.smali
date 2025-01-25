.class public Lorg/antlr/v4/runtime/dfa/DFASerializer;
.super Ljava/lang/Object;
.source "DFASerializer.java"


# instance fields
.field private final dfa:Lorg/antlr/v4/runtime/dfa/DFA;

.field private final vocabulary:Lorg/antlr/v4/runtime/Vocabulary;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/Vocabulary;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/antlr/v4/runtime/dfa/DFASerializer;->dfa:Lorg/antlr/v4/runtime/dfa/DFA;

    .line 32
    iput-object p2, p0, Lorg/antlr/v4/runtime/dfa/DFASerializer;->vocabulary:Lorg/antlr/v4/runtime/Vocabulary;

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/dfa/DFA;[Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-static {p2}, Lorg/antlr/v4/runtime/VocabularyImpl;->fromTokenNames([Ljava/lang/String;)Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/antlr/v4/runtime/dfa/DFASerializer;-><init>(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/Vocabulary;)V

    return-void
.end method


# virtual methods
.method protected getEdgeLabel(I)Ljava/lang/String;
    .registers 3

    .line 60
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFASerializer;->vocabulary:Lorg/antlr/v4/runtime/Vocabulary;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/antlr/v4/runtime/Vocabulary;->getDisplayName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getStateString(Lorg/antlr/v4/runtime/dfa/DFAState;)Ljava/lang/String;
    .registers 6

    .line 65
    iget v0, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->stateNumber:I

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    const-string v3, ""

    if-eqz v2, :cond_10

    const-string v2, ":"

    goto :goto_11

    :cond_10
    move-object v2, v3

    :goto_11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->requiresFullContext:Z

    if-eqz v0, :cond_22

    const-string v3, "^"

    :cond_22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-boolean v1, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    if-eqz v1, :cond_61

    .line 68
    iget-object v1, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->predicates:[Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    const-string v2, "=>"

    if-eqz v1, :cond_4c

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->predicates:[Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 72
    :cond_4c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->prediction:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_61
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .line 37
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFASerializer;->dfa:Lorg/antlr/v4/runtime/dfa/DFA;

    iget-object v0, v0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 38
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    iget-object v2, p0, Lorg/antlr/v4/runtime/dfa/DFASerializer;->dfa:Lorg/antlr/v4/runtime/dfa/DFA;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/dfa/DFA;->getStates()Ljava/util/List;

    move-result-object v2

    .line 40
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/dfa/DFAState;

    .line 42
    iget-object v4, v3, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    const/4 v5, 0x0

    if-eqz v4, :cond_2c

    iget-object v4, v3, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    array-length v4, v4

    goto :goto_2d

    :cond_2c
    const/4 v4, 0x0

    :goto_2d
    if-ge v5, v4, :cond_17

    .line 44
    iget-object v6, v3, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    aget-object v6, v6, v5

    if-eqz v6, :cond_60

    .line 45
    iget v7, v6, Lorg/antlr/v4/runtime/dfa/DFAState;->stateNumber:I

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_60

    .line 46
    invoke-virtual {p0, v3}, Lorg/antlr/v4/runtime/dfa/DFASerializer;->getStateString(Lorg/antlr/v4/runtime/dfa/DFAState;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p0, v5}, Lorg/antlr/v4/runtime/dfa/DFASerializer;->getEdgeLabel(I)Ljava/lang/String;

    move-result-object v7

    .line 48
    const-string v8, "-"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "->"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lorg/antlr/v4/runtime/dfa/DFASerializer;->getStateString(Lorg/antlr/v4/runtime/dfa/DFAState;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_60
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 53
    :cond_63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6e

    return-object v1

    :cond_6e
    return-object v0
.end method
