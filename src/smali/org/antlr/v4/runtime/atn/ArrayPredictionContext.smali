.class public Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;
.super Lorg/antlr/v4/runtime/atn/PredictionContext;
.source "ArrayPredictionContext.java"


# static fields
.field static final $assertionsDisabled:Z = false


# instance fields
.field public final parents:[Lorg/antlr/v4/runtime/atn/PredictionContext;

.field public final returnStates:[I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;)V
    .registers 5

    .line 24
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget p1, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/antlr/v4/runtime/atn/PredictionContext;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;-><init>([Lorg/antlr/v4/runtime/atn/PredictionContext;[I)V

    return-void
.end method

.method public constructor <init>([Lorg/antlr/v4/runtime/atn/PredictionContext;[I)V
    .registers 4

    .line 28
    invoke-static {p1, p2}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->calculateHashCode([Lorg/antlr/v4/runtime/atn/PredictionContext;[I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;-><init>(I)V

    .line 32
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->parents:[Lorg/antlr/v4/runtime/atn/PredictionContext;

    .line 33
    iput-object p2, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 68
    :cond_4
    instance-of v1, p1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 72
    :cond_a
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_15

    return v2

    .line 76
    :cond_15
    check-cast p1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    .line 77
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    iget-object v3, p1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->parents:[Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->parents:[Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    return v0
.end method

.method public getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;
    .registers 3

    .line 50
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->parents:[Lorg/antlr/v4/runtime/atn/PredictionContext;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getReturnState(I)I
    .registers 3

    .line 55
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget p1, v0, p1

    return p1
.end method

.method public isEmpty()Z
    .registers 4

    .line 40
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public size()I
    .registers 2

    .line 45
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 83
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "[]"

    return-object v0

    .line 84
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 86
    :goto_11
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v2, v2

    if-ge v1, v2, :cond_4e

    if-lez v1, :cond_1d

    .line 87
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_1d
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget v2, v2, v1

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2c

    .line 89
    const-string v2, "$"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4b

    .line 92
    :cond_2c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->parents:[Lorg/antlr/v4/runtime/atn/PredictionContext;

    aget-object v2, v2, v1

    if-eqz v2, :cond_46

    .line 94
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->parents:[Lorg/antlr/v4/runtime/atn/PredictionContext;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4b

    .line 98
    :cond_46
    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 101
    :cond_4e
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
