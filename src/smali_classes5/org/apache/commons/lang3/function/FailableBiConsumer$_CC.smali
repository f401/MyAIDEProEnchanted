.class public final synthetic Lorg/apache/commons/lang3/function/FailableBiConsumer$_CC;
.super Ljava/lang/Object;
.source "FailableBiConsumer.java"


# direct methods
.method public static $default$andThen(Lorg/apache/commons/lang3/function/FailableBiConsumer;Lorg/apache/commons/lang3/function/FailableBiConsumer;)Lorg/apache/commons/lang3/function/FailableBiConsumer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableBiConsumer",
            "<-TT;-TU;TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableBiConsumer",
            "<TT;TU;TE;>;"
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    new-instance v0, Lorg/apache/commons/lang3/function/FailableBiConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableBiConsumer$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/FailableBiConsumer;Lorg/apache/commons/lang3/function/FailableBiConsumer;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/apache/commons/lang3/function/FailableBiConsumer;->NOP:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    return-void
.end method

.method public static synthetic lambda$andThen$1(Lorg/apache/commons/lang3/function/FailableBiConsumer;Lorg/apache/commons/lang3/function/FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 69
    invoke-interface {p0, p2, p3}, Lorg/apache/commons/lang3/function/FailableBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/lang3/function/FailableBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public static synthetic lambda$static$0(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableBiConsumer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableBiConsumer",
            "<TT;TU;TE;>;"
        }
    .end annotation

    .line 47
    sget-object v0, Lorg/apache/commons/lang3/function/FailableBiConsumer;->NOP:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    return-object v0
.end method
