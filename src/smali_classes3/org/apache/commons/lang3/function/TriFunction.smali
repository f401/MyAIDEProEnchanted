.class public interface abstract Lorg/apache/commons/lang3/function/TriFunction;
.super Ljava/lang/Object;
.source "TriFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract andThen(Ljava/util/function/Function;)Lorg/apache/commons/lang3/function/TriFunction;
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
.end method

.method public abstract apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;TV;)TR;"
        }
    .end annotation
.end method
