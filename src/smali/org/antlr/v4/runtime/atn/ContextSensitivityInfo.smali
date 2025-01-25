.class public Lorg/antlr/v4/runtime/atn/ContextSensitivityInfo;
.super Lorg/antlr/v4/runtime/atn/DecisionEventInfo;
.source "ContextSensitivityInfo.java"


# direct methods
.method public constructor <init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/TokenStream;II)V
    .registers 13

    .line 47
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/DecisionEventInfo;-><init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/TokenStream;IIZ)V

    return-void
.end method
