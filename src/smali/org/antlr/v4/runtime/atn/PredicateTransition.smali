.class public final Lorg/antlr/v4/runtime/atn/PredicateTransition;
.super Lorg/antlr/v4/runtime/atn/AbstractPredicateTransition;
.source "PredicateTransition.java"


# instance fields
.field public final isCtxDependent:Z

.field public final predIndex:I

.field public final ruleIndex:I


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNState;IIZ)V
    .registers 5

    .line 21
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/atn/AbstractPredicateTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;)V

    .line 22
    iput p2, p0, Lorg/antlr/v4/runtime/atn/PredicateTransition;->ruleIndex:I

    .line 23
    iput p3, p0, Lorg/antlr/v4/runtime/atn/PredicateTransition;->predIndex:I

    .line 24
    iput-boolean p4, p0, Lorg/antlr/v4/runtime/atn/PredicateTransition;->isCtxDependent:Z

    return-void
.end method


# virtual methods
.method public getPredicate()Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;
    .registers 5

    .line 41
    new-instance v0, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/PredicateTransition;->ruleIndex:I

    iget v2, p0, Lorg/antlr/v4/runtime/atn/PredicateTransition;->predIndex:I

    iget-boolean v3, p0, Lorg/antlr/v4/runtime/atn/PredicateTransition;->isCtxDependent:Z

    invoke-direct {v0, v1, v2, v3}, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;-><init>(IIZ)V

    return-object v0
.end method

.method public getSerializationType()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public isEpsilon()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public matches(III)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pred_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/antlr/v4/runtime/atn/PredicateTransition;->ruleIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/PredicateTransition;->predIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
