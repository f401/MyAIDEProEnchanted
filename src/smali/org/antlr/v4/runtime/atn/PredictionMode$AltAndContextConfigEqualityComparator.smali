.class final Lorg/antlr/v4/runtime/atn/PredictionMode$AltAndContextConfigEqualityComparator;
.super Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;
.source "PredictionMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/atn/PredictionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AltAndContextConfigEqualityComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator",
        "<",
        "Lorg/antlr/v4/runtime/atn/ATNConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/antlr/v4/runtime/atn/PredictionMode$AltAndContextConfigEqualityComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lorg/antlr/v4/runtime/atn/PredictionMode$AltAndContextConfigEqualityComparator;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/PredictionMode$AltAndContextConfigEqualityComparator;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/atn/PredictionMode$AltAndContextConfigEqualityComparator;->INSTANCE:Lorg/antlr/v4/runtime/atn/PredictionMode$AltAndContextConfigEqualityComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 92
    check-cast p1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    check-cast p2, Lorg/antlr/v4/runtime/atn/ATNConfig;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/PredictionMode$AltAndContextConfigEqualityComparator;->equals(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    move-result v0

    return v0
.end method

.method public equals(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfig;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 4294967295
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v0, v1

    .line 115
    goto :goto_0

    :cond_3
    iget-object v2, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v2, v2, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    iget-object v3, p2, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v3, v3, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    if-ne v2, v3, :cond_4

    iget-object v2, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget-object v3, p2, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v2, v3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic hashCode(Ljava/lang/Object;)I
    .locals 1

    .line 92
    check-cast p1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/PredictionMode$AltAndContextConfigEqualityComparator;->hashCode(Lorg/antlr/v4/runtime/atn/ATNConfig;)I

    move-result v0

    return v0
.end method

.method public hashCode(Lorg/antlr/v4/runtime/atn/ATNConfig;)I
    .locals 2

    .line 104
    const/4 v0, 0x7

    invoke-static {v0}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize(I)I

    move-result v0

    .line 105
    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v1, v1, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    .line 106
    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(ILjava/lang/Object;)I

    move-result v0

    .line 107
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result v0

    return v0
.end method
