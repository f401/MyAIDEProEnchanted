.class public Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;
.super Lorg/antlr/v4/runtime/atn/PredictionContext;
.source "ArrayPredictionContext.java"


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field public final parents:[Lorg/antlr/v4/runtime/atn/PredictionContext;

.field public final returnStates:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget v1, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    new-array v2, v4, [Lorg/antlr/v4/runtime/atn/PredictionContext;

    aput-object v0, v2, v3

    new-array v0, v4, [I

    aput v1, v0, v3

    invoke-direct {p0, v2, v0}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;-><init>([Lorg/antlr/v4/runtime/atn/PredictionContext;[I)V

    return-void
.end method

.method public constructor <init>([Lorg/antlr/v4/runtime/atn/PredictionContext;[I)V
    .locals 1

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
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    instance-of v2, p1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 76
    :cond_3
    check-cast p1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    .line 77
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    iget-object v3, p1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->parents:[Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget-object v3, p1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->parents:[Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->parents:[Lorg/antlr/v4/runtime/atn/PredictionContext;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getReturnState(I)I
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget v0, v0, p1

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    const/4 v0, 0x0

    .line 40
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget v1, v1, v0

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 83
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[]"

    .line 102
    :goto_0
    return-object v0

    .line 84
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 86
    :goto_1
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    if-lez v0, :cond_1

    .line 87
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_1
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget v2, v2, v0

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2

    .line 89
    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->parents:[Lorg/antlr/v4/runtime/atn/PredictionContext;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    .line 94
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->parents:[Lorg/antlr/v4/runtime/atn/PredictionContext;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 98
    :cond_3
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 101
    :cond_4
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
