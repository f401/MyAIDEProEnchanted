.class public Lorg/antlr/v4/runtime/atn/SetTransition;
.super Lorg/antlr/v4/runtime/atn/Transition;
.source "SetTransition.java"


# instance fields
.field public final set:Lorg/antlr/v4/runtime/misc/IntervalSet;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/misc/IntervalSet;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/atn/Transition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;)V

    if-nez p2, :cond_a

    .line 19
    const/4 p1, 0x0

    invoke-static {p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->of(I)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object p2

    .line 20
    :cond_a
    iput-object p2, p0, Lorg/antlr/v4/runtime/atn/SetTransition;->set:Lorg/antlr/v4/runtime/misc/IntervalSet;

    return-void
.end method


# virtual methods
.method public getSerializationType()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public label()Lorg/antlr/v4/runtime/misc/IntervalSet;
    .registers 2

    .line 30
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/SetTransition;->set:Lorg/antlr/v4/runtime/misc/IntervalSet;

    return-object v0
.end method

.method public matches(III)Z
    .registers 4

    .line 34
    iget-object p2, p0, Lorg/antlr/v4/runtime/atn/SetTransition;->set:Lorg/antlr/v4/runtime/misc/IntervalSet;

    invoke-virtual {p2, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/SetTransition;->set:Lorg/antlr/v4/runtime/misc/IntervalSet;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
