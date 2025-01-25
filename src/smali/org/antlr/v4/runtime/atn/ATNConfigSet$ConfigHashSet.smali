.class public Lorg/antlr/v4/runtime/atn/ATNConfigSet$ConfigHashSet;
.super Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;
.source "ATNConfigSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/atn/ATNConfigSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigHashSet"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet$ConfigEqualityComparator;->INSTANCE:Lorg/antlr/v4/runtime/atn/ATNConfigSet$ConfigEqualityComparator;

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;-><init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;)V

    return-void
.end method
