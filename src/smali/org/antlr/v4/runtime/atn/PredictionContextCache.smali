.class public Lorg/antlr/v4/runtime/atn/PredictionContextCache;
.super Ljava/lang/Object;
.source "PredictionContextCache.java"


# instance fields
.field protected final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/PredictionContextCache;->cache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Lorg/antlr/v4/runtime/atn/PredictionContext;)Lorg/antlr/v4/runtime/atn/PredictionContext;
    .registers 3

    .line 25
    sget-object v0, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    if-ne p1, v0, :cond_7

    sget-object p1, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    return-object p1

    .line 26
    :cond_7
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/PredictionContextCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v0, :cond_12

    return-object v0

    .line 31
    :cond_12
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/PredictionContextCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public get(Lorg/antlr/v4/runtime/atn/PredictionContext;)Lorg/antlr/v4/runtime/atn/PredictionContext;
    .registers 3

    .line 36
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/PredictionContextCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/atn/PredictionContext;

    return-object p1
.end method

.method public size()I
    .registers 2

    .line 40
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/PredictionContextCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
