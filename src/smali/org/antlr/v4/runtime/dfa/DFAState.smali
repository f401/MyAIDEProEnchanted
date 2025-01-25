.class public Lorg/antlr/v4/runtime/dfa/DFAState;
.super Ljava/lang/Object;
.source "DFAState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;
    }
.end annotation


# instance fields
.field public configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

.field public edges:[Lorg/antlr/v4/runtime/dfa/DFAState;

.field public isAcceptState:Z

.field public lexerActionExecutor:Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

.field public predicates:[Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

.field public prediction:I

.field public requiresFullContext:Z

.field public stateNumber:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/dfa/DFAState;->stateNumber:I

    .line 50
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/dfa/DFAState;->stateNumber:I

    .line 50
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    .line 108
    iput p1, p0, Lorg/antlr/v4/runtime/dfa/DFAState;->stateNumber:I

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V
    .registers 3

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/dfa/DFAState;->stateNumber:I

    .line 50
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    .line 110
    iput-object p1, p0, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 152
    :cond_4
    instance-of v0, p1, Lorg/antlr/v4/runtime/dfa/DFAState;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 156
    :cond_a
    check-cast p1, Lorg/antlr/v4/runtime/dfa/DFAState;

    .line 158
    iget-object v0, p0, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    iget-object p1, p1, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAltSet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 117
    iget-object v1, p0, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    if-eqz v1, :cond_23

    .line 118
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 119
    iget v2, v2, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 122
    :cond_23
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v0, 0x0

    :cond_2a
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 128
    const/4 v0, 0x7

    invoke-static {v0}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize(I)I

    move-result v0

    .line 129
    iget-object v1, p0, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    .line 130
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    iget v1, p0, Lorg/antlr/v4/runtime/dfa/DFAState;->stateNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/antlr/v4/runtime/dfa/DFAState;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    iget-boolean v1, p0, Lorg/antlr/v4/runtime/dfa/DFAState;->isAcceptState:Z

    if-eqz v1, :cond_2e

    .line 168
    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v1, p0, Lorg/antlr/v4/runtime/dfa/DFAState;->predicates:[Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;

    if-eqz v1, :cond_29

    .line 170
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 173
    :cond_29
    iget v1, p0, Lorg/antlr/v4/runtime/dfa/DFAState;->prediction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    :cond_2e
    :goto_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
