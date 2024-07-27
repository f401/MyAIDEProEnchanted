.class public final synthetic Lorg/apache/commons/lang3/function/TriFunction$_CC;
.super Ljava/lang/Object;
.source "TriFunction.java"


# direct methods
.method public static $default$andThen(Lorg/apache/commons/lang3/function/TriFunction;Ljava/util/function/Function;)Lorg/apache/commons/lang3/function/TriFunction;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TR;+TW;>;)",
            "Lorg/apache/commons/lang3/function/TriFunction",
            "<TT;TU;TV;TW;>;"
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    new-instance v0, Lorg/apache/commons/lang3/function/TriFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/TriFunction$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/TriFunction;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static synthetic lambda$andThen$0(Lorg/apache/commons/lang3/function/TriFunction;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 64
    invoke-interface {p0, p2, p3, p4}, Lorg/apache/commons/lang3/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
