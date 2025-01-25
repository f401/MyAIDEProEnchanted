.class public final Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;
.super Lorg/antlr/v4/runtime/atn/AbstractPredicateTransition;
.source "PrecedencePredicateTransition.java"


# instance fields
.field public final precedence:I


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNState;I)V
    .registers 3

    .line 17
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/atn/AbstractPredicateTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;)V

    .line 18
    iput p2, p0, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;->precedence:I

    return-void
.end method


# virtual methods
.method public getPredicate()Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;
    .registers 3

    .line 37
    new-instance v0, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;->precedence:I

    invoke-direct {v0, v1}, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;-><init>(I)V

    return-object v0
.end method

.method public getSerializationType()I
    .registers 2

    const/16 v0, 0xa

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

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;->precedence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " >= _p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
