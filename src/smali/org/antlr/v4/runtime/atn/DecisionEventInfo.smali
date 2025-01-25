.class public Lorg/antlr/v4/runtime/atn/DecisionEventInfo;
.super Ljava/lang/Object;
.source "DecisionEventInfo.java"


# instance fields
.field public final configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

.field public final decision:I

.field public final fullCtx:Z

.field public final input:Lorg/antlr/v4/runtime/TokenStream;

.field public final startIndex:I

.field public final stopIndex:I


# direct methods
.method public constructor <init>(ILorg/antlr/v4/runtime/atn/ATNConfigSet;Lorg/antlr/v4/runtime/TokenStream;IIZ)V
    .registers 7

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lorg/antlr/v4/runtime/atn/DecisionEventInfo;->decision:I

    .line 69
    iput-boolean p6, p0, Lorg/antlr/v4/runtime/atn/DecisionEventInfo;->fullCtx:Z

    .line 70
    iput p5, p0, Lorg/antlr/v4/runtime/atn/DecisionEventInfo;->stopIndex:I

    .line 71
    iput-object p3, p0, Lorg/antlr/v4/runtime/atn/DecisionEventInfo;->input:Lorg/antlr/v4/runtime/TokenStream;

    .line 72
    iput p4, p0, Lorg/antlr/v4/runtime/atn/DecisionEventInfo;->startIndex:I

    .line 73
    iput-object p2, p0, Lorg/antlr/v4/runtime/atn/DecisionEventInfo;->configs:Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    return-void
.end method
