.class public final Lorg/antlr/v4/runtime/atn/EpsilonTransition;
.super Lorg/antlr/v4/runtime/atn/Transition;
.source "EpsilonTransition.java"


# instance fields
.field private final outermostPrecedenceReturn:I


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNState;)V
    .locals 1

    .line 14
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/antlr/v4/runtime/atn/EpsilonTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;I)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNState;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/atn/Transition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;)V

    .line 19
    iput p2, p0, Lorg/antlr/v4/runtime/atn/EpsilonTransition;->outermostPrecedenceReturn:I

    return-void
.end method


# virtual methods
.method public getSerializationType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEpsilon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public matches(III)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public outermostPrecedenceReturn()I
    .locals 1

    .line 31
    iget v0, p0, Lorg/antlr/v4/runtime/atn/EpsilonTransition;->outermostPrecedenceReturn:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "epsilon"

    return-object v0
.end method
