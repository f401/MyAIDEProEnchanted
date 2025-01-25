.class public final synthetic Lorg/apache/commons/lang3/function/FailablePredicate$_CC;
.super Ljava/lang/Object;
.source "FailablePredicate.java"


# direct methods
.method public static $default$and(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;)Lorg/apache/commons/lang3/function/FailablePredicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailablePredicate",
            "<-TT;TE;>;)",
            "Lorg/apache/commons/lang3/function/FailablePredicate",
            "<TT;TE;>;"
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    new-instance v0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;)V

    return-object v0
.end method

.method public static $default$negate(Lorg/apache/commons/lang3/function/FailablePredicate;)Lorg/apache/commons/lang3/function/FailablePredicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/function/FailablePredicate",
            "<TT;TE;>;"
        }
    .end annotation

    .line 81
    new-instance v0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/FailablePredicate;)V

    return-object v0
.end method

.method public static $default$or(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;)Lorg/apache/commons/lang3/function/FailablePredicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailablePredicate",
            "<-TT;TE;>;)",
            "Lorg/apache/commons/lang3/function/FailablePredicate",
            "<TT;TE;>;"
        }
    .end annotation

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    new-instance v0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/apache/commons/lang3/function/FailablePredicate;->FALSE:Lorg/apache/commons/lang3/function/FailablePredicate;

    return-void
.end method

.method public static falsePredicate()Lorg/apache/commons/lang3/function/FailablePredicate;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailablePredicate",
            "<TT;TE;>;"
        }
    .end annotation

    .line 49
    sget-object v0, Lorg/apache/commons/lang3/function/FailablePredicate;->FALSE:Lorg/apache/commons/lang3/function/FailablePredicate;

    return-object v0
.end method

.method public static synthetic lambda$and$2(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 72
    invoke-interface {p0, p2}, Lorg/apache/commons/lang3/function/FailablePredicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1, p2}, Lorg/apache/commons/lang3/function/FailablePredicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static synthetic lambda$negate$3(Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 81
    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/function/FailablePredicate;->test(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic lambda$or$4(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 93
    invoke-interface {p0, p2}, Lorg/apache/commons/lang3/function/FailablePredicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-interface {p1, p2}, Lorg/apache/commons/lang3/function/FailablePredicate;->test(Ljava/lang/Object;)Z

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

.method public static synthetic lambda$static$0(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$static$1(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public static truePredicate()Lorg/apache/commons/lang3/function/FailablePredicate;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailablePredicate",
            "<TT;TE;>;"
        }
    .end annotation

    .line 60
    sget-object v0, Lorg/apache/commons/lang3/function/FailablePredicate;->TRUE:Lorg/apache/commons/lang3/function/FailablePredicate;

    return-object v0
.end method
