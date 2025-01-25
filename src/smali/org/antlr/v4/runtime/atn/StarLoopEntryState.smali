.class public final Lorg/antlr/v4/runtime/atn/StarLoopEntryState;
.super Lorg/antlr/v4/runtime/atn/DecisionState;
.source "StarLoopEntryState.java"


# instance fields
.field public isPrecedenceDecision:Z

.field public loopBackState:Lorg/antlr/v4/runtime/atn/StarLoopbackState;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lorg/antlr/v4/runtime/atn/DecisionState;-><init>()V

    return-void
.end method


# virtual methods
.method public getStateType()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method
