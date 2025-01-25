.class public final synthetic Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$_CC;
.super Ljava/lang/Object;
.source "FailableDoubleUnaryOperator.java"


# direct methods
.method public static $default$andThen(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator",
            "<TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator",
            "<TE;>;"
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    new-instance v0, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)V

    return-object v0
.end method

.method public static $default$compose(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator",
            "<TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator",
            "<TE;>;"
        }
    .end annotation

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    new-instance v0, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->NOP:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    return-void
.end method

.method public static identity()Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator",
            "<TE;>;"
        }
    .end annotation

    .line 42
    sget-object v0, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda2;

    return-object v0
.end method

.method public static synthetic lambda$andThen$2(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;D)D
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 67
    invoke-interface {p0, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic lambda$compose$3(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;D)D
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 91
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic lambda$identity$1(D)D
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 42
    return-wide p0
.end method

.method public static synthetic lambda$static$0(D)D
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator",
            "<TE;>;"
        }
    .end annotation

    .line 52
    sget-object v0, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->NOP:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    return-object v0
.end method
