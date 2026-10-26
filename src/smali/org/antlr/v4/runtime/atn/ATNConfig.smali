.class public Lorg/antlr/v4/runtime/atn/ATNConfig;
.super Ljava/lang/Object;
.source "ATNConfig.java"


# static fields
.field private static final SUPPRESS_PRECEDENCE_FILTER:I = 0x40000000


# instance fields
.field public final alt:I

.field public context:Lorg/antlr/v4/runtime/atn/PredictionContext;

.field public reachesIntoOuterContext:I

.field public final semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

.field public final state:Lorg/antlr/v4/runtime/atn/ATNState;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNConfig;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 69
    iget v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    .line 70
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    .line 71
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    .line 72
    iget v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V
    .locals 2

    .line 94
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;)V
    .locals 1

    .line 112
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p2, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 120
    iget v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    .line 121
    iput-object p3, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    .line 122
    iput-object p4, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    .line 123
    iget v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/SemanticContext;)V
    .locals 1

    .line 100
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/SemanticContext;)V
    .locals 2

    .line 106
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNState;ILorg/antlr/v4/runtime/atn/PredictionContext;)V
    .locals 1

    .line 79
    sget-object v0, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;ILorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNState;ILorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 88
    iput p2, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    .line 89
    iput-object p3, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    .line 90
    iput-object p4, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 154
    instance-of v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    :cond_0
    check-cast p1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNConfig;->equals(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 4294967295
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 169
    :cond_2
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v2, v2, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    iget-object v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v3, v3, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    iget v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget-object v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    iget-object v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ATNConfig;->isPrecedenceFilterSuppressed()Z

    move-result v2

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNConfig;->isPrecedenceFilterSuppressed()Z

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final getOuterContextDepth()I
    .locals 2

    .line 132
    iget v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 178
    const/4 v0, 0x7

    invoke-static {v0}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize(I)I

    move-result v0

    .line 179
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v1, v1, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    .line 180
    iget v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    .line 181
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(ILjava/lang/Object;)I

    move-result v0

    .line 182
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(ILjava/lang/Object;)I

    move-result v0

    .line 183
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result v0

    return v0
.end method

.method public final isPrecedenceFilterSuppressed()Z
    .locals 2

    .line 136
    iget v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setPrecedenceFilterSuppressed(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 141
    iget v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    .line 144
    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 189
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/antlr/v4/runtime/atn/ATNConfig;->toString(Lorg/antlr/v4/runtime/Recognizer;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/antlr/v4/runtime/Recognizer;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer",
            "<**>;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    if-eqz p2, :cond_0

    .line 201
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    :cond_0
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v1, :cond_1

    .line 205
    const-string v1, ",["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_1
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-eqz v1, :cond_2

    sget-object v2, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-eq v1, v2, :cond_2

    .line 210
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    :cond_2
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ATNConfig;->getOuterContextDepth()I

    move-result v1

    if-lez v1, :cond_3

    .line 214
    const-string v1, ",up="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ATNConfig;->getOuterContextDepth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    :cond_3
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
