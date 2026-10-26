.class public final Lorg/antlr/v4/runtime/atn/AtomTransition;
.super Lorg/antlr/v4/runtime/atn/Transition;
.source "AtomTransition.java"


# instance fields
.field public final label:I


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNState;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/atn/Transition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;)V

    .line 18
    iput p2, p0, Lorg/antlr/v4/runtime/atn/AtomTransition;->label:I

    return-void
.end method


# virtual methods
.method public getSerializationType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public label()Lorg/antlr/v4/runtime/misc/IntervalSet;
    .locals 1

    .line 28
    iget v0, p0, Lorg/antlr/v4/runtime/atn/AtomTransition;->label:I

    invoke-static {v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->of(I)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    return-object v0
.end method

.method public matches(III)Z
    .locals 1

    .line 32
    iget v0, p0, Lorg/antlr/v4/runtime/atn/AtomTransition;->label:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 37
    iget v0, p0, Lorg/antlr/v4/runtime/atn/AtomTransition;->label:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
