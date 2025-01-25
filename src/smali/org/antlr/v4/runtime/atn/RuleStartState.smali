.class public final Lorg/antlr/v4/runtime/atn/RuleStartState;
.super Lorg/antlr/v4/runtime/atn/ATNState;
.source "RuleStartState.java"


# instance fields
.field public isLeftRecursiveRule:Z

.field public stopState:Lorg/antlr/v4/runtime/atn/RuleStopState;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lorg/antlr/v4/runtime/atn/ATNState;-><init>()V

    return-void
.end method


# virtual methods
.method public getStateType()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
