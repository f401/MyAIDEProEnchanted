.class public final Lorg/antlr/v4/runtime/atn/RuleTransition;
.super Lorg/antlr/v4/runtime/atn/Transition;
.source "RuleTransition.java"


# instance fields
.field public followState:Lorg/antlr/v4/runtime/atn/ATNState;

.field public final precedence:I

.field public final ruleIndex:I


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/RuleStartState;IILorg/antlr/v4/runtime/atn/ATNState;)V
    .registers 5

    .line 36
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/atn/Transition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;)V

    .line 37
    iput p2, p0, Lorg/antlr/v4/runtime/atn/RuleTransition;->ruleIndex:I

    .line 38
    iput p3, p0, Lorg/antlr/v4/runtime/atn/RuleTransition;->precedence:I

    .line 39
    iput-object p4, p0, Lorg/antlr/v4/runtime/atn/RuleTransition;->followState:Lorg/antlr/v4/runtime/atn/ATNState;

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/RuleStartState;ILorg/antlr/v4/runtime/atn/ATNState;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/antlr/v4/runtime/atn/RuleTransition;-><init>(Lorg/antlr/v4/runtime/atn/RuleStartState;IILorg/antlr/v4/runtime/atn/ATNState;)V

    return-void
.end method


# virtual methods
.method public getSerializationType()I
    .registers 2

    const/4 v0, 0x3

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
