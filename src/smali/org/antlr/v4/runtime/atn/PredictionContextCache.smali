.class public Lorg/antlr/v4/runtime/atn/PredictionContextCache;
.super Ljava/lang/Object;
.source "PredictionContextCache.java"


# instance fields
.field protected final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

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
    .locals 1

    .line 25
    sget-object v0, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    if-ne p1, v0, :cond_1

    sget-object v0, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    .line 31
    :cond_0
    :goto_0
    return-object v0

    .line 26
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/PredictionContextCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/PredictionContextCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    goto :goto_0
.end method

.method public get(Lorg/antlr/v4/runtime/atn/PredictionContext;)Lorg/antlr/v4/runtime/atn/PredictionContext;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/PredictionContextCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/PredictionContext;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/PredictionContextCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
