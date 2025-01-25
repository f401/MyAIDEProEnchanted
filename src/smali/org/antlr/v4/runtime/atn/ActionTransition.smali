.class public final Lorg/antlr/v4/runtime/atn/ActionTransition;
.super Lorg/antlr/v4/runtime/atn/Transition;
.source "ActionTransition.java"


# instance fields
.field public final actionIndex:I

.field public final isCtxDependent:Z

.field public final ruleIndex:I


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNState;I)V
    .registers 5

    .line 15
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/antlr/v4/runtime/atn/ActionTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;IIZ)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNState;IIZ)V
    .registers 5

    .line 19
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/atn/Transition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;)V

    .line 20
    iput p2, p0, Lorg/antlr/v4/runtime/atn/ActionTransition;->ruleIndex:I

    .line 21
    iput p3, p0, Lorg/antlr/v4/runtime/atn/ActionTransition;->actionIndex:I

    .line 22
    iput-boolean p4, p0, Lorg/antlr/v4/runtime/atn/ActionTransition;->isCtxDependent:Z

    return-void
.end method


# virtual methods
.method public getSerializationType()I
    .registers 2

    const/4 v0, 0x6

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

.method public toString()Ljava/lang/String;
    .registers 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ActionTransition;->ruleIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ActionTransition;->actionIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
