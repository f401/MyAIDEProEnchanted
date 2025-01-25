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
    .registers 3

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
    iget p1, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    iput p1, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;)V
    .registers 5

    .line 94
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;)V
    .registers 5

    .line 112
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V
    .registers 5

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p2, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 120
    iget p2, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    iput p2, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    .line 121
    iput-object p3, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    .line 122
    iput-object p4, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    .line 123
    iget p1, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    iput p1, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/SemanticContext;)V
    .registers 5

    .line 100
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/SemanticContext;)V
    .registers 5

    .line 106
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNState;ILorg/antlr/v4/runtime/atn/PredictionContext;)V
    .registers 5

    .line 79
    sget-object v0, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;ILorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNState;ILorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V
    .registers 5

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
    .registers 3

    .line 154
    instance-of v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 158
    :cond_6
    check-cast p1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNConfig;->equals(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    move-result p1

    return p1
.end method

.method public equals(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 169
    :cond_8
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v2, v2, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    iget-object v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v3, v3, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    if-ne v2, v3, :cond_3b

    iget v2, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    iget v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    if-ne v2, v3, :cond_3b

    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget-object v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eq v2, v3, :cond_26

    if-eqz v2, :cond_3b

    invoke-virtual {v2, v3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    :cond_26
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    iget-object v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ATNConfig;->isPrecedenceFilterSuppressed()Z

    move-result v2

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNConfig;->isPrecedenceFilterSuppressed()Z

    move-result p1

    if-ne v2, p1, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    return v0
.end method

.method public final getOuterContextDepth()I
    .registers 3

    .line 132
    iget v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    const v1, -0x40000001  # -1.9999999f

    and-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .registers 3

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
    .registers 3

    .line 136
    iget v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    const/high16 v1, 0x40000000  # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final setPrecedenceFilterSuppressed(Z)V
    .registers 3

    if-eqz p1, :cond_a

    .line 141
    iget p1, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    const/high16 v0, 0x40000000  # 2.0f

    or-int/2addr p1, v0

    iput p1, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    goto :goto_12

    .line 144
    :cond_a
    iget p1, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    const v0, -0x40000001  # -1.9999999f

    and-int/2addr p1, v0

    iput p1, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    :goto_12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 189
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/antlr/v4/runtime/atn/ATNConfig;->toString(Lorg/antlr/v4/runtime/Recognizer;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/antlr/v4/runtime/Recognizer;Z)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer<",
            "**>;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    const-string v0, ","

    if-eqz p2, :cond_18

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget p2, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    :cond_18
    iget-object p2, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz p2, :cond_2f

    .line 205
    const-string p2, ",["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object p2, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_2f
    iget-object p2, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-eqz p2, :cond_3f

    sget-object v1, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-eq p2, v1, :cond_3f

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object p2, p0, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    :cond_3f
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ATNConfig;->getOuterContextDepth()I

    move-result p2

    if-lez p2, :cond_51

    .line 214
    const-string p2, ",up="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ATNConfig;->getOuterContextDepth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    :cond_51
    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
