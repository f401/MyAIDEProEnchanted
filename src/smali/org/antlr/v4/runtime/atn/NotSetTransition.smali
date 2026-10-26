.class public final Lorg/antlr/v4/runtime/atn/NotSetTransition;
.super Lorg/antlr/v4/runtime/atn/SetTransition;
.source "NotSetTransition.java"


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/misc/IntervalSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/SetTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/misc/IntervalSet;)V

    return-void
.end method


# virtual methods
.method public getSerializationType()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public matches(III)Z
    .locals 1

    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    .line 23
    invoke-super {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/atn/SetTransition;->matches(III)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "~"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lorg/antlr/v4/runtime/atn/SetTransition;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
