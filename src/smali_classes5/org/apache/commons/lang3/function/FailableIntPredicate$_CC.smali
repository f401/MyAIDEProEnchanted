.class public final synthetic Lorg/apache/commons/lang3/function/FailableIntPredicate$_CC;
.super Ljava/lang/Object;
.source "FailableIntPredicate.java"


# direct methods
.method public static $default$and(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;)Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate",
            "<TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate",
            "<TE;>;"
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;)V

    return-object v0
.end method

.method public static $default$negate(Lorg/apache/commons/lang3/function/FailableIntPredicate;)Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate",
            "<TE;>;"
        }
    .end annotation

    .line 78
    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/FailableIntPredicate;)V

    return-object v0
.end method

.method public static $default$or(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;)Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate",
            "<TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate",
            "<TE;>;"
        }
    .end annotation

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/apache/commons/lang3/function/FailableIntPredicate;->FALSE:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    return-void
.end method

.method public static falsePredicate()Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate",
            "<TE;>;"
        }
    .end annotation

    .line 47
    sget-object v0, Lorg/apache/commons/lang3/function/FailableIntPredicate;->FALSE:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    return-object v0
.end method

.method public static synthetic lambda$and$2(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 69
    invoke-interface {p0, p2}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1, p2}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static synthetic lambda$negate$3(Lorg/apache/commons/lang3/function/FailableIntPredicate;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 78
    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->test(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic lambda$or$4(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 90
    invoke-interface {p0, p2}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->test(I)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-interface {p1, p2}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static synthetic lambda$static$0(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$static$1(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public static truePredicate()Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate",
            "<TE;>;"
        }
    .end annotation

    .line 57
    sget-object v0, Lorg/apache/commons/lang3/function/FailableIntPredicate;->TRUE:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    return-object v0
.end method
