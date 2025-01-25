.class public final synthetic Lorg/apache/commons/lang3/function/FailableLongConsumer$_CC;
.super Ljava/lang/Object;
.source "FailableLongConsumer.java"


# direct methods
.method public static $default$andThen(Lorg/apache/commons/lang3/function/FailableLongConsumer;Lorg/apache/commons/lang3/function/FailableLongConsumer;)Lorg/apache/commons/lang3/function/FailableLongConsumer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableLongConsumer",
            "<TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableLongConsumer",
            "<TE;>;"
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    new-instance v0, Lorg/apache/commons/lang3/function/FailableLongConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableLongConsumer$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/FailableLongConsumer;Lorg/apache/commons/lang3/function/FailableLongConsumer;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/apache/commons/lang3/function/FailableLongConsumer;->NOP:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    return-void
.end method

.method public static synthetic lambda$andThen$1(Lorg/apache/commons/lang3/function/FailableLongConsumer;Lorg/apache/commons/lang3/function/FailableLongConsumer;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 64
    invoke-interface {p0, p2, p3}, Lorg/apache/commons/lang3/function/FailableLongConsumer;->accept(J)V

    .line 65
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableLongConsumer;->accept(J)V

    .line 66
    return-void
.end method

.method public static synthetic lambda$static$0(J)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableLongConsumer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableLongConsumer",
            "<TE;>;"
        }
    .end annotation

    .line 43
    sget-object v0, Lorg/apache/commons/lang3/function/FailableLongConsumer;->NOP:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    return-object v0
.end method
