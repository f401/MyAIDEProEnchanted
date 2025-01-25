.class public Lorg/antlr/v4/runtime/atn/AmbiguityInfo;
.super Lorg/antlr/v4/runtime/atn/DecisionEventInfo;
.source "AmbiguityInfo.java"


# instance fields
.field public ambigAlts:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;Ljava/util/BitSet;Lorg/antlr/v4/runtime/TokenStream;IIZ)V
    .registers 15

    .line 70
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/DecisionEventInfo;-><init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/TokenStream;IIZ)V

    .line 71
    iput-object p3, p0, Lorg/antlr/v4/runtime/atn/AmbiguityInfo;->ambigAlts:Ljava/util/BitSet;

    return-void
.end method
