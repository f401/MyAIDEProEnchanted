.class public Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;
.super Ljava/lang/Object;
.source "LexerATNSimulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/atn/LexerATNSimulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SimState"
.end annotation


# instance fields
.field protected charPos:I

.field protected dfaState:Lorg/antlr/v4/runtime/dfa/DFAState;

.field protected index:I

.field protected line:I


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->index:I

    .line 45
    const/4 v1, 0x0

    iput v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->line:I

    .line 46
    iput v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->charPos:I

    return-void
.end method


# virtual methods
.method protected reset()V
    .registers 3

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->index:I

    .line 51
    const/4 v1, 0x0

    iput v1, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->line:I

    .line 52
    iput v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->charPos:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator$SimState;->dfaState:Lorg/antlr/v4/runtime/dfa/DFAState;

    return-void
.end method
