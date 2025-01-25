.class Lorg/antlr/v4/runtime/atn/PredictionMode$AltAndContextMap;
.super Lorg/antlr/v4/runtime/misc/FlexibleHashMap;
.source "PredictionMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/atn/PredictionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AltAndContextMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/antlr/v4/runtime/misc/FlexibleHashMap<",
        "Lorg/antlr/v4/runtime/atn/ATNConfig;",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 88
    sget-object v0, Lorg/antlr/v4/runtime/atn/PredictionMode$AltAndContextConfigEqualityComparator;->INSTANCE:Lorg/antlr/v4/runtime/atn/PredictionMode$AltAndContextConfigEqualityComparator;

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;-><init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;)V

    return-void
.end method
