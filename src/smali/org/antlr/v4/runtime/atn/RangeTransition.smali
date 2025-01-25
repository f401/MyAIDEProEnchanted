.class public final Lorg/antlr/v4/runtime/atn/RangeTransition;
.super Lorg/antlr/v4/runtime/atn/Transition;
.source "RangeTransition.java"


# instance fields
.field public final from:I

.field public final to:I


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNState;II)V
    .registers 4

    .line 16
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/atn/Transition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;)V

    .line 17
    iput p2, p0, Lorg/antlr/v4/runtime/atn/RangeTransition;->from:I

    .line 18
    iput p3, p0, Lorg/antlr/v4/runtime/atn/RangeTransition;->to:I

    return-void
.end method


# virtual methods
.method public getSerializationType()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public label()Lorg/antlr/v4/runtime/misc/IntervalSet;
    .registers 3

    .line 28
    iget v0, p0, Lorg/antlr/v4/runtime/atn/RangeTransition;->from:I

    iget v1, p0, Lorg/antlr/v4/runtime/atn/RangeTransition;->to:I

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->of(II)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    return-object v0
.end method

.method public matches(III)Z
    .registers 4

    .line 32
    iget p2, p0, Lorg/antlr/v4/runtime/atn/RangeTransition;->from:I

    if-lt p1, p2, :cond_a

    iget p2, p0, Lorg/antlr/v4/runtime/atn/RangeTransition;->to:I

    if-gt p1, p2, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/antlr/v4/runtime/atn/RangeTransition;->from:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'..\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/antlr/v4/runtime/atn/RangeTransition;->to:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
