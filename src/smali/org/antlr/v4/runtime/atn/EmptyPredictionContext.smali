.class public Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;
.super Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;
.source "EmptyPredictionContext.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 11
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-direct {p0, v0, v1}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;-><init>(Lorg/antlr/v4/runtime/atn/PredictionContext;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getReturnState(I)I
    .registers 2

    .line 29
    iget p1, p0, Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;->returnState:I

    return p1
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 39
    const-string v0, "$"

    return-object v0
.end method
