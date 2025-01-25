.class public final Lorg/antlr/v4/runtime/atn/AtomTransition;
.super Lorg/antlr/v4/runtime/atn/Transition;
.source "AtomTransition.java"


# instance fields
.field public final label:I


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNState;I)V
    .registers 3

    .line 17
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/atn/Transition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;)V

    .line 18
    iput p2, p0, Lorg/antlr/v4/runtime/atn/AtomTransition;->label:I

    return-void
.end method


# virtual methods
.method public getSerializationType()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public label()Lorg/antlr/v4/runtime/misc/IntervalSet;
    .registers 2

    .line 28
    iget v0, p0, Lorg/antlr/v4/runtime/atn/AtomTransition;->label:I

    invoke-static {v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->of(I)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    return-object v0
.end method

.method public matches(III)Z
    .registers 4

    .line 32
    iget p2, p0, Lorg/antlr/v4/runtime/atn/AtomTransition;->label:I

    if-ne p2, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 37
    iget v0, p0, Lorg/antlr/v4/runtime/atn/AtomTransition;->label:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
