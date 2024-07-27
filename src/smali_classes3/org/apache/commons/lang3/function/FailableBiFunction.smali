.class public interface abstract Lorg/apache/commons/lang3/function/FailableBiFunction;
.super Ljava/lang/Object;
.source "FailableBiFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableBiFunction;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    sget-object v0, Lorg/apache/commons/lang3/function/FailableBiFunction$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/commons/lang3/function/FailableBiFunction$$ExternalSyntheticLambda1;

    sput-object v0, Lorg/apache/commons/lang3/function/FailableBiFunction;->NOP:Lorg/apache/commons/lang3/function/FailableBiFunction;

    return-void
.end method


# virtual methods
.method public abstract andThen(Lorg/apache/commons/lang3/function/FailableFunction;)Lorg/apache/commons/lang3/function/FailableBiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableFunction",
            "<-TR;+TV;TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableBiFunction",
            "<TT;TU;TV;TE;>;"
        }
    .end annotation
.end method

.method public abstract apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)TR;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
