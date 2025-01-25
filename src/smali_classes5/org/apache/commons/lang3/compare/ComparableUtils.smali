.class public Lorg/apache/commons/lang3/compare/ComparableUtils;
.super Ljava/lang/Object;
.source "ComparableUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/compare/ComparableUtils$ComparableCheckBuilder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/util/function/Predicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Comparable",
            "<TA;>;>(TA;TA;)",
            "Ljava/util/function/Predicate",
            "<TA;>;"
        }
    .end annotation

    .line 135
    new-instance v0, Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static betweenExclusive(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/util/function/Predicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Comparable",
            "<TA;>;>(TA;TA;)",
            "Ljava/util/function/Predicate",
            "<TA;>;"
        }
    .end annotation

    .line 147
    new-instance v0, Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static ge(Ljava/lang/Comparable;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Comparable",
            "<TA;>;>(TA;)",
            "Ljava/util/function/Predicate",
            "<TA;>;"
        }
    .end annotation

    .line 159
    new-instance v0, Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static gt(Ljava/lang/Comparable;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Comparable",
            "<TA;>;>(TA;)",
            "Ljava/util/function/Predicate",
            "<TA;>;"
        }
    .end annotation

    .line 170
    new-instance v0, Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static is(Ljava/lang/Comparable;)Lorg/apache/commons/lang3/compare/ComparableUtils$ComparableCheckBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Comparable",
            "<TA;>;>(TA;)",
            "Lorg/apache/commons/lang3/compare/ComparableUtils$ComparableCheckBuilder",
            "<TA;>;"
        }
    .end annotation

    .line 181
    new-instance v0, Lorg/apache/commons/lang3/compare/ComparableUtils$ComparableCheckBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang3/compare/ComparableUtils$ComparableCheckBuilder;-><init>(Ljava/lang/Comparable;Lorg/apache/commons/lang3/compare/ComparableUtils$1;)V

    return-object v0
.end method

.method static synthetic lambda$between$0(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .registers 4

    .line 135
    invoke-static {p2}, Lorg/apache/commons/lang3/compare/ComparableUtils;->is(Ljava/lang/Comparable;)Lorg/apache/commons/lang3/compare/ComparableUtils$ComparableCheckBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang3/compare/ComparableUtils$ComparableCheckBuilder;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$betweenExclusive$1(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .registers 4

    .line 147
    invoke-static {p2}, Lorg/apache/commons/lang3/compare/ComparableUtils;->is(Ljava/lang/Comparable;)Lorg/apache/commons/lang3/compare/ComparableUtils$ComparableCheckBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang3/compare/ComparableUtils$ComparableCheckBuilder;->betweenExclusive(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$ge$2(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .registers 3

    .line 159
    invoke-static {p1}, Lorg/apache/commons/lang3/compare/ComparableUtils;->is(Ljava/lang/Comparable;)Lorg/apache/commons/lang3/compare/ComparableUtils$ComparableCheckBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/compare/ComparableUtils$ComparableCheckBuilder;->greaterThanOrEqualTo(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$gt$3(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .registers 3

    .line 170
    invoke-static {p1}, Lorg/apache/commons/lang3/compare/ComparableUtils;->is(Ljava/lang/Comparable;)Lorg/apache/commons/lang3/compare/ComparableUtils$ComparableCheckBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/compare/ComparableUtils$ComparableCheckBuilder;->greaterThan(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$le$4(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .registers 3

    .line 193
    invoke-static {p1}, Lorg/apache/commons/lang3/compare/ComparableUtils;->is(Ljava/lang/Comparable;)Lorg/apache/commons/lang3/compare/ComparableUtils$ComparableCheckBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/compare/ComparableUtils$ComparableCheckBuilder;->lessThanOrEqualTo(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$lt$5(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .registers 3

    .line 204
    invoke-static {p1}, Lorg/apache/commons/lang3/compare/ComparableUtils;->is(Ljava/lang/Comparable;)Lorg/apache/commons/lang3/compare/ComparableUtils$ComparableCheckBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/compare/ComparableUtils$ComparableCheckBuilder;->lessThan(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method public static le(Ljava/lang/Comparable;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Comparable",
            "<TA;>;>(TA;)",
            "Ljava/util/function/Predicate",
            "<TA;>;"
        }
    .end annotation

    .line 193
    new-instance v0, Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static lt(Ljava/lang/Comparable;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Comparable",
            "<TA;>;>(TA;)",
            "Ljava/util/function/Predicate",
            "<TA;>;"
        }
    .end annotation

    .line 204
    new-instance v0, Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method
