.class public final Lorg/antlr/v4/runtime/atn/StarLoopbackState;
.super Lorg/antlr/v4/runtime/atn/ATNState;
.source "StarLoopbackState.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lorg/antlr/v4/runtime/atn/ATNState;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLoopEntryState()Lorg/antlr/v4/runtime/atn/StarLoopEntryState;
    .registers 2

    .line 11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/StarLoopbackState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v0

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    check-cast v0, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    return-object v0
.end method

.method public getStateType()I
    .registers 2

    const/16 v0, 0x9

    return v0
.end method
