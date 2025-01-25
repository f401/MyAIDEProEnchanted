.class public Lorg/antlr/v4/runtime/atn/OrderedATNConfigSet;
.super Lorg/antlr/v4/runtime/atn/ATNConfigSet;
.source "OrderedATNConfigSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/atn/OrderedATNConfigSet$LexerConfigHashSet;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>()V

    .line 18
    new-instance v0, Lorg/antlr/v4/runtime/atn/OrderedATNConfigSet$LexerConfigHashSet;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/OrderedATNConfigSet$LexerConfigHashSet;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/OrderedATNConfigSet;->configLookup:Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;

    return-void
.end method
