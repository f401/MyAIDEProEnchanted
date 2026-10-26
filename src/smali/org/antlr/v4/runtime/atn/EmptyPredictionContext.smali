.class public Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;
.super Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;
.source "EmptyPredictionContext.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-direct {p0, v0, v1}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;-><init>(Lorg/antlr/v4/runtime/atn/PredictionContext;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReturnState(I)I
    .locals 1

    .line 29
    iget v0, p0, Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;->returnState:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "$"

    return-object v0
.end method
