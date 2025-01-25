.class public Lorg/antlr/v4/runtime/atn/DecisionInfo;
.super Ljava/lang/Object;
.source "DecisionInfo.java"


# instance fields
.field public LL_ATNTransitions:J

.field public LL_DFATransitions:J

.field public LL_Fallback:J

.field public LL_MaxLook:J

.field public LL_MaxLookEvent:Lorg/antlr/v4/runtime/atn/LookaheadEventInfo;

.field public LL_MinLook:J

.field public LL_TotalLook:J

.field public SLL_ATNTransitions:J

.field public SLL_DFATransitions:J

.field public SLL_MaxLook:J

.field public SLL_MaxLookEvent:Lorg/antlr/v4/runtime/atn/LookaheadEventInfo;

.field public SLL_MinLook:J

.field public SLL_TotalLook:J

.field public final ambiguities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/atn/AmbiguityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final contextSensitivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/atn/ContextSensitivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final decision:I

.field public final errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/atn/ErrorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public invocations:J

.field public final predicateEvals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/atn/PredicateEvalInfo;",
            ">;"
        }
    .end annotation
.end field

.field public timeInPrediction:J


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->contextSensitivities:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->errors:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->ambiguities:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->predicateEvals:Ljava/util/List;

    .line 226
    iput p1, p0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->decision:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{decision="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->decision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", contextSensitivities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->contextSensitivities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->errors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ambiguities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->ambiguities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SLL_lookahead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_TotalLook:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", SLL_ATNTransitions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_ATNTransitions:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", SLL_DFATransitions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->SLL_DFATransitions:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", LL_Fallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_Fallback:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", LL_lookahead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_TotalLook:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", LL_ATNTransitions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/antlr/v4/runtime/atn/DecisionInfo;->LL_ATNTransitions:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
