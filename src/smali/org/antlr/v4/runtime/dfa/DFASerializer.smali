.class public Lorg/antlr/v4/runtime/dfa/DFASerializer;
.super Ljava/lang/Object;
.source "DFASerializer.java"


# instance fields
.field private final dfa:Lorg/antlr/v4/runtime/dfa/DFA;

.field private final vocabulary:Lorg/antlr/v4/runtime/Vocabulary;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/Vocabulary;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/antlr/v4/runtime/dfa/DFASerializer;->dfa:Lorg/antlr/v4/runtime/dfa/DFA;

    .line 32
    iput-object p2, p0, Lorg/antlr/v4/runtime/dfa/DFASerializer;->vocabulary:Lorg/antlr/v4/runtime/Vocabulary;

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/dfa/DFA;[Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-static {p2}, Lorg/antlr/v4/runtime/VocabularyImpl;->fromTokenNames([Ljava/lang/String;)Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/antlr/v4/runtime/dfa/DFASerializer;-><init>(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/Vocabulary;)V

    return-void
.end method


# virtual methods
.method protected getEdgeLabel(I)Ljava/lang/String;
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFASerializer;->vocabulary:Lorg/antlr/v4/runtime/Vocabulary;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/Vocabulary;->getDisplayName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStateString(Lorg/antlr/v4/runtime/dfa/DFAState;)Ljava/lang/String;
    .locals 4

    .line 65
    iget v2, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->stateNumber:I

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    const-string v1, ""

    if-eqz v0, :cond_1

    const-string v0, ":"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->requiresFullContext:Z

    if-eqz v0, :cond_3

    const-string v0, "^"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-boolean v1, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->predicates:[Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    if-eqz v1, :cond_2

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->predicates:[Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_0
    :goto_2
    return-object v0

    .line 66
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 72
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->prediction:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 37
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFASerializer;->dfa:Lorg/antlr/v4/runtime/dfa/DFA;

    iget-object v0, v0, Lorg/antlr/v4/runtime/dfa/DFA;->s0:Lorg/antlr/v4/runtime/dfa/DFAState;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 54
    :cond_0
    :goto_0
    return-object v0

    .line 38
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFASerializer;->dfa:Lorg/antlr/v4/runtime/dfa/DFA;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/dfa/DFA;->getStates()Ljava/util/List;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/dfa/DFAState;

    .line 42
    iget-object v2, v0, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    array-length v4, v2

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_2

    .line 44
    iget-object v7, v0, Lorg/antlr/v4/runtime/dfa/DFAState;->edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

    aget-object v7, v7, v2

    if-eqz v7, :cond_3

    .line 45
    iget v8, v7, Lorg/antlr/v4/runtime/dfa/DFAState;->stateNumber:I

    const v9, 0x7fffffff

    if-eq v8, v9, :cond_3

    .line 46
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/dfa/DFASerializer;->getStateString(Lorg/antlr/v4/runtime/dfa/DFAState;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/dfa/DFASerializer;->getEdgeLabel(I)Ljava/lang/String;

    move-result-object v8

    .line 48
    const-string v9, "-"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "->"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lorg/antlr/v4/runtime/dfa/DFASerializer;->getStateString(Lorg/antlr/v4/runtime/dfa/DFAState;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v3

    move v4, v3

    .line 42
    goto :goto_1

    .line 53
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method
