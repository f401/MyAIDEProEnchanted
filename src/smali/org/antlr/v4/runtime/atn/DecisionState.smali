.class public abstract Lorg/antlr/v4/runtime/atn/DecisionState;
.super Lorg/antlr/v4/runtime/atn/ATNState;
.source "DecisionState.java"


# instance fields
.field public decision:I

.field public nonGreedy:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Lorg/antlr/v4/runtime/atn/ATNState;-><init>()V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/atn/DecisionState;->decision:I

    return-void
.end method
