.class public final Lorg/antlr/v4/runtime/atn/WildcardTransition;
.super Lorg/antlr/v4/runtime/atn/Transition;
.source "WildcardTransition.java"


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNState;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/atn/Transition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;)V

    return-void
.end method


# virtual methods
.method public getSerializationType()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public matches(III)Z
    .locals 1

    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 24
    const-string v0, "."

    return-object v0
.end method
