.class public Lorg/antlr/v4/runtime/atn/OrderedATNConfigSet$LexerConfigHashSet;
.super Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;
.source "OrderedATNConfigSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/atn/OrderedATNConfigSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LexerConfigHashSet"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    sget-object v0, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;->INSTANCE:Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;-><init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;)V

    return-void
.end method
