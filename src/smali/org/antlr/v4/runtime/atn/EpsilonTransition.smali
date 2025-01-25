.class public final Lorg/antlr/v4/runtime/atn/EpsilonTransition;
.super Lorg/antlr/v4/runtime/atn/Transition;
.source "EpsilonTransition.java"


# instance fields
.field private final outermostPrecedenceReturn:I


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNState;)V
    .registers 3

    .line 14
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/antlr/v4/runtime/atn/EpsilonTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;I)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNState;I)V
    .registers 3

    .line 18
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/atn/Transition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;)V

    .line 19
    iput p2, p0, Lorg/antlr/v4/runtime/atn/EpsilonTransition;->outermostPrecedenceReturn:I

    return-void
.end method


# virtual methods
.method public getSerializationType()I
    .registers 2

    const/4 v0, 0x1

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

.method public outermostPrecedenceReturn()I
    .registers 2

    .line 31
    iget v0, p0, Lorg/antlr/v4/runtime/atn/EpsilonTransition;->outermostPrecedenceReturn:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 50
    const-string v0, "epsilon"

    return-object v0
.end method
