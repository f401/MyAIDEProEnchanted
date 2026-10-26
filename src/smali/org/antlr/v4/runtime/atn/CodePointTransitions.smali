.class public abstract Lorg/antlr/v4/runtime/atn/CodePointTransitions;
.super Ljava/lang/Object;
.source "CodePointTransitions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWithCodePoint(Lorg/antlr/v4/runtime/atn/ATNState;I)Lorg/antlr/v4/runtime/atn/Transition;
    .locals 2

    .line 27
    invoke-static {p1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lorg/antlr/v4/runtime/atn/SetTransition;

    invoke-static {p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->of(I)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/antlr/v4/runtime/atn/SetTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/misc/IntervalSet;)V

    .line 31
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/antlr/v4/runtime/atn/AtomTransition;

    invoke-direct {v0, p0, p1}, Lorg/antlr/v4/runtime/atn/AtomTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;I)V

    goto :goto_0
.end method

.method public static createWithCodePointRange(Lorg/antlr/v4/runtime/atn/ATNState;II)Lorg/antlr/v4/runtime/atn/Transition;
    .locals 2

    .line 44
    invoke-static {p1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    new-instance v0, Lorg/antlr/v4/runtime/atn/SetTransition;

    invoke-static {p1, p2}, Lorg/antlr/v4/runtime/misc/IntervalSet;->of(II)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/antlr/v4/runtime/atn/SetTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/misc/IntervalSet;)V

    .line 49
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/antlr/v4/runtime/atn/RangeTransition;

    invoke-direct {v0, p0, p1, p2}, Lorg/antlr/v4/runtime/atn/RangeTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;II)V

    goto :goto_0
.end method
