.class public final Lorg/antlr/v4/runtime/atn/WildcardTransition;
.super Lorg/antlr/v4/runtime/atn/Transition;
.source "WildcardTransition.java"


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNState;)V
    .registers 2

    .line 10
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/atn/Transition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;)V

    return-void
.end method


# virtual methods
.method public getSerializationType()I
    .registers 2

    const/16 v0, 0x9

    return v0
.end method

.method public matches(III)Z
    .registers 4

    if-lt p1, p2, :cond_6

    if-gt p1, p3, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 24
    const-string v0, "."

    return-object v0
.end method
