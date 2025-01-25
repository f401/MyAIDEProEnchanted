.class public final synthetic Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$_CC;
.super Ljava/lang/Object;
.source "FailableIntUnaryOperator.java"


# direct methods
.method public static $default$andThen(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableIntUnaryOperator",
            "<TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableIntUnaryOperator",
            "<TE;>;"
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)V

    return-object v0
.end method

.method public static $default$compose(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableIntUnaryOperator",
            "<TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableIntUnaryOperator",
            "<TE;>;"
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->NOP:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    return-void
.end method

.method public static identity()Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableIntUnaryOperator",
            "<TE;>;"
        }
    .end annotation

    .line 42
    sget-object v0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda2;

    return-object v0
.end method

.method public static synthetic lambda$andThen$2(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 65
    invoke-interface {p0, p2}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->applyAsInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->applyAsInt(I)I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$compose$3(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 87
    invoke-interface {p1, p2}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->applyAsInt(I)I

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->applyAsInt(I)I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$identity$1(I)I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 42
    return p0
.end method

.method public static synthetic lambda$static$0(I)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableIntUnaryOperator",
            "<TE;>;"
        }
    .end annotation

    .line 52
    sget-object v0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->NOP:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    return-object v0
.end method
