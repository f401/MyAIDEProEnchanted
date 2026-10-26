.class public Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;
.super Lorg/antlr/v4/runtime/atn/PredictionContext;
.source "SingletonPredictionContext.java"


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field public final parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

.field public final returnState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lorg/antlr/v4/runtime/atn/PredictionContext;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 14
    invoke-static {p1, p2}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->calculateHashCode(Lorg/antlr/v4/runtime/atn/PredictionContext;I)I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;-><init>(I)V

    .line 16
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    .line 17
    iput p2, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    return-void

    .line 14
    :cond_0
    invoke-static {}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->calculateEmptyHashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static create(Lorg/antlr/v4/runtime/atn/PredictionContext;I)Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;
    .locals 1

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    if-nez p0, :cond_0

    .line 23
    sget-object v0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    .line 25
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    invoke-direct {v0, p0, p1}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;-><init>(Lorg/antlr/v4/runtime/atn/PredictionContext;I)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    instance-of v2, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 58
    :cond_3
    check-cast p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    .line 59
    iget v2, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    iget v3, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v2, v3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    return-object v0
.end method

.method public getReturnState(I)I
    .locals 1

    .line 42
    iget v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    return v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 65
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 67
    iget v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 68
    const-string v0, "$"

    .line 72
    :goto_1
    return-object v0

    .line 65
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 72
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
