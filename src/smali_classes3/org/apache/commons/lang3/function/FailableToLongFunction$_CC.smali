.class public final synthetic Lorg/apache/commons/lang3/function/FailableToLongFunction$_CC;
.super Ljava/lang/Object;
.source "FailableToLongFunction.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/apache/commons/lang3/function/FailableToLongFunction;->NOP:Lorg/apache/commons/lang3/function/FailableToLongFunction;

    return-void
.end method

.method public static synthetic lambda$static$0(Ljava/lang/Object;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static nop()Lorg/apache/commons/lang3/function/FailableToLongFunction;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableToLongFunction",
            "<TT;TE;>;"
        }
    .end annotation

    .line 44
    sget-object v0, Lorg/apache/commons/lang3/function/FailableToLongFunction;->NOP:Lorg/apache/commons/lang3/function/FailableToLongFunction;

    return-object v0
.end method
