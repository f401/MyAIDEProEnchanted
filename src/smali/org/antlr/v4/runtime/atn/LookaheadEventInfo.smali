.class public Lorg/antlr/v4/runtime/atn/LookaheadEventInfo;
.super Lorg/antlr/v4/runtime/atn/DecisionEventInfo;
.source "LookaheadEventInfo.java"


# instance fields
.field public predictedAlt:I


# direct methods
.method public constructor <init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;ILorg/antlr/v4/runtime/TokenStream;IIZ)V
    .registers 15

    .line 46
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/DecisionEventInfo;-><init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/TokenStream;IIZ)V

    .line 47
    iput p3, p0, Lorg/antlr/v4/runtime/atn/LookaheadEventInfo;->predictedAlt:I

    return-void
.end method
