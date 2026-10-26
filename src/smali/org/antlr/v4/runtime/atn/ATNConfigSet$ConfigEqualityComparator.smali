.class public final Lorg/antlr/v4/runtime/atn/ATNConfigSet$ConfigEqualityComparator;
.super Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;
.source "ATNConfigSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/atn/ATNConfigSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigEqualityComparator"
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
.field public static final INSTANCE:Lorg/antlr/v4/runtime/atn/ATNConfigSet$ConfigEqualityComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet$ConfigEqualityComparator;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$ConfigEqualityComparator;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet$ConfigEqualityComparator;->INSTANCE:Lorg/antlr/v4/runtime/atn/ATNConfigSet$ConfigEqualityComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 40
    check-cast p1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    check-cast p2, Lorg/antlr/v4/runtime/atn/ATNConfig;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$ConfigEqualityComparator;->equals(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    move-result v0

    return v0
.end method

.method public equals(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfig;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 4294967295
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v0, v1

    .line 59
    goto :goto_0

    :cond_3
    iget-object v2, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v2, v2, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    iget-object v3, p2, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v3, v3, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    if-ne v2, v3, :cond_4

    iget v2, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    iget v3, p2, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    if-ne v2, v3, :cond_4

    iget-object v2, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    iget-object v3, p2, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic hashCode(Ljava/lang/Object;)I
    .locals 1

    .line 40
    check-cast p1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$ConfigEqualityComparator;->hashCode(Lorg/antlr/v4/runtime/atn/ATNConfig;)I

    move-result v0

    return v0
.end method

.method public hashCode(Lorg/antlr/v4/runtime/atn/ATNConfig;)I
    .locals 2

    .line 49
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    .line 50
    iget v1, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    .line 51
    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
