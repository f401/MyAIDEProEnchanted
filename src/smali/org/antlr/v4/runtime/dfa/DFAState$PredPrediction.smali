.class public Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;
.super Ljava/lang/Object;
.source "DFAState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/dfa/DFAState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PredPrediction"
.end annotation


# instance fields
.field public alt:I

.field public pred:Lorg/antlr/v4/runtime/atn/SemanticContext;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/SemanticContext;I)V
    .registers 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p2, p0, Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;->alt:I

    .line 98
    iput-object p1, p0, Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;->pred:Lorg/antlr/v4/runtime/atn/SemanticContext;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;->pred:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/antlr/v4/runtime/dfa/DFAState$PredPrediction;->alt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
