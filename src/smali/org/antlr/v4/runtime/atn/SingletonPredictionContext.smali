.class public Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;
.super Lorg/antlr/v4/runtime/atn/PredictionContext;
.source "SingletonPredictionContext.java"


# static fields
.field static final $assertionsDisabled:Z = false


# instance fields
.field public final parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

.field public final returnState:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lorg/antlr/v4/runtime/atn/PredictionContext;I)V
    .registers 4

    if-eqz p1, :cond_7

    .line 14
    invoke-static {p1, p2}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->calculateHashCode(Lorg/antlr/v4/runtime/atn/PredictionContext;I)I

    move-result v0

    goto :goto_b

    :cond_7
    invoke-static {}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->calculateEmptyHashCode()I

    move-result v0

    :goto_b
    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;-><init>(I)V

    .line 16
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    .line 17
    iput p2, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    return-void
.end method

.method public static create(Lorg/antlr/v4/runtime/atn/PredictionContext;I)Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;
    .registers 3

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_a

    if-nez p0, :cond_a

    .line 23
    sget-object p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    return-object p0

    .line 25
    :cond_a
    new-instance v0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    invoke-direct {v0, p0, p1}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;-><init>(Lorg/antlr/v4/runtime/atn/PredictionContext;I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 50
    :cond_4
    instance-of v1, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 54
    :cond_a
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_15

    return v2

    .line 58
    :cond_15
    check-cast p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    .line 59
    iget v1, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    iget v3, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    if-ne v1, v3, :cond_2a

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v1, :cond_2a

    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v1, p1}, Lorg/antlr/v4/runtime/atn/PredictionContext;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method public getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;
    .registers 2

    .line 36
    iget-object p1, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    return-object p1
.end method

.method public getReturnState(I)I
    .registers 2

    .line 42
    iget p1, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    return p1
.end method

.method public size()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 65
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, ""

    .line 66
    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_20

    .line 67
    iget v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1b

    .line 68
    const-string v0, "$"

    return-object v0

    .line 70
    :cond_1b
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :cond_20
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

    return-object v0
.end method
