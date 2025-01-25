.class public final synthetic Lorg/apache/commons/lang3/function/FailableFunction$_CC;
.super Ljava/lang/Object;
.source "FailableFunction.java"


# direct methods
.method public static $default$andThen(Lorg/apache/commons/lang3/function/FailableFunction;Lorg/apache/commons/lang3/function/FailableFunction;)Lorg/apache/commons/lang3/function/FailableFunction;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableFunction",
            "<-TR;+TV;TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableFunction",
            "<TT;TV;TE;>;"
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    new-instance v0, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/FailableFunction;Lorg/apache/commons/lang3/function/FailableFunction;)V

    return-object v0
.end method

.method public static $default$compose(Lorg/apache/commons/lang3/function/FailableFunction;Lorg/apache/commons/lang3/function/FailableFunction;)Lorg/apache/commons/lang3/function/FailableFunction;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableFunction",
            "<-TV;+TT;TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableFunction",
            "<TV;TR;TE;>;"
        }
    .end annotation

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    new-instance v0, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/lang3/function/FailableFunction;Lorg/apache/commons/lang3/function/FailableFunction;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/apache/commons/lang3/function/FailableFunction;->NOP:Lorg/apache/commons/lang3/function/FailableFunction;

    return-void
.end method

.method public static identity()Lorg/apache/commons/lang3/function/FailableFunction;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableFunction",
            "<TT;TT;TE;>;"
        }
    .end annotation

    .line 46
    sget-object v0, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda2;

    return-object v0
.end method

.method public static synthetic lambda$andThen$2(Lorg/apache/commons/lang3/function/FailableFunction;Lorg/apache/commons/lang3/function/FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 71
    invoke-interface {p0, p2}, Lorg/apache/commons/lang3/function/FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/lang3/function/FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$compose$3(Lorg/apache/commons/lang3/function/FailableFunction;Lorg/apache/commons/lang3/function/FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 94
    invoke-interface {p1, p2}, Lorg/apache/commons/lang3/function/FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/commons/lang3/function/FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$identity$1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 46
    return-object p0
.end method

.method public static synthetic lambda$static$0(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableFunction;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableFunction",
            "<TT;TR;TE;>;"
        }
    .end annotation

    .line 58
    sget-object v0, Lorg/apache/commons/lang3/function/FailableFunction;->NOP:Lorg/apache/commons/lang3/function/FailableFunction;

    return-object v0
.end method
