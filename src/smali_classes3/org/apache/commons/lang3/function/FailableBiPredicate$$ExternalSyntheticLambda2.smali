.class public final synthetic Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableBiPredicate;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/function/FailableBiPredicate;

.field public final f$1:Lorg/apache/commons/lang3/function/FailableBiPredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableBiPredicate;Lorg/apache/commons/lang3/function/FailableBiPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda2;->f$0:Lorg/apache/commons/lang3/function/FailableBiPredicate;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda2;->f$1:Lorg/apache/commons/lang3/function/FailableBiPredicate;

    return-void
.end method


# virtual methods
.method public synthetic and(Lorg/apache/commons/lang3/function/FailableBiPredicate;)Lorg/apache/commons/lang3/function/FailableBiPredicate;
    .locals 1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableBiPredicate$_CC;->$default$and(Lorg/apache/commons/lang3/function/FailableBiPredicate;Lorg/apache/commons/lang3/function/FailableBiPredicate;)Lorg/apache/commons/lang3/function/FailableBiPredicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic negate()Lorg/apache/commons/lang3/function/FailableBiPredicate;
    .locals 1

    invoke-static {p0}, Lorg/apache/commons/lang3/function/FailableBiPredicate$_CC;->$default$negate(Lorg/apache/commons/lang3/function/FailableBiPredicate;)Lorg/apache/commons/lang3/function/FailableBiPredicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Lorg/apache/commons/lang3/function/FailableBiPredicate;)Lorg/apache/commons/lang3/function/FailableBiPredicate;
    .locals 1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableBiPredicate$_CC;->$default$or(Lorg/apache/commons/lang3/function/FailableBiPredicate;Lorg/apache/commons/lang3/function/FailableBiPredicate;)Lorg/apache/commons/lang3/function/FailableBiPredicate;

    move-result-object v0

    return-object v0
.end method

.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda2;->f$0:Lorg/apache/commons/lang3/function/FailableBiPredicate;

    iget-object v1, p0, Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda2;->f$1:Lorg/apache/commons/lang3/function/FailableBiPredicate;

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/lang3/function/FailableBiPredicate$_CC;->lambda$or$4(Lorg/apache/commons/lang3/function/FailableBiPredicate;Lorg/apache/commons/lang3/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
