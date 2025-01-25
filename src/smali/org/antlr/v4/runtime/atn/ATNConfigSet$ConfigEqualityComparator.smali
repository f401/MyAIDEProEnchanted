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
        "Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator<",
        "Lorg/antlr/v4/runtime/atn/ATNConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/antlr/v4/runtime/atn/ATNConfigSet$ConfigEqualityComparator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet$ConfigEqualityComparator;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$ConfigEqualityComparator;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet$ConfigEqualityComparator;->INSTANCE:Lorg/antlr/v4/runtime/atn/ATNConfigSet$ConfigEqualityComparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 40
    check-cast p1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    check-cast p2, Lorg/antlr/v4/runtime/atn/ATNConfig;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$ConfigEqualityComparator;->equals(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    move-result p1

    return p1
.end method

.method public equals(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/ATNConfig;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    if-nez p2, :cond_a

    goto :goto_27

    .line 59
    :cond_a
    iget-object v2, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v2, v2, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    iget-object v3, p2, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v3, v3, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    if-ne v2, v3, :cond_25

    iget v2, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    iget v3, p2, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    if-ne v2, v3, :cond_25

    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    iget-object p2, p2, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public bridge synthetic hashCode(Ljava/lang/Object;)I
    .registers 2

    .line 40
    check-cast p1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$ConfigEqualityComparator;->hashCode(Lorg/antlr/v4/runtime/atn/ATNConfig;)I

    move-result p1

    return p1
.end method

.method public hashCode(Lorg/antlr/v4/runtime/atn/ATNConfig;)I
    .registers 4

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

    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method
