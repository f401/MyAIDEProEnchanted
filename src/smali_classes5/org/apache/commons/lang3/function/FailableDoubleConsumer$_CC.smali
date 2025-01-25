.class public final synthetic Lorg/apache/commons/lang3/function/FailableDoubleConsumer$_CC;
.super Ljava/lang/Object;
.source "FailableDoubleConsumer.java"


# direct methods
.method public static $default$andThen(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;Lorg/apache/commons/lang3/function/FailableDoubleConsumer;)Lorg/apache/commons/lang3/function/FailableDoubleConsumer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableDoubleConsumer",
            "<TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableDoubleConsumer",
            "<TE;>;"
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    new-instance v0, Lorg/apache/commons/lang3/function/FailableDoubleConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableDoubleConsumer$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;Lorg/apache/commons/lang3/function/FailableDoubleConsumer;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/apache/commons/lang3/function/FailableDoubleConsumer;->NOP:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

    return-void
.end method

.method public static synthetic lambda$andThen$1(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;Lorg/apache/commons/lang3/function/FailableDoubleConsumer;D)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 64
    invoke-interface {p0, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoubleConsumer;->accept(D)V

    .line 65
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableDoubleConsumer;->accept(D)V

    .line 66
    return-void
.end method

.method public static synthetic lambda$static$0(D)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableDoubleConsumer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableDoubleConsumer",
            "<TE;>;"
        }
    .end annotation

    .line 43
    sget-object v0, Lorg/apache/commons/lang3/function/FailableDoubleConsumer;->NOP:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

    return-object v0
.end method
