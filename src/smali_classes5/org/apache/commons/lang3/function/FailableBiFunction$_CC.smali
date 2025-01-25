.class public final synthetic Lorg/apache/commons/lang3/function/FailableBiFunction$_CC;
.super Ljava/lang/Object;
.source "FailableBiFunction.java"


# direct methods
.method public static $default$andThen(Lorg/apache/commons/lang3/function/FailableBiFunction;Lorg/apache/commons/lang3/function/FailableFunction;)Lorg/apache/commons/lang3/function/FailableBiFunction;
    .registers 3
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

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    new-instance v0, Lorg/apache/commons/lang3/function/FailableBiFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableBiFunction$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/FailableBiFunction;Lorg/apache/commons/lang3/function/FailableFunction;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/apache/commons/lang3/function/FailableBiFunction;->NOP:Lorg/apache/commons/lang3/function/FailableBiFunction;

    return-void
.end method

.method public static synthetic lambda$andThen$1(Lorg/apache/commons/lang3/function/FailableBiFunction;Lorg/apache/commons/lang3/function/FailableFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 63
    invoke-interface {p0, p2, p3}, Lorg/apache/commons/lang3/function/FailableBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/lang3/function/FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$static$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableBiFunction;
    .registers 1
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
            ">()",
            "Lorg/apache/commons/lang3/function/FailableBiFunction",
            "<TT;TU;TR;TE;>;"
        }
    .end annotation

    .line 50
    sget-object v0, Lorg/apache/commons/lang3/function/FailableBiFunction;->NOP:Lorg/apache/commons/lang3/function/FailableBiFunction;

    return-object v0
.end method
